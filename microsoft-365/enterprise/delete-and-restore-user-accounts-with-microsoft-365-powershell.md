---
title: "Delete Microsoft 365 user accounts with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/23/2020
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.collection: Ent_O365
f1.keywords:
- CSH
ms.custom: 
- PowerShell
- Ent_Office_Other
- O365ITProTrain
- seo-marvel-apr2020
ms.assetid: 209c9868-448c-49bc-baae-11e28b923a39
description: Learn how to use different modules in PowerShell to delete Microsoft 365 user accounts.
---

# Delete Microsoft 365 user accounts with PowerShell

You can use PowerShell for Microsoft 365 to delete and restore user accounts.

>[!Note]
>Learn how to [restore a user account](../admin/add-users/restore-user.md) by using the Microsoft 365 admin center.
>
>For a list of additional resources, see [Manage users and groups](../admin/add-users/index.yml).
>   
   
## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).

After you connect, use the following syntax to remove an individual user account:
  
```powershell
Remove-AzureADUser -ObjectID <sign-in name>
```

This example removes the user account *fabricec\@litwareinc.com*.
  
```powershell
Remove-AzureADUser -ObjectID fabricec@litwareinc.com
```

> [!NOTE]
> The *-ObjectID* parameter in the **Remove-AzureADUser** cmdlet accepts either the account's sign-in name, also known as the User Principal Name or the account's object ID.
  
To display the account name based on the user's name, use the following commands:
  
```powershell
$userName="<User name>"
Write-Host (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

This example displays the account name for the user *Caleb Sills*.
  
```powershell
$userName="Caleb Sills"
Write-Host (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

To remove an account based on the user's display name, use the following commands:
  
```powershell
$userName="<display name>"
Remove-AzureADUser -ObjectID (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

When you delete a user account through the Microsoft Azure Active Directory Module for Windows PowerShell, the account isn't permanently deleted. You can restore the deleted user account within 30 days.

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

To delete a user account, use the following syntax:
  
```powershell
Remove-MsolUser -UserPrincipalName <sign-in name>
```

>[!Note]
>PowerShell Core doesn't support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with *Msol* in their name. Run these cmdlets from Windows PowerShell.
>

This example deletes the user account *BelindaN@litwareinc.com*.
  
```powershell
Remove-MsolUser -UserPrincipalName belindan@litwareinc.com
```

To restore a deleted user account within the 30-day grace period, use the following syntax:
  
```powershell
Restore-MsolUser -UserPrincipalName <sign-in name>
```

This example restores the deleted account *BelindaN\@litwareinc.com*.
  
```powershell
Restore-MsolUser -UserPrincipalName BelindaN@litwareinc.com
```

>[!Note]
> To see the list of deleted users that can be restored, run the following command:
>    
> ```powershell
> Get-MsolUser -All -ReturnDeletedUsers
> ```
>
> If the user account's original user principal name is used by another account, use the _NewUserPrincipalName_ parameter instead of _UserPrincipalName_ to specify a different user principal name when you restore the user account.


## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Get started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)