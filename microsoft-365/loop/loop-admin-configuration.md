---
ms.date: 07/02/2025
title: "Manage Loop in your organization"
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
description: "Manage Loop in your organization"
---

# Admin policies for Loop components and Loop workspaces

> [!NOTE]
> The Copilot Pages and Copilot Notebooks content has moved to a [dedicated article](cpcn-admin-configuration.md).

Loop components and their integrations are powered by `.loop` files (earlier releases of Loop created these as `.fluid` files), which are stored in OneDrive, SharePoint, or [SharePoint Embedded](/sharepoint/dev/embedded/concepts/admin-exp/consuming-tenant-admin/cta). Storage for these files counts toward your organization's overall SharePoint quota. For details about where the content is stored, see [storage and lifecycle](loop-storage.md#storage). IT administrators can control the creation and use of Loop content through settings discussed in this article.

## Two Admin Policy Tools

IT administrators must manage the creation of Loop components in the Microsoft 365 ecosystem using **BOTH**:

1. [Cloud Policy](#settings-management-in-cloud-policy)
1. [SharePoint PowerShell command](#settings-management-for-loop-functionality-in-teams) (Loop experiences in Teams only)

## Requirements

Loop components and Loop workspaces are a core service integrated into SharePoint and Microsoft 365. See [requirements](cpcn-loop-requirements.md) to learn more about configuration requirements, service connections, and license requirements.

### Scoping Cloud Policy with Microsoft 365 Groups

To apply Cloud Policy settings to specific users, assign the policy to a Microsoft 365 group. For steps to create a group, see [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

You can also use security or dynamic groups. For details, see [Create, edit, or delete a security group](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) and [Create dynamic groups in Azure AD](/azure/active-directory/external-identities/use-dynamic-groups).

> [!NOTE]
> If you apply the policy to all users in the tenant, group setup isn't required.

## Available policy settings

There are several IT Admin policy settings provided to enable creation of Loop content across Microsoft 365:

|Configure  |Setting Type  |Specific Policy  |Notes  |
|---------|---------|---------|---------|
|Loop workspaces creation  |  Cloud Policy  |  **Create Loop workspaces in Loop**  |  Applies to: Loop workspaces, including Teams channel workspaces  |
|Loop component creation and integration across Microsoft 365  |  Cloud Policy  | **Create and view Loop files in Microsoft apps that support Loop**  |  Applies to: <br/> - Outlook integration<br> - [Teams New Calendar](https://support.microsoft.com/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5) integration<br> - OneNote integration<br> - Whiteboard integration<br><br> Does **NOT** apply to:<br> - Loop workspaces<br> - Teams integration<br> - Copilot Pages<br> - Copilot Notebooks  |
|Outlook creation and integration of Loop experiences  |  Cloud Policy  |  **Create and view Loop files in Outlook**  |  First checks **Create and view Loop files in Microsoft apps that support Loop**; then applies **Create and view Loop files in Outlook**, if applicable.<br/><br/>Applies to: <br/> - Outlook<br/> - [Teams New Calendar](https://support.microsoft.com/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5)  |
|Teams creation and integration  |  SharePoint property  |  See [Settings management for Loop components in Teams](#settings-management-for-loop-functionality-in-teams)  |  Teams only checks the settings in this row.  |

## Storage based view of the admin policy settings

Configure the creation of content in these locations by using the appropriate policy setting:

|Loop content originally created in|️️️Manage with this policy|Loop content storage|
|-----|-----|-----|
|Loop app, My workspace|Cloud Policy: **Create Loop workspaces in Loop**|SharePoint Embedded: ✔️in user-owned container|
|Loop app, shared workspace|Cloud Policy: **Create Loop workspaces in Loop**|SharePoint Embedded: ✔️in shared container|
|[Teams channel, shared workspace](https://techcommunity.microsoft.com/blog/microsoft365insiderblog/collaborate-in-real-time-with-workspaces-in-teams/4414334)|Cloud Policy:  **Create Loop workspaces in Loop**|SharePoint Embedded: ✔️in shared container|
|Teams channel meeting (Teams Classic Calendar)|SharePoint property `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $true`|SharePoint Site: 📁`Meetings`|
|Teams channel meeting ([Teams New Calendar](https://support.microsoft.com/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5))|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop** -or- **Create and view Loop files in Outlook**|SharePoint Site: 📁`Meetings`|
|Teams channel|SharePoint property `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $true`|SharePoint Site: ✔️in Channel folder|
|Teams private chat|SharePoint property `Set-SPOTenant -IsLoopEnabled $true`|User's OneDrive: 📁`Microsoft Teams Chat files`|
|Teams private meeting (Teams Classic Calendar)|SharePoint property `Set-SPOTenant -IsLoopEnabled $true`|User's OneDrive: 📁`Meetings`|
|Teams private meeting ([Teams New Calendar](https://support.microsoft.com/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5))|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop** -or- **Create and view Loop files in Outlook**|User's OneDrive: 📁`Meetings`|
|Outlook email message|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop** -or- **Create and view Loop files in Outlook**|User's OneDrive: 📁`Attachments`|
|OneNote for Windows or for the web|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop**|User's OneDrive: 📁`OneNote Loop files`|
|Whiteboard|Cloud Policy: **Create and view Loop files in Microsoft apps that support Loop**|User's OneDrive: 📁`Whiteboard\Components`|

## Example configurations

|Scenario  |  Policies Configured  |
|---------|---------|
|✅Enable Loop workspaces creation and Loop component creation and integration everywhere  |  ✅ **Create Loop workspaces in Loop** = Enabled (or Not Configured)<br/>✅ **Create and view Loop files in Microsoft apps that support Loop** = Enabled (or Not Configured)<br/>✅ [Teams-only] `Set-SPOTenant -IsLoopEnabled $true`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $true`  |
|✅Enable Loop workspaces creation and Loop component creation and integration everywhere, but ⛔Disable Loop component creation and integration in Communication apps (Outlook, Teams)  |  ✅ **Create Loop workspaces in Loop** = Enabled (or Not Configured)<br/>✅ **Create and view Loop files in Microsoft apps that support Loop** = Enabled (or Not Configured)<br/>⛔ **Create and view Loop files in Outlook** = Disabled<br/>⛔ [Teams-only] `Set-SPOTenant -IsLoopEnabled $false`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $false`  |
|⛔Disable Loop workspace creation and Loop component creation and integration everywhere  |  ⛔ **Create Loop workspaces in Loop** = Disabled<br/>⛔ **Create and view Loop files in Microsoft apps that support Loop** = Disabled<br/>⛔ [Teams-only] `Set-SPOTenant -IsLoopEnabled $false`, `Set-SPOTenant -IsCollabMeetingNotesFluidEnabled $false`  |

## User experience expectations when admin settings are configured

IT administrators can control whether users in their organization can create new Loop content. **However, these admin controls do not restrict access to existing Loop files or workspaces.** Admin controls can be applied to specific groups or the entire tenant, except for Teams-related settings, which always apply tenant-wide.

- To restrict collaboration between specific groups, use [Information Barriers](/purview/information-barriers-sharepoint) where supported.
- To block access to existing Loop content or the Loop app, use [Conditional Access policies](/sharepoint/control-access-from-unmanaged-devices).

### Expected user experience when Loop creation is disabled

Refer to the [Loop experience examples based on admin settings](loop-ux-examples.md) article for details and screenshots.

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

## Settings management in Cloud Policy

Copilot Pages, Copilot Notebooks, and the Loop experiences (except for Microsoft Teams) check the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) settings. See [Available policy settings](#available-policy-settings) to understand how each app checks these settings:

- **Create Loop workspaces in Loop**
- **Create and view Loop files in Microsoft apps that support Loop**
- **Create and view Loop files in Outlook**

1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, see [Microsoft 365 Groups for Cloud Policy](#scoping-cloud-policy-with-microsoft-365-groups).
1. In **Configure Settings**, choose one of the following settings:
    - For **Create Loop workspaces in Loop**:
        - **Disabled**: Creation of Loop workspaces isn't available to the users.
        - Loop app will open Loop components when workspaces is disabled.
        - **Enabled**: Creation of Loop workspaces is available to the users.
        - **Not configured**: Creation of Loop workspaces is available to the users.
    - For **Create and view Loop files in Microsoft apps that support Loop**:
        - recall:
            - this setting applies to:
                - Outlook integration
                - [Teams New Calendar](https://support.microsoft.com/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5) integration
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
    - For **Create and view Loop files in Outlook** (includes Outlook and [Teams New Calendar](https://support.microsoft.com/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5)):
        - **Enabled**: Creation of Loop components and integration is available to the users.
        - **Disabled**: Creation of Loop components and integration isn't available to the users.
        - **Not configured**: Creation of Loop components and integration is available to the users.
1. Save the policy configuration.
1. Reassign priority for any security group, if required. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there can be a delay in the change being reflected as described below:

- If there were existing policy configurations prior to the change, then it will take 90 mins for the change to be reflected.
- If there were no policy configurations prior to the change, then it will take 24 hours for the change to be reflected.

> [!NOTE]
> To enable a Cloud Policy for only a specific subset of users:
>
> 1. Create **Group A** containing the users you want to enable the policy for. Assign the Cloud Policy to this group and set it to **Enabled**.
> 1. Create **Group B** that includes **All users**. Assign the same Cloud Policy to this group and set it to **Disabled**.
> 1. Set the priority for **Group A** to a lower number (for example, priority 0) so it is evaluated before **Group B** (for example, priority 1).
>
> In Cloud Policy, lower priority numbers are evaluated first. This ensures users in **Group A** have the policy **Enabled**, while all other users in **Group B** have it **Disabled**.

## Settings management for Loop functionality in Teams

You'll need the [latest version of SharePoint PowerShell module](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online) to enable or disable Loop experiences in Teams. Loop components default to **ON** for all organizations. Because Loop components are designed for collaboration, the components are always shared as editable by others, even if your organization is set to create shareable links that have **view-only** permissions as the default value for other file types. For more information, see the **Learn more** link next to the setting.

|Experience  |SharePoint organization properties  |Notes  |
|---------|---------|---------|
|Loop components in Teams  | `IsLoopEnabled` (boolean)  |  This property controls Loop component creation and integration in Microsoft Teams. It applies to the entire tenant and can't be configured at the user level.  |
|Collaborative meeting notes  |  `IsCollabMeetingNotesFluidEnabled` (boolean)  |  This property controls the collaborative meeting notes creation and integration in Microsoft Teams. It applies to the entire tenant and can't be configured at the user level. <br/><br/>The SharePoint organization property doesn't apply to collaborative meeting notes in [Teams New Calendar](https://support.microsoft.com/office/get-started-with-the-new-calendar-in-microsoft-teams-98f3b637-5da2-43e2-91b3-f312ab3e4dc5), see [Settings management in Cloud Policy](#settings-management-in-cloud-policy).   |

To check your tenant's default file permissions, perform the following steps:

1. Sign in to [Microsoft 365 admin center](https://admin.microsoft.com).
2. Under **Admin centers**, select **SharePoint**.
3. Select **Policies** > **Sharing**, and under **File and folder links**, view your organization's default file permissions.

To check if Loop components are enabled, run `Get-SPOTenant` without any arguments. Verify the value of `IsLoopEnabled` is *true*.

To enable Loop components in Teams, run `Set-SPOTenant -IsLoopEnabled $true`. The change will take a short time to apply across your organization.

To disable Loop components in Teams, run `Set-SPOTenant -IsLoopEnabled $false`. The change will take a short time to apply across your organization. If your organization has multiple regions (that is, organization URLs), you need to disable loop components for all the regions to have consistent results across the organization.

## Mailbox policies for Outlook Web and new Outlook for Windows

Loop components are designed for collaboration. Outlook Web and new Outlook for Windows require certain OWAMailbox Policies to be **TRUE** for Loop experiences to be enabled in these applications. Learn more about [how to configure OWAMailbox policies](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/configure-outlook-web-app-mailbox-policy-properties).

To enable Loop components on **Private** defined sessions, the following policies need to be set to *true:*

- DirectFileAccessOnPrivateComputersEnabled  

- WacViewingOnPrivateComputersEnabled 

To enable Loop components on **Public** defined sessions, the following policies need to be set to *true:*

- DirectFileAccessOnPublicComputersEnabled  

- WacViewingOnPublicComputersEnabled 

You should also review the configuration of your [ConditionalAccessPolicy](/powershell/module/exchange/set-owamailboxpolicy). By design, user sessions that meet the criteria for conditional access will have limited functionality and will not be able to use Loop components.

## Related topics

### Admin

- [Data Integrations Admin Settings](loop-data-integrations-configuration.md)
- [Summary of Compliance, Lifecycle, Governance](loop-compliance-summary.md)
- [Requirements](cpcn-loop-requirements.md)
- [Storage](loop-storage.md)
- [Permissions](cpcn-loop-permission.md)
- [UX examples for admin toggle states](loop-ux-examples.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview and SharePoint Embedded containers](cpcn-loop-purview-management.md)

### End-User Experience

- [Overview of Loop components in Microsoft 365](loop-components-teams.md)
- [Use Loop components in Outlook](https://support.microsoft.com/office/9b47c279-011d-4042-bd7f-8bbfca0cb136)
- [Use Loop components in OneNote](https://support.microsoft.com/office/use-loop-components-in-onenote-ed8a43d9-f6fd-4ad6-bc9d-8841db4da459)
- [Loop components in Whiteboard](https://support.microsoft.com/office/loop-components-in-whiteboard-c5f08f54-995e-473e-be6e-7f92555da347)
- [Get started with Microsoft Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-microsoft-loop-9f4d8d4f-dfc6-4518-9ef6-069408c21f0c)
