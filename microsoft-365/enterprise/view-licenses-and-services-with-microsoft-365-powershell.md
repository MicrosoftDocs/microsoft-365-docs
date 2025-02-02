---
title: "View Microsoft 365 licenses and services with PowerShell"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/04/2024
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
  - Ent_Office_Other
  - O365ITProTrain
  - LIL_Placement
  - PowerShell
  - has-azure-ad-ps-ref
  - azure-ad-ref-level-one-done
ms.assetid: bb5260a9-a6a3-4f34-b19a-06c6699f6723

description: "Explains how to use PowerShell to view information about the licensing plans, services, and licenses that are available in your Microsoft 365 organization."
---

# View Microsoft 365 licenses and services with PowerShell

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

You can use PowerShell for Microsoft 365 to view details about the available licensing plans, licenses, and services in your Microsoft 365 organization. Every Microsoft 365 subscription consists of the following elements:

- **Licensing plans** These are also known as license plans or Microsoft 365 plans. Licensing plans define the Microsoft 365 services that are available to users. Your Microsoft 365 subscription may contain multiple licensing plans. An example licensing plan would be Microsoft 365 E3.

- **Services** These are also known as service plans. Services are the Microsoft 365 products, features, and capabilities that are available in each licensing plan, for example, Exchange Online and Microsoft 365 Apps for enterprise (previously named Office 365 ProPlus). Users can have multiple licenses assigned to them from different licensing plans that grant access to different services.

- **Licenses** Each licensing plan contains the number of licenses that you purchased. You assign licenses to users so they can use the Microsoft 365 services that are defined by the licensing plan. Every user account requires at least one license from one licensing plan so they can sign in Microsoft 365 and use the services.

For more information about the products, features, and services that are available in different Office 365 subscriptions, see [Office 365 Plan Options](/office365/servicedescriptions/office-365-platform-service-description/office-365-plan-options).

## Use the Microsoft Graph PowerShell SDK

>[!NOTE]
> The Azure Active Directory module is being replaced by the Microsoft Graph PowerShell SDK. You can use the Microsoft Graph PowerShell SDK to access all Microsoft Graph APIs. For more information, see [Get started with the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

First, [connect to your Microsoft 365 tenant](connect-to-microsoft-365-powershell.md).

Reading subscription license plans requires the **Organization.Read.All** permission scope or one of the other permissions listed in the ['List subscribedSkus' Graph API reference page](/graph/api/subscribedsku-list).

```powershell
Connect-Graph -Scopes Organization.Read.All
```

To view summary information about your current licensing plans and the available licenses for each plan, run this command:
  
```powershell
Get-MgSubscribedSku | Select -Property Sku*, ConsumedUnits -ExpandProperty PrepaidUnits | Format-List
```

The results contain:
  
- **SkuPartNumber:** Shows the available licensing plans for your organization. For example, `ENTERPRISEPACK` is the license plan name for Office 365 Enterprise E3.

- **Enabled:** Number of licenses that you've purchased for a specific licensing plan.

- **ConsumedUnits:** Number of licenses that you've assigned to users from a specific licensing plan.

To view details about the Microsoft 365 services that are available in all of your license plans, first display a list of your license plans.

```powershell
Get-MgSubscribedSku
```

Next, store the license plans information in a variable.

```powershell
$licenses = Get-MgSubscribedSku
```

Next, display the services in a specific license plan.

```powershell
$licenses[<index>].ServicePlans
```

\<index> is an integer that specifies the row number of the license plan from the display of the `Get-MgSubscribedSku | Select SkuPartNumber` command, minus 1.

For example, if the display of the `Get-MgSubscribedSku | Select SkuPartNumber` command is this:

```powershell
SkuPartNumber
-------------
WIN10_VDA_E5
EMSPREMIUM
ENTERPRISEPREMIUM
FLOW_FREE
```

Then the command to display the services for the ENTERPRISEPREMIUM license plan is this:

```powershell
$licenses[2].ServicePlans
```

ENTERPRISEPREMIUM is the third row. Therefore, the index value is (3 - 1), or 2.

For a complete list of license plans (also known as product names), their included service plans, and their corresponding friendly names, see [Product names and service plan identifiers for licensing](/azure/active-directory/users-groups-roles/licensing-service-plan-reference).

## See also

[Manage Microsoft 365 user accounts, licenses, and groups with PowerShell](manage-user-accounts-and-licenses-with-microsoft-365-powershell.md)
  
[Manage Microsoft 365 with PowerShell](manage-microsoft-365-with-microsoft-365-powershell.md)
  
[Getting started with PowerShell for Microsoft 365](getting-started-with-microsoft-365-powershell.md)
