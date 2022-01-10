---
title: "Manage Microsoft 365 groups"
ms.author: kvice
author: kelleyvice-msft
manager: laurawi
audience: Admin
ms.topic: overview
ms.prod: office-online-server
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom: 
 - Adm_O365
 - seo-marvel-mar2020
ms.collection:
- Ent_O365
- M365-subscription-management
search.appverid:
- MET150
- MOE150
- MED150
- BCS160
ms.assetid: 98ca5b3f-f720-4d8e-91be-fe656548a25a
description: "Learn about how to manage Microsoft 365 groups."
---

# Manage Microsoft 365 groups

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can manage Microsoft 365 groups in several different ways, depending on your configuration. You can manage user accounts in the [Microsoft 365 admin center](/admin), PowerShell, in Active Directory Domain Services (AD DS), or in the [Azure Active Directory (Azure AD) admin center](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal). 

## Plan for where and how you will manage your groups

Where and how you can manage your user accounts depends on the identity model you want to use for your Microsoft 365. The two overall models are cloud-only and hybrid.
  
### Cloud-only

You create and manage groups with:

- [The Microsoft 365 admin center](/admin)
- [PowerShell](maintain-group-membership-with-microsoft-365-powershell.md)
- [Azure AD admin center](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal)
    
### Hybrid

AD DS groups are synchronized with Microsoft 365 from AD DS, so you must use on-premises AD DS tools to manage these groups.

You can also create and manage Azure AD groups that are separate from AD DS groups but can contain users and groups from AD DS. In this case, you can use:

- [The Microsoft 365 admin center](/admin)
- [PowerShell](maintain-group-membership-with-microsoft-365-powershell.md)
- [Azure AD admin center](/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal)

## Allow users to create and manage their own groups

Azure AD allows groups that can be managed by group owners instead of IT administrators. Known as *self-service group management*, this feature allows group owners who are not assigned an administrative role to create and manage security groups. 

Users can request membership in a security group and that request goes to the group owner, rather than an IT administrator. This allows the day-to-day control of group membership to be delegated to team, project, or business owners who understand the business use for the group and can manage its membership.

>[!Note]
>Self-service group management is available only for Azure AD security and Microsoft 365 groups. It is not available for mail-enabled groups, distribution lists, or any group that has been synchronized from AD DS.
>

For more information, see the [instructions to configure an Azure AD group for self-service management](/azure/active-directory/active-directory-accessmanagement-self-service-group-management).

## Set up dynamic group membership

Azure AD supports configuring a series of rules that automatically add or remove user accounts as members of an Azure AD group. This is known as *dynamic group membership*. The rules are based on user account attributes, such as Department or Country.

Here's how the rules are applied:

- If a new user account matches all the rules for the group, it becomes a member.
- If a user account isn't a member of the group, but its attributes change so that it matches all the rules for the group, it becomes a member of that group.
- If a user account doesn't match all the rules for the group, it isn't added to the group.
- If a user account is a member of the group, but its attributes change so that it no longer matches all the rules for the group, it is removed as a member of the group.

To use dynamic membership, you must first determine the sets of groups that have a common set of user account attributes. For example, all members of the Sales department should be in the Sales Azure AD group, based on the user account attribute Department set to "Sales".

See the [instructions to create and configure the rules for a dynamic Azure AD group](/azure/active-directory/active-directory-groups-dynamic-membership-azure-portal).

## Set up automatic licensing

You can configure security groups in Azure AD to automatically assign licenses from a set of subscriptions to all the members of the group. This is known as *group-based licensing*. If a user account is added to or removed from the group, the licenses for the group's subscriptions will be automatically assigned or unassigned from the user account.

For Microsoft 365 Enterprise, you'll configure Azure AD security groups to assign the appropriate Microsoft 365 Enterprise license.

Make sure you have enough licenses for all the group members. If you run out of licenses, new users won't be assigned licenses until licenses become available.

>[!Note]
>You should not configure group-based licensing for groups that contain Azure business to business (B2B) accounts.
>

For more information, see [Group-based licensing basics in Azure AD](/azure/active-directory/active-directory-licensing-whatis-azure-portal).

See the [instructions to configure group-based licensing for an Azure security group](/azure/active-directory/active-directory-licensing-group-assignment-azure-portal).