---
title: "View licensed and unlicensed Microsoft 365 users with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/05/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
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
  - Ent_Office_Other
  - PowerShell
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: e4ee53ed-ed36-4993-89f4-5bec11031435
description: This article explains how to use PowerShell to view licensed and unlicensed Microsoft 365 user accounts.
---

# View licensed and unlicensed Microsoft 365 users with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

User accounts in your Microsoft 365 organization may have some, all, or none of the available licenses assigned to them from the licensing plans that are available in your organization. You can use PowerShell for Microsoft 365 to quickly find the licensed and unlicensed users in your organization.

>[!NOTE]
> The Azure Active Directory module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

## Use the Microsoft Graph PowerShell SDK

First, [connect to Microsoft 365 with PowerShell](connect-to-microsoft-365-powershell.md).

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

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
