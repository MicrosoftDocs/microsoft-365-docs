---
ms.date: 05/14/2025
title: "Manage Copilot Pages, Copilot Notebooks, and Loop components in your organization"
ms.reviewer: dancost, tonchan
ms.author: jenz
author: jenzamora
manager: jtremper
recommendations: true
audience: Admin
f1.keywords:
- NOCSH
ms.service: loop
ms.localizationpriority: medium
ms.topic: how-to
ms.collection:
- Strat_SP_admin
- Microsoft 365-collaboration
- Tier3
- essentials-manage
- magic-ai-copilot
search.appverid:
- SPO160
- MET150
description: "Manage Copilot Pages, Copilot Notebooks, and Loop in your organization"
---

# Admin policies for Copilot Pages, Copilot Notebooks, Loop components, and Loop workspaces

Copilot Pages, Copilot Notebooks, and Loop components and integrations are backed by `.loop` files (earlier releases of Loop created these as `.fluid` files), stored in OneDrive, SharePoint, or [SharePoint Embedded](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/cta). Learn more about [storage](/microsoft-365/loop/loop-workspaces-storage-permission#storage), which is quota combined with SharePoint in your tenant. 

Copilot Pages, Copilot Notebooks, Loop workspaces, and the `.loop` files and content created are stored in SharePoint Embedded containers. IT admins can manage creation of Copilot Pages, Copilot Notebooks, and Loop workspaces using Cloud Policy.

IT administrators can manage the creation of Loop components in the Microsoft 365 ecosystem using **BOTH**:

1. Cloud Policy
1. SharePoint PowerShell command (Loop experiences in Teams only)

## Requirements

Just like other Microsoft 365 experiences, Copilot Pages, Copilot Notebooks, and Loop also leverage core services across SharePoint and Microsoft 365. To effectively enable creation of Copilot Pages, Copilot Notebooks, Loop content and Loop integration experiences, follow the instructions in the [Office 365 URLs and IP address ranges](/microsoft-365/enterprise/urls-and-ip-address-ranges) to ensure connections to Loop services (also used by Copilot Pages and Copilot Notebooks) are available and enabled.

### WebSocket connections

Copilot Pages, Copilot Notebooks, and Loop's near real-time communications are enabled by the core services that run a WebSocket server. Coauthors in the same session need to establish secure WebSocket connections to this service to send and receive collaborative data such as changes made by others, live cursors, presence, and so on. Allow list WebSocket traffic to the `*.svc.ms` and `*.office.com` endpoints.

### License requirements

Copilot Pages are available to anyone in Entra ID accounts with a OneDrive license. Copilot pages require a OneDrive site to function. However, if a OneDrive site exists and the license is later removed, Copilot pages continue to work.

Copilot Notebooks require the [Microsoft 365 Copilot license](/copilot/microsoft-365/microsoft-365-copilot-licensing).

Loop components are available to anyone in Entra ID accounts with a OneDrive or SharePoint license.

Licensing through the Loop with workspaces service plan covers the creation of new workspaces and management of workspace members. The full set of experiences enabled and the specific licenses that include the Loop with workspaces service plan are covered in [Loop access via Microsoft 365 subscriptions](https://support.microsoft.com/office/loop-access-via-microsoft-365-subscriptions-92915461-4b14-49a4-9cd4-d1c259292afa). 

### Microsoft 365 Groups for Cloud Policy

If you want to scope the Cloud Policy settings to only some users in your tenant, you must create or use an existing Microsoft 365 group that defines which users in your organization this policy will apply to. To create a Microsoft 365 group, see [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

> [!NOTE]
> This section isn't required if you choose to apply the Cloud Policy settings to all the users in your tenant.

You'll be able to use this group for the Cloud Policy setup procedure specified in [Settings management in Cloud Policy](#settings-management-in-cloud-policy).

If you prefer, you can also create other types of groups to use with Cloud Policy. For more information, see [learn more about creating groups in the Microsoft 365 admin center](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) or [learn more about creating dynamic groups in AzureAD](/azure/active-directory/external-identities/use-dynamic-groups).

### Exchange Online mailboxes

To utilize all Loop app features, including workspace sharing and at mentions, it's necessary for all users to have an Exchange Online mailbox. Those with Exchange On-Premises mailboxes will not have access to the full range of Loop app capabilities.

## Available policy settings

There are several IT Admin policy settings provided to enable creation of Copilot Pages, Copilot Notebooks, and Loop content across Microsoft 365:

|Configure  |Setting Type  |Specific Policy  |Notes  |
|---------|---------|---------|---------|
|Copilot Pages & Copilot Notebooks creation  |  Cloud Policy  |  **Create and view Copilot Pages**  |  Applies to: Copilot Pages and Copilot Notebooks (cloud policy will be retitled soon)  |
|Loop workspaces creation  |  Cloud Policy  |  **Create Loop workspaces in Loop**  |  Applies to: Loop workspaces (previously titled Create and view Loop workspaces in Loop)  |
|Loop component creation and integration across Microsoft 365  |  Cloud Policy  | **Create and view Loop files in Microsoft apps that support Loop**  |  Applies to: <br/> - Outlook integration<br> - [Teams New Calendar](https://support.microsoft.com/en-us/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5) integration<br> - OneNote integration<br> - Whiteboard integration<br> Does **NOT** apply to:<br> - Loop workspaces<br> - Teams integration<br> - Copilot Pages  |
|Outlook creation and integration of Loop experiences  |  Cloud Policy  |  **Create and view Loop files in Outlook**  |  First checks **Create and view Loop files in Microsoft apps that support Loop**; then applies **Create and view Loop files in Outlook**, if applicable.<br/><br/>Applies to: <br/> - Outlook<br/> - [Teams New Calendar](https://support.microsoft.com/en-us/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5)  |
|Teams creation and integration  |  SharePoint property  |  See [Settings management for Loop components in Teams](#settings-management-for-loop-functionality-in-teams)  |  Teams only checks the settings in this row.  |

## Storage based view of the admin policy settings

Configure the creation of content in these locations by using the appropriate policy setting:

|Loop content originally created in|️️️Manage with this policy|Loop content storage|
|-----|-----|-----|
|Copilot Pages|Cloud Policy: **Create and view Copilot Pages**|SharePoint Embedded: ✔️in user-owned container|
|Copilot Notebooks|Cloud Policy: **Create and view Copilot Pages**|SharePoint Embedded: ✔️in user-owned container|
|Loop app, My workspace|Cloud Policy: **Create Loop workspaces in Loop**|SharePoint Embedded: ✔️in user-owned container|
|Loop app, shared workspace|Cloud Policy: **Create Loop workspaces in Loop**|SharePoint Embedded: ✔️in shared container|
|Teams channel meeting (Teams Classic Calendar)|SharePoint property `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $true`|SharePoint Site: 📁`Meetings`|
|Teams channel meeting ([Teams New Calendar](https://support.microsoft.com/en-us/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5))|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop** -or- **Create and view Loop files in Outlook**|SharePoint Site: 📁`Meetings`|
|Teams channel|SharePoint property `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $true`|SharePoint Site: ✔️in Channel folder|
|Teams private chat|SharePoint property `Set-SPOTenant -IsLoopEnabled $true`|User's OneDrive: 📁`Microsoft Teams Chat files`|
|Teams private meeting (Teams Classic Calendar)|SharePoint property `Set-SPOTenant -IsLoopEnabled $true`|User's OneDrive: 📁`Meetings`|
|Teams private meeting ([Teams New Calendar](https://support.microsoft.com/en-us/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5))|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop** -or- **Create and view Loop files in Outlook**|User's OneDrive: 📁`Meetings`|
|Outlook email message|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop** -or- **Create and view Loop files in Outlook**|User's OneDrive: 📁`Attachments`|
|OneNote for Windows or for the web|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop**|User's OneDrive: 📁`OneNote Loop files`|
|Whiteboard|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop**|User's OneDrive: 📁`Whiteboard\Components`|

## Example configurations

|Scenario  |  Policies Configured  |
|---------|---------|
|✅Enable Copilot Pages, Copilot Notebooks, Loop workspaces creation and Loop component creation and integration everywhere  |  ✅ **Create and view Copilot Pages** = Enabled (or Not Configured)<br/>✅ **Create Loop workspaces in Loop** = Enabled (or Not Configured)<br/>✅ **Create and view Loop files in Microsoft apps that support Loop** = Enabled (or Not Configured)<br/>✅ [Teams-only] `Set-SPOTenant -IsLoopEnabled $true`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $true`  |
|✅Enable Copilot Pages, Copilot Notebooks, Loop workspaces creation and Loop component creation and integration everywhere, but ⛔Disable Loop component creation and integration in Communication apps (Outlook, Teams)  |  ✅ **Create and view Copilot Pages** = Enabled (or Not Configured)<br/>✅ **Create Loop workspaces in Loop** = Enabled (or Not Configured)<br/>✅ **Create and view Loop files in Microsoft apps that support Loop** = Enabled (or Not Configured)<br/>⛔ **Create and view Loop files in Outlook** = Disabled<br/>⛔ [Teams-only] `Set-SPOTenant -IsLoopEnabled $false`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $false`  |
|✅Enable Copilot Pages and Copilot Notebooks, but⛔Disable Loop workspace creation and Loop component creation and integration everywhere  |  ✅ **Create and view Copilot Pages** = Enabled (or Not Configured)<br/>⛔ **Create Loop workspaces in Loop** = Disabled<br/>⛔ **Create and view Loop files in Microsoft apps that support Loop** = Disabled<br/>⛔ [Teams-only] `Set-SPOTenant -IsLoopEnabled $false`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $false`  |

## User experience expectations when admin settings are configured

As described in this topic, you can control the ability for users in your environment to create new Copilot Pages, Copilot Notebooks, and Loop content. **You cannot prevent access to existing content using the admin controls.** You can configure the admin controls via select groups or for your entire tenant (except for the Teams controls, which apply to the entire tenant only).

- To prevent collaboration between certain groups in your organization, refer to [Information Barriers](/en-us/purview/information-barriers-sharepoint).
- To prevent access to existing content and the Loop app with workspaces, refer to [Conditional Access policies](/sharepoint/control-access-from-unmanaged-devices).

### Here's what you should expect when using the IT admin controls configured to Disabled

When the IT admin controls in this article are set to Disabled, the creation of new Loop files and creation of new SharePoint Embedded containers is prevented. Existing user data isn't deleted, and users can still find, see, and access existing Copilot Pages, Copilot Notebooks, Loop files and Loop workspaces in both application experiences and in searches.

Even with the admin policies disabled, Loop content and icons may still appear in certain places. Files created before disabling new creation can still be found in Microsoft365.com, the Loop component viewer and editor (loop.cloud.microsoft), and links shared in messages or documents. Access to these files is determined by their permissions, so users with edit access can still open and edit them.

There are no separate licensing requirements for the Loop component viewer and editor, only the need for OneDrive access. Users can still access the Loop component viewer and editor via loop.cloud.microsoft and the All apps view in Microsoft365.com. To prevent users from seeing the Loop icon in the All apps view, disable their access to OneDrive or configure a conditional access policy for loop.cloud.microsoft to block navigation to Loop.

## Settings management in the Microsoft Admin Center

If you're looking for a simple way to turn on or off the creation of only Loop workspaces in your tenant, do the following:

1. Sign in to the Microsoft 365 admin center as Office Apps Administrator, Security Administrator, or Global Administrator.
    > [!IMPORTANT]
    > Microsoft recommends that you use roles with the fewest permissions. This helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.
1. Navigate to [Home > Org settings > Services > Loop](https://admin.microsoft.com/Adminportal/Home#/Settings/Services/:/Settings/L1/Loop).
1. Choose your desired state for Loop workspaces via the checkbox.
    > [!NOTE]
    > The checkbox may not reflect your configured state on load. However, the state you select and choose Save in the Admin Center will persist and override any defaults for your tenant.
1. Select **Save**.

    The Microsoft Admin Center configures the Cloud Policy setting **Create Loop workspaces in Loop**, described in the next section, targeted at All users (your full tenant). See the next section if you wish to perform more advanced controls. If you configured **Create Loop workspaces in Loop** in Cloud Policy, review your Cloud Policy settings to confirm they still match your expectation after configuring in the Microsoft Admin Center.

This same approach is not available for Copilot Pages or Copilot Notebooks. Refer to [settings management in Cloud Policy](#settings-management-in-cloud-policy).

## Settings management in Cloud Policy

Copilot Pages, Copilot Notebooks, and the Loop experiences (except for Microsoft Teams) check the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) settings. See [Available policy settings](#available-policy-settings) to understand how each app checks these settings:

- **Create and view Copilot Pages** (which also applies to Copilot Notebooks)
- **Create Loop workspaces in Loop**
- **Create and view Loop files in Microsoft apps that support Loop**
- **Create and view Loop files in Outlook**

1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, see [Microsoft 365 Groups for Cloud Policy](#microsoft-365-groups-for-cloud-policy).
1. In **Configure Settings**, choose one of the following settings:
    - For **Create and view Copilot Pages** (which also applies to Copilot Notebooks)
        - **Enabled**: Copilot Pages and Copilot Notebooks creation and integration are available to the users.
        - **Disabled**: Copilot Pages and Copilot Notebooks creation and integration aren't available to the users.
        - **Not configured**: Copilot Pages and Copilot Notebooks creation and integration are available to the users.
          >[!NOTE]
          >If your organization has [disabled the creation of OneDrive](/sharepoint/manage-user-profiles#disable-onedrive-creation-for-some-users), regardless of the setting noted here, these people in your organization won't be able to create Copilot Pages or Copilot Notebooks. 
    - For **Create Loop workspaces in Loop**:
        - **Disabled**: Creation of Loop workspaces isn't available to the users.
        - Loop app will open Loop components when workspaces is disabled.
        - **Enabled**: Creation of Loop workspaces is available to the users.
        - **Not configured**: Creation of Loop workspaces is available to the users.
    - For **Create and view Loop files in Microsoft apps that support Loop**:
        - recall:
            - this setting applies to:
                - Outlook integration
                - [Teams New Calendar](https://support.microsoft.com/en-us/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5) integration
                - OneNote integration
                - Whiteboard integration
            - this setting does **NOT** apply to:
                - Loop workspaces
                - Teams integration (see [Settings management for Loop components in Teams](#settings-management-for-loop-functionality-in-teams))
                - Copilot Pages
                - Copilot Notebooks
        - **Enabled**: Creation of Loop components and integration is available to the users.
        - **Disabled**: Creation of Loop components and integration isn't available to the users.
        - **Not configured**: Creation of Loop components and integration is available to the users.
    - For **Create and view Loop files in Outlook** (includes Outlook and [Teams New Calendar](https://support.microsoft.com/en-us/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5)):
        - **Enabled**: Creation of Loop components and integration is available to the users.
        - **Disabled**: Creation of Loop components and integration isn't available to the users.
        - **Not configured**: Creation of Loop components and integration is available to the users.
1. Save the policy configuration.
1. Reassign priority for any security group, if required. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there can be a delay in the change being reflected as described below:

- If there were existing policy configurations prior to the change, then it will take 90 mins for the change to be reflected.
- If there were no policy configurations prior to the change, then it will take 24 hours for the change to be reflected.

> [!NOTE]
> In order to target only a subset of users in your organization as Enabled for one of these Cloud Policies, create a Group A to target these users, set the Cloud Policy to Enabled in this group. Then create a Group B that targets All users, set the Cloud Policy to Disabled in this group. Then, configure Group A with a priority that evaluates *before* Group B. In Cloud Policy, priority 0 evaluates first, followed by priority 1, then 2, and so on. So for example, Group A with priority 0 will Enable your subset of users, and Group B with priority 1 will only evaluate for users not in Group A, and Disable for the remainder of your users.

## Settings management for Loop functionality in Teams

You'll need the [latest version of SharePoint PowerShell module](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online) to enable or disable Loop experiences in Teams. Loop components default to **ON** for all organizations. Because Loop components are designed for collaboration, the components are always shared as editable by others, even if your organization is set to create shareable links that have **view-only** permissions as the default value for other file types. For more information, see the **Learn more** link next to the setting.

|Experience  |SharePoint organization properties  |Notes  |
|---------|---------|---------|
|Loop components in Teams  | `IsLoopEnabled` (boolean)  |  This property controls Loop component creation and integration in Microsoft Teams. It applies to the entire tenant and can't be configured at the user level.  |
|Collaborative meeting notes  |  `IsCollabMeetingNotesFluidEnabled` (boolean)  |  This property controls the collaborative meeting notes creation and integration in Microsoft Teams. It applies to the entire tenant and can't be configured at the user level. <br/><br/>The SharePoint organization property doesn't apply to collaborative meeting notes in [Teams New Calendar](https://support.microsoft.com/en-us/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5), see [Settings management in Cloud Policy](#settings-management-in-cloud-policy).   |

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
- [Use Loop components in OneNote](https://support.microsoft.com/office/use-loop-components-in-onenote-ed8a43d9-f6fd-4ad6-bc9d-8841db4da459)
- [Loop components in Whiteboard](https://support.microsoft.com/office/loop-components-in-whiteboard-c5f08f54-995e-473e-be6e-7f92555da347)
- [Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
- [Summary of governance, lifecycle and compliance capabilities for Loop](/microsoft-365/loop/loop-compliance-summary)
