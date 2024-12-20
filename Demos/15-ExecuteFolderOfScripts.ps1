<#

  ________   ________ _____ _    _ _______ ______    _____  _____ _____  _____ _____ _______ _____ 
 |  ____\ \ / /  ____/ ____| |  | |__   __|  ____|  / ____|/ ____|  __ \|_   _|  __ \__   __/ ____|
 | |__   \ V /| |__ | |    | |  | |  | |  | |__    | (___ | |    | |__) | | | | |__) | | | | (___  
 |  __|   > < |  __|| |    | |  | |  | |  |  __|    \___ \| |    |  _  /  | | |  ___/  | |  \___ \ 
 | |____ / . \| |___| |____| |__| |  | |  | |____   ____) | |____| | \ \ _| |_| |      | |  ____) |
 |______/_/ \_\______\_____|\____/   |_|  |______| |_____/ \_____|_|  \_\_____|_|      |_| |_____/ 

#>

$folderPath = './export/'
$SqlInstance = 'dbatools1'
$sourceDatabase = 'Pubs'
$destinationDatabase = 'PubsV2'

######################################
# Setup - create a folder of scripts #
######################################

# create the output path if it doesn't exist
if (!(Test-Path $folderPath)) {
    $null = New-Item -Path $folderPath -ItemType Directory
} else {
    #if it exists, remove all files
    Get-ChildItem $folderPath *.sql | Remove-Item
}

# Export create statements for tables
# Using a foreach loop so we can control the name of each file separately
$so = New-DbaScriptingOption
$so.ConvertUserDefinedDataTypesToBaseType = $true

Get-DbaDbTable -SqlInstance $SqlInstance -Database $sourceDatabase |
ForEach-Object -PipelineVariable obj -Process { $_ } |
ForEach-Object { Export-DbaScript -InputObject $obj -ScriptingOptionsObject $so -FilePath ('{0}\{1}_{2}.sql' -f $folderPath, $obj.Schema, $obj.Name) }


# See how many sql files we have to execute
Get-ChildItem $folderPath *.sql | Measure-Object | Select-Object Count
<#
Count
-----
11
#>

# Create a new empty database
$splatCreate = @{
    SqlInstance = $SqlInstance
    Name        = $destinationDatabase
}
New-DbaDatabase @splatCreate

###############################
# Execute a folder of scripts #
###############################

(Get-ChildItem $folderPath *.sql).Foreach{
    Write-PSFMessage -Level Output -Message ('executing {0}' -f $_.FullName) -FunctionName ExecuteScripts
    Invoke-DbaQuery -SqlInstance $SqlInstance -Database $destinationDatabase -File $psitem.FullName
}

# prove it worked
Get-DbaDbTable -SqlInstance $SqlInstance -Database $destinationDatabase | Select-Object Schema, Name

# clean up files
Get-ChildItem $folderPath *.sql | Remove-Item

# remove the database
Remove-DbaDatabase -SqlInstance $SqlInstance -Database $destinationDatabase -Confirm:$false

# What shall we learn next?
Get-Index