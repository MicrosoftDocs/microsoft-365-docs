---
ms.date: 01/26/2026
ms.update-cycle: 180-days
title: "Manage Copilot Pages and Copilot Notebooks in your organization"
ms.reviewer: dancost, tonchan
ms.author: odocspr
author: officedocspr5
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
description: "Manage Copilot Pages and Copilot Notebooks in your organization"
---

# Admin policies for Copilot Pages and Copilot Notebooks

Copilot Pages (`.page` files) and Copilot Notebooks are stored in user-owned SharePoint Embedded containers. Storage for these files counts toward your organization's overall SharePoint quota. For details, see [storage and lifecycle](cpcn-storage.md). IT administrators can control the creation and use of Copilot Pages and Copilot Notebooks through Cloud Policy settings.

## At a glance

| What you want to control | Where to configure | Default |
| --- | --- | --- |
| **Copilot Pages and Copilot Notebooks creation** | Cloud Policy: *Create and view Copilot Pages and Copilot Notebooks* | Enabled |

> [!TIP]
> **Common scenarios**
>
> - **Block Loop but allow Copilot Pages/Notebooks**: Disable Loop policies; leave *Create and view Copilot Pages and Copilot Notebooks* enabled
> - **Block Copilot Pages/Notebooks but allow Loop**: Disable *Create and view Copilot Pages and Copilot Notebooks*; leave Loop policies enabled
> - **Block everything**: Disable both policies

## Requirements

Copilot Pages and Copilot Notebooks are a core service integrated into SharePoint and Microsoft 365. See [requirements](cpcn-requirements.md) to learn more about configuration requirements, service connections, and license requirements.

To apply Cloud Policy to specific users instead of the entire tenant, see [Scoping Cloud Policy with Microsoft 365 Groups](loop-admin-configuration.md#scoping-cloud-policy-with-microsoft-365-groups). You can also apply Cloud Policy using security or dynamic groups, see [Create, edit, or delete a security group](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) and [Create dynamic groups in Microsoft Entra ID](/azure/active-directory/external-identities/use-dynamic-groups). If you apply the policy to all users in the tenant, group setup isn't required.

## Relationship to Loop components

Copilot Pages and Copilot Notebooks are independent of Loop. You can enable or disable them separately from Loop in your organization.

Copilot Pages and Copilot Notebooks use the same user-owned SharePoint Embedded container as the Loop My workspace. For more information, see [storage](cpcn-storage.md).

To share Copilot Pages as interactive components (instead of just hyperlinks) in Teams, Outlook, Whiteboard, OneNote, or the Loop application, Loop components must be enabled. Without Loop components enabled in the Microsoft 365 ecosystem, Copilot Pages are only interactive within the Microsoft 365 Copilot app and supported chat experiences. For details on enabling Loop components in the Microsoft 365 ecosystem, see [Loop admin policies](loop-admin-configuration.md).

## User experience when Copilot Pages and Copilot Notebooks are disabled

When creation is disabled, users are unable to create new Copilot Pages or Notebooks. The Pages module is visible in the Microsoft 365 Copilot app, but the Notebooks module is hidden, preventing users from accessing existing Notebooks through the Copilot App.

Existing Copilot Pages and Notebooks aren't deleted. Users can still view and edit existing items if they have permission. These files remain accessible in the following ways:

- **Loop application**: For viewing and editing Pages
- **Microsoft 365 Copilot app**: For accessing items created in chat experiences
- **Original storage locations**: Files added to Notebooks remain available in OneDrive and SharePoint where they're stored

Existing items are also discoverable through search, Purview, and admins can export them.

> [!IMPORTANT]
> Sharing links to Copilot Notebooks don't work when creation is disabled via the policy in this article.

## Settings management in Cloud Policy

Copilot Pages and Copilot Notebooks check the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) setting:

- **Create and view Copilot Pages and Copilot Notebooks**

1. Sign in to <https://config.office.com/> with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, see [Scoping Cloud Policy with Microsoft 365 Groups](loop-admin-configuration.md#scoping-cloud-policy-with-microsoft-365-groups).
1. In **Configure Settings**, choose one of the following settings:
    - For **Create and view Copilot Pages and Copilot Notebooks**
        - **Enabled**: Copilot Pages and Copilot Notebooks creation and integration are available to the users.
        - **Disabled**: Copilot Pages and Copilot Notebooks creation and integration aren't available to the users.
        - **Not configured**: Copilot Pages and Copilot Notebooks creation and integration are available to the users.
          >[!NOTE]
          >If your organization [disabled the creation of OneDrive](/sharepoint/manage-user-profiles#disable-onedrive-creation-for-some-users), regardless of the setting noted here, these people in your organization can't create Copilot Pages or Copilot Notebooks.
1. Save the policy configuration.
1. Reassign priority for any security group, if required. (If two or more policy configurations are applicable to the same set of users, the one with the higher priority is applied.)

In case you create a new policy configuration or change the configuration for an existing policy, there can be a delay in the change being reflected:

- If there were existing policy configurations before the change, the change takes up to 90 minutes to be reflected.
- If there were no policy configurations before the change, the change takes up to 24 hours to be reflected.

> [!NOTE]
> To enable a Cloud Policy for only a specific subset of users:
>
> 1. Create **Group A** containing the users you want to enable the policy for. Assign the Cloud Policy to this group and set it to **Enabled**.
> 1. Create **Group B** that includes **All users**. Assign the same Cloud Policy to this group and set it to **Disabled**.
> 1. Set the priority for **Group A** to a lower number (for example, priority 0) so it's evaluated before **Group B** (for example, priority 1).
>
> In Cloud Policy, lower priority numbers are evaluated first. The priority numbering method described in the preceding steps ensures users in **Group A** have the policy **Enabled**, while all other users in **Group B** have it **Disabled**.

## Related articles

- [Summary of compliance, lifecycle, governance](cpcn-compliance-summary.md)
- [Requirements](cpcn-requirements.md)
- [Storage](cpcn-storage.md)
- [Permissions](cpcn-permission.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Purview management](cpcn-loop-purview-management.md)
