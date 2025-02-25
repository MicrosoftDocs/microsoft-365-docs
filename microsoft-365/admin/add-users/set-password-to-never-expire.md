---
title: "Set an individual user's password to never expire"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 09/30/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
  - VSBFY23
  - MSStore_Link
  - AdminSurgePortfolio
  - AdminTemplateSet
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
search.appverid:
description: "Sign in to your Microsoft 365 admin account to set some individual user passwords to never expire by using Microsoft Graph PowerShell."
---
# Set an individual user's password to never expire

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

This article explains how to set a password for an individual user to not expire. You have to complete these steps using PowerShell.

## Before you begin

This article is for people who set password expiration policy for a business, school, or nonprofit. You must be a [global admin or password administrator](about-admin-roles.md) to perform these steps.

You can use the Microsoft cloud service [Microsoft Graph Powershell](/powershell/microsoftgraph/overview) to set passwords not to expire for specific users, remove the never-expire configuration or see which users' passwords are set to never expire.

This guide applies to other providers, such as Intune and Microsoft 365, which also rely on Microsoft Entra ID for identity and directory services. Password expiration is the only part of the policy that can be changed.

## How to check the expiration policy for a password

Use the `Connect-MgGraph` command to sign in with the required scopes. You need to sign in with an admin account to consent to the required scopes.

```powershell
Connect-MgGraph -Scopes "User.ReadWrite.All","Group.ReadWrite.All"
 ```
The command prompts you to go to a web page to sign in using a device code. Once you've done that, the command indicates success with a `Welcome To Microsoft Graph!` message. You only need to sign in once per session.

Run one of the following commands:

- To see if a single user's password is set to never expire, run the following cmdlet by using the UPN (for example, *user@contoso.onmicrosoft.com*) or the user ID of the user you want to check:

    ```powershell
    Get-MGuser -UserId <user id or UPN> -Property UserPrincipalName, PasswordPolicies | Select-Object UserPrincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
    }
    ```

    Example:

    ```powershell
    Get-MGuser -UserId userUPN@contoso.com -Property UserPrincipalName, PasswordPolicies | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
    }
    ```

- To see the **Password never expires** setting for all users, run the following cmdlet:

    ```powershell
    Get-MGuser -All -Property UserPrincipalName, PasswordPolicies | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
     }
    ```

- To get a report of all the users with PasswordNeverExpires in Html on the desktop of the current user with name  **ReportPasswordNeverExpires.html**

    ```powershell
    Get-MGuser -All -Property UserPrincipalName, PasswordPolicies | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
    } | ConvertTo-Html | Out-File $env:userprofile\Desktop\ReportPasswordNeverExpires.html
    ```

- To get a report of all the users with PasswordNeverExpires in CSV on the desktop of the current user with name **ReportPasswordNeverExpires.csv**

    ```powershell
    Get-MGuser -All -Property UserPrincipalName, PasswordPolicies | Select-Object UserprincipalName,@{
        N="PasswordNeverExpires";E={$_.PasswordPolicies -contains "DisablePasswordExpiration"}
    } | ConvertTo-Csv -NoTypeInformation | Out-File $env:userprofile\Desktop\ReportPasswordNeverExpires.csv

## Set a password to never expire

Run one of the following commands:

- To set the password of one user to never expire, run the following cmdlet by using the UPN or the user ID of the user:

    ```powershell
    Update-MgUser -UserId <user ID> -PasswordPolicies DisablePasswordExpiration
    ```

- To set the passwords of all the users in an organization to never expire, run the following cmdlet:

    ```powershell
    Get-MGuser -All | Update-MgUser -PasswordPolicies DisablePasswordExpiration
    ```

> [!WARNING]
> User accounts configured with the `-PasswordPolicies DisablePasswordExpiration` parameter still age based on the `pwdLastSet` attribute. Based on the `pwdLastSet` attribute, if you change the expiration to `-PasswordPolicies None`, all passwords that have a pwdLastSet older than 90 days require the user to change them the next time they sign in. This change can affect a large number of users.

### Set a password to expire

Run one of the following commands:

- To set the password of one user so that the password expires, run the following cmdlet by using the UPN or the user ID of the user:

    ```powershell
    Update-MgUser -UserId <user ID> -PasswordPolicies None
    ```

- To set the passwords of all users in the organization so that they expire, use the following cmdlet:

    ```powershell
    Get-MGuser -All | Update-MgUser -PasswordPolicies None
    ```

## Related content

[Let users reset their own passwords](../add-users/let-users-reset-passwords.md) (article)\
[Reset passwords](../add-users/reset-passwords.md) (article)\
[Set the password expiration policy for your organization](../manage/set-password-expiration-policy.md) (article)
