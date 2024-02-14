---
title: "Assign roles to Microsoft 365 user accounts with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 02/14/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid: 
- MET150
ms.collection: 
- scotvorg
- Ent_O365
- must-keep
f1.keywords:
- CSH
ms.custom:
  - O365ITProTrain
  - PowerShell
  - Ent_Office_Other
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: ede7598c-b5d5-4e3e-a488-195f02f26d93
description: In this article, learn how quickly and easily use PowerShell for Microsoft 365 to assign admin roles to user accounts.
---

# Assign admin roles to Microsoft 365 user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can easily assign roles to user accounts by using PowerShell for Microsoft 365.

>[!Note]
>Learn how to  [assign admin roles](../admin/add-users/assign-admin-roles.md) to user accounts with the Microsoft 365 admin center.
>
>For a list of additional resources, see [Manage users and groups](/admin).
>

## Use the Azure Active Directory PowerShell for Graph module

First, use a **Microsoft Entra DC admin**, **Cloud Application Admin**, or **Global admin** account to [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).

For more information, see [About admin roles](/microsoft-365/admin/add-users/about-admin-roles?).

Next, identify the sign-in name of the user account that you want to add to a role (example: fredsm\@contoso.com). This is also known as the user principal name (UPN).

Next, determine the name of the role. See [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

>[!Note]
>Pay attention to the notes in this article. Some role names are different for Azure Active Directory (Azure AD) PowerShell. For example, the *SharePoint Administrator* role in the Microsoft 365 admin center is *SharePoint Service Administrator* in Azure AD PowerShell.
>

Next, fill in the sign-in and role names and run these commands:
  
```powershell
$userName="<sign-in name of the account>"
$roleName="<admin role name>"
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}
if ($role -eq $null) {
$roleTemplate = Get-AzureADDirectoryRoleTemplate | Where {$_.displayName -eq $roleName}
Enable-AzureADDirectoryRole -RoleTemplateId $roleTemplate.ObjectId
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}
}
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId (Get-AzureADUser | Where {$_.UserPrincipalName -eq $userName}).ObjectID
```

Here's an example of a completed command set that assigns the SharePoint Service Administrator role to the *belindan\@contoso.com* account:
  
```powershell
$userName="belindan@contoso.com"
$roleName="SharePoint Service Administrator"
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}
if ($role -eq $null) {
$roleTemplate = Get-AzureADDirectoryRoleTemplate | Where {$_.displayName -eq $roleName}
Enable-AzureADDirectoryRole -RoleTemplateId $roleTemplate.ObjectId
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}
}
Add-AzureADDirectoryRoleMember -ObjectId $role.ObjectId -RefObjectId (Get-AzureADUser | Where {$_.UserPrincipalName -eq $userName}).ObjectID
```

To display the list of user names for a specific admin role, use these commands.

```powershell
$roleName="<role name>"
Get-AzureADDirectoryRole | Where { $_.DisplayName -eq $roleName } | Get-AzureADDirectoryRoleMember | Ft DisplayName
```

## See also

- [Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
- [Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
- [Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
