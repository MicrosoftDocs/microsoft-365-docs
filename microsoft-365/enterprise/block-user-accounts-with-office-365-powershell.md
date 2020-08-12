---
title: "Block Microsoft 365 user accounts with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 07/16/2020
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
- Ent_Office_Other
- PowerShell
- seo-marvel-apr2020
ms.assetid: 04e58c2a-400b-496a-acd4-8ec5d37236dc
description: This article explains how to use PowerShell to block and unblock access to Microsoft 365 accounts.
---

# Block Microsoft 365 user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Blocking access to a Microsoft 365 account prevents anyone from using the account to sign in and access the services and data in your Microsoft 365 organization. You can use PowerShell to block access to individual and multiple user accounts.

## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-office-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
 
### Block access to individual user accounts

Use the following syntax to block an individual user account:
  
```powershell
Set-​AzureADUser -ObjectID <sign-in name of the user account> -AccountEnabled $false
```

> [!NOTE]
> The -ObjectID parameter in the Set-AzureAD cmdlet accepts either the account sign-in name, also known as the User Principal Name, or the account's object ID. 
  
This example blocks access to the user account fabricec@litwareinc.com.
  
```powershell
Set-​AzureADUser -ObjectID fabricec@litwareinc.com -AccountEnabled $false
```

To unblock this user account, run the following command:
  
```powershell
Set-​AzureADUser -ObjectID fabricec@litwareinc.com -AccountEnabled $true
```

To display the user account UPN based on the user's display name, use the following commands:
  
```powershell
$userName="<display name>"
Write-Host (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName

```

This example displays the user account UPN for the user named Caleb Sills.
  
```powershell
$userName="Caleb Sills"
Write-Host (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
```

To block an account based on the user's display name, use the following commands:
  
```powershell
$userName="<display name>"
Set-AzureADUser -ObjectID (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName -AccountEnabled $false

```

At any time, you can check the blocked status of a user account with the following command:
  
```powershell
Get-AzureADUser -UserPrincipalName <UPN of user account> | Select DisplayName,AccountEnabled
```

### Block access to multiple user accounts

To block access to multiple user accounts, create a text file that contains one account sign-in name on each line like this:
    
  ```powershell
akol@contoso.com
tjohnston@contoso.com
kakers@contoso.com
  ```

In the following commands, the example text file is C:\My Documents\Accounts.txt. Replace this with the path and file name of your text file.
  
To block access to the accounts listed in the text file, run the following command:
    
```powershell
Get-Content "C:\My Documents\Accounts.txt" | ForEach { Set-​AzureADUSer -ObjectID $_ -AccountEnabled $false }
```

To unblock the accounts listed in the text file, run the following command:
    
```powershell
Get-Content "C:\My Documents\Accounts.txt" | ForEach { Set-​AzureADUSer -ObjectID $_ -AccountEnabled $true }
```

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, [connect to your Microsoft 365 tenant](connect-to-office-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).
    
### Block access to individual user accounts

Use the following syntax to block access to an individual user account:
  
```powershell
Set-MsolUser -UserPrincipalName <sign-in name of user account>  -BlockCredential $true
```

>[!Note]
>PowerShell Core does not support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with **Msol** in their name. To continue using these cmdlets, you must run them from Windows PowerShell.
>

This example blocks access to the user account fabricec@litwareinc.com.
  
```powershell
Set-MsolUser -UserPrincipalName fabricec@litwareinc.com -BlockCredential $true
```

To unblock the user account, run the following command:
  
```powershell
Set-MsolUser -UserPrincipalName <sign-in name of user account>  -BlockCredential $false
```

At any time, you can check the blocked status of a user account with the following command:
  
```powershell
Get-MsolUser -UserPrincipalName <sign-in name of user account> | Select DisplayName,BlockCredential
```

### Block access to multiple user accounts

First, create a text file that contains one account on each line like this:
    
```powershell
akol@contoso.com
tjohnston@contoso.com
kakers@contoso.com
```

In the following commands, the example text file is C:\My Documents\Accounts.txt. Replace this with the path and file name of your text file.
    
To block access to the accounts listed in the text file, run the following command:
    
  ```powershell
  Get-Content "C:\My Documents\Accounts.txt" | ForEach { Set-MsolUser -UserPrincipalName $_ -BlockCredential $true }
  ```
To unblock the accounts listed in the text file, run the following command:
    
  ```powershell
  Get-Content "C:\My Documents\Accounts.txt" | ForEach { Set-MsolUser -UserPrincipalName $_ -BlockCredential $false }
  ```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-office-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-office-365-with-office-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-office-365-powershell.md)
