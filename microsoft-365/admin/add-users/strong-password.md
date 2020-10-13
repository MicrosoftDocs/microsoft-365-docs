---
title: "Set strong password requirement for users"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to set strong password requirements for your users, using Windows PowerShell."
---
# Set strong password requirement for users

This article explains how to set a strong password requirements for your users. You have to complete these steps using PowerShell.

## Before you begin

This article is for people who manage password policy for a business, school, or nonprofit. To complete these steps, you need to sign in with your Microsoft 365 admin account. [What's an admin account?](../admin-overview/admin-overview.md). You must be an [global admin or password administrator](about-admin-roles.md) to perform these steps.

You must also connect to Microsoft 365 with PowerShell.

> [!NOTE]
> Only passwords for user accounts that are not synchronized through directory synchronization can be configured using these procedures. For more information about directory synchronization, see [Connect AD with Azure AD](https://docs.microsoft.com/azure/active-directory/connect/active-directory-aadconnect).

## Set strong passwords

1. [Connect to Microsoft 365 with PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-office-365-powershell#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

2. Using PowerShell, you can disable strong passwords for specific users with this command:

    ```powershell
    Set-MsolUser –UserPrincipalName –StrongPasswordRequired  $false
    ```

## Related content

[More information on password policy](https://docs.microsoft.com/azure/active-directory/authentication/concept-sspr-policy#password-policies-that-only-apply-to-cloud-user-accounts)

[How to connect to Microsoft 365 with PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-office-365-powershell#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell)

[More information on PowerShell MsolUser commands](https://docs.microsoft.com/powershell/module/msonline/set-msoluser?view=azureadps-1.0)