---
title: "Disable access to Microsoft 365 services with PowerShell"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 07/27/2020
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
- LIL_Placement
- seo-marvel-apr2020
ms.assetid: 264f4f0d-e2cd-44da-a9d9-23bef250a720
description: In this article, learn how to use PowerShell to disable access to Microsoft 365 services for users.
---

# Disable access to Microsoft 365 services with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

When a Microsoft 365 account is assigned a license from a licensing plan, Microsoft 365 services are made available to the user from that license. However, you can control the Microsoft 365 services that the user can access. For example, even though the license allows access to the SharePoint Online service, you can disable access to it. You can use PowerShell to disable access to any number of services for a specific licensing plan for:

- An individual account.
- A group of accounts.
- All accounts in your organization.

>[!Note]
>There are Microsoft 365 service dependencies that can prevent you from disabling a specified service when other services depend on it.
>

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

Next, use this command to view your available licensing plans, also known as AccountSkuIds:

```powershell
Get-MsolAccountSku | Select AccountSkuId | Sort AccountSkuId
```

>[!Note]
>PowerShell Core does not support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with **Msol** in their name. To continue using these cmdlets, you must run them from Windows PowerShell.
>

For more information, see [View licenses and services with PowerShell](view-licenses-and-services-with-microsoft-365-powershell.md).
    
To see the before and after results of the procedures in this topic, see [View account license and service details with PowerShell](view-account-license-and-service-details-with-microsoft-365-powershell.md).
    
A PowerShell script is available that automates the procedures described in this topic. Specifically, the script lets you view and disable services in your Microsoft 365 organization, including Sway. For more information, see [Disable access to Sway with PowerShell](disable-access-to-sway-with-microsoft-365-powershell.md).
    
    
### Disable specific Microsoft 365 services for specific users for a specific licensing plan
  
To disable a specific set of Microsoft 365 services for users for a specific licensing plan, perform the following steps:
  
#### Step 1: Identify the undesirable services in the licensing plan by using the following syntax:
    
```powershell
$LO = New-MsolLicenseOptions -AccountSkuId <AccountSkuId> -DisabledPlans "<UndesirableService1>", "<UndesirableService2>"...
```

The following example creates a **LicenseOptions** object that disables the Office and SharePoint Online services in the licensing plan named `litwareinc:ENTERPRISEPACK` (Office 365 Enterprise E3).
    
```powershell
$LO = New-MsolLicenseOptions -AccountSkuId "litwareinc:ENTERPRISEPACK" -DisabledPlans "SHAREPOINTWAC", "SHAREPOINTENTERPRISE"
```

#### Step 2: Use the **LicenseOptions** object from Step 1 on one or more users.
    
To create a new account that has the services disabled, use the following syntax:
    
```powershell
New-MsolUser -UserPrincipalName <Account> -DisplayName <DisplayName> -FirstName <FirstName> -LastName <LastName> -LicenseAssignment <AccountSkuId> -LicenseOptions $LO -UsageLocation <CountryCode>
```

The following example creates a new account for Allie Bellew that assigns the license and disables the services described in Step 1.
    
```powershell
New-MsolUser -UserPrincipalName allieb@litwareinc.com -DisplayName "Allie Bellew" -FirstName Allie -LastName Bellew -LicenseAssignment litwareinc:ENTERPRISEPACK -LicenseOptions $LO -UsageLocation US
```

For more information about creating user accounts in PowerShell for Microsoft 365, see [Create user accounts with PowerShell](create-user-accounts-with-microsoft-365-powershell.md).
    
To disable the services for an existing licensed user, use the following syntax:
    
```powershell
Set-MsolUserLicense -UserPrincipalName <Account> -LicenseOptions $LO
```

This example disables the services for the user BelindaN@litwareinc.com.
    
```powershell
Set-MsolUserLicense -UserPrincipalName belindan@litwareinc.com -LicenseOptions $LO
```

To disable the services described in Step 1 for all existing licensed users, specify the name of your Microsoft 365 plan from the display of the **Get-MsolAccountSku** cmdlet (such as **litwareinc:ENTERPRISEPACK**), and then run the following commands:
    
```powershell
$acctSKU="<AccountSkuId>"
$AllLicensed = Get-MsolUser -All | Where {$_.isLicensed -eq $true -and $_.licenses.AccountSku.SkuPartNumber -contains ($acctSKU).Substring($acctSKU.IndexOf(":")+1, $acctSKU.Length-$acctSKU.IndexOf(":")-1)}
$AllLicensed | ForEach {Set-MsolUserLicense -UserPrincipalName $_.UserPrincipalName -LicenseOptions $LO}
```

 If you use the **Get-MsolUser** cmdlet without using the _All_ parameter, only the first 500 user accounts are returned.

To disable the services for a group of existing users, use either of the following methods to identify the users:
    
**Method 1. Filter the accounts based on an existing account attribute** 

To do this, use the following syntax:
    
```powershell
$x = Get-MsolUser -All <FilterableAttributes>
$x | ForEach {Set-MsolUserLicense -UserPrincipalName $_.UserPrincipalName -LicenseOptions $LO}
```

The following example disables the services for users in the Sales department in the United States.
    
```powershell
$USSales = Get-MsolUser -All -Department "Sales" -UsageLocation "US"
$USSales | ForEach {Set-MsolUserLicense -UserPrincipalName $_.UserPrincipalName -LicenseOptions $LO}
```

**Method 2: Use a list of specific accounts** 

To do this, perform the following steps:
    
1. Create a text file that contains one account on each line like this:
    
   ```powershell
   akol@contoso.com
   tjohnston@contoso.com
   kakers@contoso.com
   ```

   In this example, the text file is C:\\My Documents\\Accounts.txt.
    
2. Run the following command:
    
   ```powershell
   Get-Content "C:\My Documents\Accounts.txt" | foreach {Set-MsolUserLicense -UserPrincipalName $_ -LicenseOptions $LO}
   ```

If you want to disable access to services for multiple licensing plans, repeat the above instructions for each licensing plan, ensuring that:

- The user accounts have been assigned the licensing plan.
- The services to disable are available in the licensing plan.

To disable Microsoft 365 services for users while you are assigning them to a licensing plan, see [Disable access to services while assigning user licenses](disable-access-to-services-while-assigning-user-licenses.md).

### Assign all services in a licensing plan to a user account

For user accounts that have had services disabled, you can enable all services for a specific licensing plan with these commands:

```powershell
$userUPN="<user account UPN>"
$acctSKU="<AccountSkuId>"
$LO = New-MsolLicenseOptions -AccountSkuId $acctSKU
Set-MsolUserLicense -UserPrincipalName $userUPN -LicenseOptions $LO
```

## Related topic

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
