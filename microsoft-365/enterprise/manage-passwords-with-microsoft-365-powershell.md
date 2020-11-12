---
title: "Manage passwords with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
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
description: "Learn how to use PowerShell to manage passwords."
---

# Manage passwords with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use PowerShell for Microsoft 365 as an alternative to the Microsoft 365 admin center to manage passwords in Microsoft 365. 

## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).


### Set a password

Use these commands to specify a password for a user account.

```powershell
$userUPN="<user account>"
$newpassword="<new password>"
$secpasswd = ConvertTo-SecureString $newpassword -AsPlainText -Force
Set-AzureADUserPassword -ObjectId  $userUPN -Password $secpasswd
```

### Force a user to change their password

Use these commands to force the user to change their password.

```powershell
$userUPN="<user account>"
Set-AzureADUserPassword -ObjectId  $userUPN -EnforceChangePasswordPolicy
````

Use these commands to force the user to change their password the next time they sign in.

```powershell
$userUPN="<user account>"
Set-AzureADUserPassword -ObjectId  $userUPN -ForceChangePasswordNextLogin
````

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

### Set a password

Use these commands to specify a password for a user account.

```powershell
$userUPN="<user account>"
$newpassword="<new password>"
Set-MsolUserPassword -UserPrincipalName $userUPN -NewPassword $newpassword
```

### Force a user to change their password

Use these commands to force the user to change their password.

```powershell
$userUPN="<user account>"
Set-MsolUserPassword -UserPrincipalName $userUPN -ForceChangePassword
````

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)

