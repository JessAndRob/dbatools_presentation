$reps = Get-DbaAgReplica -SqlInstance $dbatools1

$primary = $reps | where role -eq 'primary'

$primaryCompare = [PSCustomObject]@{
    primaryLogs = Get-DbaLogin -SqlInstance $primary.ComputerName -ExcludeSystemLogin
    primaryJobs = get-dbaagentJob -SqlInstance $primary.ComputerName
}


$reps | where role -eq 'secondary' | foreach-object -pv sec -process { $_ } |  foreach-object {
    $secLogins = Get-DbaLogin -SqlInstance $sec.SqlInstance -ExcludeSystemLogin

    Compare-Object -DifferenceObject $primaryLogs -ReferenceObject $secLogins -Passthru



}
