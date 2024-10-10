<#

  _______ _____  _    _ _   _  _____       _______ ______            _      _        _______ _    _ ______   _______       ____  _      ______  _____ 
 |__   __|  __ \| |  | | \ | |/ ____|   /\|__   __|  ____|     /\   | |    | |      |__   __| |  | |  ____| |__   __|/\   |  _ \| |    |  ____|/ ____|
    | |  | |__) | |  | |  \| | |       /  \  | |  | |__       /  \  | |    | |         | |  | |__| | |__       | |  /  \  | |_) | |    | |__  | (___  
    | |  |  _  /| |  | | . ` | |      / /\ \ | |  |  __|     / /\ \ | |    | |         | |  |  __  |  __|      | | / /\ \ |  _ <| |    |  __|  \___ \ 
    | |  | | \ \| |__| | |\  | |____ / ____ \| |  | |____   / ____ \| |____| |____     | |  | |  | | |____     | |/ ____ \| |_) | |____| |____ ____) |
    |_|  |_|  \_\\____/|_| \_|\_____/_/    \_\_|  |______| /_/    \_\______|______|    |_|  |_|  |_|______|    |_/_/    \_\____/|______|______|_____/ 


#>

$SqlInstance = 'dbatools1'
$database = 'pubs'
$tempFolder = './export/'

#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# TWO DEMOS FOR THE PRICE OF ONE!!

# First things first - lets make a copy of this database to test on
Copy-DbaDatabase -Source $SqlInstance -Database $database -Destination $SqlInstance -NewName 'pubsV2' -BackupRestore -SharedPath /Shared
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*

# Alright back to the real demo
$database = 'pubsV2'
# we're going to use SMO objects so let's connect to the instance
$svr = Connect-DbaInstance -SqlInstance $SqlInstance

# Truncate the tables
$svr.databases[$database].Tables | ForEach-Object { $_.TruncateData() }

# but why?
Get-Error

## Collect up the objects we need to drop and recreate
$objects = @()
$objects += Get-DbaDbForeignKey -SqlInstance $svr -Database $database
$objects += Get-DbaDbView -SqlInstance $svr -Database $database -ExcludeSystemView

## Script out the create statements for objects
$createOptions = New-DbaScriptingOption
$createOptions.Permissions = $true
$createOptions.ScriptBatchTerminator = $true
$createOptions.AnsiFile = $true
$objects | Export-DbaScript -FilePath ('{0}\CreateObjects.Sql' -f $tempFolder) -ScriptingOptionsObject $createOptions

## Script out the drop statements for objects
$dropOptions = New-DbaScriptingOption
$dropOptions.ScriptDrops = $true
$objects| Export-DbaScript -FilePath ('{0}\DropObjects.Sql' -f $tempFolder) -ScriptingOptionsObject $dropOptions

# Run the drop scripts
Invoke-DbaQuery -SqlInstance $svr -Database $database -File ('{0}\DropObjects.Sql' -f $tempFolder)

# Truncate the tables
$svr.databases[$database].Tables | ForEach-Object { $_.TruncateData()}

# Run the create scripts
Invoke-DbaQuery -SqlInstance $svr -Database $database -File ('{0}\CreateObjects.Sql' -f $tempFolder)

# Clear up the script files
Remove-Item ('{0}\DropObjects.Sql' -f $tempFolder), ('{0}\CreateObjects.Sql' -f $tempFolder)

# reset and get ready to spin!
Invoke-DemoReset