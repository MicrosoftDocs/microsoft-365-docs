---
title: "Assign Microsoft 365 licenses to user accounts"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/30/2020
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
description: "Describes how to assign Microsoft 365 licenses to user accounts, either individually or based on group membership."
---

# Assign Microsoft 365 licenses to user accounts

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

For the cloud-only identity model, you can assign Microsoft 365 licenses to user accounts as they are created, depending on how you create them.

For the hybrid identity model, when Active Directory Domain Services (AD DS) user accounts are synchronized for the first time, they are not automatically assigned a location or a Microsoft 365 license. **You must configure each user account with a user location prior to or along with assigning a license.**

In either case, you must assign a license to user accounts so your users can access Microsoft 365 services, such as email and Microsoft Teams.

You can assign licenses to user accounts either individually or automatically through group membership.

To assign Microsoft 365 licenses to individual user accounts, you can use:

- [The Microsoft 365 admin center](../admin/manage/assign-licenses-to-users.md)
- [PowerShell](assign-licenses-to-user-accounts-with-microsoft-365-powershell.md)
- The Azure AD admin center

## Group-based licensing

You can configure security groups in Azure AD to automatically assign licenses from a set of subscriptions to all the members of the group. This is known as *group-based licensing*. If a user account is added to or removed from the group, the licenses for the group's subscriptions will be automatically assigned or unassigned from the user account.

Make sure you have enough licenses for all the group members. If you run out of licenses, new users won't be assigned licenses until licenses become available.

>[!Note]
>You should not configure group-based licensing for groups that contain Azure business to business (B2B) accounts.
>

For more informaion, see [group-based licensing in Azure AD](/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).

## Next steps

With the appropriate set of user accounts that have been assigned licenses, you are now ready to:

- [Implement security](../security/office-365-security/security-roadmap.md)
- [Deploy client software, such as Microsoft 365 Apps](/DeployOffice/deployment-guide-microsoft-365-apps)
- [Set up device management](device-management-roadmap-microsoft-365.md)
- [Configure services and applications](configure-services-and-applications.md)