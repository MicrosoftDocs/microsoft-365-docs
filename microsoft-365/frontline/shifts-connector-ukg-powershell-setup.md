---
title: Use PowerShell to connect Shifts to UKG Dimensions
author: LanaChin
ms.author: v-lanachin
ms.reviewer:
manager: samanro
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to use PowerShell to integrate Shifts with UKG Dimensions.
ms.localizationpriority: high
ms.collection:
  - M365-collaboration
  - m365-frontline
appliesto:
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Use PowerShell to connect Shifts to UKG Dimensions

## Overview

[!INCLUDE [preview-feature](includes/preview-feature.md)]

Use the [Microsoft Teams Shifts connector for UKG Dimensions](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-dimensions) to integrate the Shifts app in Microsoft Teams with UKG Dimensions. After a connection is set up, your frontline workers can seamlessly view and manage their schedules in UKG Dimensions from within Shifts.

In this article, we walk you through how to use PowerShell to set up and configure the connector to integrate Shifts with UKG Dimensions.

To set up the connection, you run a PowerShell script. The script configures the connector, applies sync settings, creates the connection, and maps UKG Dimensions instances to teams. Sync settings determine the features enabled in Shifts and the schedule information that's synced between UKG Dimensions and Shifts. Mappings define the sync relationship between your UKG Dimensions instances and teams in Teams. You can map to existing teams and new teams.

We provide two scripts. You can use either script, depending on whether you want to map to existing teams or create new teams to map to.

You can set up multiple connections, each with different sync settings. For example, if your organization has multiple locations with different schedule requirements, create a connection with unique sync settings for each location. Keep in mind that a UKG Dimensions instance can only be mapped to one team at any given time. If an instance is already mapped to a team, it can't be mapped to another team.

With UKG Dimensions as the system of record, your frontline workers can efficiently manage their schedules and availability in Shifts on their devices. Frontline managers can continue to use UKG Dimensions to set up schedules.

> [!NOTE]
> You can also use the [Shifts connector wizard](shifts-connector-wizard-ukg.md) in the Microsoft 365 admin center to connect Shifts to UKG Dimensions.

## Before you begin

### Prerequisites

[!INCLUDE [shifts-connector-ukg-prerequisites](includes/shifts-connector-ukg-prerequisites.md)]

### Admin role to manage the connector using PowerShell

[!INCLUDE [shifts-connector-admin-role](includes/shifts-connector-admin-role.md)]

## Set up your environment

[!INCLUDE [shifts-connector-set-up-environment](includes/shifts-connector-set-up-environment.md)]

## Connect to Teams

Run the following to connect to Teams.

```powershell
Connect-MicrosoftTeams
```

When you're prompted, sign in using your admin credentials. You're now set up to run the scripts in this article and Shifts connector cmdlets.

## Identify the teams you want to map

> [!NOTE]
> Complete this step if you're mapping UKG Dimensions instances to existing teams. If you're creating new teams to map to, you can skip this step.

In the Azure portal, go to the [All groups](https://ms.portal.azure.com/#blade/Microsoft_AAD_IAM/GroupsManagementMenuBlade/AllGroups) page to get a list of the TeamIds of teams in your organization.

Take note of the TeamIds of the teams you want to map. The script will prompt you to enter this information.

> [!NOTE]
> If one or more teams have an existing schedule, the script will remove the schedules from those teams. Otherwise, you'll see duplicate shifts.

## Run the script

Run the script:

- To set up a connection and create new teams to map, [run this script](#set-up-a-connection-and-create-new-teams-to-map).
- To set up a connection and map to existing teams, [run this script](#set-up-a-connection-and-map-to-existing-teams).

The script does the following actions. You'll be prompted to enter setup and configuration details.

1. Tests and verifies the connection to UKG Dimensions using the UKG Dimensions service account credentials and service URLs that you enter.
1. Configures the Shifts connector.
1. Applies sync settings. These settings include the sync frequency (in minutes) and the schedule data that's synced between UKG Dimensions and Shifts. Schedule data is defined in the following parameters:

    - The **enabledConnectorScenarios** parameter defines data that's synced from UKG Dimensions to Shifts. Options are `Shift`, `SwapRequest`, `UserShiftPreferences`, `OpenShift`, `OpenShiftRequest`, `TimeOff`, `TimeOffRequest`.
    - The **enabledWfiScenarios** parameter defines data that's synced from Shifts to UKG Dimensions. Options are `SwapRequest`, `OpenShiftRequest`, `TimeOffRequest`, `UserShiftPreferences`.

    To learn more, see [New-CsTeamsShiftsConnectionInstance](/powershell/module/teams/new-csteamsshiftsconnectioninstance). To see the list of supported sync options for each parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector).

    > [!IMPORTANT]
    > The script enables sync for all these options. If you want to change sync settings, you can do so after the connection is set up. To learn more, see [Use PowerShell to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-powershell-manage.md).

1. Creates the connection.
1. Maps UKG Dimensions instances to teams. Mappings are based on the UKG Dimensions instance IDs and TeamIds that you enter or new teams you create, depending on the script that you run. If a team has an existing schedule, the script removes schedule data for the date and time range that you specify.

A Success message on the screen indicates that your connection is successfully set up.

## Manage your connection

After a connection is set up, you can manage and make changes to it in the Microsoft 365 admin center or by using PowerShell.

### Use the Microsoft 365 admin center

The Connector Management page lists each connection that you've set up, along with information such as health status and sync interval details. You can also access the wizard to make changes to any of your connections. For example, you can update sync settings and team mappings.

To learn more, see [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-admin-center-manage.md).

### Use PowerShell

You can use PowerShell to view an error report, change connection settings, disable sync, and more. For step-by-step guidance, see [Use PowerShell to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-powershell-manage.md).

## Scripts

### Set up a connection and create new teams to map

```powershell
#Map WFM instances to teams script
Write-Host "Map WFM sites to teams"
Start-Sleep 1

#Ensure Teams module is at least version x
Write-Host "Checking Teams module version"
try {
    Get-InstalledModule -Name "MicrosoftTeams" -MinimumVersion 4.7.0
} catch {
    throw
}

#Connect to MS Graph
Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"

#List connector types available (comment out if not implemented for preview)
Write-Host "Listing connector types available"
$UkgId = "95BF2848-2DDA-4425-B0EE-D62AEED4C0A0"
$connectors = Get-CsTeamsShiftsConnectionConnector
write $connectors
$Ukg = $connectors | where {$_.Id -match $UkgId}
$enabledConnectorScenario = $Ukg.SupportedScenario
$wfiSupportedScenario = $Ukg.wfiSupportedScenario

#Prompt for entering of WFM username and password
$WfmUserName = Read-Host -Prompt 'Input your WFM user name'
$WfmPwd = Read-Host -Prompt 'Input your WFM password' -AsSecureString
$plainPwd =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($WfmPwd))

#Test connection settings
Write-Host "Testing connection settings"
$InstanceName = Read-Host -Prompt 'Input connection instance name'
$apiUrl = Read-Host -Prompt 'Input connector api url'
$ssoUrl = Read-Host -Prompt 'Input connector sso url'
$clientId = Read-Host -Prompt 'Input connector client id'
$AppKey = Read-Host -Prompt 'Input your app key' -AsSecureString
$plainKey =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($AppKey))
$ClientSecret = Read-Host -Prompt 'Input your client secret' -AsSecureString
$plainSecret =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($ClientSecret))

$testResult = Test-CsTeamsShiftsConnectionValidate `
    -Name $InstanceName `
    -ConnectorId $UkgId `
    -ConnectorSpecificSettings (New-Object Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ConnectorSpecificUkgDimensionsSettingsRequest `
        -Property @{
            apiUrl = $apiUrl
            ssoUrl = $ssoUrl
            appKey = $plainKey
            clientId = $clientId
            clientSecret = $plainSecret
            LoginUserName = $WfmUserName
            LoginPwd = $plainPwd
        })
if ($testResult.Code -ne $NULL) {
    write $testResult
    throw "Validation failed, conflict found"
}
Write-Host "Test complete, no conflicts found"

#Create a connection instance (includes WFM site team ids)
Write-Host "Creating a connection instance"
$designatorName = Read-Host -Prompt "Input designated actor's user name"
$domain = $designatorName.Split("@")[1]
$designator = Get-MgUser -UserId $designatorName
$teamsUserId = $designator.Id
$syncFreq = Read-Host -Prompt "Input sync frequency"

#Read admin email list
[psobject[]]$AdminEmailList = @()
while ($true){
$AdminEmail = Read-Host -Prompt "Enter admin's email to receive error report"
$AdminEmailList += $AdminEmail
$title    = 'Adding another email'
$question = 'Would you like to add another admin email?'
$choices  = '&Yes', '&No'
$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 1) {
    break
}
}
$InstanceResponse = New-CsTeamsShiftsConnectionInstance `
    -ConnectorId $UkgId `
    -ConnectorAdminEmail $AdminEmailList `
    -DesignatedActorId $teamsUserId `
    -EnabledConnectorScenario $enabledConnectorScenario `
    -EnabledWfiScenario $wfiSupportedScenario `
    -Name $InstanceName `
    -SyncFrequencyInMin $syncFreq `
    -ConnectorSpecificSettings (New-Object Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ConnectorSpecificUkgDimensionsSettingsRequest `
        -Property @{
            apiUrl = $apiUrl
            ssoUrl = $ssoUrl
            appKey = $plainKey
            clientId = $clientId
            clientSecret = $plainSecret
            LoginUserName = $WfmUserName
            LoginPwd = $plainPwd
        })
$InstanceId = $InstanceResponse.id
$Etag = $InstanceResponse.etag
if ($InstanceId -ne $null){
    Write-Host "Success"
} else {
    throw "Connector instance creation failed"
}

#Retrieve the list of instances
Write-Host "Listing the WFM team sites"
$WfmTeamIds = Get-CsTeamsShiftsConnectionWfmTeam -ConnectorInstanceId $InstanceId
write $WfmTeamIds
if (($WfmTeamIds -ne $NULL) -and ($WfmTeamIds.Count -gt 0)){
    [System.String]$WfmTeamId = Read-Host -Prompt "Input the ID of WFM team you want to map"
}
else {
    throw "The WfmTeamId list is null or empty"
}

#Retrieve the list of WFM users and their roles
Write-Host "Listing WFM users and roles"
$WFMUsers = Get-CsTeamsShiftsConnectionWfmUser -ConnectorInstanceId $InstanceId -WfmTeamId $WfmTeamId
write $WFMUsers

#Keep mapping teams until user stops it
while ($true)
{

#Create a new Teams team with owner set to system account and name set to the site name
Write-Host "Creating a Teams team"
$teamsTeamName = Read-Host -Prompt "Input the Teams team name"
$Team = New-Team -DisplayName $teamsTeamName -Visibility "Public" -Owner $teamsUserId
Write-Host "Success"
$TeamsTeamId=$Team.GroupId

#Add users to the Team for Shifts
Write-Host "Adding users to Teams team"
$currentUser = Read-Host -Prompt "Input the current user's user name or ID"
Add-TeamUser -GroupId $TeamsTeamId -User $currentUser -Role Owner
$failedWfmUsers=@()
foreach ($user in $WFMUsers) {
    try {
    $userEmail = $user.Name + "@" +$domain
    Add-TeamUser -GroupId $TeamsTeamId -User $userEmail
    } catch {
        $failedWfmUsers+=$user
    }
}
if($failedWfmUsers.Count -gt 0){
    Write-Host "There are WFM users not existed in Teams tenant:"
    write $failedWfmUsers
}

#Enable scheduling in the group
$RequestBody = @{
    Enabled = $true
    TimeZone = "America/Los_Angeles"
}
$teamUpdateUrl="https://graph.microsoft.com/v1.0/teams/"+$TeamsTeamId+"/schedule"
$Schedule = Invoke-MgGraphRequest -Uri $teamUpdateUrl -Method PUT -Body $RequestBody

#Create a mapping of the new team to the instance
Write-Host "Create a mapping of the new team to the site"
$TimeZone = Read-Host -Prompt "Input the time zone of team mapping"
$teamMappingResult = New-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId $InstanceId -TeamId $TeamsTeamId -TimeZone $TimeZone -WfmTeamId $WfmTeamId
Write-Host "Success"

$title    = 'Connecting another team'
$question = 'Would you like to connect another team?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 1) {
    break
}
}
Remove-TeamUser -GroupId $TeamsTeamId -User $currentUser -Role Owner
Disconnect-MgGraph
```

### Set up a connection and map to existing teams

```powershell
#Map WFM instances to existing teams script
Write-Host "Map WFM sites to existing teams"
Start-Sleep 1

#Ensure Teams module is at least version x
Write-Host "Checking Teams module version"
try {
    Get-InstalledModule -Name "MicrosoftTeams" -MinimumVersion 4.7.0
} catch {
    throw
}

#Connect to MS Graph
Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"

#List connector types available (comment out if not implemented for preview)
Write-Host "Listing connector types available"
$UkgId = "95BF2848-2DDA-4425-B0EE-D62AEED4C0A0"
$connectors = Get-CsTeamsShiftsConnectionConnector
write $connectors
$ukg = $connectors | where {$_.Id -match $UkgId}
$enabledConnectorScenario = $ukg.SupportedScenario
$wfiSupportedScenario = $ukg.wfiSupportedScenario

#Prompt for entering of WFM username and password
$WfmUserName = Read-Host -Prompt 'Input your WFM user name'
$WfmPwd = Read-Host -Prompt 'Input your WFM password' -AsSecureString
$plainPwd =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($WfmPwd))

#Test connection settings
Write-Host "Testing connection settings"
$InstanceName = Read-Host -Prompt 'Input connection instance name'
$apiUrl = Read-Host -Prompt 'Input connector api url'
$ssoUrl = Read-Host -Prompt 'Input connector sso url'
$clientId = Read-Host -Prompt 'Input connector client id'
$AppKey = Read-Host -Prompt 'Input your app key' -AsSecureString
$plainKey =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($AppKey))
$ClientSecret = Read-Host -Prompt 'Input your client secret' -AsSecureString
$plainSecret =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($ClientSecret))

$testResult = Test-CsTeamsShiftsConnectionValidate `
    -Name $InstanceName `
    -ConnectorId $UkgId `
    -ConnectorSpecificSettings (New-Object Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ConnectorSpecificUkgDimensionsSettingsRequest `
        -Property @{
            apiUrl = $apiUrl
            ssoUrl = $ssoUrl
            appKey = $plainKey
            clientId = $clientId
            clientSecret = $plainSecret
            LoginUserName = $WfmUserName
            LoginPwd = $plainPwd
        })
if ($testResult.Code -ne $NULL) {
    write $testResult
    throw "Validation failed, conflict found"
}
Write-Host "Test complete, no conflicts found"

#Create a connection instance (includes WFM site team ids)
Write-Host "Creating a connection instance"
$designatorName = Read-Host -Prompt "Input designated actor's user name"
$domain = $designatorName.Split("@")[1]
$designator = Get-MgUser -UserId $designatorName
$teamsUserId = $designator.Id
$syncFreq = Read-Host -Prompt "Input sync frequency. Value should be equal to or more than 10."

#Read admin email list
[psobject[]]$AdminEmailList = @()
while ($true){
$AdminEmail = Read-Host -Prompt "Enter admin's email to receive error report"
$AdminEmailList += $AdminEmail
$title    = 'Adding another email'
$question = 'Would you like to add another admin email?'
$choices  = '&Yes', '&No'
$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 1) {
    break
}
}

$InstanceResponse = New-CsTeamsShiftsConnectionInstance `
    -ConnectorId $UkgId `
    -ConnectorAdminEmail $AdminEmailList `
    -DesignatedActorId $teamsUserId `
    -EnabledConnectorScenario $enabledConnectorScenario `
    -EnabledWfiScenario $wfiSupportedScenario `
    -Name $InstanceName `
    -SyncFrequencyInMin $syncFreq `
    -ConnectorSpecificSettings (New-Object Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ConnectorSpecificUkgDimensionsSettingsRequest `
        -Property @{
            apiUrl = $apiUrl
            ssoUrl = $ssoUrl
            appKey = $plainKey
            clientId = $clientId
            clientSecret = $plainSecret
            LoginUserName = $WfmUserName
            LoginPwd = $plainPwd
        })
$InstanceId = $InstanceResponse.id
$Etag = $InstanceResponse.etag
if ($InstanceId -ne $null){
    Write-Host "Success"
} else {
    throw "Connector instance creation failed"
}

#Retrieve the list of sites
Write-Host "Listing the WFM team sites"
$WfmTeamIds = Get-CsTeamsShiftsConnectionWfmTeam -ConnectorInstanceId $InstanceId
write $WfmTeamIds
if (($WfmTeamIds -ne $NULL) -and ($WfmTeamIds.Count -gt 0)){
    [System.String]$WfmTeamId = Read-Host -Prompt "Input the ID of WFM team you want to map"
}
else {
    throw "The WfmTeamId list is null or empty"
}

#Retrieve the list of WFM users and their roles
Write-Host "Listing WFM users and roles"
$WFMUsers = Get-CsTeamsShiftsConnectionWfmUser -ConnectorInstanceId $InstanceId -WfmTeamId $WfmTeamId
write $WFMUsers

#Keep mapping teams until user stops it
while ($true)
{

$TeamsTeamId = Read-Host -Prompt "Input the ID of the Teams team to be mapped"
#Clear schedule of the Teams team
Write-Host "Clear schedule of the existing team"
$startTime = Read-Host -Prompt "Input the start time of clear schedule"
$endTime = Read-Host -Prompt "Input the end time of clear schedule"

$entityTypeString = Read-Host -Prompt 'Input the entity types of clear schedule'
$Delimiters = ",", ".", ":", ";", " ", "`t"
$entityType = $entityTypeString -Split {$Delimiters -contains $_}
$entityType = $entityType.Trim()
$entityType = $entityType.Split('',[System.StringSplitOptions]::RemoveEmptyEntries)
Remove-CsTeamsShiftsScheduleRecord -TeamId $TeamsTeamId -DateRangeStartDate $startTime -DateRangeEndDate $endTime -ClearSchedulingGroup:$True -EntityType $entityType -DesignatedActorId $teamsUserId

#Create a mapping of the existing team to the instance
Write-Host "Create a mapping of the existing team to the site"
$teamMappingResult = New-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId $InstanceId -TeamId $TeamsTeamId -TimeZone "America/Los_Angeles" -WfmTeamId $WfmTeamId
Write-Host "Success"


$title    = 'Connecting another team'
$question = 'Would you like to connect another team?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
if ($decision -eq 1) {
    break
}
}
Disconnect-MgGraph
```

## Shifts connector cmdlets

For help with Shifts connector cmdlets, including the cmdlets used in the scripts, search for **CsTeamsShiftsConnection** in the [Teams PowerShell cmdlet reference](/powershell/teams/intro). Here are links to some commonly used cmdlets.

- [Get-CsTeamsShiftsConnectionOperation](/powershell/module/teams/get-csteamsshiftsconnectionoperation)
- [New-CsTeamsShiftsConnectionInstance](/powershell/module/teams/new-csteamsshiftsconnectioninstance)
- [Get-CsTeamsShiftsConnectionInstance](/powershell/module/teams/get-csteamsshiftsconnectioninstance)
- [Set-CsTeamsShiftsConnectionInstance](/powershell/module/teams/set-csteamsshiftsconnectioninstance)
- [Update-CsTeamsShiftsConnectionInstance](/powershell/module/teams/update-csteamsshiftsconnectioninstance)
- [Remove-CsTeamsShiftsConnectionInstance](/powershell/module/teams/remove-csteamsshiftsconnectioninstance)
- [Test-CsTeamsShiftsConnectionValidate](/powershell/module/teams/test-csteamsshiftsconnectionvalidate)
- [New-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/new-csteamsshiftsconnectionteammap)
- [Get-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/get-csteamsshiftsconnectionteammap)
- [Remove-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/remove-csteamsshiftsconnectionteammap)
- [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector)
- [Get-CsTeamsShiftsConnectionSyncResult](/powershell/module/teams/get-csteamsshiftsconnectionsyncresult)
- [Get-CsTeamsShiftsConnectionWfmUser](/powershell/module/teams/get-csteamsshiftsconnectionwfmuser)
- [Get-CsTeamsShiftsConnectionWfmTeam](/powershell/module/teams/get-csteamsshiftsconnectionwfmteam)
- [Get-CsTeamsShiftsConnectionErrorReport](/powershell/module/teams/get-csteamsshiftsconnectionerrorreport)
- [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord)

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Use PowerShell to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-powershell-manage.md)
- [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-admin-center-manage.md)
- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Teams PowerShell overview](/microsoftteams/teams-powershell-overview)
- [Teams PowerShell cmdlet reference](/powershell/teams/intro)
