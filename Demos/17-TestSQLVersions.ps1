<#

  _______ ______  _____ _______    _____  ____  _       __      ________ _____   _____ _____ ____  _   _  _____ 
 |__   __|  ____|/ ____|__   __|  / ____|/ __ \| |      \ \    / /  ____|  __ \ / ____|_   _/ __ \| \ | |/ ____|
    | |  | |__  | (___    | |    | (___ | |  | | |       \ \  / /| |__  | |__) | (___   | || |  | |  \| | (___  
    | |  |  __|  \___ \   | |     \___ \| |  | | |        \ \/ / |  __| |  _  / \___ \  | || |  | | . ` |\___ \ 
    | |  | |____ ____) |  | |     ____) | |__| | |____     \  /  | |____| | \ \ ____) |_| || |__| | |\  |____) |
    |_|  |______|_____/   |_|    |_____/ \___\_\______|     \/   |______|_|  \_\_____/|_____\____/|_| \_|_____/ 


#>

# Test compliance of 1 instance
Test-DbaBuild -SqlInstance dbatools1 -Latest

# Test compliance for 2 instances
Test-DbaBuild -SqlInstance dbatools1, dbatools2 -Latest | Format-Table

# Test if we aren't more than 1CU behind
Test-DbaBuild -SqlInstance dbatools1 -MaxBehind 1CU

# Example when compliant
Test-DbaBuild -SqlInstance dbatools1 -MaxBehind 10CU

#Example using more specific versions
$mapping = @{
    # '2008'   = '10.0.6556'
    # '2008R2' = '10.50.6560'
    # '2012'   = '11.0.7462'
    # '2014'   = '12.0.5571'
    # '2016'   = '13.0.4466'
    # '2017'   = '14.0.3015'
    '2019'   = '15.0.4261' # CU18
    '2022'   = '16.0.1000' # RTM
}
foreach($inst in @('dbatools1', 'dbatools2')) {
    $ref = Get-DbaBuildReference -SqlInstance $inst
    Test-DbaBuild -SqlInstance $inst -MinimumBuild $mapping[$ref.NameLevel]
}

# Export result to excel. It uses ImportExcel PowerShell Module from Doug Finke
    # $excelFilePath = "D:\temp\Compliance_$((Get-Date).ToFileTime()).xlsx"#

$excelFilePath = "/workspace/export/compliance_$((Get-Date).ToFileTime()).xlsx"
$results = Test-DbaBuild -SqlInstance dbatools1, dbatools2 -Latest
$results | Export-Excel -Path $excelFilePath -TableName "data" -TableStyle Medium10

# open from the cloned folder  on the windows side
# e.g. C:\GitHub\dbatools_presentation\export 

# What shall we learn next?
Get-Index