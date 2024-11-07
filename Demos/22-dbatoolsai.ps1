Start-Process https://github.com/potatoqualitee/dbatools.ai
Install-Module dbatools.ai
Install-Module finetuna

$env:OPENAI_API_KEY = 'Just A Fake KEY here'

$AssistantName = 'Jen_AI_{0}' -f (Get-Random -Minimum 0 -Maximum 1000)

$DatabaseConfig = @{
    SqlInstance = 'dbatools1'
    Database    = 'pubs'
}

$AssistantConfig = @{
    Name        = $AssistantName
    Description = 'A test Assistant for looking at the pubs database'
    Model =  'gpt-4o-mini'
}

Get-DbaDatabase  @DatabaseConfig | New-DbaiAssistant @AssistantConfig

$PSDefaultParameterValues = @{
    "Invoke-DbaiQuery:SqlInstance"    = "dbatools1"
    "Invoke-DbaiQuery:SqlCredential"    = $continercredential
    "*-Dba*:*Credential"    = $continercredential
    "Invoke-DbaiQuery:Database"       = "pubs"
    "Invoke-DbaiQuery:AssistantName"  = $AssistantName
}


Invoke-DbaiQuery  -Message "What questions can I ask about the database"

# It can be amazing

dbai how many authors  are there in each  city

dbai list the 2 most active plubishers

dbai when were the last 3 orders

dbai what was the total sales reveue for September 1994

dbai which month had the highest sales revenue in 1994 and how much was it

dbai what is the revenue by year

dbai how many stores are there and which store has the most sales

dbai how many stores are there
dbai which store has the most sales
dbai what is the name of the store with the ID 7131

dbai who are the top 3 authors by number of books

$dbatoolsAssistantName = 'Jen_AI_{0}' -f (Get-Random -Minimum 0 -Maximum 1000)

$AssistantConfig = @{
    Name        = $dbatoolsAssistantName
    Description = 'A test Assistant for dbatools'
    Model =  'gpt-4o-mini'
}
New-DbaiAssistant @AssistantConfig

$PSDefaultParameterValues['Invoke-DbatoolsAI:AssistantName'] = $dbatoolsAssistantName

Get-DbaDatabase -SqlInstance dbatools1,dbatools2 -ExcludeSystem |Select SqlInstance, Name

Invoke-DbatoolsAI -Message "Copy the pubs database from dbatools1 to dbatools2 using the network share \\shared" -Verbose

Get-DbaDatabase -SqlInstance sql1,sql2 -ExcludeSystem |Select SqlInstance, Name
