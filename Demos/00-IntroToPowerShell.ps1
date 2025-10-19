<#

 ____                        ____  _          _ _ 
|  _ \ _____      _____ _ __/ ___|| |__   ___| | |
| |_) / _ \ \ /\ / / _ \ '__\___ \| '_ \ / _ \ | |
|  __/ (_) \ V  V /  __/ |   ___) | | | |  __/ | |
|_|   \___/ \_/\_/ \___|_|  |____/|_| |_|\___|_|_|

#>

# What version of PowerShell are we running?
$PSVersionTable

## Find Commands

# Find 'Get' Commands
Get-Command -Verb Get 

# Find Commands with 'Process' in the name
Get-Command -Name *Process*

# Get details about the 'Get-Process' command
Get-Command -Name Get-Process

## Help

# Get Help about... Help
Get-Help

# Get help for Get-Process command
Get-Help Get-Process

# Get detailed help for Get-Process command
Get-Help Get-Process -Detailed

# Get ShowWindow help for Get-Process command
Get-Help Get-Process -ShowWindow # doesn't work in dev container...

# Get examples for Get-Process command
Get-Help Get-Process -Examples

## Run the command!

# Run the Get-Process command
Get-Process

########################
## Back to the Slides ##
########################

## Parameters

# What parameters can we use with Get-Process?
Get-Help Get-Process -Parameter *

# Can also use tab complete
Get-Process -N # might need to do this in console...

# Also show tab with just the dash in console
Get-Process -
# Ctrl+Space on windows to get this

# Get process information for a specific named process
Get-Process -Name pwsh

# Get the Ids of a specific named process
$(Get-Process -Name pwsh).Id

# Get process information for this PowerShell session
Get-Process -Id $PID

## Objects

# Look at the properties and methods of the objects returned by Get-Process
Get-Process | Get-Member

# Get the Working Set (memory usage) of this PowerShell session
$(Get-Process -Id $PID).WS

# Can also kill our own session 
# DO NOT RUN THIS IN THE DEMO...!
$(Get-Process -Id $PID).Kill()

## Magic of the pipeline

# It's an object - a lot more info available so we can pipe it to format list
Get-Process -Id $PID | Format-List *

# Can also grab specific properties
Get-Process -Id $PID | Select-Object Name, Id, CPU, StartTime

# Sort the results by CPU usage
Get-Process | Sort-Object -Property CPU -Descending

# Multiple pipelines commands
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

# Go to another demo
Get-Index