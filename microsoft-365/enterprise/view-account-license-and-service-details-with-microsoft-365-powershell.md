---
title: "View Microsoft 365 account license and service details with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 10/17/2024
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
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: ace07d8a-15ca-4b89-87f0-abbce809b519

description: "Explains how to use PowerShell to determine the Microsoft 365 services that have been assigned to users."
---

# View Microsoft 365 account license and service details with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

In Microsoft 365, licenses from licensing plans (also called SKUs or Microsoft 365 plans) give users access to the Microsoft 365 services that are defined for those plans. However, a user might not have access to all the services that are available in a license that's currently assigned to them. You can use PowerShell for Microsoft 365 to view the status of services on user accounts.

For more information about licensing plans, license, and services, see [View licenses and services with PowerShell](view-licenses-and-services-with-microsoft-365-powershell.md).

## View account license and service details using Microsoft Graph PowerShell

First, [connect to your Microsoft 365 tenant](/graph/powershell/get-started#authentication).

Reading user properties including license details requires the **User.Read.All** permission scope or one of the other permissions listed in the ['Get a user' Graph API reference page](/graph/api/user-get).

```powershell
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All
```

Next, list the license plans for your tenant with this command.

```powershell
Get-MgSubscribedSku
```

Use these commands to list the services that are available in each licensing plan.

```powershell
$allSKUs = Get-MgSubscribedSku -Property SkuPartNumber, ServicePlans 
$allSKUs | ForEach-Object {
    Write-Host "Service Plan:" $_.SkuPartNumber
    $_.ServicePlans | ForEach-Object {$_}
}
```

Use these commands to list the licenses that are assigned to a user account.

```powershell
Get-MgUserLicenseDetail -UserId "<user sign-in name (UPN)>"
```

For example:

```powershell
Get-MgUserLicenseDetail -UserId "belindan@litwareinc.com"
```

### To view services for a user account

To view all the Microsoft 365 services that a user has access to, use the following syntax:
  
```powershell
(Get-MgUserLicenseDetail -UserId <user account UPN> -Property ServicePlans)[<LicenseIndexNumber>].ServicePlans
```

This example shows the services to which the user BelindaN@litwareinc.com has access. This shows the services that are associated with all licenses that are assigned to her account.
  
```powershell
(Get-MgUserLicenseDetail -UserId belindan@litwareinc.com -Property ServicePlans).ServicePlans
```

This example shows the services that user BelindaN@litwareinc.com has access to from the first license that's assigned to her account (the index number is 0).
  
```powershell
(Get-MgUserLicenseDetail -UserId belindan@litwareinc.com -Property ServicePlans)[0].ServicePlans
```

To view all the services for a user who has been assigned *multiple licenses*, use the following syntax:

```powershell
$userUPN="<user account UPN>"
$allLicenses = Get-MgUserLicenseDetail -UserId $userUPN -Property SkuPartNumber, ServicePlans
$allLicenses | ForEach-Object {
    Write-Host "License:" $_.SkuPartNumber
    $_.ServicePlans | ForEach-Object {$_}
}
```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
