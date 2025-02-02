---
title: "Manage guest access in Microsoft 365 groups"
ms.reviewer: rahulnayak
ms.date: 06/11/2024
f1.keywords: NOCSH
author: DaniEASmith
ms.author: danismith
manager: jtremper
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
- has-azure-ad-ps-ref
search.appverid:
- MET150
- MOE150
ms.assetid: 9de497a9-2f5c-43d6-ae18-767f2e6fe6e0
description: "Learn how to add guests to a Microsoft 365 group, view guests, and use PowerShell to control guest access."
---

# Manage guest access in Microsoft 365 groups

By default, guest access for Microsoft 365 groups is turned on for your organization. Admins can control whether to allow guest access to groups for their whole organization or for individual groups.

When it's turned on, group members can invite guests to a Microsoft 365 group through Outlook on Web. Invitations are sent to the group owner for approval.

Once approved, the guest is added to the directory and the group.

> [!Note]
> Viva Engage Enterprise networks that are in Native Mode or the [EU Geo](/viva/engage/manage-security-and-compliance/manage-data-compliance) do not support network guests.
> Microsoft 365 Connected Viva Engage groups do not currently support guest access, but you can create non-connected, external groups in your Viva Engage network. See [Create and manage external groups in Viva Engage](/viva/engage/work-with-external-users/create-and-manage-external-groups) for instructions.

Guest access in groups is often used as part of a broader scenario that includes SharePoint or Teams. These services have their own guest sharing settings. For complete instructions for setting up guest sharing across groups, SharePoint, and Teams, see:

- [Collaborate with guests in a site](../../solutions/collaborate-in-site.md)
- [Collaborate with guests in a team](../../solutions/collaborate-as-team.md)

## Manage groups guest access

If you want to enable or disable guest access in groups, you can do so in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">**Groups**</a>.

1. In the admin center, go to **Show all** \> **Settings** \> **Org settings** and on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">**Services** tab</a>, select **Microsoft 365 Groups**.
  
2. On the **Microsoft 365 Groups** page, choose whether you want to let people outside your organization access group resources or let group owners add people outside your organization to groups.

## Add guests to a Microsoft 365 group from the admin center

If the guest already exists in your directory, you can add them to your groups from the <a href="https://go.microsoft.com/fwlink/p/?linkid=2052855" target="_blank">Microsoft 365 admin center</a>. (Groups with dynamic membership must be [managed in Microsoft Entra ID](/azure/active-directory/enterprise-users/groups-create-rule).)
  
1. In the admin center, go to **Teams & g****roups** > **[Active teams & groups](https://go.microsoft.com/fwlink/p/?linkid=2052855)**.

1. Select the group you want to add the guest to, and select **Membership > Members**. 

3. Select **Add members**, and choose the name of the guest you want to add.

4. Select **Save**.

If you want to add a guest to the directory directly, you can [Add Microsoft Entra B2B collaboration users in the Azure portal](/azure/active-directory/b2b/add-users-administrator).

If you want to edit any of a guest's information, you can [Add or update a user's profile information using Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).

## Remove a guest

Once you're done collaborating with a guest user, you can remove them, and they'll no longer have access to your organization.

1. In the Microsoft 365 admin center, expand **Users** and then choose <a href="https://go.microsoft.com/fwlink/p/?linkid=2074830" target="_blank">**Guest users**</a>.
1. On the **Guest users** page, choose the user you want to remove and then choose **Delete a user**.

To remove users in the Microsoft Entra admin center, see [remove a guest user and resources](/azure/active-directory/b2b/b2b-quickstart-add-guest-users-portal#clean-up-resources).


## Related content

[Block guests from a specific group](../../solutions/per-group-guest-access.md) (article)\
[Manage group membership in the Microsoft 365 admin center](add-or-remove-members-from-groups.md) (article)\
[Microsoft Entra access reviews](/azure/active-directory/active-directory-azure-ad-controls-perform-access-review) (article)\
[Set-AzureADUser](/powershell/module/azuread/set-azureaduser) (article)
