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

When a command block in this article requires that you specify variable values, use these steps.

1. Copy the command block to the clipboard and paste them into Notepad or the PowerShell Integrated Script Environment (ISE).
2. Fill in the variable values and remove the "<" and ">" characters.
3. Run the commands in the PowerShell window or the PowerShell ISE.

## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).

### Set a password

Use these commands to specify a password for a user account.

```powershell
$userUPN="<user account sign in name, such as belindan@contoso.com>"
$newPassword="<new password>"
$secPassword = ConvertTo-SecureString $newPassword -AsPlainText -Force
Set-AzureADUserPassword -ObjectId  $userUPN -Password $secPassword
```
### Force a user to change their password

Use these commands to set a password and force a user to change their password.

```powershell
$userUPN="<user account sign in name, such as belindan@contoso.com>"
$newPassword="<new password>"
$secPassword = ConvertTo-SecureString $newPassword -AsPlainText -Force
Set-AzureADUserPassword -ObjectId  $userUPN -Password $secPassword -EnforceChangePasswordPolicy $true
```

Use these commands to set a password and force a user to change their password the next time they sign in.

```powershell
$userUPN="<user account sign in name, such as belindan@contoso.com>"
$newPassword="<new password>"
$secPassword = ConvertTo-SecureString $newPassword -AsPlainText -Force
Set-AzureADUserPassword -ObjectId  $userUPN -Password $secPassword -ForceChangePasswordNextLogin $true
```

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

### Set a password

Use these commands to specify a password for a user account.

```powershell
$userUPN="<user account sign in name>"
$newPassword="<new password>"
Set-MsolUserPassword -UserPrincipalName $userUPN -NewPassword $newPassword
```

### Force a user to change their password

Use these commands to force a user to change their password.

```powershell
$userUPN="<user account sign in name>"
Set-MsolUserPassword -UserPrincipalName $userUPN -ForceChangePassword $true
```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)

