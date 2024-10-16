<#

  _____            _ _           _   _             
 |  __ \          | (_)         | | (_)            
 | |__) |___ _ __ | |_  ___ __ _| |_ _  ___  _ __  
 |  _  // _ \ '_ \| | |/ __/ _` | __| |/ _ \| '_ \ 
 | | \ \  __/ |_) | | | (_| (_| | |_| | (_) | | | |
 |_|  \_\___| .__/|_|_|\___\__,_|\__|_|\___/|_| |_|
            | |                                    
            |_|                                    

#>

# we need to run this outside of the devcontainer - because we aren't able to import Microsoft.SqlServer.Replication.dll on a linux machine
# and for some reason it won't make the dabtools1 a publisher so we'll use different images

#region setup containers for replication

    #############################
    # create docker environment
    ##############################
    # create a shared network
    if (-not (docker network ls | select-string localnet)) {
        docker network create localnet
    }

    # create two docker containers for us
    docker run -p 2500:1433  --volume shared:/shared:z --name mssql1 --hostname mssql1 --network localnet -d dbatools/sqlinstance
    docker run -p 2600:1433 --volume shared:/shared:z --name mssql2 --hostname mssql2 --network localnet -d dbatools/sqlinstance2

    # use aliases so we can call them by name
    if (-not (Get-DbaClientAlias -ComputerName localhost  | Where-Object {$_.servername -eq 'localhost,2500' -and $_.AliasName -eq 'mssql1' -and $_.Architecture -eq '64-bit' } )) {
        New-DbaClientAlias -ComputerName localhost -ServerName 'localhost,2500' -Alias mssql1
        }
    if (-not (Get-DbaClientAlias -ComputerName localhost  | Where-Object {$_.servername -eq 'localhost,2600' -and $_.AliasName -eq 'mssql2' -and $_.Architecture -eq '64-bit' } )) {
        New-DbaClientAlias -ComputerName localhost -ServerName 'localhost,2600' -Alias mssql2
    }

    # create the repl folder
    docker exec mssql1 mkdir /var/opt/mssql/ReplData

    # also need these folders for setting up replication
    docker exec mssql1 mkdir /shared/data /shared/repldata

    ##############################

    # smo defaults
    Set-DbatoolsConfig -FullName sql.connection.encrypt -Value $false
    Set-DbatoolsConfig -FullName sql.connection.trustcert -Value $true

    ##############################
    # save the password for ease
    ##############################

    $securePassword = ('dbatools.IO' | ConvertTo-SecureString -AsPlainText -Force)
    $credential = New-Object System.Management.Automation.PSCredential('sqladmin', $securePassword)

    $PSDefaultParameterValues = @{
        "*:SqlCredential"            = $credential
        "*:DestinationCredential"    = $credential
        "*:DestinationSqlCredential" = $credential
        "*:SourceSqlCredential"      = $credential
        "*:PublisherSqlCredential"   = $credential
        "*:SubscriberSqlCredential"   = $credential
    }
#regionend

#region demos for replication

# Get the distributor
Get-DbaReplDistributor -SqlInstance mssql1

# view publications
Get-DbaReplPublication -SqlInstance mssql1

# view articles
Get-DbaReplArticle -SqlInstance mssql1

# get subscriptions
Get-DbaReplSubscription -SqlInstance mssql1

# enable distribution
Enable-DbaReplDistributor -SqlInstance mssql1

# enable publishing
Enable-DbaReplPublishing -SqlInstance mssql1

# Get the distributor
Get-DbaReplDistributor -SqlInstance mssql1

# add a transactional publication
$pub = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Name        = 'testPub'
    Type        = 'Transactional'
}
New-DbaReplPublication @pub

# add a merge publication
$pub = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Name        = 'mergey'
    Type        = 'Merge'
}
New-DbaReplPublication @pub

# add a snapshot publication
$pub = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Name        = 'snappy'
    Type        = 'Snapshot'
}
New-DbaReplPublication @pub

# view publications
Get-DbaReplPublication -SqlInstance mssql1

# add an article to each publication
$article = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Publication = 'testpub'
    Schema      = 'dbo'
    Name        = 'Customers'
    Filter      = "City = 'Dublin'"
}
Add-DbaReplArticle @article

$article = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Publication = 'Mergey'
    Schema      = 'dbo'
    Name        = 'Products'
}
Add-DbaReplArticle @article

$article = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Publication = 'snappy'
    Schema      = 'dbo'
    Name        = 'Suppliers'
}
Add-DbaReplArticle @article

# view articles
Get-DbaReplArticle -SqlInstance mssql1

# and view publications
Get-DbaReplPublication -SqlInstance mssql1

# and view articles from publications - magic of objects
(Get-DbaReplPublication -SqlInstance mssql1 -Name testpub).Articles

# add subscriptions
$sub = @{
    SqlInstance               = 'mssql1'
    Database                  = 'Northwind'
    SubscriberSqlInstance     = 'mssql2'
    SubscriptionDatabase      = 'Northwind'
    PublicationName           = 'testpub'
    Type                      = 'Push'
    SubscriptionSqlCredential = $credential # because we want to use sqlauth in our containers
}
New-DbaReplSubscription @sub

$sub = @{
    SqlInstance               = 'mssql1'
    Database                  = 'Northwind'
    SubscriberSqlInstance     = 'mssql2'
    SubscriptionDatabase      = 'NorthwindMerge'
    PublicationName           = 'Mergey'
    Type                      = 'Push'
    SubscriptionSqlCredential = $credential # because we want to use sqlauth in our containers
}
New-DbaReplSubscription @sub

$sub = @{
    SqlInstance               = 'mssql1'
    Database                  = 'Northwind'
    SubscriberSqlInstance     = 'mssql2'
    SubscriptionDatabase      = 'NorthwindSnap'
    PublicationName           = 'Snappy'
    Type                      = 'Push'
    SubscriptionSqlCredential = $credential # because we want to use sqlauth in our containers
}
New-DbaReplSubscription @sub

# view subscriptions
Get-DbaReplSubscription -SqlInstance mssql1

#View publications again
Get-DbaReplPublication -SqlInstance mssql1

# start snapshot agent
Get-DbaAgentJob -SqlInstance mssql1 -Category repl-snapshot | Start-DbaAgentJob

## MAKE SURE THAT ALL WORKED... Look at Replication Monitor

## add some data that matches the filter
$query = "INSERT INTO dbo.Customers
(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES
('DUBTS', 'Dublin Tech Solutions', 'John Doe', 'Manager', '123 Dublin Street', 'Dublin', 'Leinster', 'D01', 'Ireland', '0123456789', '0123456789'),
('IRSSV', 'Irish Software Services', 'Jane Smith', 'Director', '456 Dublin Avenue', 'Dublin', 'Leinster', 'D02', 'Ireland', '0234567891', '0234567891'),
('EMCLD', 'Emerald Cloud Computing', 'Robert Johnson', 'CEO', '789 Dublin Road', 'Dublin', 'Leinster', 'D03', 'Ireland', '0345678912', '0345678912'),
('SHADA', 'Shamrock Data Analytics', 'Emily Davis', 'CFO', '321 Dublin Lane', 'Dublin', 'Leinster', 'D04', 'Ireland', '0456789123', '0456789123'),
('CELCY', 'Celtic Cybersecurity', 'William Brown', 'CTO', '654 Dublin Park', 'Dublin', 'Leinster', 'D05', 'Ireland', '0567891234', '0567891234');
"
Invoke-DbaQuery -SqlInstance mssql1 -Database Northwind -Query $query


# remove subscriptions
$sub = @{
    SqlInstance           = 'mssql1'
    Database              = 'Northwind'
    SubscriptionDatabase  = 'Northwind'
    SubscriberSqlInstance = 'mssql2'
    PublicationName       = 'testPub'
}
Remove-DbaReplSubscription @sub

$sub = @{
    SqlInstance           = 'mssql1'
    Database              = 'Northwind'
    SubscriptionDatabase  = 'NorthwindMerge'
    SubscriberSqlInstance = 'mssql2'
    PublicationName       = 'Mergey'
    Confirm               = $false
}
Remove-DbaReplSubscription @sub

$sub = @{
    SqlInstance           = 'mssql1'
    Database              = 'Northwind'
    SubscriptionDatabase  = 'NorthwindSnap'
    SubscriberSqlInstance = 'mssql2'
    PublicationName       = 'snappy'
    Confirm               = $false
}
Remove-DbaReplSubscription @sub

# remove an article
## we could do it the same way...
# but don't run this...
$article = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Publication = 'testpub'
    Schema      = 'dbo'
    Name        = 'Customers'
}
Remove-DbaReplArticle @article

# remove an article
$article = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Publication = 'Mergey'
    Schema      = 'dbo'
    Name        = 'Products'
}
Remove-DbaReplArticle @article

# remove an article
$article = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Publication = 'snappy'
    Schema      = 'dbo'
    Name        = 'Suppliers'
}
Remove-DbaReplArticle @article

# We can also use piping
# using the -WhatIf parameter
Get-DbaReplArticle -SqlInstance mssql1 | Remove-DbaReplArticle -WhatIf

# and run it for real
Get-DbaReplArticle -SqlInstance mssql1 | Remove-DbaReplArticle

## remove publications
$pub = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Name        = 'TestPub'
}
Remove-DbaReplPublication @pub

$pub = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Name        = 'Snappy'
    Confirm     = $false
}
Remove-DbaReplPublication @pub

$pub = @{
    SqlInstance = 'mssql1'
    Database    = 'Northwind'
    Name        = 'Mergey'
    Confirm     = $false
}
Remove-DbaReplPublication @pub

# remove all the publications with piping
Get-DbaReplPublication -SqlInstance mssql1 | Remove-DbaReplPublication

# disable publishing
Disable-DbaReplPublishing -SqlInstance mssql1 -force

<#
Are you sure you want to perform this action?
Performing the operation "Disabling and removing publishing on mssql1" on target "mssql1".
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): y
WARNING: [15:20:26][Disable-DbaReplPublishing] Unable to disable replication publishing | Cannot drop server 'mssql1' as Distribution Publisher because there are databases enabled for replication on that server.
Changed database context to 'distribution'.
#>

# disable distribution
Disable-DbaReplDistributor -SqlInstance  mssql1

# check the status
Get-DbaReplServer -SqlInstance mssql1

#regionend

Get-Index