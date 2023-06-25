---
ms.date: 03/31/2023
title: "Manage Loop experiences (Loop workspaces and Loop components) in SharePoint"
ms.reviewer: dancost, tonchan
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: sharepoint-online
ms.localizationpriority: medium
ms.topic: article
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
search.appverid:
- SPO160
- MET150
description: "Learn how to manage Loop experiences (Loop workspaces and Loop components) by using PowerShell and Cloud Policy."
---

# Manage Loop experiences (Loop workspaces and Loop components) in SharePoint

Loop experiences on Microsoft 365 OneDrive or SharePoint are backed by .fluid or .loop files. IT admins need to manage access to Loop experiences from **BOTH**:
1. Cloud Policy
2. SharePoint PowerShell command

## Requirements

Just like other Microsoft 365 experiences, Loop also leverages core services across SharePoint and Microsoft 365. To effectively enable Loop experiences or OneDrive and SharePoint files-backed experiences powered by Fluid Framework, follow the instructions in [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges) to ensure connections to Loop services.

#### Microsoft 365 Groups for Cloud Policy

This section is not required if you choose to apply the Loop settings to all the users in your tenant; however, if you want to scope, you must create or use an existing Microsoft 365 group that defines which users in your organization this policy will apply to. You can learn how to create a Microsoft 365 group by visiting [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

You'll be able to use this group for the Cloud Policy setup procedure below.

If you prefer, you can also create other types of groups to use with Cloud Policy. See [learn more about creating groups in the Microsoft 365 admin center](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) or [learn more about creating dynamic groups in AzureAD](/azure/active-directory/external-identities/use-dynamic-groups).

#### Exchange Online license

The Loop app currently requires each user to have an Exchange Online license. If not, users will experience failures in the Loop app, be unable to create new Loop workspaces, will not receive notifications or signals when users collaborate and update, and other experiences may also fail.

#### WebSocket connections

Loop's near real-time communications are enabled by the core services that run a WebSocket server. Coauthors in the same session need to establish secured WebSocket connections to this service to send and receive collaborative data such as changes made by others, live cursors, presence, etc. These experiences are crucial to Loop, and all the scenarios powered by Fluid framework. So, at the minimum, WebSocket will need to be unblocked from the user's endpoint.

## Available policy settings

There are several IT Admin settings provided to enable the Loop app and Loop experiences across Microsoft 365:

|Configure|Setting Type|Specific Policy|Notes
|---|---|---|---|
|Loop app workspaces|Cloud Policy|**Create and view Loop workspaces in Loop**|*Loop app only checks the setting in this row|
|Loop component experiences across Microsoft 365*|Cloud Policy|**Create and view Loop files in Microsoft apps that support Loop**|Applies to:<br/>- Outlook integration<br/>- Word for the web integration<br/>- Whiteboard integration<br/>Does NOT apply to:<br/>- Loop app<br/>- Teams integration|
|Outlook integration of Loop experiences|Cloud Policy|**Create and view Loop files in Outlook**|First checks **Create and view Loop files in Microsoft apps that support Loop**, then applies **Create and view Loop files in Outlook** if applicable|
|Teams integration|SharePoint property|See [Settings management for Loop components in Teams](#settings-management-for-loop-functionality-in-teams)|*Teams only checks the setting in this row|

## Example configurations

|Scenario|Policies Configured|
|---|---|
|Enable Loop workspaces in the app and Loop components everywhere|**Create and view Loop workspaces in Loop** = Enabled<br/>**Create and view Loop files in Microsoft apps that support Loop** = Enabled<br/>[Teams-only] `Set-SPOTenant -IsLoopEnabled $true`|
|Enable Loop components everywhere<br/>Disable Loop workspaces in the app during public preview|**Create and view Loop workspaces in Loop** = Disabled<br/>**Create and view Loop files in Microsoft apps that support Loop** = Enabled<br/>[Teams-only] `Set-SPOTenant -IsLoopEnabled $true`|
|Enable Loop components everywhere, but Disable in eCommunication (Outlook, Teams)<br/>Disable Loop workspaces in the app during public preview|**Create and view Loop workspaces in Loop** = Disabled<br/>**Create and view Loop files in Microsoft apps that support Loop** = Enabled<br/>**Create and view Loop files in Outlook** = Disabled<br/>[Teams-only] `Set-SPOTenant -IsLoopEnabled $false`|

## Settings management in Cloud Policy

The Loop experiences (except for Microsoft Teams) check the following Cloud Policy settings. See [Available policy settings](#available-policy-settings) to understand how each app checks these settings:

- **Create and view Loop files in Microsoft apps that support Loop**
- **Create and view Loop files in Outlook**
- **Create and view Loop workspaces in Loop**
    - Note: this policy was previously mistitled 'Create and view Loop files in Loop'

See the [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) setting templates for more information on the settings above.

> [!TIP]
> If you're new to Cloud Policy and looking to enable the Loop app for your organization during the public preview, you may appreciate a more step by step document for how to roll out Cloud Policy settings to your tenant. If so, check out this Tech Community blog: [Learn how to enable the Microsoft Loop app, now in Public Preview](https://techcommunity.microsoft.com/t5/microsoft-365-blog/learn-how-to-enable-the-microsoft-loop-app-now-in-public-preview/ba-p/3769013).

To configure these Cloud Policy settings:
1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
2. Select **Customization** from the left pane.
3. Select **Policy Management**.
4. Create a new policy configuration or edit an existing one.
5. In **Choose the scope**, choose either the "all users" option or select the group for which you want to apply the policy. See [Microsoft 365 Groups for Cloud Policy](#microsoft-365-groups-for-cloud-policy) for more information.
6. In **Configure Settings**, choose one of the settings listed at the top of this section.
7. In configuration setting, choose one of the following:
    - For **Create and view Loop files in Microsoft apps that support Loop**
        - **Enabled**: Loop experience is available to users.
        - **Disabled**: Loop experience is not available to users.
        - **Not configured**: Loop experience is available to users.
    - For **Create and view Loop files in Outlook**
        - **Enabled**: Loop experience is available to users.
        - **Disabled**: Loop experience is not available to users.
        - **Not configured**: Loop experience is available to users.
    - For **Create and view Loop workspaces in Loop**
        - **Enabled**: Loop app and creation of workspaces is available to users.
        - **Disabled**: Loop app creation of workspaces is not available to users.
        - **Not configured**: Loop app and creation of workspaces is not available to users.
            - Loop during Public Preview is IT Admin Opt-in by default.
            - Loop app will still open Loop components when workspaces is disabled. If this is not rolled out to your environment, Loop component will open in Office.com.
            - Ensure additional [Loop service requirements](#requirements) are met.
8. Save the policy configuration.
9. Reassign priority for any security group if required. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)
10. In case you create a new policy configuration or change the configuration for an existing policy, there will be a delay in the change being reflected as follows:
    - If there were existing policy configurations prior to the change, then it will take 90 mins for the change to be reflected.
    - If there were no policy configurations prior to the change then it will take 24 hours for the change to be reflected.

## Settings management for Loop functionality in Teams

You'll need the latest version of SharePoint PowerShell module to enable or disable Loop experiences in Teams. Loop components default to ON for all organizations. Because Loop components are designed for collaboration, the components are always shared as editable by others, even if your organization is set to default to view-only for other file types. See the Learn more link next to the setting for more details.

|Experience|SharePoint organization properties|Notes|
|---|----|---|
|Loop components in Teams|`IsLoopEnabled` (boolean)|This property controls Loop experiences in Microsoft Teams. |
|Collaborative meeting notes|`IsCollabMeetingNotesFluidEnabled` (boolean)|This property controls the collaborative meeting notes integration in Microsoft Teams.|

To check your tenant's default file permissions

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com).
2. Under Admin centers, select **SharePoint**.
3. Select **Policies** > **Sharing**, and under **File and folder links**, view your organization's default file permissions.

To check if Loop components are enabled, run `Get-SPOTenant` without any arguments. Verify the value of IsLoopEnabled is true.

To enable Loop components in Teams, run `Set-SPOTenant -IsLoopEnabled $true`. The change will take a short time to apply across your organization.

The feature will be available on Teams Windows Desktop, Mac, iOS, Android, and web. When enabled, users will see a new option for inserting Loop components in the message compose experience for these clients.

To disable Loop components in Teams, run `Set-SPOTenant -IsLoopEnabled $false`. The change will take a short time to apply across your organization. If your organization has multiple regions (that is, organization URLs), you need to disable loop components for all the regions to have consistent results across the organization.

## eDiscovery for Loop components

Loop components created in Teams or Outlook are discoverable and have eDiscovery workflow support using the Microsoft Purview tool. Currently, these files are stored in the creator’s OneDrive and are available for search and collection, and render in review for both eDiscovery (Standard) and eDiscovery (Premium). The HTML offline export format is supported on eDiscovery (Premium). You can also download and re-upload the files to any OneDrive to view them in their native format.

Microsoft is currently working on a third-party export API solution for Loop components.

> [!NOTE]
> The Loop app and content created in the Loop app does not yet support eDiscovery workflows.

## Related topics

[Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)

[Overview of Loop components in Teams](loop-components-teams.md)

[Use Loop components in Outlook](https://support.microsoft.com/office/9b47c279-011d-4042-bd7f-8bbfca0cb136)

[Use Loop components in Word for the web](https://support.microsoft.com/office/645cc20d-5c98-4bdb-b559-380c5a27c5e5)

[Loop components in Whiteboard](https://support.microsoft.com/office/c5f08f54-995e-473e-be6e-7f92555da347)
