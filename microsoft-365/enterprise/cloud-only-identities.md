---
title: "Microsoft 365 cloud-only identity"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 06/09/2020
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
f1.keywords:
- CSH
ms.custom: 
- Adm_O365
- 'O365p_AddUsersWithDirSync'
- 'O365M_AddUsersWithDirSync'
- 'O365E_HRCSetupAADConnectAboutLM617031'
- 'O365E_AddUsersWithDirSync'
ms.collection:
- Ent_O365
- M365-identity-device-management
search.appverid:
- MET150
- MOP150
- MOE150
- MBS150
ms.assetid: 01920974-9e6f-4331-a370-13aea4e82b3e
description: "Describes how to create users and groups when your Microsoft 365 subscription is using cloud-only identity."
---

# Microsoft 365 cloud-only identity

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

With cloud-only identity, all your users, groups, and contacts are stored in the Azure Active Directory (Azure AD) tenant of your Microsoft 365 subscription. Here are the basic components of cloud-only identity.
 
![The basic components of cloud-only identity](./media/about-office-365-identity/cloud-only-identity.png)

Users and their user accounts in organizations can be categorized in a number of ways. For example, some are employees and have a permanent status. Some are vendors, contractors, or partners that have a temporary status. Some are external users that have no user accounts but must still be granted access to specific services and resources to support interaction and collaboration. For example:

- Tenant accounts represent users within your organization that you license for cloud services

- Business to Business (B2B) accounts represent users outside your organization that you invite to participate in collaboration

Take stock of the types of users in your organization. What are the groupings? For example, you can group users by high-level function or purpose to your organization.

Additionally, some cloud services can be shared with users outside your organization without any user accounts. You'll need to identify these groups of users as well.

You can use groups in Azure AD for several purposes that simplify management of your cloud environment. For example, with Azure AD groups, you can:

- Use group-based licensing to assign licenses for Microsoft 365 to your user accounts automatically as soon as they are added as members.
- Add user accounts to specific groups dynamically based on user account attributes, such as department name.
- Automatically provision users for Software as a Service (SaaS) applications and to protect access to those applications with multi-factor authentication (MFA) and other Conditional Access rules.
- Provision permissions and levels of access for SharePoint Online team sites.

You create new ***users*** with:

- [The Microsoft 365 admin center](https://docs.microsoft.com/office365/admin/add-users/add-users)
- [PowerShell for Microsoft 365](https://docs.microsoft.com/office365/enterprise/powershell/create-user-accounts-with-office-365-powershell)

You create new ***groups*** with:

- [The Microsoft 365 admin center](https://docs.microsoft.com/office365/admin/create-groups/create-groups)
- [PowerShell for Microsoft 365](https://docs.microsoft.com/office365/enterprise/powershell/manage-office-365-groups-with-powershell)


## Next step for cloud-only identity

[Assign licenses to user accounts](assign-licenses-to-user-accounts.md)
