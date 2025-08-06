---
ms.date: 06/10/2025
title: "Manage Copilot Pages and Copilot Notebooks in your organization"
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
description: "Manage Copilot Pages and Copilot Notebooks in your organization"
---

# Admin policies for Copilot Pages and Copilot Notebooks

Copilot Pages and Copilot Notebooks are powered by `.loop` files, which are stored in user-owned SharePoint Embedded containers. Storage for these files counts toward your organization's overall SharePoint quota. For details, see [storage and lifecycle](cpcn-storage.md). IT administrators can control the creation and use of Copilot Pages and Copilot Notebooks through Cloud Policy settings.

## Requirements

Copilot Pages and Copilot Notebooks are a core service integrated into SharePoint and Microsoft 365. See [requirements](cpcn-loop-requirements.md) to learn more about configuration requirements, service connections, and license requirements.

### Scoping Cloud Policy with Microsoft 365 Groups

To apply Cloud Policy settings to specific users, assign the policy to a Microsoft 365 group. For steps to create a group, see [Create a Microsoft 365 group](/microsoft-365/admin/create-groups/create-groups).

You can also use security or dynamic groups. For details, see [Create, edit, or delete a security group](/microsoft-365/admin/email/create-edit-or-delete-a-security-group) and [Create dynamic groups in Azure AD](/azure/active-directory/external-identities/use-dynamic-groups).

> [!NOTE]
> If you apply the policy to all users in the tenant, group setup isn't required.

## Relation to Loop components

Copilot Pages and Copilot Notebooks are independent of Loop. You can enable or disable them separately from Loop in your organization.

Copilot Pages and Copilot Notebooks all use the same Loop My workspace container. Refer to [storage](cpcn-storage.md) for more information.

To share Copilot Pages as interactive components (instead of just hyperlinks) in Teams, Outlook, Whiteboard, OneNote, or the Loop app, Loop components must be enabled. Without Loop components enabled in the Microsoft 365 ecosystem, Copilot Pages are only interactive within the M365 Copilot app and supported chat experiences. For details on enabling Loop components in the Microsoft 365 ecosystem, see [Loop admin policies](loop-admin-configuration.md).

## User experience when Copilot Pages and Copilot Notebooks are disabled

When creation is disabled, users can't create new Copilot Pages or new SharePoint Embedded containers. The Pages module remains visible in the M365 Copilot app, but the Notebooks module is hidden.

Existing Copilot Pages and Notebooks are not deleted. Users can still view and edit existing items if they have permission. These files remain accessible via the app, shared links, search, and are discoverable by Purview and exportable by admins.

## Settings management in Cloud Policy

Copilot Pages and Copilot Notebooks check the following [Cloud Policy](/deployoffice/admincenter/overview-cloud-policy) setting:

- **Create and view Copilot Pages and Copilot Notebooks**

1. Sign in to https://config.office.com/ with your Microsoft 365 admin credentials.
1. Select **Customization** from the left pane.
1. Select **Policy Management**.
1. Create a new policy configuration or edit an existing one.
1. From the **Choose the scope** dropdown list, choose either **All users** or select the group for which you want to apply the policy. For more information, see [Microsoft 365 Groups for Cloud Policy](#scoping-cloud-policy-with-microsoft-365-groups).
1. In **Configure Settings**, choose one of the following settings:
    - For **Create and view Copilot Pages and Copilot Notebooks**
        - **Enabled**: Copilot Pages and Copilot Notebooks creation and integration are available to the users.
        - **Disabled**: Copilot Pages and Copilot Notebooks creation and integration aren't available to the users.
        - **Not configured**: Copilot Pages and Copilot Notebooks creation and integration are available to the users.
          >[!NOTE]
          >If your organization has [disabled the creation of OneDrive](/sharepoint/manage-user-profiles#disable-onedrive-creation-for-some-users), regardless of the setting noted here, these people in your organization won't be able to create Copilot Pages or Copilot Notebooks.
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

## Related topics

- [Data Integrations Admin Settings](loop-data-integrations-configuration.md)
- [Summary of Compliance, Lifecycle, Governance](cpcn-compliance-summary.md)
- [Requirements](cpcn-loop-requirements.md)
- [Storage](cpcn-storage.md)
- [Permissions](cpcn-loop-permission.md)
- [Managing SharePoint Embedded containers](cpcn-loop-spe-management.md)
- [Overview of Loop components in Microsoft 365](loop-components-teams.md)