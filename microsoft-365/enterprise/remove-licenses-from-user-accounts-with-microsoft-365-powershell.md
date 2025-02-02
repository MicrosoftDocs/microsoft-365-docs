---
title: "Remove Microsoft 365 licenses from user accounts with PowerShell"
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
  - PowerShell
  - Ent_Office_Other
  - LIL_Placement
  - O365ITProTrain
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: e7e4dc5e-e299-482c-9414-c265e145134f

description: "Explains how to use PowerShell to remove Microsoft 365 licenses that were previously assigned to users."
---

# Remove Microsoft 365 licenses from user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

>[!Note]
>[Learn how to remove licenses from user accounts](../admin/manage/assign-licenses-to-users.md) with the Microsoft 365 admin center. For a list of additional resources, see [Manage users and groups](/admin).
>

## Use the Microsoft Graph PowerShell SDK

First, [connect to your Microsoft 365 tenant](/graph/powershell/get-started#authentication).

Assigning and removing licenses for a user requires the User.ReadWrite.All permission scope or one of the other permissions listed in the ['Assign license' Graph API reference page](/graph/api/user-assignlicense).

The Organization.Read.All permission scope is required to read the licenses available in the tenant.

```powershell
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All
```

To view the licensing plan information in your organization, see the following articles:

- [View licenses and services with PowerShell](view-licenses-and-services-with-microsoft-365-powershell.md)

- [View account license and service details with PowerShell](view-account-license-and-service-details-with-microsoft-365-powershell.md)

### Removing licenses from user accounts

To remove licenses from an existing user account, use the following syntax:
  
```powershell
Set-MgUserLicense -UserId "<Account>" -RemoveLicenses @("<AccountSkuId1>") -AddLicenses @{}
```

This example removes the **SPE_E5** (Microsoft 365 E5) licensing plan from the user **BelindaN@litwareinc.com**:

```powershell
$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'
Set-MgUserLicense -UserId "belindan@litwareinc.com" -RemoveLicenses @($e5Sku.SkuId) -AddLicenses @{}
```

To remove all licenses from a group of existing licensed users, use the following syntax:

```powershell
$licensedUsers = Get-MgUser -Filter 'assignedLicenses/$count ne 0' `
    -ConsistencyLevel eventual -CountVariable licensedUserCount -All `
    -Select UserPrincipalName,DisplayName,AssignedLicenses

foreach($user in $licensedUsers)
{
    $licensesToRemove = $user.AssignedLicenses | Select -ExpandProperty SkuId
    $user = Set-MgUserLicense -UserId $user.UserPrincipalName -RemoveLicenses $licensesToRemove -AddLicenses @{} 
}
```

To remove a specific license from a list of users in a text file, perform the following steps. This example removes the **SPE_E5** (Microsoft 365 Enterprise E5) license from the user accounts defined in the text file C:\My Documents\Accounts.txt.

  1. Create and save a text file to C:\My Documents\Accounts.txt that contains one account on each line like this:

     ```powershell
     akol@contoso.com
     tjohnston@contoso.com
     kakers@contoso.com
     ```

  2. Use the following command:

     ```powershell
     $x=Get-Content "C:\My Documents\Accounts.txt"
     $e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'
     for ($i=0; $i -lt $x.Count; $i++)
     {
     Set-MgUserLicense -UserId $x[$i] -RemoveLicenses @($e5Sku.SkuId) -AddLicenses @{}
     }
     ```

Another way to free up a license is by deleting the user account. For more information, see [Delete and restore user accounts with PowerShell](delete-and-restore-user-accounts-with-microsoft-365-powershell.md).
  
## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
