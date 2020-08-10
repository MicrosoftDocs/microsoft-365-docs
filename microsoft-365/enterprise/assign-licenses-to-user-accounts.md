---
title: "Assign Microsoft 365 licenses to user accounts"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/03/2019
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

For the hybrid identity model, when Active Directory Domain Services (AD DS) user accounts are synchronized for the first time, they are not automatically assigned a Microsoft 365 license. You must first configure each user account with a user location.

In either case, you must assign a license to user accounts so your users can access Microsoft 365 services, such as email and Microsoft Teams.

You can assign licenses to user accounts either individually or automatically through group membership.

To assign Microsoft 365 licenses to individual user accounts, you can use:

- [The Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/manage/assign-licenses-to-users)
- [PowerShell for Microsoft 365](https://docs.microsoft.com/office365/enterprise/powershell/assign-licenses-to-user-accounts-with-office-365-powershell)

For automatic license assignment, see [group-based licensing in Azure AD](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-licensing-whatis-azure-portal).

## Next steps

With the full set of user accounts that have been assigned licenses, you are now ready to:

- [Implement security](https://docs.microsoft.com/microsoft-365/security/office-365-security/security-roadmap)
- [Deploy client software, such as Microsoft 365 Apps](https://docs.microsoft.com/DeployOffice/deployment-guide-microsoft-365-apps)
- [Set up Mobile Device Management in Microsoft 365](https://support.office.com/article/set-up-mobile-device-management-mdm-in-office-365-dd892318-bc44-4eb1-af00-9db5430be3cd)
- [Configure services and applications](configure-services-and-applications.md)
