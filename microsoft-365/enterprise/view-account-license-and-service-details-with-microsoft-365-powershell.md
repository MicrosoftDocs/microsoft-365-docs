---
title: "View Microsoft 365 account license and service details with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 07/17/2020
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
  - PowerShell
  - Ent_Office_Other
  - LIL_Placement
  - has-azure-ad-ps-ref
ms.assetid: ace07d8a-15ca-4b89-87f0-abbce809b519

description: "Explains how to use PowerShell to determine the Microsoft 365 services that have been assigned to users."
---

# View Microsoft 365 account license and service details with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

In Microsoft 365, licenses from licensing plans (also called SKUs or Microsoft 365 plans) give users access to the Microsoft 365 services that are defined for those plans. However, a user might not have access to all the services that are available in a license that's currently assigned to them. You can use PowerShell for Microsoft 365 to view the status of services on user accounts.

For more information about licensing plans, license, and services, see [View licenses and services with PowerShell](view-licenses-and-services-with-microsoft-365-powershell.md).

## Use the Microsoft Graph PowerShell SDK

First, [connect to your Microsoft 365 tenant](/graph/powershell/get-started#authentication).

Reading user properties including license details requires the User.Read.All permission scope or one of the other permissions listed in the ['Get a user' Graph API reference page](/graph/api/user-get).

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

This script will generate a CSV file for all users with columns for `DisplayName`, `UserPrincipalName`, `SkuId`, `SkuName`, and each of the `ServicePlans`. If a user does not have a certain service plan assigned, it will show up as "Not Assigned" in the corresponding column. Please replace `"C:\Users\Public\M365LicenseReport.csv"` with your desired output path.

```powershell

# Install the Microsoft Graph PowerShell SDK v2
Install-Module Microsoft.Graph

# Connect to Microsoft Graph
Connect-MgGraph

# Get all the users in the tenant
$users = Get-MgUser -All

# Create an empty array to store the output
$output = @()

# Determine all possible service plans in your tenant
$allServicePlans = Get-MgSubscribedSku | ForEach-Object { $_.ServicePlans } | Select-Object -ExpandProperty ServicePlanName -Unique

# Loop through each user
foreach ($user in $users) {

    # Get the user's display name and user principal name
    $displayName = $user.DisplayName
    $userPrincipalName = $user.UserPrincipalName

    # Get the user's assigned licenses
    $licenses = Get-MgUserLicenseDetail -UserId $user.Id

    # Loop through each license
    foreach ($license in $licenses) {

        # Get the license sku id and name
        $skuId = $license.SkuId
        $skuName = (Get-MgSubscribedSku | Where-Object {$_.SkuId -eq $skuId}).SkuPartNumber

        # Create a hash table to store the service plan names and states
        $servicePlanTable = @{}

        # Initialize all service plans as "Not Assigned"
        foreach ($plan in $allServicePlans) {
            $servicePlanTable[$plan] = "Not Assigned"
        }

        # Loop through each service plan
        foreach ($servicePlan in $license.ServicePlans) {

            # Get the service plan name and state
            $servicePlanName = $servicePlan.ServicePlanName
            $servicePlanState = $servicePlan.ProvisioningStatus

            # Update the service plan state in the hash table
            $servicePlanTable[$servicePlanName] = $servicePlanState
        }

        # Create a custom object with the user and license information
        $object = [pscustomobject]@{
            DisplayName = $displayName
            UserPrincipalName = $userPrincipalName
            SkuId = $skuId
            SkuName = $skuName
        }

        # Add the service plan information to the custom object
        foreach ($key in $servicePlanTable.Keys) {
            Add-Member -InputObject $object -NotePropertyName $key -NotePropertyValue $servicePlanTable[$key]
        }

        # Add the custom object to the output array
        $output += $object
    }
}

# Export the output array to a csv file
$output | Export-Csv -Path "C:\Users\Public\M365LicenseReport.csv" -NoTypeInformation
```

## Use the Azure Active Directory PowerShell for Graph module

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-azure-active-directory-powershell-for-graph-module).
  
Next, list the license plans for your tenant with this command.

```powershell
Get-AzureADSubscribedSku | Select SkuPartNumber
```

Use these commands to list the services that are available in each licensing plan.

```powershell
$allSKUs=Get-AzureADSubscribedSku
$licArray = @()
for($i = 0; $i -lt $allSKUs.Count; $i++)
{
$licArray += "Service Plan: " + $allSKUs[$i].SkuPartNumber
$licArray +=  Get-AzureADSubscribedSku -ObjectID $allSKUs[$i].ObjectID | Select -ExpandProperty ServicePlans
$licArray +=  ""
}
$licArray
```

Use these commands to list the licenses that are assigned to a user account.

```powershell
$userUPN="<user account UPN, such as belindan@contoso.com>"
$licensePlanList = Get-AzureADSubscribedSku
$userList = Get-AzureADUser -ObjectID $userUPN | Select -ExpandProperty AssignedLicenses | Select SkuID 
$userList | ForEach { $sku=$_.SkuId ; $licensePlanList | ForEach { If ( $sku -eq $_.ObjectId.substring($_.ObjectId.length - 36, 36) ) { Write-Host $_.SkuPartNumber } } }
```

## Use the Microsoft Azure Active Directory Module for Windows PowerShell

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md#connect-with-the-microsoft-azure-active-directory-module-for-windows-powershell).

Next, run this command to list the licensing plans that are available in your organization. 

```powershell
Get-MsolAccountSku
```
>[!Note]
>PowerShell Core does not support the Microsoft Azure Active Directory Module for Windows PowerShell module and cmdlets with **Msol** in their name. To continue using these cmdlets, you must run them from Windows PowerShell.
>

Next, run this command to list the services that are available in each licensing plan, and the order in which they are listed (the index number).

```powershell
(Get-MsolAccountSku | where {$_.AccountSkuId -eq "<AccountSkuId>"}).ServiceStatus
```
  
Use this command to list the licenses that are assigned to a user, and the order in which they are listed (the index number).

```powershell
Get-MsolUser -UserPrincipalName <user account UPN> | Format-List DisplayName,Licenses
```

### To view services for a user account

To view all the Microsoft 365 services that a user has access to, use the following syntax:
  
```powershell
(Get-MsolUser -UserPrincipalName <user account UPN>).Licenses[<LicenseIndexNumber>].ServiceStatus
```

This example shows the services to which the user BelindaN@litwareinc.com has access. This shows the services that are associated with all licenses that are assigned to her account.
  
```powershell
(Get-MsolUser -UserPrincipalName belindan@litwareinc.com).Licenses.ServiceStatus
```

This example shows the services that user BelindaN@litwareinc.com has access to from the first license that's assigned to her account (the index number is 0).
  
```powershell
(Get-MsolUser -UserPrincipalName belindan@litwareinc.com).Licenses[0].ServiceStatus
```

To view all the services for a user who has been assigned *multiple licenses*, use the following syntax:

```powershell
$userUPN="<user account UPN>"
$AllLicenses=(Get-MsolUser -UserPrincipalName $userUPN).Licenses
$licArray = @()
for($i = 0; $i -lt $AllLicenses.Count; $i++)
{
$licArray += "License: " + $AllLicenses[$i].AccountSkuId
$licArray +=  $AllLicenses[$i].ServiceStatus
$licArray +=  ""
}
$licArray
```

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
