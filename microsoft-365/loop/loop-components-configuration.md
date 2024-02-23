---
ms.date: 08/21/2023
title: "Manage Loop components in OneDrive and SharePoint"
ms.reviewer: dancost, tonchan
ms.author: mikeplum
author: MikePlumleyMSFT
manager: dansimp
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
- essentials-manage
search.appverid:
- SPO160
- MET150
description: "Learn how to manage Loop components in OneDrive and SharePoint."
---

# Manage Loop components in OneDrive and SharePoint

Loop experiences on Microsoft 365 OneDrive or SharePoint are backed by .loop files (earlier releases of Loop created these as .fluid files). IT administrators need to manage access to Loop experiences from **BOTH**:
1. Cloud Policy
2. SharePoint PowerShell command

If you're looking to manage Loop workspaces in the Loop app, see [Manage Loop workspaces in SharePoint Embedded](/microsoft-365/loop/loop-workspaces-configuration).

## Requirements

Just like other Microsoft 365 experiences, Loop also leverages core services across SharePoint and Microsoft 365. To effectively enable Loop experiences or OneDrive and SharePoint files-backed experiences powered by Fluid Framework, follow the instructions in [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges) to ensure connections to Loop services.

### Microsoft 365 Groups for Cloud Policy

If you want to scope the Cloud Policy settings to only some users in your tenant, you must create or use an existing Microsoft 365 group that defines which users in your organization this policy will apply to. To create a Microsoft 365 group, see [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

> [!NOTE]
> This section isn't required if you choose to apply the Loop settings to all the users in your tenant.

You'll be able to use this group for the Cloud Policy setup procedure specified in [Settings management in Cloud Policy](#settings-management-in-cloud-policy).

If you prefer, you can also create other types of groups to use with Cloud Policy. For more information, see [learn more about creating groups in the Microsoft 365 admin center](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) or [learn more about creating dynamic groups in AzureAD](/azure/active-directory/external-identities/use-dynamic-groups).

### WebSocket connections

Loop's near real-time communications are enabled by the core services that run a WebSocket server. Coauthors in the same session need to establish secured WebSocket connections to this service to send and receive collaborative data such as changes made by others, live cursors, presence, and so on. These experiences are crucial to Loop, and to all the scenarios powered by Fluid framework. So, at the minimum, WebSocket will need to be unblocked from the user's endpoint.

## Available policy settings

There are several IT Admin settings provided to enable the Loop component experiences across Microsoft 365:

|Configure  |Setting Type  |Specific Policy  |Notes  |
|---------|---------|---------|---------|
|Loop component experiences across Microsoft 365*    |  Cloud Policy       | **Create and view Loop files in Microsoft apps that support Loop**        |   Applies to: <br/> - Outlook integration<br> -  Word for the web integration<br> - Whiteboard integration<br> Does **NOT** apply to:<br>   - Loop workspaces<br>   - Teams integration      |
|Outlook integration of Loop experiences     |   Cloud Policy      |  **Create and view Loop files in Outlook**       |  First checks **Create and view Loop files in Microsoft apps that support Loop**; then applies **Create and view Loop files in Outlook**, if applicable.       |
|Teams integration     |     SharePoint property    |   See [Settings management for Loop components in Teams](#settings-management-for-loop-functionality-in-teams)      |  *Teams only checks the settings in this row.       |

## Example configurations

|Scenario  |Policies Configured  |
|---------|---------|
|Enable Loop components everywhere     |  **Create and view Loop files in Microsoft apps that support Loop** = Enabled<br/>[Teams-only] `Set-SPOTenant -IsLoopEnabled $true`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $true`       |
|Enable Loop components everywhere, but Disable integration in Communication app (Outlook, Teams)     |    **Create and view Loop files in Microsoft apps that support Loop** = Enabled<br/>**Create and view Loop files in Outlook** = Disabled<br/>[Teams-only] `Set-SPOTenant -IsLoopEnabled $false`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $false`     |
|Disable Loop components everywhere     |    **Create and view Loop files in Microsoft apps that support Loop** = Disabled<br/>[Teams-only] `Set-SPOTenant -IsLoopEnabled $false`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $false`     |

## User experience expectations when admin settings are configured

As described in this topic, you can control the ability for users in your environment to create new Loop content. You can configure this either via select groups or for your entire tenant. To prevent collaboration between certain groups in your organization, refer to [Information Barriers](/en-us/purview/information-barriers-sharepoint).

### Here's what you should expect when using the Loop IT admin controls configured to Disabled

If configured to Disabled, the settings in this article will prevent creation of new Loop files. However, when Disabled, there are still a few places that Loop experiences can appear.

Because Loop experiences create files in SharePoint and OneDrive, files that were created before IT admins disable new creation can still appear in places such as Microsoft365.com, the Loop component viewer and editor (loop.microsoft.com), and links to Loop components shared in messages or documents. The files themselves are not removed and access to these files is determined by the permissions set on them. Therefore, someone with edit access to a Loop file can still open it and edit it after you have disabled creation of new Loop files. This would be similar to a txt file or any other file in OneDrive or SharePoint.

In addition, because there are no separate licensing requirements for the Loop component viewer and editor, only the requirement that users have access to OneDrive, users will still be able to access the Loop component viewer and editor by visiting loop.microsoft.com and via Loop in the All apps view in Microsoft365.com. The presence of the Loop app in the All apps view is dependent on the user having a license to OneDrive; if you wish to prevent users from seeing the Loop app, you can disable their access to OneDrive, or configure a conditional access policy for loop.microsoft.com so that visits to the page fail to load.

### Additional IT Admin resources

You can learn more about [Loop storage](/microsoft-365/loop/loop-compliance-summary#loop-storage) or [Conditional Access Policies](/sharepoint/control-access-from-unmanaged-devices) and [manually provisioning the Loop experiences for conditional access](/microsoft-365/loop/loop-compliance-summary#manually-initializing-microsoft-loop-app-for-conditional-access-management-in-microsoft-entra).

## Settings management in Cloud Policy

The Loop experiences (except for Microsoft Teams) check the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) settings. See [Available policy settings](#available-policy-settings) to understand how each app checks these settings:

- **Create and view Loop files in Microsoft apps that support Loop**
- **Create and view Loop files in Outlook**

1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, See [Microsoft 365 Groups for Cloud Policy](#microsoft-365-groups-for-cloud-policy).
1. In **Configure Settings**, choose one of the following settings:
    - For **Create and view Loop files in Microsoft apps that support Loop**:
        - recall from above,
            - this setting applies to:
                - Outlook integration
                - Word for the web integration
                - Whiteboard integration
            - this setting does **NOT** apply to:
                - Loop workspaces (see [Manage Loop workspaces in SharePoint Embedded](/microsoft-365/loop/loop-workspaces-configuration))
                - Teams integration (see [Settings management for Loop components in Teams](#settings-management-for-loop-functionality-in-teams))
        - **Enabled**: Loop experience is available to the users.
        - **Disabled**: Loop experience isn't available to the users.
        - **Not configured**: Loop experience is available to the users.   
    - For **Create and view Loop files in Outlook**:
        - **Enabled**: Loop experience is available to the users.
        - **Disabled**: Loop experience isn't available to the users.
        - **Not configured**: Loop experience is available to the users.
1. Save the policy configuration.
1. Reassign priority for any security group, if required. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there will be a delay in the change being reflected as described below:
- If there were existing policy configurations prior to the change, then it will take 90 mins for the change to be reflected.
- If there were no policy configurations prior to the change, then it will take 24 hours for the change to be reflected.

## Settings management for Loop functionality in Teams

You'll need the latest version of SharePoint PowerShell module to enable or disable Loop experiences in Teams. Loop components default to **ON** for all organizations. Because Loop components are designed for collaboration, the components are always shared as editable by others, even if your organization is set to create shareable links that have **view-only** permissions as the default value for other file types. For more information, see the **Learn more** link next to the setting.

|Experience  |SharePoint organization properties  |Notes  |
|---------|---------|---------|
|Loop components in Teams     | `IsLoopEnabled` (boolean)        |     This property controls Loop experiences in Microsoft Teams.    |
|Collaborative meeting notes     |  `IsCollabMeetingNotesFluidEnabled` (boolean)       |    This property controls the collaborative meeting notes integration in Microsoft Teams.     |

To check your tenant's default file permissions, perform the following steps:

1. Sign in to [Microsoft 365 admin center](https://admin.microsoft.com).
2. Under **Admin centers**, select **SharePoint**.
3. Select **Policies** > **Sharing**, and under **File and folder links**, view your organization's default file permissions.

To check if Loop components are enabled, run `Get-SPOTenant` without any arguments. Verify the value of `IsLoopEnabled` is *true*.

To enable Loop components in Teams, run `Set-SPOTenant -IsLoopEnabled $true`. The change will take a short time to apply across your organization.

To disable Loop components in Teams, run `Set-SPOTenant -IsLoopEnabled $false`. The change will take a short time to apply across your organization. If your organization has multiple regions (that is, organization URLs), you need to disable loop components for all the regions to have consistent results across the organization.

## Related topics

- [Overview of Loop components in Teams](/microsoftteams/live-components-in-teams)
- [Use Loop components in Outlook](https://support.microsoft.com/office/9b47c279-011d-4042-bd7f-8bbfca0cb136)
- [Loop components in Whiteboard](https://support.microsoft.com/office/loop-components-in-whiteboard-c5f08f54-995e-473e-be6e-7f92555da347)
- [Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
