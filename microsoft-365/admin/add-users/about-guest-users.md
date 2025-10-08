---
title: Guests in the Microsoft 365 admin center
description: Learn how to manage guest access in the Microsoft 365 admin center. Add guests to attend meetings, view documents, and chat in Teams they're invited to.
#customer intent: As an admin, I want to understand how to manage guest access in the Microsoft 365 admin center so that I can control external collaboration securely.
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 09/17/2025
audience: Admin
ms.topic: overview
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- must-keep
- trust-pod
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
---


# Guests in the Microsoft 365 admin center

By default, guest access for Microsoft 365 Groups is turned on for your organization. Admins can control whether to allow guest access to groups for their whole organization or for individual groups.

Any guests you add to your Microsoft Teams, SharePoint, or Microsoft Entra External ID are also added to the **`Guest users`** list in the  [Microsoft 365 admin center](https://admin.microsoft.com/). Guests can attend meetings, view documents, and chat in Teams they're invited to.
Once a user shows up in the **`Guest users`** list, you can remove their access there.

To view guests, in the  [Microsoft 365 admin center](https://admin.microsoft.com/), in the left nav, expand **Users**, and then choose **`Guest users`**.

## Before you begin

To add a guest, you need to have a role that allows you to create users in your tenant directory. For example, at least a [Guest Inviter role](/entra/identity/role-based-access-control/permissions-reference#guest-inviter) or a [User Administrator](/entra/identity/role-based-access-control/permissions-reference#user-administrator).

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## Add guests to Teams

The following video shows how to create a team with guests in Microsoft Teams. It's one minute and 26 seconds long.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=573823a3-19cf-4b2e-932f-7be1896b2821]

## Join a team as a guest

The following video shows how to join a team as a guest in Microsoft Teams. It's one minute and 38 seconds long.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=b7af266b-0507-4922-b11d-8258865f44dd]

## Understanding guest accounts in Microsoft 365

To easily share files and documents with the right people while preventing oversharing, you need to plan your approach. The following resources provide more background to help you create a secure guest sharing environment in Microsoft 365.

- [Plan external collaboration](../../solutions/plan-external-collaboration.md)
- [Create a secure guest sharing environment](../../solutions/create-secure-guest-sharing-environment.md)
- [Set up secure file and document sharing and collaboration with Teams in Microsoft 365](../../solutions/setup-secure-collaboration-with-teams.md)
- [Guest access in Microsoft Teams](/microsoftteams/guest-access)

In addition to Microsoft Teams and SharePoint, Microsoft 365 also supports guest access in other applications. The following Microsoft 365 products support guest access.

- **Power Apps (Canvas apps)**: [Share a canvas app with guests](/power-apps/maker/canvas-apps/share-app-guests).
- **Lists**: [External or guest sharing in OneDrive, SharePoint, and Lists](https://support.microsoft.com/office/external-or-guest-sharing-in-onedrive-sharepoint-and-lists-7aa070b8-d094-4921-9dd9-86392f2a79e7).
- **OneDrive**: [External or guest sharing in OneDrive, SharePoint, and Lists](https://support.microsoft.com/office/external-or-guest-sharing-in-onedrive-sharepoint-and-lists-7aa070b8-d094-4921-9dd9-86392f2a79e7).
- **Planner**: Applies to Web and mobile platforms. [Guest access in Microsoft Planner](https://support.microsoft.com/office/guest-access-in-microsoft-planner-cc5d7f96-dced-4da4-ab62-08c72d9759c6).
- **Microsoft 365 Groups**: [Manage guest access in Microsoft 365 Groups](../create-groups/manage-guest-access-in-groups.md).
- **Viva Engage**: [Work with external groups in Viva Engage networks not aligned to native mode](/viva/engage/work-with-external-users/create-and-manage-external-groups).

For apps in Microsoft 365 like Word and Excel, the location of the output file controls guest access. For example, Microsoft SharePoint, Teams, and OneDrive.

## Next steps: Add guests in Microsoft Entra External ID

To add guests in Microsoft Entra External ID, see [add a guest](/entra/external-id/b2b-quickstart-add-guest-users-portal).

After you add a user, you can also assign them to a group or give them access to an app in your organization. When you add a user in the Microsoft Entra admin center, the user also appears on the **Guest users** page in the [Microsoft 365 admin center](https://admin.microsoft.com/).

To invite multiple guests to collaborate with your organization, see [add guests in bulk](/entra/external-id/tutorial-bulk-invite).

## Related content

[Prevent guests from being added to a specific Microsoft 365 group or Microsoft Teams](../../solutions/per-group-guest-access.md)
