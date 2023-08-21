---
title: "View licensed and unlicensed Microsoft 365 users with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 07/21/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- Ent_O365
f1.keywords:
- CSH
ms.custom:
  - O365ITProTrain
  - Ent_Office_Other
  - PowerShell
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
ms.assetid: e4ee53ed-ed36-4993-89f4-5bec11031435
description: This article explains how to use PowerShell to view licensed and unlicensed Microsoft 365 user accounts.
---

# View licensed and unlicensed Microsoft 365 users with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

User accounts in your Microsoft 365 organization may have some, all, or none of the available licenses assigned to them from the licensing plans that are available in your organization. You can use PowerShell for Microsoft 365 to quickly find the licensed and unlicensed users in your organization.

## Use the Microsoft Graph PowerShell SDK

First, [connect to your Microsoft 365 tenant](/graph/powershell/get-started#authentication).

Reading user properties including license details requires the User.Read.All permission scope or one of the other permissions listed in the ['Get a user' Graph API reference page](/graph/api/user-get).

The Organization.Read.All permission scope is required to read the licenses available in the tenant.

```powershell
Connect-Graph -Scopes User.Read.All, Organization.Read.All
```

To view the license details of a specific user account, run the following command:
  
```powershell
Get-MgUserLicenseDetail -UserId "<user sign-in name (UPN)>"
```

For example:

```powershell
Get-MgUserLicenseDetail -UserId "belindan@litwareinc.com"
```

To view the list of all user accounts in your organization that have NOT been assigned any of your licensing plans (unlicensed users), run the following command:
  
```powershell
Get-MgUser -Filter 'assignedLicenses/$count eq 0' -ConsistencyLevel eventual -CountVariable unlicensedUserCount -All

Write-Host "Found $unlicensedUserCount unlicensed users."
```

To view the list of all member user accounts (excluding guests) in your organization that have NOT been assigned any of your licensing plans (unlicensed users), run the following command:
  
```powershell
Get-MgUser -Filter "assignedLicenses/`$count eq 0 and userType eq 'Member'" -ConsistencyLevel eventual -CountVariable unlicensedUserCount -All

Write-Host "Found $unlicensedUserCount unlicensed users (excluding guests)."
```

To view the list of all user accounts in your organization that have been assigned any of your licensing plans (licensed users), run the following command:
  
```powershell
Get-MgUser -Filter 'assignedLicenses/$count ne 0' -ConsistencyLevel eventual -CountVariable licensedUserCount -All -Select UserPrincipalName,DisplayName,AssignedLicenses | Format-Table -Property UserPrincipalName,DisplayName,AssignedLicenses

Write-Host "Found $licensedUserCount licensed users."
```

To view the list of all user accounts in your organization that have an E5 license assigned, run the following command:

```powershell
$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'

Get-MgUser -Filter "assignedLicenses/any(x:x/skuId eq $($e5sku.SkuId) )" -ConsistencyLevel eventual -CountVariable e5licensedUserCount -All

Write-Host "Found $e5licensedUserCount E5 licensed users."
```

## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
 
To view the list of all user accounts in your organization that have NOT been assigned any of your licensing plans (unlicensed users), run the following command:
  
```powershell
Get-AzureAdUser | ForEach{ $licensed=$False ; For ($i=0; $i -le ($_.AssignedLicenses | Measure).Count ; $i++) { If( [string]::IsNullOrEmpty(  $_.AssignedLicenses[$i].SkuId ) -ne $True) { $licensed=$true } } ; If( $licensed -eq $false) { Write-Host $_.UserPrincipalName} }
```

To view the list of all user accounts in your organization that have been assigned any of your licensing plans (licensed users), run the following command:
  
```powershell
Get-AzureAdUser | ForEach { $licensed=$False ; For ($i=0; $i -le ($_.AssignedLicenses | Measure).Count ; $i++) { If( [string]::IsNullOrEmpty(  $_.AssignedLicenses[$i].SkuId ) -ne $True) { $licensed=$true } } ; If( $licensed -eq $true) { Write-Host $_.UserPrincipalName} }
```

>[!Note]
>To list all of the users in your subscription, use the `Get-AzureAdUser -All $true` command.
>

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

To view the list of all user accounts and their licensing status in your organization, run the following command in PowerShell:
  
```powershell
Get-MsolUser -All
```

>[!Note]
>PowerShell Core does not support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with **Msol** in their name. To continue using these cmdlets, you must run them from Windows PowerShell.
>

To view the list of all unlicensed user accounts in your organization, run the following command:
  
```powershell
Get-MsolUser -All -UnlicensedUsersOnly
```

To view the list of all licensed user accounts in your organization, run the following command:
  
```powershell
Get-MsolUser -All | where {$_.isLicensed -eq $true}
```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
