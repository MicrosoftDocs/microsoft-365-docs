---
title: Use PowerShell to connect Shifts to UKG Pro Workforce Management
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: harrywong
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to use PowerShell to integrate Shifts with UKG Pro Workforce Management.
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

# Use PowerShell to connect Shifts to UKG Pro Workforce Management

## Overview

Use the [Microsoft Teams Shifts connector for UKG Pro Workforce Management](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-pro-workforce-management) to integrate the Shifts app in Microsoft Teams with UKG Pro Workforce Management (UKG Pro WFM). Your frontline workers can seamlessly view and manage their schedules in UKG Pro WFM from within Shifts.

In this article, we walk you through how to use PowerShell to set up and configure the connector to integrate Shifts with UKG Pro WFM.

To set up the connection, you run a PowerShell script. The script configures the connector, applies sync settings, creates the connection, and maps UKG Pro WFM instances (also called WFM instances) to teams in Teams. Sync settings determine the features enabled in Shifts and the schedule information that's synced between UKG Pro WFM and Shifts. Mappings define the sync relationship between your WFM instances and teams in Teams. You can map to existing teams and new teams.

We provide two scripts. You can use either script, depending on whether you want to map to existing teams or create new teams to map to.

You can set up multiple connections, each with different sync settings. For example, if your organization has multiple locations with different schedule requirements, create a connection with unique sync settings for each location. Keep in mind that a WFM instance can only be mapped to one team at any given time. If an instance is already mapped to a team, it can't be mapped to another team.

With UKG Pro WFM as the system of record, your frontline workers can efficiently manage their schedules and availability in Shifts on their devices. Frontline managers can continue to use UKG Pro WFM to set up schedules.

> [!NOTE]
> You can also use the [Shifts connector wizard](shifts-connector-wizard-ukg.md) in the Microsoft 365 admin center to connect Shifts to UKG Pro WFM.

## Before you begin

### Prerequisites

Take time to review the information and complete all prerequisite and configuration tasks in [Prerequisites and requirements for the Teams Shifts connector for UKG Pro Workforce Management](shifts-connector-ukg-prerequisites.md).

Make sure that you complete all the tasks before you follow the steps in this article.

### Admin role to manage the connector using PowerShell

[!INCLUDE [shifts-connector-admin-role](includes/shifts-connector-admin-role.md)]

## Set up your environment

[!INCLUDE [shifts-connector-set-up-environment](includes/shifts-connector-set-up-environment.md)]

## Connect to Teams

Run the following to connect to Microsoft Teams.

```powershell
Connect-MicrosoftTeams
```

When you're prompted, sign in using your admin credentials. You're now set up to run the scripts in this article and Shifts connector cmdlets.

## Identify the teams you want to map

> [!NOTE]
> Complete this step if you're mapping WFM instances to existing teams. If you're creating new teams to map to, you can skip this step.

In the Azure portal, go to the [All groups](https://ms.portal.azure.com/#blade/Microsoft_AAD_IAM/GroupsManagementMenuBlade/AllGroups) page to get a list of the TeamIds of teams in your organization.

Take note of the TeamIds of the teams you want to map. The script will prompt you to enter this information.

> [!NOTE]
> If one or more teams have an existing schedule, the script will remove the schedules from those teams. Otherwise, you'll see duplicate shifts.

## Run the script

Run one of the following scripts, depending on whether you're creating a new team or mapping to an existing team:

- To set up a connection, create a new team in Teams, and map a WFM instance to the new team, run the [new teams script](#set-up-a-connection-and-create-a-new-team).
- To set up a connection and map WFM instances to existing teams in Teams, run the [existing teams script](#set-up-a-connection-and-map-an-existing-team).

Follow the on-screen instructions when you run the script. The script completes the following actions:

1. Test and verify the connection to UKG Pro WFM using the UKG Pro WFM service account credentials and service URLs that you enter.
1. Apply sync settings. These settings include the sync frequency (in minutes) and the schedule data synced between UKG Pro WFM and Shifts. You can enable schedule data defined by these scenarios:  `Shift`, `SwapRequest`, `OfferShiftRequest`, `UserShiftPreferences`, `OpenShift`, `OpenShiftRequest`, `TimeOff`, `TimeOffRequest`.

    To learn more, see [New-CsTeamsShiftsConnectionInstance](/powershell/module/teams/new-csteamsshiftsconnectioninstance). To see the list of supported sync options for each parameter, run [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector).

    > [!NOTE]
    > The script enables sync for each supported sync option. If you want to change sync settings, you can do so after the connection is set up. To learn more, see [Use PowerShell to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-powershell-manage.md).

1. Map WFM instances to your teams in Teams.
    - If you chose to run the [new teams script](#set-up-a-connection-and-create-a-new-team) to create new teams, mappings are based on the new teams you create.
    - If you chose to run the [existing teams script](#set-up-a-connection-and-map-an-existing-team) to map existing teams, mappings are based on WFM instance IDs and TeamIds that you enter. If a team has an existing schedule, the script removes all schedule data.

    After you run the script, a **Success** message confirms if your connection is successfully set up.

## Manage your connection

After a connection is set up, you can manage and make changes to it in the Microsoft 365 admin center or by using PowerShell.

### Use the Microsoft 365 admin center

The Connector Management page lists each connection that you've set up, along with information such as health status and sync interval details. You can also access the wizard to make changes to any of your connections. For example, you can update sync settings and team mappings.

To learn more, see [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-admin-center-manage.md).

### Use PowerShell

You can use PowerShell to view an error report, change connection settings, disable sync, and more. For step-by-step guidance, see [Use PowerShell to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-powershell-manage.md).

## Scripts

### Set up a connection and create a new team

```powershell
#Map WFM instances to teams script
Write-Output "Map WFM sites to teams"
Start-Sleep 1

#Ensure Teams module is at least version x
Write-Output "Checking Teams module version"
try {
    Get-InstalledModule -Name "MicrosoftTeams" -MinimumVersion 5.2.0
} catch {
    throw
}

#Connect to MS Graph
Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"

#List connector types available
Write-Output "Listing connector types available"
$UkgId = "95BF2848-2DDA-4425-B0EE-D62AEED4C0A0"
$connectors = Get-CsTeamsShiftsConnectionConnector
Write-Output $connectors
$Ukg = $connectors | Where-Object {$_.Id -match $UkgId}
if ($NULL -eq $Ukg) {
    throw "UKG Dimensions not currently supported"
}

#Prompt for entering of WFM username and password
$WfmUserName = Read-Host -Prompt 'Input your UKG account username'
$WfmPwd = Read-Host -Prompt 'Input your UKG account password' -AsSecureString
$plainPwd =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($WfmPwd))

#Test connection settings
Write-Output "Testing connection settings"
$ConnectionName = Read-Host -Prompt 'Input connection name'
$apiUrl = Read-Host -Prompt 'Input connector api url'
$ssoUrl = Read-Host -Prompt 'Input connector sso url'
$clientId = Read-Host -Prompt 'Input connector client id'
$AppKey = Read-Host -Prompt 'Input your app key' -AsSecureString
$plainKey =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($AppKey))
$ClientSecret = Read-Host -Prompt 'Input your client secret' -AsSecureString
$plainSecret =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($ClientSecret))

$testResult = Test-CsTeamsShiftsConnectionValidate `
    -Name $ConnectionName `
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
if ($NULL -ne $testResult.Code) {
    Write-Output $testResult
    throw "Validation failed, conflict found"
}
Write-Output "Test complete, no conflicts found"

#Create a connection
Write-Output "Creating a connection"
$ConnectionResponse = New-CsTeamsShiftsConnection `
    -Name $ConnectionName `
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

$ConnectionId = $ConnectionResponse.Id
if ($null -ne $ConnectionId){
    Write-Output "Successfully created connection"
} else {
    throw "Connection creation failed"
}

#Create a connection instance
Write-Output "Creating a connection instance"
$designatedActorName = Read-Host -Prompt "Input Microsoft 365 System Account (person@contoso.com)"
$designator = Get-MgUser -UserId $designatedActorName
$teamsUserId = $designator.Id
$syncFreq = Read-Host -Prompt "Input sync frequency in minutes"
$InstanceName = Read-Host -Prompt "Input connection instance name"

#Read sync scenarios for connection instance
function GetSyncScenarioSetting {
    param (
        $SettingName
    )
    $TwoWay = New-Object System.Management.Automation.Host.ChoiceDescription '&TwoWay', 'TwoWay'
    $Disabled = New-Object System.Management.Automation.Host.ChoiceDescription '&Disabled', 'Disabled'
    $FromWfmToShifts = New-Object System.Management.Automation.Host.ChoiceDescription '&FromWfmToShifts', 'FromWfmToShifts'
    $options = [System.Management.Automation.Host.ChoiceDescription[]]($TwoWay, $Disabled, $FromWfmToShifts)
    $result = $host.ui.PromptForChoice("Set sync scenario for $SettingName", "", $options, 0)

    switch ($result)
    {
        0 { return "TwoWay" }
        1 { return "Disabled" }
        2 { return "FromWfmToShifts" }
    }
}
$SyncScenarioOfferShiftRequest = GetSyncScenarioSetting "Offer Shift Request"
$SyncScenarioOpenShift = GetSyncScenarioSetting "Open Shift"
$SyncScenarioOpenShiftRequest = GetSyncScenarioSetting "Open Shift Request"
$SyncScenarioShift = GetSyncScenarioSetting "Shift"
$SyncScenarioSwapRequest = GetSyncScenarioSetting "Swap Request"
$SyncScenarioTimeCard = GetSyncScenarioSetting "Time Card"
$SyncScenarioTimeOff = GetSyncScenarioSetting "Time Off"
$SyncScenarioTimeOffRequest = GetSyncScenarioSetting "Time Off Request"
$SyncScenarioUserShiftPreference = GetSyncScenarioSetting "User Shift Preferences"

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
    -ConnectionId $ConnectionId `
    -ConnectorAdminEmail $AdminEmailList `
    -DesignatedActorId $teamsUserId `
    -Name $InstanceName `
    -SyncFrequencyInMin $syncFreq `
    -SyncScenarioOfferShiftRequest $SyncScenarioOfferShiftRequest `
    -SyncScenarioOpenShift $SyncScenarioOpenShift `
    -SyncScenarioOpenShiftRequest $SyncScenarioOpenShiftRequest `
    -SyncScenarioShift $SyncScenarioShift `
    -SyncScenarioSwapRequest $SyncScenarioSwapRequest `
    -SyncScenarioTimeCard $SyncScenarioTimeCard `
    -SyncScenarioTimeOff $SyncScenarioTimeOff `
    -SyncScenarioTimeOffRequest $SyncScenarioTimeOffRequest `
    -SyncScenarioUserShiftPreference $SyncScenarioUserShiftPreference

$InstanceId = $InstanceResponse.id
if ($null -ne $InstanceId){
    Write-Output "Success"
} else {
    throw "Connector instance creation failed"
}

#Keep mapping teams until user stops it
$mappings=@()
while ($true)
{
    #Create a new Teams team with owner set to system account and name set to the site name
    Write-Output "Creating a Teams team"
    $teamsTeamName = Read-Host -Prompt "Input the Teams team name"
    $Team = New-Team -DisplayName $teamsTeamName -Visibility "Public" -Owner $teamsUserId
    Write-Output "Successfully created a team"
    $TeamsTeamId=$Team.GroupId

    #Retrieve the list of wfm locations
    Write-Output "Listing the WFM team sites"
    $WfmTeamIds = Get-CsTeamsShiftsConnectionWfmTeam -ConnectorInstanceId $InstanceId
    Write-Output $WfmTeamIds
    if (($NULL -ne $WfmTeamIds) -and ($WfmTeamIds.Count -gt 0)){
        [System.String]$WfmTeamId = Read-Host -Prompt "Input the ID of WFM team you want to map"
    }
    else {
        throw "The WfmTeamId list is null or empty"
    }

    #Retrieve the list of WFM users and their roles
    Write-Output "Listing WFM users and roles"
    $WFMUsers = Get-CsTeamsShiftsConnectionWfmUser -ConnectorInstanceId $InstanceId -WfmTeamId $WfmTeamId
    Write-Output $WFMUsers

    #Add users to the Team for Shifts
    Write-Output "Adding users to Teams team"
    $currentUser = Read-Host -Prompt "Input the current user's user name or AAD ID"
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
        Write-Output "There are WFM users not existed in Teams tenant:"
        Write-Output $failedWfmUsers
    }

    #Enable scheduling in the group
    $RequestBody = @{
        Enabled = $true
        TimeZone = "America/Los_Angeles"
    }
    $teamUpdateUrl="https://graph.microsoft.com/v1.0/teams/"+$TeamsTeamId+"/schedule"
    Invoke-MgGraphRequest -Uri $teamUpdateUrl -Method PUT -Body $RequestBody

    #Create a mapping of the new team to the instance
    Write-Output "Create a mapping of the new team to the site"
    $TimeZone = Read-Host -Prompt "Input the time zone of team mapping"
    $mapping = @{
        teamId = $TeamsTeamId
        wfmTeamId = $WfmTeamId
        timeZone = $TimeZone
        }
    $mappings += , $mapping

    $title    = 'Connecting another team'
    $question = 'Would you like to connect another team?'
    $choices  = '&Yes', '&No'

    $decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
    if ($decision -eq 1) {
        break
    }
}
$batchMappingResponse = New-CsTeamsShiftsConnectionBatchTeamMap -ConnectorInstanceId $InstanceId -TeamMapping @($mappings)
if ($null -ne $batchMappingResponse.OperationId){
    "The mapping has begun asynchronously. To query mapping results run Get-CsTeamsShiftsConnectionOperation with the operation Id."
}
else {
    throw "The mapping has failed due to validation errors."
}
Write-Output $batchMappingResponse

Remove-TeamUser -GroupId $TeamsTeamId -User $currentUser -Role Owner
Disconnect-MgGraph
```

### Set up a connection and map an existing team

```powershell
#Map WFM instances to existing teams script
Write-Host "Map WFM sites to existing teams"
Start-Sleep 1

#Ensure Teams module is at least version x
Write-Host "Checking Teams module version"
try {
    Get-InstalledModule -Name "MicrosoftTeams" -MinimumVersion 5.2.0
} catch {
    throw
}

#Connect to MS Graph
Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"

#List connector types available
Write-Output "Listing connector types available"
$UkgId = "95BF2848-2DDA-4425-B0EE-D62AEED4C0A0"
$connectors = Get-CsTeamsShiftsConnectionConnector
Write-Output $connectors
$Ukg = $connectors | Where-Object {$_.Id -match $UkgId}
if ($NULL -eq $Ukg) {
    throw "UKG Dimensions not currently supported"
}

#Prompt for entering of WFM username and password
$WfmUserName = Read-Host -Prompt 'Input your UKG account username'
$WfmPwd = Read-Host -Prompt 'Input your UKG account password' -AsSecureString
$plainPwd =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($WfmPwd))

#Test connection settings
Write-Output "Testing connection settings"
$ConnectionName = Read-Host -Prompt 'Input connection name'
$apiUrl = Read-Host -Prompt 'Input connector api url'
$ssoUrl = Read-Host -Prompt 'Input connector sso url'
$clientId = Read-Host -Prompt 'Input connector client id'
$AppKey = Read-Host -Prompt 'Input your app key' -AsSecureString
$plainKey =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($AppKey))
$ClientSecret = Read-Host -Prompt 'Input your client secret' -AsSecureString
$plainSecret =[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($ClientSecret))

$testResult = Test-CsTeamsShiftsConnectionValidate `
    -Name $ConnectionName `
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
if ($NULL -ne $testResult.Code) {
    Write-Output $testResult
    throw "Validation failed, conflict found"
}
Write-Output "Test complete, no conflicts found"

#Create a connection
Write-Output "Creating a connection"
$ConnectionResponse = New-CsTeamsShiftsConnection `
    -Name $ConnectionName `
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

$ConnectionId = $ConnectionResponse.Id
if ($null -ne $ConnectionId){
    Write-Output "Successfully created connection"
} else {
    throw "Connection creation failed"
}

#Create a connection instance
Write-Output "Creating a connection instance"
$designatedActorName = Read-Host -Prompt "Input Microsoft 365 System Account (person@contoso.com)"
$designator = Get-MgUser -UserId $designatedActorName
$teamsUserId = $designator.Id
$syncFreq = Read-Host -Prompt "Input sync frequency in minutes"
$InstanceName = Read-Host -Prompt "Input connection instance name"

#Read sync scenarios for connection instance
function GetSyncScenarioSetting {
    param (
        $SettingName
    )
    $TwoWay = New-Object System.Management.Automation.Host.ChoiceDescription '&TwoWay', 'TwoWay'
    $Disabled = New-Object System.Management.Automation.Host.ChoiceDescription '&Disabled', 'Disabled'
    $FromWfmToShifts = New-Object System.Management.Automation.Host.ChoiceDescription '&FromWfmToShifts', 'FromWfmToShifts'
    $options = [System.Management.Automation.Host.ChoiceDescription[]]($TwoWay, $Disabled, $FromWfmToShifts)
    $result = $host.ui.PromptForChoice("Set sync scenario for $SettingName", "", $options, 0)

    switch ($result)
    {
        0 { return "TwoWay" }
        1 { return "Disabled" }
        2 { return "FromWfmToShifts" }
    }
}
$SyncScenarioOfferShiftRequest = GetSyncScenarioSetting "Offer Shift Request"
$SyncScenarioOpenShift = GetSyncScenarioSetting "Open Shift"
$SyncScenarioOpenShiftRequest = GetSyncScenarioSetting "Open Shift Request"
$SyncScenarioShift = GetSyncScenarioSetting "Shift"
$SyncScenarioSwapRequest = GetSyncScenarioSetting "Swap Request"
$SyncScenarioTimeCard = GetSyncScenarioSetting "Time Card"
$SyncScenarioTimeOff = GetSyncScenarioSetting "Time Off"
$SyncScenarioTimeOffRequest = GetSyncScenarioSetting "Time Off Request"
$SyncScenarioUserShiftPreference = GetSyncScenarioSetting "User Shift Preferences"

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
    -ConnectionId $ConnectionId `
    -ConnectorAdminEmail $AdminEmailList `
    -DesignatedActorId $teamsUserId `
    -Name $InstanceName `
    -SyncFrequencyInMin $syncFreq `
    -SyncScenarioOfferShiftRequest $SyncScenarioOfferShiftRequest `
    -SyncScenarioOpenShift $SyncScenarioOpenShift `
    -SyncScenarioOpenShiftRequest $SyncScenarioOpenShiftRequest `
    -SyncScenarioShift $SyncScenarioShift `
    -SyncScenarioSwapRequest $SyncScenarioSwapRequest `
    -SyncScenarioTimeCard $SyncScenarioTimeCard `
    -SyncScenarioTimeOff $SyncScenarioTimeOff `
    -SyncScenarioTimeOffRequest $SyncScenarioTimeOffRequest `
    -SyncScenarioUserShiftPreference $SyncScenarioUserShiftPreference

$InstanceId = $InstanceResponse.id
if ($null -ne $InstanceId){
    Write-Output "Success"
} else {
    throw "Connector instance creation failed"
}

#Keep mapping teams until user stops it
$mappings=@()
while ($true)
{
    $TeamsTeamId = Read-Host -Prompt "Input the ID of the Teams team to be mapped"
    #Clear schedule of the Teams team
    Write-Host "Clear schedule of the existing team"

    $entityTypeString = Read-Host -Prompt 'Input the entity types of clear schedule'
    $Delimiters = ",", ".", ":", ";", " ", "`t"
    $entityType = $entityTypeString -Split {$Delimiters -contains $_}
    $entityType = $entityType.Trim()
    $entityType = $entityType.Split('',[System.StringSplitOptions]::RemoveEmptyEntries)
    Remove-CsTeamsShiftsScheduleRecord -TeamId $TeamsTeamId -ClearSchedulingGroup:$True -EntityType $entityType

    #Retrieve the list of wfm locations
    Write-Output "Listing the WFM team sites"
    $WfmTeamIds = Get-CsTeamsShiftsConnectionWfmTeam -ConnectorInstanceId $InstanceId
    Write-Output $WfmTeamIds
    if (($NULL -ne $WfmTeamIds) -and ($WfmTeamIds.Count -gt 0)){
        [System.String]$WfmTeamId = Read-Host -Prompt "Input the ID of WFM team you want to map"
    }
    else {
        throw "The WfmTeamId list is null or empty"
    }

    #Retrieve the list of WFM users and their roles
    Write-Output "Listing WFM users and roles"
    $WFMUsers = Get-CsTeamsShiftsConnectionWfmUser -ConnectorInstanceId $InstanceId -WfmTeamId $WfmTeamId
    Write-Output $WFMUsers

    #Create a mapping of the existing team to the instance
    Write-Host "Create a mapping of the existing team to the site"
    $TimeZone = Read-Host -Prompt "Input the time zone of team mapping"
    $mapping = @{
        teamId = $TeamsTeamId
        wfmTeamId = $WfmTeamId
        timeZone = $TimeZone
        }
    $mappings += , $mapping

    $title    = 'Connecting another team'
    $question = 'Would you like to connect another team?'
    $choices  = '&Yes', '&No'

    $decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
    if ($decision -eq 1) {
        break
    }
}
$batchMappingResponse = New-CsTeamsShiftsConnectionBatchTeamMap -ConnectorInstanceId $InstanceId -TeamMapping @($mappings)
if ($null -ne $batchMappingResponse.OperationId){
    "The mapping has begun asynchronously. To query mapping results run Get-CsTeamsShiftsConnectionOperation with the operation Id."
}
else {
    throw "The mapping has failed due to validation errors."
}
Write-Output $batchMappingResponse

Disconnect-MgGraph
```

## Shifts connector cmdlets

For help with Shifts connector cmdlets, including the cmdlets used in the scripts, search for **CsTeamsShiftsConnection** in the [Teams PowerShell cmdlet reference](/powershell/teams/intro). Here are links to some commonly used cmdlets, grouped by category:

Connections

- [New-CsTeamsShiftsConnection](/powershell/module/teams/new-csteamsshiftsconnection)
- [Get-CsTeamsShiftsConnection](/powershell/module/teams/get-csteamsshiftsconnection)
- [Update-CsTeamsShiftsConnection](/powershell/module/teams/update-csteamsshiftsconnection)

WFM systems credentials

- [Test-CsTeamsShiftsConnectionValidate](/powershell/module/teams/test-csteamsshiftsconnectionvalidate)

Sync options for supported scenarios

- [Get-CsTeamsShiftsConnectionConnector](/powershell/module/teams/get-csteamsshiftsconnectionconnector)

Remove schedule data

- [Remove-CsTeamsShiftsScheduleRecord](/powershell/module/teams/remove-csteamsshiftsschedulerecord)

Connection instances

- [New-CsTeamsShiftsConnectionInstance](/powershell/module/teams/new-csteamsshiftsconnectioninstance)
- [Get-CsTeamsShiftsConnectionInstance](/powershell/module/teams/get-csteamsshiftsconnectioninstance)
- [Set-CsTeamsShiftsConnectionInstance](/powershell/module/teams/set-csteamsshiftsconnectioninstance)
- [Update-CsTeamsShiftsConnectionInstance](/powershell/module/teams/update-csteamsshiftsconnectioninstance)
- [Remove-CsTeamsShiftsConnectionInstance](/powershell/module/teams/remove-csteamsshiftsconnectioninstance)

User mapping and successful syncing

- [Get-CsTeamsShiftsConnectionSyncResult](/powershell/module/teams/get-csteamsshiftsconnectionsyncresult)
- [Get-CsTeamsShiftsConnectionWfmUser](/powershell/module/teams/get-csteamsshiftsconnectionwfmuser)

Team mapping

- [Get-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/get-csteamsshiftsconnectionteammap)
- [Remove-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/remove-csteamsshiftsconnectionteammap)

Operation ID

- [Get-CsTeamsShiftsConnectionOperation](/powershell/module/teams/get-csteamsshiftsconnectionoperation)

Error reports

- [Get-CsTeamsShiftsConnectionErrorReport](/powershell/module/teams/get-csteamsshiftsconnectionerrorreport)

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Use PowerShell to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-powershell-manage.md)
- [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-admin-center-manage.md)
- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
- [Teams PowerShell overview](/microsoftteams/teams-powershell-overview)
- [Teams PowerShell cmdlet reference](/powershell/teams/intro)
