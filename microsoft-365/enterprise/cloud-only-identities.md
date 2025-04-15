---
title: "Microsoft 365 cloud-only identity"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 09/26/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom: 
- Adm_O365
- 'O365p_AddUsersWithDirSync'
- 'O365M_AddUsersWithDirSync'
- 'O365E_HRCSetupAADConnectAboutLM617031'
- 'O365E_AddUsersWithDirSync'
ms.collection:
- scotvorg
- Ent_O365
- M365-identity-device-management
- must-keep
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

If you have chosen the cloud-only identity model, you already have a Microsoft Entra tenant for your Microsoft 365 subscription to store all of your users, groups, and contacts. After setting up protection for administrator accounts in [Step 2](protect-your-global-administrator-accounts.md) and user accounts in [Step 3](microsoft-365-secure-sign-in.md) of this solution, you're now ready to begin creating the new accounts and groups that your organization needs.

Here are the basic components of cloud-only identity.

![The basic components of cloud-only identity.](../media/about-microsoft-365-identity/cloud-only-identity.png)

Users and their user accounts in organizations can be categorized in a number of ways. For example, some are employees and have a permanent status. Some are vendors, contractors, or partners that have a temporary status. Some are external users that have no user accounts but must still be granted access to specific services and resources to support interaction and collaboration. For example:

- Tenant accounts represent users within your organization that you license for cloud services

- Business to Business (B2B) accounts represent users outside your organization that you invite to participate in collaboration

Take stock of the types of users in your organization. What are the groupings? For example, you can group users by high-level function or purpose to your organization.

Additionally, some cloud services can be shared with users outside your organization without any user accounts. You'll need to identify these groups of users as well.

You can use groups in Microsoft Entra ID for several purposes that simplify management of your cloud environment. For example, with Microsoft Entra groups, you can:

- Use group-based licensing to assign licenses for Microsoft 365 to your user accounts automatically as soon as they're added as members.
- Add user accounts to specific groups dynamically based on user account attributes, such as department name.
- Automatically provision users for Software as a Service (SaaS) applications and to protect access to those applications with multifactor authentication (MFA) and other Conditional Access policies.
- Provision permissions and levels of access for teams and SharePoint Online team sites.

## Next steps for cloud-only identity

- [Manage user accounts](manage-microsoft-365-accounts.md)
- [Assign licenses to user accounts](assign-licenses-to-user-accounts.md)
- [Manage groups and group membership](manage-microsoft-365-groups.md)
- [Manage user account passwords](manage-microsoft-365-passwords.md)
