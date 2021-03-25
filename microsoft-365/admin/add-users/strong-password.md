---
title: "Turn off strong password requirements for users"
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
# Turn off strong password requirements for users

This article explains how to turn off strong password requirements for your users. Strong password requirements are turned on by default in your Microsoft 365 for business organization. Your organization might have requirements to disable strong passwords. Follow the steps below to turn off strong password requirements. You have to complete these steps using PowerShell.

## Before you begin

This article is for people who manage password policy for a business, school, or nonprofit. To complete these steps, you need to sign in with your Microsoft 365 admin account. [What's an admin account?](https://docs.microsoft.com/microsoft-365/business-video/admin-center-overview) You must be an [global admin or password administrator](about-admin-roles.md) to perform these steps.

You must also connect to Microsoft 365 with PowerShell.

## Set strong passwords

1. [Connect to Microsoft 365 with PowerShell](/office365/enterprise/powershell/connect-to-office-365-powershell#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

2. Using PowerShell, you can turn off strong password requirements for all users with the following command:

    ```powershell
    Get-MsolUser | Set-MsolUser -StrongPasswordRequired $false

3. You can turn of strong password requirements for specific users with this command:

    ```powershell
    Set-MsolUser –UserPrincipalName –StrongPasswordRequired  $false
    ```

> [!NOTE]
> The userPrincipalName must be in the Internet-style sign-in format where the user name is followed by the at sign (@) and a domain name. For example: user@contoso.com.

## Related content

[How to connect to Microsoft 365 with PowerShell](/office365/enterprise/powershell/connect-to-office-365-powershell#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell)

[More information on PowerShell MsolUser commands](/powershell/module/msonline/set-msoluser?view=azureadps-1.0)

[More information on password policy](/azure/active-directory/authentication/concept-sspr-policy#password-policies-that-only-apply-to-cloud-user-accounts)