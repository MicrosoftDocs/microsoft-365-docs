---
title: Use PowerShell to manage your Shifts connection to UKG Pro Workforce Management
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: harrywong
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to use PowerShell to manage your Shifts connection to UKG Pro Workforce Management.
ms.localizationpriority: high
ms.collection:
  - M365-collaboration
  - m365-frontline
  - teams-1p-app-admin
appliesto:
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 12/20/2024
---

# Use PowerShell to manage your Shifts connection to UKG Pro Workforce Management

## Overview

The [Microsoft Teams Shifts connector for UKG Pro Workforce Management](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-pro-workforce-management) enables you to integrate the Shifts app in Microsoft Teams with UKG Pro Workforce Management (UKG Pro WFM). Your frontline workers can seamlessly view and manage their schedules in UKG Pro WFM from within Shifts.

You can use the [Shifts connector wizard](shifts-connector-wizard-ukg.md) in the Microsoft 365 admin center or [PowerShell](shifts-connector-ukg-powershell-setup.md) to set up a connection. After a connection is set up, you can manage it by using [Shifts connector PowerShell cmdlets](#shifts-connector-cmdlets).

This article describes how to use PowerShell to do the following:

- [Check connection setup status](#check-connection-setup-status)
- [View an error report for a connection](#view-an-error-report-for-a-connection)
- [Resolve connection errors](#resolve-connection-errors)
- [Change connection settings](#change-connection-settings)
- [Unmap a team from one connection and map it to another connection](#unmap-a-team-from-one-connection-and-map-it-to-another-connection)
- [Disable sync for a connection](#disable-sync-for-a-connection)

This article assumes that you've already set up a connection to UKG Pro WFM, either by using the wizard or PowerShell.

> [!NOTE]
> You can also manage your connection in the Microsoft 365 admin center. For example, you can check the health status and access the wizard to change connection settings. To learn more, see [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-admin-center-manage.md).

## Before you begin

[!INCLUDE [shifts-connector-admin-role](includes/shifts-connector-admin-role.md)]

## Set up your environment

> [!NOTE]
> Make sure you follow these steps to set up your environment before running any of the commands or scripts in this article.

[!INCLUDE [shifts-connector-set-up-environment](includes/shifts-connector-set-up-environment.md)]

7. Connect to Teams.

    ```powershell
    Connect-MicrosoftTeams
    ```

    When you're prompted, sign in using your admin credentials. You're now set up to run the scripts in this article and Shifts connector cmdlets.

## Check connection setup status

[!INCLUDE [shifts-connector-check-setup-status](includes/shifts-connector-check-setup-status.md)]

## View an error report for a connection

[!INCLUDE [shifts-connector-view-error-report](includes/shifts-connector-view-error-report.md)]

> [!NOTE]
> For a complete list of error messages, see [List of error messages](#list-of-error-messages) later in this article.

## Resolve connection errors

### User mapping errors

User mapping errors may occur if one or more users in a WFM instance isn't a member of the mapped team in Teams. To resolve this issue, make sure that the users in the mapped team match the users in the WFM instance.

To view details of unmapped users, [set up your environment](#set-up-your-environment) (if you haven't already), and then run the following script.

```powershell
#View sync errors script
Write-Host "View sync errors"
Start-Sleep 1

#Ensure Teams module is of version x
Write-Host "Checking Teams module version"
try {
    Get-InstalledModule -Name "MicrosoftTeams" -MinimumVersion 4.7.0
} catch {
    throw
}

#List connection instances available
Write-Host "Listing connection instances"
$InstanceList = Get-CsTeamsShiftsConnectionInstance
write $InstanceList

#Get an instance
if ($InstanceList.Count -gt 0){
    $InstanceId = Read-Host -Prompt 'Input the instance ID that you want to retrieve user sync results from'
}
else {
    throw "Instance list is empty"
}

#Get a list of the mappings
Write-Host "Listing team mappings"
$mappings = Get-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId $InstanceId
write $mappings

#For each mapping, retrieve the failed mappings
ForEach ($mapping in $mappings){
    $teamsTeamId = $mapping.TeamId
    $wfmTeamId = $mapping.WfmTeamId
    Write-Host "Failed mapped users in the mapping of ${teamsTeamId} and ${wfmTeamId}:"
    $userSyncResult = Get-CsTeamsShiftsConnectionSyncResult -ConnectorInstanceId $InstanceId -TeamId $teamsTeamId
    Write-Host "Failed AAD users:"
    write $userSyncResult.FailedAadUser
    Write-Host "Failed WFM users:"
    write $userSyncResult.FailedWfmUser
}
```

### Account authorization errors

[!INCLUDE [shifts-connector-account-authorization-errors](includes/shifts-connector-account-authorization-errors.md)]

## Change connection settings

Use this script to change connection settings. Settings that you can change include your WFM service account and password, Microsoft 365 system account, team mappings, and sync settings.

Sync settings include the sync frequency (in minutes) and the schedule data that's synced between your WFM system and Shifts. Schedule data is defined in the following parameters, which you can view by running [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector).

- The **enabledConnectorScenarios** parameter defines data that's synced from your WFM system to Shifts. Options are `Shift`, `SwapRequest`, `OfferShiftRequest`, `UserShiftPreferences`, `OpenShift`, `OpenShiftRequest`, `TimeOff`, `TimeOffRequest`.
- The **enabledWfiScenarios** parameter defines data that's synced from Shifts to your WFM system. Options are `SwapRequest`, `OfferShiftRequest`, `OpenShiftRequest`, `TimeOffRequest`, `UserShiftPreferences`.

    > [!NOTE]
    > If you choose not to sync open shifts, open shift requests, swap requests, or time off requests between Shifts and your WFM system, there's another step you need to do to hide the capability in Shifts. After you run this script, make sure you follow the steps in the [Disable open shifts, open shifts requests, swap requests, and time off requests](#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests) section later in this article.

    > [!IMPORTANT]
    > For settings that you don't want to change, you'll need to re-enter the original settings when you're prompted by the script.

[Set up your environment](#set-up-your-environment) (if you haven't already), and then run the following script.

```powershell
#Update connector instance and mapping script
Write-Host "Update Connector instance and mapping"
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

#List connection instances available
Write-Host "Listing connection instances available"
$InstanceList = Get-CsTeamsShiftsConnectionInstance | where {$_.ConnectorId -match $UkgId}
write $InstanceList

#Prompt for the WFM username and password
$WfmUserName = Read-Host -Prompt 'Input your WFM user name'
$WfmPwd = Read-Host -Prompt 'Input your WFM password' -AsSecureString
$plainPwd =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($WfmPwd))

#Get the instance ID
$InstanceId = Read-Host -Prompt 'Input the instance ID that you want to update'
$Instance = Get-CsTeamsShiftsConnectionInstance -ConnectorInstanceId $InstanceId
$Etag = $Instance.etag

#Change sync setting
$designatorName = Read-Host -Prompt "Input designated actor's user name"
$designator = Get-MgUser -UserId $designatorName
$teamsUserId = $designator.Id
$UpdatedInstanceName = Read-Host -Prompt 'Input new connection instance name'
$updatedConnectorScenarioString = Read-Host -Prompt 'Input new enabled connector scenarios'
$updatedWfiScenarioString = Read-Host -Prompt 'Input new enabled WFI scenarios'
$Delimiters = ",", ".", ":", ";", " ", "`t"
$updatedConnectorScenario = $updatedConnectorScenarioString -Split {$Delimiters -contains $_}
$updatedConnectorScenario = $updatedConnectorScenario.Trim()
$updatedConnectorScenario = $updatedConnectorScenario.Split('',[System.StringSplitOptions]::RemoveEmptyEntries)
$updatedWfiScenario = $updatedWfiScenarioString -Split {$Delimiters -contains $_}
$updatedWfiScenario = $updatedWfiScenario.Trim()
$updatedWfiScenario = $updatedWfiScenario.Split('', [System.StringSplitOptions]::RemoveEmptyEntries)
$apiUrl = $Instance.ConnectorSpecificSettingApiUrl
$ssoUrl = $Instance.ConnectorSpecificSettingSsoUrl
$clientId = $Instance.ConnectorSpecificSettingClientId
$syncFreq = Read-Host -Prompt 'Input new sync frequency'
$AppKey = Read-Host -Prompt 'Input your app key' -AsSecureString
$plainKey =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($AppKey))
$ClientSecret = Read-Host -Prompt 'Input your client secret' -AsSecureString
$plainSecret =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($ClientSecret))

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
$UpdatedInstance = Set-CsTeamsShiftsConnectionInstance `
    -ConnectorInstanceId $InstanceId `
    -ConnectorId $UkgId `
    -ConnectorAdminEmail $AdminEmailList `
    -DesignatedActorId $teamsUserId `
    -EnabledConnectorScenario $updatedConnectorScenario `
    -EnabledWfiScenario $updatedWfiScenario `
    -Name $UpdatedInstanceName `
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
        }) `
    -IfMatch $Etag
if ($UpdatedInstance.Id -ne $null) {
    Write-Host "Success"
}
else {
    throw "Update instance failed"
}
#Get a list of the mappings
Write-Host "Listing mappings"
$TeamMaps = Get-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId $InstanceId
write $TeamMaps

#Modify a mapping
#Remove a mapping
Write-Host "Removing a mapping"
$TeamsTeamId = Read-Host -Prompt 'Input the Teams team ID that you want to unlink'
$WfmTeamId = Read-Host -Prompt 'Input the WFM team ID that you want to unlink'
Remove-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId $InstanceId -TeamId $TeamsTeamId
Write-Host "Success"

#Add a mapping
Write-Host "Adding a mapping"
$TeamsTeamId = Read-Host -Prompt 'Input the Teams team ID that you want to link'
$WfmTeamId = Read-Host -Prompt 'Input the WFM team ID that you want to link'
New-CsTeamsShiftsConnectionTeamMap -ConnectorInstanceId $InstanceId -TeamId $TeamsTeamId -TimeZone "America/Los_Angeles" -WfmTeamId $WfmTeamId
Write-Host "Success"
```

## Disable open shifts, open shifts requests, swap requests, and time off requests

> [!IMPORTANT]
> Follow these steps only if you chose to disable open shifts, open shift requests, swap requests, or time off requests using the script in the [Change connection settings](#change-connection-settings) section earlier in this article or by using the [Set-CsTeamsShiftsConnectionInstance](/powershell/module/teams/set-csteamsshiftsconnectioninstance) cmdlet. Completing this step hides the capability in Shifts. Without this second step, users will still see the capability in Shifts, and will get an "unsupported operation" error message if they try to use it.

To hide open shifts, swap requests, and time off requests in Shifts, use the Graph API [schedule resource type](/graph/api/resources/schedule) to set the following parameters to ```false``` for each team that you mapped to a WFM instance:

- Open shifts: ```openShiftsEnabled```
- Swap requests:  ```swapShiftsRequestsEnabled```
- Time off requests: ```timeOffRequestsEnabled```
- Offer shift requests: ```offerShiftRequestsEnabled```

To hide open shifts requests in Shifts, go to **Settings** in Shifts, and then turn off the **Open shifts** setting.

## Unmap a team from one connection and map it to another connection

[!INCLUDE [shifts-connector-unmap-a-team](includes/shifts-connector-unmap-a-team.md)]

## Disable sync for a connection

Use this script to disable sync for a connection. Keep in mind this script doesn't remove or delete a connection. It turns off sync so that no data is synced between Shifts and your WFM system for the connection that you specify.

[Set up your environment](#set-up-your-environment) (if you haven't already), and then run the following script.

```powershell
#Disable sync script
Write-Host "Disable sync"
Start-Sleep 1

#Ensure Teams module is at least version x
Write-Host "Checking Teams module version"
try {
    Get-InstalledModule -Name "MicrosoftTeams" -MinimumVersion 4.7.0
} catch {
    throw
}

#List connection instances available
$UkgId = "95BF2848-2DDA-4425-B0EE-D62AEED4C0A0"
Write-Host "Listing connection instances"
$InstanceList = Get-CsTeamsShiftsConnectionInstance | where {$_.ConnectorId -match $UkgId}
write $InstanceList

#Get an instance
if ($InstanceList.Count -gt 0){
    $InstanceId = Read-Host -Prompt 'Input the instance ID that you want to disable sync'
    $Instance = Get-CsTeamsShiftsConnectionInstance -ConnectorInstanceId $InstanceId
    $Etag = $Instance.etag
    $InstanceName = $Instance.Name
    $DesignatedActorId = $Instance.designatedActorId
    $apiUrl = $Instance.ConnectorSpecificSettingApiUrl
    $ssoUrl = $Instance.ConnectorSpecificSettingSsoUrl
    $clientId = $Instance.ConnectorSpecificSettingClientId
    $ConnectorAdminEmail = $Instance.ConnectorAdminEmail
}
else {
    throw "Instance list is empty"
}

#Remove scenarios in the mapping
Write-Host "Disabling scenarios in the team mapping"
$UpdatedInstanceName = $InstanceName + " - Disabled"
$UkgId = "95BF2848-2DDA-4425-B0EE-D62AEED4C0A0"
$WfmUserName = Read-Host -Prompt 'Input your WFM user name'
$WfmPwd = Read-Host -Prompt 'Input your WFM password' -AsSecureString
$plainPwd =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($WfmPwd))
$AppKey = Read-Host -Prompt 'Input your app key' -AsSecureString
$plainKey =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($AppKey))
$ClientSecret = Read-Host -Prompt 'Input your client secret' -AsSecureString
$plainSecret =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($ClientSecret))

$UpdatedInstance = Set-CsTeamsShiftsConnectionInstance `
    -ConnectorInstanceId $InstanceId `
    -ConnectorId $UkgId `
    -ConnectorAdminEmail $ConnectorAdminEmail `
    -DesignatedActorId $DesignatedActorId `
    -EnabledConnectorScenario @() `
    -EnabledWfiScenario @() `
    -Name $UpdatedInstanceName `
    -SyncFrequencyInMin 10 `
    -ConnectorSpecificSettings (New-Object Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ConnectorSpecificUkgDimensionsSettingsRequest `
        -Property @{
            apiUrl = $apiUrl
            ssoUrl = $ssoUrl
            appKey = $plainKey
            clientId = $clientId
            clientSecret = $plainSecret
            LoginUserName = $WfmUserName
            LoginPwd = $plainPwd
        }) `
    -IfMatch $Etag

if ($UpdatedInstance.Id -ne $null) {
    Write-Host "Success"
}
else {
    throw "Update instance failed"
}
```

## List of error messages

Here's the list of error messages that you may encounter and information to help you resolve them.

|Error type |Error details |Resolution |
|---------|---------|---------|
|Unable to authenticate workforce management system.|The workforce management system account credentials you've provided are invalid or this account doesn't have the required permissions.|Update your WFM service account credentials in the connection settings. To do this, do one of the following:<ul><li>In the Microsoft 365 admin center, choose **Edit** next to the connection on the Connector Management Console page.</li><li>Use the [Set-CsTeamsShiftsConnectionInstance](/powershell/module/teams/set-csteamsshiftsconnectioninstance) or [Update-CsTeamsShiftsConnectionInstance](/powershell/module/teams/update-csteamsshiftsconnectioninstance) cmdlet.</li><li>Use [this PowerShell script](#change-connection-settings).</li></ul>|
|Unable to authenticate Graph. |Authentication failed. Ensure that you've entered valid credentials for the designated actor and have the required permissions.|Make sure that your Microsoft 365 system account (also known as designated actor) is added as a team owner.<br> Or, update your Microsoft 365 system account credentials in the connection settings.|
|Some users have failed to map correctly|Mapping failed for some users: \<X\> succeeded, \<X\> failed AAD user(s) and \<X\> failed workforce management system user(s).|Use the [Get-CsTeamsShiftsConnectionSyncResult](/powershell/module/teams/get-csteamsshiftsconnectionsyncresult) cmdlet or [this PowerShell script](#user-mapping-errors) to identify the users for whom the mapping failed. Make sure that the users in the mapped team match the users in the WFM instance.|
|Unable to map a team or teams in this batch. |This designated actor profile doesn't have team ownership privileges. |Make sure your Microsoft 365 system account (also known as designated actor) is added as a team owner.<br>If you’ve changed your Microsoft 365 system account, add that account as a team owner, and update the connection settings to use that account.|
|    |This team is already mapped to an existing connector instance. |Unmap the team from the existing connector instance by using the [Remove-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/remove-csteamsshiftsconnectionteammap) cmdlet. Or, create a new connection to remap the team.|
|    |This timezone is invalid. The timezone passed in is not using tz database format.|Make sure that the time zone is correct, and then remap the team.|
|    |We can't find this connector instance.|Map the team to an existing connection.|
|    |This AAD team couldn't be found.|Make sure that the team exists or create a new team.|

## Shifts connector cmdlets

For help with Shifts connector cmdlets, search for **CsTeamsShiftsConnection** in the [Teams PowerShell cmdlet reference](/powershell/teams/intro). Here are links to some commonly used cmdlets.

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
- [Use the Shifts connector wizard to connect Shifts to UKG Pro Workforce Management](shifts-connector-wizard-ukg.md)
- [Use PowerShell to connect Shifts to UKG Pro Workforce Management](shifts-connector-ukg-powershell-setup.md)
- [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-admin-center-manage.md)
- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Teams PowerShell overview](/microsoftteams/teams-powershell-overview)
