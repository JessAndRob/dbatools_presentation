#region words

$dbatoolsIntro = @"

██████╗ ██████╗  █████╗ ████████╗ ██████╗  ██████╗ ██╗     ███████╗    ██╗███╗   ██╗████████╗██████╗  ██████╗ ██████╗ ██╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗
██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝    ██║████╗  ██║╚══██╔══╝██╔══██╗██╔═══██╗██╔══██╗██║   ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║
██║  ██║██████╔╝███████║   ██║   ██║   ██║██║   ██║██║     ███████╗    ██║██╔██╗ ██║   ██║   ██████╔╝██║   ██║██║  ██║██║   ██║██║        ██║   ██║██║   ██║██╔██╗ ██║
██║  ██║██╔══██╗██╔══██║   ██║   ██║   ██║██║   ██║██║     ╚════██║    ██║██║╚██╗██║   ██║   ██╔══██╗██║   ██║██║  ██║██║   ██║██║        ██║   ██║██║   ██║██║╚██╗██║
██████╔╝██████╔╝██║  ██║   ██║   ╚██████╔╝╚██████╔╝███████╗███████║    ██║██║ ╚████║   ██║   ██║  ██║╚██████╔╝██████╔╝╚██████╔╝╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║
╚═════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝    ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

"@

$ChooseaTopic = @"

██████╗██╗  ██╗ ██████╗  ██████╗ ███████╗███████╗     █████╗     ████████╗ ██████╗ ██████╗ ██╗ ██████╗
██╔════╝██║  ██║██╔═══██╗██╔═══██╗██╔════╝██╔════╝    ██╔══██╗    ╚══██╔══╝██╔═══██╗██╔══██╗██║██╔════╝
██║     ███████║██║   ██║██║   ██║███████╗█████╗      ███████║       ██║   ██║   ██║██████╔╝██║██║
██║     ██╔══██║██║   ██║██║   ██║╚════██║██╔══╝      ██╔══██║       ██║   ██║   ██║██╔═══╝ ██║██║
╚██████╗██║  ██║╚██████╔╝╚██████╔╝███████║███████╗    ██║  ██║       ██║   ╚██████╔╝██║     ██║╚██████╗
 ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝    ╚═╝  ╚═╝       ╚═╝    ╚═════╝ ╚═╝     ╚═╝ ╚═════╝

"@

$Global:Italwaysis = @"

██▓▄▄▄█████▓  ██████     ▄▄▄       ██▓     █     █░ ▄▄▄     ▓██   ██▓  ██████
▓██▒▓  ██▒ ▓▒▒██    ▒    ▒████▄    ▓██▒    ▓█░ █ ░█░▒████▄    ▒██  ██▒▒██    ▒
▒██▒▒ ▓██░ ▒░░ ▓██▄      ▒██  ▀█▄  ▒██░    ▒█░ █ ░█ ▒██  ▀█▄   ▒██ ██░░ ▓██▄
░██░░ ▓██▓ ░   ▒   ██▒   ░██▄▄▄▄██ ▒██░    ░█░ █ ░█ ░██▄▄▄▄██  ░ ▐██▓░  ▒   ██▒
░██░  ▒██▒ ░ ▒██████▒▒    ▓█   ▓██▒░██████▒░░██▒██▓  ▓█   ▓██▒ ░ ██▒▓░▒██████▒▒
░▓    ▒ ░░   ▒ ▒▓▒ ▒ ░    ▒▒   ▓▒█░░ ▒░▓  ░░ ▓░▒ ▒   ▒▒   ▓▒█░  ██▒▒▒ ▒ ▒▓▒ ▒ ░
 ▒ ░    ░    ░ ░▒  ░ ░     ▒   ▒▒ ░░ ░ ▒  ░  ▒ ░ ░    ▒   ▒▒ ░▓██ ░▒░ ░ ░▒  ░ ░
 ▒ ░  ░      ░  ░  ░       ░   ▒     ░ ░     ░   ░    ░   ▒   ▒ ▒ ░░  ░  ░  ░
 ░                 ░           ░  ░    ░  ░    ░          ░  ░░ ░           ░
                                                              ░ ░
▄▄▄█████▓ ██░ ██  ██▀███  ▓█████ ▓█████     ▄▄▄       ███▄ ▄███▓
▓  ██▒ ▓▒▓██░ ██▒▓██ ▒ ██▒▓█   ▀ ▓█   ▀    ▒████▄    ▓██▒▀█▀ ██▒
▒ ▓██░ ▒░▒██▀▀██░▓██ ░▄█ ▒▒███   ▒███      ▒██  ▀█▄  ▓██    ▓██░
░ ▓██▓ ░ ░▓█ ░██ ▒██▀▀█▄  ▒▓█  ▄ ▒▓█  ▄    ░██▄▄▄▄██ ▒██    ▒██
  ▒██▒ ░ ░▓█▒░██▓░██▓ ▒██▒░▒████▒░▒████▒    ▓█   ▓██▒▒██▒   ░██▒
  ▒ ░░    ▒ ░░▒░▒░ ▒▓ ░▒▓░░░ ▒░ ░░░ ▒░ ░    ▒▒   ▓▒█░░ ▒░   ░  ░
    ░     ▒ ░▒░ ░  ░▒ ░ ▒░ ░ ░  ░ ░ ░  ░     ▒   ▒▒ ░░  ░      ░
  ░       ░  ░░ ░  ░░   ░    ░      ░        ░   ▒   ░      ░
          ░  ░  ░   ░        ░  ░   ░  ░         ░  ░       ░

"@
#endregion


function Start-Game {

  #region set-up
  # Because we are using volumes for the restore demo, need to ensure they are clean before starting the game
  Remove-Item '/var/opt/backups/dbatools1' -Recurse -Force -ErrorAction SilentlyContinue

  $securePassword = ('dbatools.IO' | ConvertTo-SecureString -asPlainText -Force)
  $continercredential = New-Object System.Management.Automation.PSCredential('sqladmin', $securePassword)

  New-DbaDatabase -SqlInstance $dbatools1 -SqlCredential $continercredential -Name Validation -RecoveryModel Full -WarningAction SilentlyContinue | Out-Null

  # we need an app login
  $Password = ConvertTo-SecureString PubsAdmin -AsPlainText -Force
  New-DbaLogin -SqlInstance $dbatools1 -SqlCredential $continercredential  -Login PubsAdmin -SecurePassword $Password -WarningAction SilentlyContinue | Out-Null
  New-DbaDbUser -SqlInstance $dbatools1 -SqlCredential $continercredential -Database Pubs -Login PubsAdmin -Username PubsAdmin -WarningAction SilentlyContinue  | Out-Null
  Add-DbaDbRoleMember -SqlInstance $dbatools1 -SqlCredential $continercredential -Database Pubs -User PubsAdmin -Role db_owner -Confirm:$false  | Out-Null

  # Let's add some things to find
  Invoke-DbaQuery -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Northwind -WarningAction SilentlyContinue -Query "
  CREATE PROCEDURE SP_FindMe AS BEGIN
    with cte as (
      select top 1 OrderID, ProductID
      FROM dbo.[Order Details]
      ORDER BY NEWID()
    )
    DELETE
    FROM cte
  END

  GO

  CREATE TRIGGER dbo.trg_chaos_monkey
    ON  dbo.[order details]
    INSTEAD OF UPDATE
  AS
  BEGIN
    print 'no update for you'
  END
  GO
  CREATE FUNCTION udf_FindMe
  (@test int = 1)
  RETURNS int
  AS
  -- For the order details
  BEGIN
    RETURN @test
  END"

  # Add a failed job
  $job = New-DbaAgentJob -SqlInstance $dbatools2 -SqlCredential $continercredential -Job IamBroke -WarningAction SilentlyContinue
  if ($job) {
    $null = New-DbaAgentJobStep -SqlInstance $dbatools2 -SqlCredential $continercredential -Job $job.Name -Subsystem TransactSql -Command 'Select * from MissingTable' -StepName 'Step One'
    $null = $job | Start-DbaAgentJob
  }


  #endregion

  Clear-Host # dont use cls here
  $title = "Entrance Music"
  $yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", "Will continue"
  $no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", "Will exit"
  $options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
  $result = $host.ui.PromptForChoice($title, $dbatoolsIntro, $options, 0)

  if ($result -eq 1) {
    cls
    Write-Output "OK - Goodbye"
    cls
  }
  elseif ($result -eq 0) {
    Clear-Host # Dont use cls here
    Get-Index
  }
}

function Get-Index {
  cls
  Write-Output $ChooseaTopic
  $gameChapters = @(
    ("&1 - Introduction to dbatools", "1 - Introduction to dbatools"),
    ("&2 - Backup and Restore", "2 - Backup and Restore"),
    ("&3 - Copy Copy Copy", "3 - Copy Copy Copy"),
    ("&4 - Snapshots", "4 - Snapshots"),
    ("&5 - Export", "5 - Export"),
    ("&6 - Availability Groups", "6 - Availability Groups"),
    ("&7 - Finding Things", "7 - Finding Things"),
    ("&8 - Data Masking", "8 - Data Masking"),
    ("&9 - Logins", "9 - Logins"),
    ("&M - Advanced Migrations", "10 - Advanced Migrations"),
    ("&S - Registered Servers", "11 - Registered Servers"),
    ("&C - Estate Validation", "12 - Estate Validation"),
    ("&R - Replication", "13 - Replication"),
    ("&Q - Quit", "Quit")
  )

  $options = New-Object System.Collections.ObjectModel.Collection[System.Management.Automation.Host.ChoiceDescription]

  foreach ($Chapter in $gameChapters) {
    $message = '{0}' -f $chapter[1]
    Write-Output $message
    $options.Add((New-Object System.Management.Automation.Host.ChoiceDescription $Chapter ) )
  }
  $title = "If you would be so kind as to"
  $IndexChoice = $host.ui.PromptForChoice($title, "choose an option", $options, 0) + 1

  switch ($IndexChoice) {
    1 {
      cls
      code /workspace/Demos/01-introduction.ps1
      #reset and run tests
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter intro

    }
    2 {
      cls
      code /workspace/Demos/02-BackUpRestore.ps1
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter Backup

    }
    3 {
      cls
      code /workspace/Demos/03-CopyCopy.ps1
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter Copy

    }
    4 {
      cls
      code /workspace/Demos/04-Snapshots.ps1
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter SnapShots

    }
    6 {
      cls
      code /workspace/Demos/06-AvailabilityGroups.ps1
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter Ags

    }
    5 {
      cls
      code /workspace/Demos/05-Export.ps1
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter Export

    }
    7 {
      cls
      code /workspace/Demos/07-FindingThings.ps1
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter Found

    }
    8 {
      cls
      code /workspace/Demos/08-DataMasking.ps1
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter Masking

    }
    9 {
      cls
      code /workspace/Demos/09-Logins.ps1
      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      Assert-Correct -chapter Logins

    }
    #even though you choose M
    10 {
      cls
      Write-Output "10 - Advanced Migrations"
      code /workspace/Demos/10-AdvancedMigrations.ps1

      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue

      Assert-Correct -chapter AdvMigration


      Write-PSFHostColor -String "we also need an app to run in the background" -DefaultColor Green
      Write-PSFHostColor -String "In a new session run Invoke-PubsApplication" -DefaultColor Green
    }
    #even though you choose S
    11 {
      cls
      Write-Output "11 - Registered Servers"
      code /workspace/Demos/11-RegisteredServers.ps1

      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue

      # Assert-Correct -chapter RegisterdServers

    }
    #even though you choose C
    12 {
      cls
      Write-Output "12 - Estate Validation"
      code /workspace/Demos/12-EstateValidation.ps1

      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue

      # Assert-Correct -chapter RegisterdServers
    }
    13 {
      Write-Output "13 - Replication"
      code /workspace/Demos/13-Replication.ps1

      Write-PSFHostColor -String "Just ensuring that all is well with Pester" -DefaultColor Blue
      
      Assert-Correct -chapter Replication
    }
    # even though you choose R
    14 {
      cls
    }
    Default {
      cls
      $message = "You chose - {0}" -f $IndexChoice
      Write-Output $message
    }
  }
}

function Set-ConnectionInfo {
  #region Set up connection
  Set-DbatoolsInsecureConnection | Out-Null

  $securePassword = ('dbatools.IO' | ConvertTo-SecureString -asPlainText -Force)
  $continercredential = New-Object System.Management.Automation.PSCredential('sqladmin', $securePassword)

  $Global:PSDefaultParameterValues = @{
    "*dba*:SqlCredential"            = $continercredential
    "*dba*:SourceSqlCredential"      = $continercredential
    "*dba*:DestinationSqlCredential" = $continercredential
    "*dba*:DestinationCredential"    = $continercredential
    "*dba*:PrimarySqlCredential"     = $continercredential
    "*dba*:SecondarySqlCredential"   = $continercredential
  }


  $containers = $SQLInstances = $dbatools1, $dbatools2 = 'dbatools1', 'dbatools2'
  #endregion
}

Set-ConnectionInfo

function Set-FailedTestMessage {
  $FailedTests = ($results.FailedCount | Measure-Object -Sum).Sum
  if ($FailedTests -gt 0) {
    Write-PSFHostColor -String "NARRATOR - A thing went wrong" -DefaultColor DarkMagenta
    Write-PSFHostColor -String "NARRATOR - It MUST be fixed before we can continue" -DefaultColor DarkMagenta
    $Failures = $results.TestResult | Where Result -eq 'Failed'  | Select Describe, Context, Name, FailureMessage
    $Failures.ForEach{
      $Message = '{0} at {1} in {2}' -f $_.FailureMessage, $_.Name, $_.Describe
      Write-PSFHostColor -String $Message -DefaultColor DarkCyan
    }
  }
}
function Assert-Correct {
  param (
    # Parameter help description
    [Parameter()]
    [ValidateSet(
      'initial',
      'Intro' ,
      'Backup',
      'Copy',
      'SnapShots',
      'Export',
      'Ags',
      'Found',
      'Masking',
      'Logins',
      'AdvMigration',
      'Replication'
    )]
    [string]
    $chapter = 'initial'
  )
  $Global:PSDefaultParameterValues.CLear()
  switch ($chapter) {
    'initial' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult

      Set-DbcConfig -Name app.sqlinstance -Value $containers
      Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      Set-DbcConfig -Name skip.connection.remoting -Value $true
      Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Verbose

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2'
      Invoke-DbcCheck -SqlCredential $continercredential -Check DatabaseExists

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1'
      Set-DbcConfig -Name database.exists -Value 'pubs', 'NorthWind' -Append
      Invoke-DbcCheck -SqlCredential $continercredential -Check DatabaseExists

      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false  # reset
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
    }
    'Intro' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label Intro -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $null = Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2'
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check DatabaseExists -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label Intro -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $null = Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1'
      $null = Set-DbcConfig -Name database.exists -Value 'pubs', 'NorthWind' -Append
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check DatabaseExists -Show Summary -PassThru
      $check3 | Convert-DbcResult -Label Intro -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage

      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false  # reset
    }
    'Backup' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      $null = Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $null = Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2'

      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label Backup -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $null = Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1'
      $null = Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'tempdb'

      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, NoDatabasesOn1, NoBackupFiles -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label Backup -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $results = @($check1, $check2)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false # reset

    }
    'Copy' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      $null = Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append
      Set-DbcConfig -Name app.sqlinstance -Value $containers  | Out-Null
      Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'  | Out-Null
      Set-DbcConfig -Name skip.connection.remoting -Value $true  | Out-Null
      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'tempdb' | Out-Null

      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, NoDatabasesOn2, NeedNoLogins -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label Copy -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'pubs-0', 'pubs-1', 'pubs-10', 'pubs-2', 'pubs-3', 'pubs-4', 'pubs-5', 'pubs-6', 'pubs-7', 'pubs-8', 'pubs-9', 'tempdb' | Out-Null
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label Copy -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $results = @($check1, $check2)
      Set-FailedTestMessage
      Write-PSFHostColor -String "If you get database missing failures - Chapter 2 will be your friend" -DefaultColor Magenta
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false # reset
    }
    'Snapshots' {
      # Valid estate is as we expect
      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append | Out-Null
      Set-DbcConfig -Name app.sqlinstance -Value $containers  | Out-Null
      Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'  | Out-Null
      Set-DbcConfig -Name skip.connection.remoting -Value $true  | Out-Null
      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'tempdb' | Out-Null
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, NoDatabasesOn2, DatabaseStatus, NoSnapshots -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label SnapShots -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'tempdb' | Out-Null
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, DatabaseStatus -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label SnapShots -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation
      $results = @($check1, $check2)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false # reset
    }
    'Export' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label Export -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $null = Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2'
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check DatabaseExists -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label Export -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $null = Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1'
      $null = Set-DbcConfig -Name database.exists -Value 'pubs', 'NorthWind' -Append
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check DatabaseExists -Show Summary -PassThru
      $check3 | Convert-DbcResult -Label Export -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation
      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false
    }
    'Ags' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      $null = Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append | Out-Null
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label AvailabilityGroups -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'tempdb' | Out-Null
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, NoDatabasesOn2, DatabaseStatus, NoSnapshots, NoAgs -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label AvailabilityGroups -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'pubs-0', 'pubs-1', 'pubs-10', 'pubs-2', 'pubs-3', 'pubs-4', 'pubs-5', 'pubs-6', 'pubs-7', 'pubs-8', 'pubs-9', 'tempdb' | Out-Null
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, DatabaseStatus -Show Summary -PassThru
      $check3 | Convert-DbcResult -Label AvailabilityGroups -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation
      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage
      Write-PSFHostColor -String "If you get database missing failures - Chapter 2 will be your friend" -DefaultColor Magenta
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false
    }
    'AdvMigration' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append | Out-Null
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label AdvancedMigration -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'tempdb' | Out-Null
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, NoDatabasesOn2, DatabaseStatus, NoSnapshots, NoAgs -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label AdvancedMigration -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'tempdb' | Out-Null
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, DatabaseStatus -Show Summary -PassThru
      $check3 | Convert-DbcResult -Label AdvancedMigration -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false
    }
    'Found' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append | Out-Null
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label Found -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'tempdb' | Out-Null
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists,NeedJobs, NeedFailedJobs  -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label Found -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'tempdb' | Out-Null
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, DatabaseStatus, NeedSps,NeedUDfs,NeedTriggers,NeedLogins -Show Summary -PassThru
      $check3 | Convert-DbcResult -Label Found -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false
    }
    'Masking' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append | Out-Null
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label Masking -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'tempdb' | Out-Null
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label Masking -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'tempdb' | Out-Null
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, DatabaseStatus -Show Summary -PassThru
      $check3 | Convert-DbcResult -Label Masking -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false
    }
    'Logins' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append | Out-Null
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label Logins -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'tempdb' | Out-Null
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label Logins -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'tempdb' | Out-Null
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, DatabaseStatus -Show Summary -PassThru
      $check3 | Convert-DbcResult -Label Logins -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false
    }
    'Replication' {
      # Valid estate is as we expect

      $null = Reset-DbcConfig
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $true  # so we dont get silly output from convert-dbcresult
      Set-DbcConfig -Name app.checkrepos -Value '/workspace/Demos/dbachecksconfigs' -Append | Out-Null
      $null = Set-DbcConfig -Name app.sqlinstance -Value $containers
      $null = Set-DbcConfig -Name policy.connection.authscheme -Value 'SQL'
      $null = Set-DbcConfig -Name skip.connection.remoting -Value $true
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection -Show Summary -PassThru
      $check1 | Convert-DbcResult -Label Replication -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools2' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'tempdb' | Out-Null
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists -Show Summary -PassThru
      $check2 | Convert-DbcResult -Label Replication -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      Set-DbcConfig -Name app.sqlinstance -Value 'dbatools1' | Out-Null
      Set-DbcConfig -Name database.exists -Value 'master', 'model', 'msdb', 'Northwind', 'pubs', 'tempdb' | Out-Null
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection, DatabaseExists, DatabaseStatus -Show Summary -PassThru
      $check3 | Convert-DbcResult -Label Replication -warningaction SilentlyContinue | Write-DbcTable -SqlInstance $dbatools1 -SqlCredential $continercredential  -Database Validation

      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
      $null = Set-PSFConfig -FullName PSFramework.Message.ConsoleOutput.Disable -value $false
    }
    Default {
      # Valid estate is as we expect

      $null = Reset-DbcConfig

      $null = Import-DbcConfig /workspace/Demos/dbachecksconfigs/initial-config.json
      $check3 = Invoke-DbcCheck -SqlCredential $continercredential -Check InstanceConnection  -Show Summary -PassThru

      $null = Reset-DbcConfig

      $null = Import-DbcConfig /workspace/Demos/dbachecksconfigs/initial-dbatools1-config.json
      $check2 = Invoke-DbcCheck -SqlCredential $continercredential -Check DatabaseExists -Show Summary -PassThru

      $null = Reset-DbcConfig

      $null = Import-DbcConfig /workspace/Demos/dbachecksconfigs/initial-dbatools2-config.json
      $check1 = Invoke-DbcCheck -SqlCredential $continercredential -Check DatabaseExists -Show Summary -PassThru
      $results = @($check1, $check2, $check3)
      Set-FailedTestMessage
      Write-PSFHostColor -String "All the test have finished look above" -DefaultColor Blue
    }
  }
  $Global:PSDefaultParameterValues = @{
    "*dba*:SqlCredential"            = $continercredential
    "*dba*:SourceSqlCredential"      = $continercredential
    "*dba*:DestinationSqlCredential" = $continercredential
    "*dba*:DestinationCredential"    = $continercredential
    "*dba*:PrimarySqlCredential"     = $continercredential
    "*dba*:SecondarySqlCredential"   = $continercredential
  }
}

Function Compare-SPConfig {

  Param(
    $Source,
    $Destination
  )
  $SourceSpConfigure = Get-DbaSpConfigure  -SqlInstance $Source -SqlCredential $continercredential
  $DestSPConfigure = Get-DbaSpConfigure -SqlInstance $Destination -SqlCredential  $continercredential

  $propcompare = foreach ($prop in $SourceSpConfigure) {
    [pscustomobject]@{
      Config                = $prop.DisplayName
      'Source setting'      = $prop.RunningValue
      'Destination Setting' = $DestSPConfigure | Where DisplayName -eq $prop.DisplayName | Select -ExpandProperty RunningValue
    }
  }

  if ($IsCoreCLR) {
    $propcompare | Out-ConsoleGridView -Title "Comparing Sp_configure Settings Source - $Source With Destination $Destination"
  }
  else {
    $propcompare | Out-GridView -Title "Comparing Sp_configure Settings Source - $SourceWith Destination $Destination"

  }


}

function Invoke-PubsApplication {
  # This will randomly insert rows into the pubs.dbo.sales table on dbatools1 to simulate sales activity
  # It'll run until you kill it


  # app connection
  $securePassword = ('PubsAdmin' | ConvertTo-SecureString -asPlainText -Force)
  $appCred = New-Object System.Management.Automation.PSCredential('PubsAdmin', $securePassword)
  $appConnection = Connect-DbaInstance -SqlInstance $dbatools1 -SqlCredential $appCred -ClientName 'PubsApplication'

  while ($true) {
  Write-PSFHostColor -String "Pubs application is running...forever... Ctrl+C to get out of here" -DefaultColor Green

    $newOrder = [PSCustomObject]@{
      stor_id  = Get-Random (Invoke-DbaQuery -SqlInstance $appConnection -Database pubs -Query 'select stor_id from stores').stor_id
      ord_num  = Get-DbaRandomizedValue -DataType int -Min 1000 -Max 99999
      ord_date = get-date
      qty      = Get-Random -Minimum 1 -Maximum 30
      payterms = Get-Random (Invoke-DbaQuery -SqlInstance $appConnection -Database pubs -Query 'select distinct payterms from pubs.dbo.sales').payterms
      title_id = Get-Random (Invoke-DbaQuery -SqlInstance $appConnection -Database pubs -Query 'select title_id from titles').title_id
    }
    Write-DbaDataTable -SqlInstance $appConnection -Database pubs -InputObject $newOrder -Table sales

    Start-sleep -Seconds (Get-Random -Maximum 10)
  }
}

function pacman {
  Clear-Host

  $sleep = 15

  $pac = "
   .-.      .--.
  | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .
  |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '
  '^^^'    '--'
  "
  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host
  $pac = "
    .-.      .--.
   | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
   |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
   '^^^'    '--'
  "
  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
     .-.      .--.
    | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
    |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
    '^^^'    '--'
  "
  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
      .-.      .--.
     | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
     |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
     '^^^'    '--'
  "
  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
       .-.      .--.
      | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
      |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
      '^^^'    '--'
  "
  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
        .-.      .--.
       | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-
       |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-
       '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
         .-.      .--.
        | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
        |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
        '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
          .-.      .--.
         | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
         |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
         '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
           .-.      .--.
          | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
          |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
          '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
            .-.      .--.
           | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
           |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
           '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
             .-.      .--.
            | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-
            |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-
            '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
              .-.      .--.
             | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-
             |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-
             '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
               .-.      .--.
              | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .
              |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '
              '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                .-.      .--.
               | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
               |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
               '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host
  $pac = "
                 .-.      .--.
                | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                  .-.      .--.
                 | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                 |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                 '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                   .-.      .--.
                  | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                  |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                  '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                    .-.      .--.
                   | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-
                   |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-
                   '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                     .-.      .--.
                    | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .
                    |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '
                    '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                      .-.      .--.
                     | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                     |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                     '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                       .-.      .--.
                      | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                      |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                      '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                        .-.      .--.
                       | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                       |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                       '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                         .-.      .--.
                        | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                        |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                        '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                          .-.      .--.
                         | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-
                         |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-
                         '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                           .-.      .--.
                          | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.   .
                          |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'   '
                          '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                            .-.      .--.
                           | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                           |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                           '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                             .-.      .--.
                            | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                            |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                            '^^^'    '--'
  "
  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                              .-.      .--.
                             | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                             |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                             '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                               .-.      .--.
                              | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-.
                              |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-'
                              '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                .-.      .--.
                               | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .-
                               |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '-
                               '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                 .-.      .--.
                                | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.   .
                                |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'   '
                                '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                  .-.      .--.
                                 | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.
                                 |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'
                                 '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                   .-.      .--.
                                  | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.
                                  |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'
                                  '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                    .-.      .--.
                                   | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.
                                   |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'
                                   '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                     .-.      .--.
                                    | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-.
                                    |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-'
                                    '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                      .-.      .--.
                                     | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .-
                                     |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '-
                                     '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                       .-.      .--.
                                      | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.   .
                                      |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'   '
                                      '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                        .-.      .--.
                                       | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.
                                       |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'
                                       '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                         .-.      .--.
                                        | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.
                                        |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'
                                        '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                          .-.      .--.
                                         | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.
                                         |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'
                                         '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                           .-.      .--.
                                          | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-.
                                          |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-'
                                          '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                            .-.      .--.
                                           | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .-
                                           |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '-
                                           '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                             .-.      .--.
                                            | OO|   / _.-' .-.   .-.   .-.   .-.   .-.   .
                                            |   |   \  '-. '-'   '-'   '-'   '-'   '-'   '
                                            '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                              .-.      .--.
                                             | OO|   / _.-' .-.   .-.   .-.   .-.   .-.
                                             |   |   \  '-. '-'   '-'   '-'   '-'   '-'
                                             '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                               .-.      .--.
                                              | OO|   / _.-' .-.   .-.   .-.   .-.   .-.
                                              |   |   \  '-. '-'   '-'   '-'   '-'   '-'
                                              '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                .-.      .--.
                                               | OO|   / _.-' .-.   .-.   .-.   .-.   .-.
                                               |   |   \  '-. '-'   '-'   '-'   '-'   '-'
                                               '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                 .-.      .--.
                                                | OO|   / _.-' .-.   .-.   .-.   .-.   .-.
                                                |   |   \  '-. '-'   '-'   '-'   '-'   '-'
                                                '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                   .-.      .--.
                                                 | OO|   / _.-' .-.   .-.   .-.   .-.   .-
                                                 |   |   \  '-. '-'   '-'   '-'   '-'   '-
                                                 '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                   .-.      .--.
                                                  | OO|   / _.-' .-.   .-.   .-.   .-.   .
                                                  |   |   \  '-. '-'   '-'   '-'   '-'   '
                                                  '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                    .-.      .--.
                                                   | OO|   / _.-' .-.   .-.   .-.   .-.
                                                   |   |   \  '-. '-'   '-'   '-'   '-'
                                                   '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                                     .-.      .--.
                                                    | OO|   / _.-' .-.   .-.   .-.   .-.
                                                    |   |   \  '-. '-'   '-'   '-'   '-'
                                                    '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                                      .-.      .--.
                                                     | OO|   / _.-' .-.   .-.   .-.   .-.
                                                     |   |   \  '-. '-'   '-'   '-'   '-'
                                                     '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                                       .-.      .--.
                                                      | OO|   / _.-' .-.   .-.   .-.   .-.
                                                      |   |   \  '-. '-'   '-'   '-'   '-'
                                                      '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                        .-.      .--.
                                                       | OO|   / _.-' .-.   .-.   .-.   .-
                                                       |   |   \  '-. '-'   '-'   '-'   '-
                                                       '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                         .-.      .--.
                                                        | OO|   / _.-' .-.   .-.   .-.   .
                                                        |   |   \  '-. '-'   '-'   '-'   '
                                                        '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                          .-.      .--.
                                                         | OO|   / _.-' .-.   .-.   .-.
                                                         |   |   \  '-. '-'   '-'   '-'
                                                         '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                                           .-.      .--.
                                                          | OO|   / _.-' .-.   .-.   .-.
                                                          |   |   \  '-. '-'   '-'   '-'
                                                          '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                            .-.      .--.
                                                           | OO|   / _.-' .-.   .-.   .-.
                                                           |   |   \  '-. '-'   '-'   '-'
                                                           '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                                             .-.      .--.
                                                            | OO|   / _.-' .-.   .-.   .-.
                                                            |   |   \  '-. '-'   '-'   '-'
                                                            '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                                              .-.      .--.
                                                             | OO|   / _.-' .-.   .-.   .-
                                                             |   |   \  '-. '-'   '-'   '-
                                                             '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                               .-.      .--.
                                                              | OO|   / _.-' .-.   .-.   .
                                                              |   |   \  '-. '-'   '-'   '
                                                              '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                                                .-.      .--.
                                                               | OO|   / _.-' .-.   .-.
                                                               |   |   \  '-. '-'   '-'
                                                               '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

      $pac = "
                                                                 .-.      .--.
                                                                | OO|   / _.-' .-.   .-.
                                                                |   |   \  '-. '-'   '-'
                                                                '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


      $pac = "
                                                                  .-.      .--.
                                                                 | OO|   / _.-' .-.   .-.
                                                                 |   |   \  '-. '-'   '-'
                                                                 '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host



      $pac = "
                                                                   .-.      .--.
                                                                  | OO|   / _.-' .-.   .-.
                                                                  |   |   \  '-. '-'   '-'
                                                                  '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

      $pac = "
                                                                    .-.      .--.
                                                                   | OO|   / _.-' .-.   .-
                                                                   |   |   \  '-. '-'   '-
                                                                   '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                     .-.      .--.
                                                                    | OO|   / _.-' .-.   .
                                                                    |   |   \  '-. '-'   '
                                                                    '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                      .-.      .--.
                                                                     | OO|   / _.-' .-.
                                                                     |   |   \  '-. '-'
                                                                     '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                       .-.      .--.
                                                                      | OO|   / _.-' .-.
                                                                      |   |   \  '-. '-'
                                                                      '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                        .-.      .--.
                                                                       | OO|   / _.-' .-.
                                                                       |   |   \  '-. '-'
                                                                       '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "
                                                                         .-.      .--.
                                                                        | OO|   / _.-' .-.
                                                                        |   |   \  '-. '-'
                                                                        '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                          .-.      .--.
                                                                         | OO|   / _.-' .-
                                                                         |   |   \  '-. '-
                                                                         '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                           .-.      .--.
                                                                          | OO|   / _.-' .
                                                                          |   |   \  '-. '
                                                                          '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                            .-.      .--.
                                                                           | OO|   / _.-'
                                                                           |   |   \  '-.
                                                                           '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                             .-.      .--.
                                                                            | OO|   / _.-'
                                                                            |   |   \  '-.
                                                                            '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                              .-.      .--
                                                                             | OO|   / _.-
                                                                             |   |   \  '-
                                                                             '^^^'    '--'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                               .-.      .-
                                                                              | OO|   / _.
                                                                              |   |   \  '
                                                                              '^^^'    '--
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                .-.      .
                                                                               | OO|   / _
                                                                               |   |   \
                                                                               '^^^'    '-
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                 .-.
                                                                                | OO|   /
                                                                                |   |   \
                                                                                '^^^'    '
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                  .-.
                                                                                 | OO|   /
                                                                                 |   |   \
                                                                                 '^^^'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                   .-.
                                                                                  | OO|
                                                                                  |   |
                                                                                  '^^^'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                    .-.
                                                                                   | OO|
                                                                                   |   |
                                                                                   '^^^'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                     .-.
                                                                                    | OO|
                                                                                    |   |
                                                                                    '^^^'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                      .-.
                                                                                     | OO|
                                                                                     |   |
                                                                                     '^^^'
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                       .-.
                                                                                      | OO
                                                                                      |
                                                                                      '^^^
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                        .-
                                                                                       | O
                                                                                       |
                                                                                       '^^
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "
                                                                                         .
                                                                                        |
                                                                                        |
                                                                                        '^
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host

  $pac = "

                                                                                         |
                                                                                         |
                                                                                         '
  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


  $pac = "




  "

  Write-Host $pac -ForegroundColor Yellow
  start-sleep -Milliseconds $sleep
  Clear-Host


}
New-Alias -Name cls -Value pacman -force


Set-PSFConfig -Module JessAndBeard -Name shallweplayagame -Value $true -Initialize -Description "Whether to ask or not" -ModuleExport