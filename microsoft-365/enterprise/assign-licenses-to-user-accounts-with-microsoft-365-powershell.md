---
title: Assign Microsoft 365 licenses to user accounts with PowerShell
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/04/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- Ent_O365
- must-keep
f1.keywords:
- CSH
ms.custom:
  - Ent_Office_Other
  - LIL_Placement
  - PowerShell
  - O365ITProTrain
  - seo-marvel-apr2020
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: ba235f4f-e640-4360-81ea-04507a3a70be
search.appverid:
- MET150

description: In this article, learn how to use PowerShell to assign a Microsoft 365 license to unlicensed users.
---

# Assign Microsoft 365 licenses to user accounts with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Users can't use any Microsoft 365 services until their account has been assigned a license from a licensing plan. You can use PowerShell to quickly assign licenses to unlicensed accounts.

User accounts must first be assigned a location. Specifying a location is a required part of creating a new user account in the [Microsoft 365 admin center](../admin/add-users/add-users.md).

Accounts synchronized from your on-premises Active Directory Domain Services don't by default have a location specified. You can configure a location for these accounts from:

- The Microsoft 365 admin center
- [PowerShell](configure-user-account-properties-with-microsoft-365-powershell.md)
- The [Azure portal](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal) (**Active Directory** > **Users**  > user account > **Profile** > **Contact info** > **Country or region**).

>[!Note]
>[Learn how to assign licenses to user accounts](../admin/manage/assign-licenses-to-users.md) with the Microsoft 365 admin center. For a list of additional resources, see [Manage users and groups](/admin).
>

## Assign Microsoft 365 licenses to user accounts with the Microsoft Graph PowerShell SDK

> [!NOTE]
> The following script uses Microsoft Graph Powershell. For more information, see [Microsoft Graph PowerShell overview](/powershell/microsoftgraph/overview).
>
> For information about how to use different methods to authenticate ```Connect-Graph``` in an unattended script, see the article [Authentication module cmdlets in Microsoft Graph PowerShell](/powershell/microsoftgraph/authentication-commands).

First, [connect to your Microsoft 365 tenant](/graph/powershell/get-started#authentication).

Assigning and removing licenses for a user requires the User.ReadWrite.All permission scope or one of the other permissions listed in the ['Assign license' Microsoft Graph API reference page](/graph/api/user-assignlicense).

The Organization.Read.All permission scope is required to read the licenses available in the tenant.

```powershell
Connect-MgGraph -Scopes User.ReadWrite.All, Organization.Read.All
```

Run the `Get-MgSubscribedSku` command to view the available licensing plans and the number of available licenses in each plan in your organization. The number of available licenses in each plan is **ActiveUnits** - **WarningUnits** - **ConsumedUnits**. For more information about licensing plans, licenses, and services, see [View licenses and services with PowerShell](view-licenses-and-services-with-microsoft-365-powershell.md).

To find the unlicensed accounts in your organization, run this command.

```powershell
Get-MgUser -Filter 'assignedLicenses/$count eq 0' -ConsistencyLevel eventual -CountVariable unlicensedUserCount -All
```

To find the unlicensed synchronized users in your organization, run this command.

```powershell
Get-MgUser -Filter 'assignedLicenses/$count eq 0 and OnPremisesSyncEnabled eq true' -ConsistencyLevel eventual -CountVariable unlicensedUserCount -All -Select UserPrincipalName
```
You can only assign licenses to user accounts that have the **UsageLocation** property set to a valid ISO 3166-1 alpha-2 country code. For example, US for the United States, and FR for France. Some Microsoft 365 services aren't available in certain countries/regions. For more information, see [About license restrictions](https://go.microsoft.com/fwlink/p/?LinkId=691730).

To find accounts that don't have a **UsageLocation** value, run this command.

```powershell
Get-MgUser -Select Id,DisplayName,Mail,UserPrincipalName,UsageLocation,UserType | where { $_.UsageLocation -eq $null -and $_.UserType -eq 'Member' }
```

To set the **UsageLocation** value on an account, run this command.

```powershell
$userUPN="<user sign-in name (UPN)>"
$userLoc="<ISO 3166-1 alpha-2 country code>"

Update-MgUser -UserId $userUPN -UsageLocation $userLoc
```

For example:

```powershell
Update-MgUser -UserId "belindan@litwareinc.com" -UsageLocation US
```

If you use the **Get-MgUser** cmdlet without using the **-All** parameter, only the first 100 accounts are returned.

### Assigning licenses to user accounts

To assign a license to a user, use the following command in PowerShell.
  
```powershell
Set-MgUserLicense -UserId $userUPN -AddLicenses @{SkuId = "<SkuId>"} -RemoveLicenses @()
```

This example assigns a license from the **SPE_E5** (Microsoft 365 E5) licensing plan to the unlicensed user **belindan\@litwareinc.com**:
  
```powershell
$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'
Set-MgUserLicense -UserId "belindan@litwareinc.com" -AddLicenses @{SkuId = $e5Sku.SkuId} -RemoveLicenses @()
```

This example assigns **SPE_E5** (Microsoft 365 E5) and **EMSPREMIUM** (ENTERPRISE MOBILITY + SECURITY E5) to the user **belindan\@litwareinc.com**:
  
```powershell
$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'
$e5EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'EMSPREMIUM'
$addLicenses = @(
    @{SkuId = $e5Sku.SkuId},
    @{SkuId = $e5EmsSku.SkuId}
)

Set-MgUserLicense -UserId "belinda@litwareinc.com" -AddLicenses $addLicenses -RemoveLicenses @()
```

This example assigns **SPE_E5** (Microsoft 365 E5) with the **MICROSOFTBOOKINGS** (Microsoft Bookings) and **LOCKBOX_ENTERPRISE** (Customer Lockbox) services turned off:
  
```powershell
$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'
$disabledPlans = $e5Sku.ServicePlans | `
    Where ServicePlanName -in ("LOCKBOX_ENTERPRISE", "MICROSOFTBOOKINGS") | `
    Select -ExpandProperty ServicePlanId

$addLicenses = @(
    @{
        SkuId = $e5Sku.SkuId
        DisabledPlans = $disabledPlans
    }
)

Set-MgUserLicense -UserId "belinda@litwareinc.com" -AddLicenses $addLicenses -RemoveLicenses @()
```

This example updates a user with **SPE_E5** (Microsoft 365 E5) and turns off the Sway and Forms service plans while leaving the user's existing disabled plans in their current state:
  
```powershell
$userLicense = Get-MgUserLicenseDetail -UserId "belinda@litwareinc.com"
$userDisabledPlans = $userLicense.ServicePlans | `
    Where ProvisioningStatus -eq "Disabled" | `
    Select -ExpandProperty ServicePlanId

$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'
$newDisabledPlans = $e5Sku.ServicePlans | `
    Where ServicePlanName -in ("SWAY", "FORMS_PLAN_E5") | `
    Select -ExpandProperty ServicePlanId

$disabledPlans = ($userDisabledPlans + $newDisabledPlans) | Select -Unique

$addLicenses = @(
    @{
        SkuId = $e5Sku.SkuId
        DisabledPlans = $disabledPlans
    }
)

Set-MgUserLicense -UserId "belinda@litwareinc.com" -AddLicenses $addLicenses -RemoveLicenses @()
```

This example updates a user with **SPE_E5** (Microsoft 365 E5) and turns off the Sway and Forms service plans while leaving the user's existing disabled plans in all other subscriptions in their current state:

```powershell
$userLicense = Get-MgUserLicenseDetail -UserId belinda@litwareinc.com

$userDisabledPlans = $userLicense.ServicePlans | Where-Object ProvisioningStatus -eq "Disabled" | Select -ExpandProperty ServicePlanId

$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'

$newDisabledPlans = $e5Sku.ServicePlans | Where ServicePlanName -in ("SWAY", "FORMS_PLAN_E5") | Select -ExpandProperty ServicePlanId

$disabledPlans = ($userDisabledPlans + $newDisabledPlans) | Select -Unique

$result=@()
$allPlans = $e5Sku.ServicePlans | Select -ExpandProperty ServicePlanId

foreach($disabledPlan in $disabledPlans)
{
    foreach($allPlan in $allPlans)
    {
        if($disabledPlan -eq $allPlan)
        {
            $property = @{
                Disabled = $disabledPlan
            }
        }
     }
     $result += New-Object psobject -Property $property
}


$finalDisabled = $result | Select-Object -ExpandProperty Disabled


$addLicenses = @(
    @{
        SkuId = $e5Sku.SkuId
        DisabledPlans = $finalDisabled
    }
)


Set-MgUserLicense -UserId belinda@litwareinc.com -AddLicenses $addLicenses -RemoveLicenses @()
```

### Assign licenses to a user by copying the license assignment from another user

This example assigns **jamesp\@litwareinc.com** with the same licensing plan that has been applied to **belindan\@litwareinc.com**:

```powershell
$mgUser = Get-MgUser -UserId "belindan@litwareinc.com" -Property AssignedLicenses
Set-MgUserLicense -UserId "jamesp@litwareinc.com" -AddLicenses $mgUser.AssignedLicenses -RemoveLicenses @()
```

### Move a user to a different subscription (license plan)

This example upgrades a user from the **SPE_E3** (Microsoft 365 E3) licensing plan to the **SPE_E5** (Microsoft 365 E5) licensing plan:

```powershell
$e3Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E3'
$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'

# Unassign E3
Set-MgUserLicense -UserId "belindan@litwareinc.com" -AddLicenses @{} -RemoveLicenses @($e3Sku.SkuId)
# Assign E5
Set-MgUserLicense -UserId "belindan@litwareinc.com" -AddLicenses @{SkuId = $e5Sku.SkuId} -RemoveLicenses @()
```

You can verify the change in subscription for the user account with this command.

```powershell
Get-MgUserLicenseDetail -UserId "belindan@litwareinc.com"
```

## See also

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)

[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)

[Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started)

Use the Microsoft Graph [user: assignLicense](/graph/api/user-assignlicense) and [subscribedSku](/graph/api/resources/subscribedsku) APIs
