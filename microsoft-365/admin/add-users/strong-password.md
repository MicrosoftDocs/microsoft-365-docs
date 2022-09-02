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
ms.localizationpriority: medium
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
description: "If you're an admin who manages password policy for a business, school, or nonprofit, you can set strong password requirements by using Azure AD PowerShell."
---
# Turn off strong password requirements for users

This article explains how to turn off strong password requirements for your users. Strong password requirements are turned on by default in your Microsoft 365 for business organization. Your organization might have requirements to disable strong passwords. Follow the steps below to turn off strong password requirements. You have to complete these steps using PowerShell.

## Before you begin

This article is for people who manage password policy for a business, school, or nonprofit. To complete these steps, you need to sign in with your Microsoft 365 admin account. [What's an admin account?](../admin-overview/admin-center-overview.md#overview-of-the-microsoft-365-admin-center) You must be a [global admin or password administrator](about-admin-roles.md) to perform these steps.

You must also connect to Microsoft 365 with PowerShell.

## Set strong passwords

1. [Connect to Microsoft 365 with PowerShell](/office365/enterprise/powershell/connect-to-office-365-powershell#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

2. Using PowerShell, you can turn off strong password requirements for all users with the following command:

    ```powershell
    Get-MsolUser | Set-MsolUser -StrongPasswordRequired $false

3. You can turn **OFF** strong password requirements for specific users with this command:

    ```powershell
    Set-MsolUser –UserPrincipalName –StrongPasswordRequired  $false
    ```

> [!NOTE]
> The userPrincipalName must be in the Internet-style sign-in format where the user name is followed by the at sign (@) and a domain name. For example: user@contoso.com.

## Related content

[How to connect to Microsoft 365 with PowerShell](/office365/enterprise/powershell/connect-to-office-365-powershell#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell)

[More information on PowerShell MsolUser commands](/powershell/azure/active-directory/install-adv2)

[More information on password policy](/azure/active-directory/authentication/concept-sspr-policy#password-policies-that-only-apply-to-cloud-user-accounts)
