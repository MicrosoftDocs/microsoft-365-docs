---
title: "Set an individual user's password to never expire"
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
ms.assetid: f493e3af-e1d8-4668-9211-230c245a0466
description: "Sign in to your Microsoft 365 admin account to set some individual user passwords to never expire by using Windows PowerShell."
---
# Set an individual user's password to never expire

This article explains how to set a password for an individual user to not expire. You have to complete these steps using PowerShell.

## Before you begin

This article is for people who set password expiration policy for a business, school, or nonprofit. To complete these steps, you need to sign in with your Microsoft 365 admin account. [What's an admin account?](https://docs.microsoft.com/microsoft-365/business-video/admin-center-overview). 

You must be an [global admin or password administrator](about-admin-roles.md) to perform these steps.

A global admin for a Microsoft cloud service can use the [Azure Active Directory PowerShell for Graph](/powershell/azure/active-directory/install-adv2?view=azureadps-2.0) to set passwords not to expire for specific users. You can also use [AzureAD](/powershell/module/Azuread) cmdlets to remove the never-expires configuration or to see which user passwords are set to never expire.

This guide applies to other providers, such as Intune and Microsoft 365, which also rely on Azure AD for identity and directory services. Password expiration is the only part of the policy that can be changed.

> [!NOTE]
> Only passwords for user accounts that are not synchronized through directory synchronization can be configured to not expire. For more information about directory synchronization, see [Connect AD with Azure AD](/azure/active-directory/connect/active-directory-aadconnect).

## How to check the expiration policy for a password

For more information about the Get-AzureADUser command in the AzureAD module, see the reference article [Get-AzureADUser](/powershell/module/Azuread/Get-AzureADUser?view=azureadps-2.0).

Run one of the following commands:

- To see if a single user's password is set to never expire, run the following cmdlet by using the UPN (for example, *user@contoso.onmicrosoft.com*) or the user ID of the user you want to check:

    ```powershell
    Get-AzureADUser -ObjectId <user id or UPN> | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
    }
    ```

    Example:

    ```powershell
    Get-AzureADUser -ObjectId userUPN@contoso.com | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
    }
    ```  

- To see the **Password never expires** setting for all users, run the following cmdlet:

    ```powershell
    Get-AzureADUser -All $true | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
     }
    ```

- To get a report of all the users with PasswordNeverExpires in Html on the desktop of the current user with name  **ReportPasswordNeverExpires.html**

    ```powershell
    Get-AzureADUser -All $true | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
    } | ConvertTo-Html | Out-File $env:userprofile\Desktop\ReportPasswordNeverExpires.html
    ```  

- To get a report of all the users with PasswordNeverExpires in CSV on the desktop of the current user with name **ReportPasswordNeverExpires.csv**

    ```powershell
    Get-AzureADUser -All $true | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
    } | ConvertTo-Csv -NoTypeInformation | Out-File $env:userprofile\Desktop\ReportPasswordNeverExpires.csv

## Set a password to never expire

Run one of the following commands:

- To set the password of one user to never expire, run the following cmdlet by using the UPN or the user ID of the user:

    ```powershell
    Set-AzureADUser -ObjectId <user ID> -PasswordPolicies DisablePasswordExpiration
    ```

- To set the passwords of all the users in an organization to never expire, run the following cmdlet:

    ```powershell
    Get-AzureADUser -All $true | Set-AzureADUser -PasswordPolicies DisablePasswordExpiration
    ```

> [!WARNING]
> User accounts configured with the `-PasswordPolicies DisablePasswordExpiration` parameter still age based on the `pwdLastSet` attribute. Based on the `pwdLastSet` attribute, if you change the expiration to `-PasswordPolicies None`, all passwords that have a pwdLastSet older than 90 days require the user to change them the next time they sign in. This change can affect a large number of users.

### Set a password to expire

Run one of the following commands:

- To set the password of one user so that the password expires, run the following cmdlet by using the UPN or the user ID of the user:

    ```powershell
    Set-AzureADUser -ObjectId <user ID> -PasswordPolicies None
    ```

- To set the passwords of all users in the organization so that they expire, use the following cmdlet:

    ```powershell
    Get-AzureADUser -All $true | Set-AzureADUser -PasswordPolicies None
    ```

## Related content

[Let users reset their own passwords](../add-users/let-users-reset-passwords.md) (article)

[Reset passwords](../add-users/reset-passwords.md) (article)