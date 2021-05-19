---
title: "Manage guest access in Microsoft 365 groups"
ms.reviewer: arvaradh
f1.keywords: NOCSH
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- MOE150
ms.assetid: 9de497a9-2f5c-43d6-ae18-767f2e6fe6e0
description: "Learn how to add guests to a Microsoft 365 group, view guest users, and use PowerShell to control guest access."
---

# Manage guest access in Microsoft 365 groups

By default, guest access for Microsoft 365 groups is turned on for your organization. Admins can control whether to allow guest access to groups for their whole organization or for individual groups.

When it's turned on, group members can invite guest users to a Microsoft 365 group through Outlook on Web. Invitations are sent to the group owner for approval.

Once approved, the guest user is added to the directory and the group.

> [!Note]
> Yammer Enterprise networks that are in Native Mode or the [EU Geo](/yammer/manage-security-and-compliance/manage-data-compliance) do not support network guests.
> Microsoft 365 Connected Yammer groups do not currently support guest access, but you can create non-connected, external groups in your Yammer network. See [Create and manage external groups in Yammer](/yammer/work-with-external-users/create-and-manage-external-groups) for instructions.

Guest access in groups is often used as part of a broader scenario that includes SharePoint or Teams. These services have their own guest sharing settings. For complete instructions for setting up guest sharing across groups, SharePoint, and Teams, see:

- [Collaborate with guests in a site](../../solutions/collaborate-in-site.md)
- [Collaborate with guests in a team](../../solutions/collaborate-as-team.md)

## Manage groups guest access

If you want to enable or disable guest access in groups, you can do so in the Microsoft 365 admin center.

1. In the admin center, go to **Show all** \> **Settings** \> **Org settings** and on the **Services** tab, select **Microsoft 365 groups**.
  
2. On the **Microsoft 365 Groups** page, choose whether you want to let people outside your organization access group resources or let group owners add people outside your organization to groups.

## Add guests to a Microsoft 365 group from the admin center

If the guest already exists in your directory, you can add them to your groups from the Microsoft 365 admin center. (Groups with dynamic membership must be [managed in Azure Active Directory](/azure/active-directory/enterprise-users/groups-create-rule).)
  
1. In the admin center, go to the **Groups** > **Groups** page.
  
2. Click the group you want to add the guest to, and select **View all and manage members** on the **Members** tab. 
  
4. Select **Add members**, and choose the name of the guest you want to add.
    
5. Select **Save**.

If you want to add a guest to the directory directly, you can [Add Azure Active Directory B2B collaboration users in the Azure portal](/azure/active-directory/b2b/add-users-administrator).

If you want to edit any of a guest's information, you can [Add or update a user's profile information using Azure Active Directory](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).

## Related content

[Block guest users from a specific group](../../solutions/per-group-guest-access.md) (article)

[Manage group membership in the Microsoft 365 admin center](add-or-remove-members-from-groups.md) (article)
  
[Azure Active Directory access reviews](/azure/active-directory/active-directory-azure-ad-controls-perform-access-review) (article)

[Set-AzureADUser](/powershell/module/azuread/set-azureaduser) (article)