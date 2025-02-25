---
title: Use AllowSelfServicePurchase for the MSCommerce PowerShell module
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: sijoshi, socheng
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_ssp
- AdminSurgePortfolio
- campaignIDs-batch1
search.appverid:
- MET150
description: "Learn how to use the AllowSelfServicePurchase PowerShell cmdlet to turn self-service purchase on or off."
ROBOTS: NOINDEX, NOFOLLOW
ms.date: 10/10/2024
---

# Use AllowSelfServicePurchase for the MSCommerce PowerShell module

The **MSCommerce** PowerShell module is available in the [PowerShell Gallery](https://aka.ms/allowselfservicepurchase-powershell-gallery). The module includes a **PolicyID** parameter value for **AllowSelfServicePurchase** that lets you control whether users in your organization can make self-service purchases of Microsoft or select third-party offers.

You can also manage **AllowSelfServicePurchase** settings in the Microsoft 365 admin center. For more information, see [Manage self-service purchases and trials (for admins)](manage-self-service-purchases-admins.md).

You can use the **MSCommerce** PowerShell module to:

- View the default state of the **AllowSelfServicePurchase** parameter value
- View a list of applicable products and their **AllowSelfServicePurchase** parameter value
- View or modify the current setting for a specific product to either enable or disable it
- For Microsoft products only: view or modify the setting for trials without payment methods

> [!IMPORTANT]
> Self-service purchases and trials can't be completely turned off at the tenant level with a single command. The **AllowSelfServicePurchase** policy is managed on a per-product basis. You can only turn off self-services purchases and trials for the entire tenant by turning off each product individually. By default, all new products are set to allow users to make a self-service purchase.

## Requirements

To use the **MSCommerce** PowerShell module, you need:

- A Windows 10 or later operating system.
- The Global or Billing Administrator role for your tenant to change the **MSCommerce** product policies.
    [!INCLUDE [ga-roles-limitation](../../includes/ga-roles-limitation.md)]
- The Global reader role for your tenant to see a read-only list of **MSCommerce** product policies.
- Partners who are Admins On Behalf Of (AOBO) a customer must have a role that's set to Global Administrator in order to manage and disable self-service purchases in the Microsoft 365 admin center and via PowerShell.

## Get started with the MSCommerce PowerShell module

To get started using the **MSCommerce** PowerShell module, you must install it, import it into a PowerShell session, and then connect to it with your credentials.

### Install the MSCommerce PowerShell module

You install the **MSCommerce** PowerShell module on your Windows 10 device once and then import it into each PowerShell session you start. Download the **MSCommerce** PowerShell module from the [PowerShell Gallery](https://aka.ms/allowselfservicepurchase-powershell-gallery).

To install the **MSCommerce** PowerShell module with **PowerShellGet**, run the following command:

```powershell
Install-Module -Name MSCommerce
```

### Import MSCommerce into the PowerShell session

After you install the module on your Windows 10 device, you then import it into each PowerShell session that you start. To import it into a PowerShell session, run the following command:

```powershell
Import-Module -Name MSCommerce
```

### Connect to MSCommerce with your credentials

To connect to the PowerShell module with your credentials, run the following command.

```powershell
Connect-MSCommerce
```

This command connects the current PowerShell session to a Microsoft Entra tenant. The command prompts you for a username and password for the tenant you want to connect to. If multifactor authentication is enabled for your credentials, you use the interactive option to sign in.

## View details for AllowSelfServicePurchase

To view a description of the **AllowSelfServicePurchase** parameter value and the default status, based on your organization, run the following command:

```powershell
Get-MSCommercePolicy -PolicyId AllowSelfServicePurchase
```

## Use AllowSelfServicePurchase with Microsoft products

This section contains information about how to view a list of Microsoft products for self-service purchase, their current status, and how to set the status. For information about third-party offer types, see [Use AllowSelfServicePurchase with third-party offer types](#use-allowselfservicepurchase-with-third-party-offer-types).

### View a list of self-service purchase Microsoft products and their status

To view a list of available self-service purchase Microsoft products and the status of each, run the following command:

```powershell
Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase
```

The following table lists the available products and their **ProductId**. It also indicates which products have a trial available and don't require a payment method. If applicable, all other trials require a payment method. For the products that have trial without payment method enabled, you can enable the trial, while keeping the ability to purchase the product disabled. For sample commands, see [View or set the status for AllowSelfServicePurchase for Microsoft products](#view-or-set-the-status-for-allowselfservicepurchase-for-microsoft-products).

| Product | ProductId | Is trial without payment method enabled? |
|-----------------------------|--------------|--------------|
| Clipchamp Premium | CFQ7TTC0N8SS | No |
| Microsoft 365 Copilot | CFQ7TTC0MM8R | No |
| Microsoft 365 F3 | CFQ7TTC0LH05 | No |
| Microsoft Purview Discovery | CFQ7TTC0N8SL | Yes |
| Power Apps per user* | CFQ7TTC0LH2H | No |
| Power Automate per user* | CFQ7TTC0LH3L | No |
| Power Automate RPA* | CFQ7TTC0LSGZ | No |
| Power BI Premium (standalone)* | CFQ7TTC0H6RP | No |
| Power BI Pro* | CFQ7TTC0H9MP | No |
| Planner Plan 1* | CFQ7TTC0HDB1 | Yes |
| Project Plan 3* | CFQ7TTC0HDB0 | No |
| Python in Excel | CFQ7TTC0S3X1 | No |
| Teams Exploratory | CFQ7TTC0J1FV | Yes |
| Teams Premium Introductory Pricing | CFQ7TTC0RM8K | Yes |
| Visio Plan 1* | CFQ7TTC0HD33 | Yes |
| Visio Plan 2* | CFQ7TTC0HD32 | No |
| Viva Goals (self-service trials only) | CFQ7TTC0PW0V | Yes |

*These items are updated IDs. If you previously blocked products using the old IDs, they're automatically blocked using the new IDs. No other work is required.

### View or set the status for AllowSelfServicePurchase for Microsoft products

You can set the **Value** parameter for **AllowSelfServicePurchase** to allow or prevent users from making a self-service purchase of a Microsoft product. You can also use the **OnlyTrialsWithoutPaymentMethod** value to allow users to try products that have no payment required trials. To see which products have these trials enabled, see the product list in [View a list of self-service purchase Microsoft products and their status](#view-a-list-of-self-service-purchase-microsoft-products-and-their-status). Users can only buy the product after the trial is over if **AllowSelfServicePurchase** is enabled.

> [!NOTE]
> Changing the value for **AllowSelfServicePurchase** or **OnlyTrialsWithoutPaymentMethod** only impacts trials or purchases made for the specified product from that point forward. Existing trials or purchases for the specified product aren't affected.

The following table describes the settings for the **Value** parameter.

| Setting | Outcome |
|---|---|
| Enabled | Users can make self-service purchases and acquire trials for the product. |
| OnlyTrialsWithoutPaymentMethod | Users can't make self-service purchases but can acquire free trials for products that don't require them to add a payment method. After the trial expires, a user can't buy the paid version of the product. |
| Disabled | Users can't make self-service purchases or acquire trials for the product. |

Use the following commands to get or set policy settings, where ```<ProductID>``` is the string associated with the product name.

To get the policy setting for a specific product, run the following command:

```powershell
Get-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId ```<ProductID>```
```

To enable the policy setting for a specific product, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId <ProductID> -Value "Enabled"
```

To disable the policy setting for a specific product, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId <ProductID> -Value "Disabled"
```

To allow users to try a specific product without a payment method, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId <ProductID> -Value "OnlyTrialsWithoutPaymentMethod" 
```

## Use AllowSelfServicePurchase with third-party offer types

This section contains information about how to view a list of self-service purchase for third-party offer types and their status, and how to set the status.

> [!NOTE]
> Software as a subscription (SaaS) products and services subscribed to in the Azure portal aren’t blocked by the **AllowSelfServicePurchase** policy.

### View a list of self-service purchase third-party offer types and their status

To view a list of all available self-service purchase third-party offer types and the status of each, run the following command:

```powershell
Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase -Scope OfferType
```

The following table lists the available third-party offer types. These offer types can be enabled or disabled for self-service purchase.

| Offer Type| ID |
|-----------------------------|--------------|
| Software as a Service | SaaS |
| Power BI Visuals | POWERBIVISUALS |
| Dynamics 365 Dataverse Apps | DYNAMICSCE |
| Dynamics 365 Business Central | DYNAMICSBC |

### View or set the status for AllowSelfServicePurchase for third-party offer types

You can set the **Value** parameter for **AllowSelfServicePurchase** to allow or prevent users from making a self-service purchase of a third-party offer type.

The following table describes the settings for the **Value** parameter.

| Setting | Outcome |
|---|---|
| Enabled | Users can make self-service purchases and acquire trials for the product. |
| Disabled | Users can't make self-service purchases or acquire trials for the product. |

Use the following commands to get or set policy settings, where `<ID>` is the string associated with the offer type.

To get the policy setting for a specific third-party offer type, run the following command:

```powershell
Get-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -OfferType <ID>
```

To enable the policy setting for a specific third-party offer type, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -OfferType <ID> -Value "Enabled"
```

To disable the policy setting for a specific third-party offer type, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -OfferType <ID> -Value "Disabled"
```

## Example script to disable AllowSelfServicePurchase

The following example walks you through how to import the **MSCommerce** module, sign in with your account, get the **ProductId** for Power Automate per user, and then disable **AllowSelfServicePurchase** for that product.

```powershell
Import-Module -Name MSCommerce
Connect-MSCommerce #sign-in with your global or billing administrator account when prompted
$product = Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase | where {$_.ProductName -match 'Power Automate per user'}
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product.ProductID -Value "Disabled"
```

If there are multiple values for the product, you can run the command individually for each value as shown in the following example:

```powershell
foreach ($id in $product.ProductID) {UpdateUpdate-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product[0].ProductID -Value "Disabled"
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product[1].ProductID -Value "Disabled"
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -OfferType SaaS -Value "Disabled"}
```

## Troubleshoot HandleError: Failed to retrieve policy with PolicyId 'AllowSelfServicePurchase'

In some cases, you might see the following error message:

> HandleError : Failed to retrieve policy with PolicyId 'AllowSelfServicePurchase', ErrorMessage - The underlying connection was closed: An unexpected error occurred on a send.

This error might be due to an older version of Transport Layer Security (TLS). When you connect to this service, you must use TLS 1.2 or greater.

To resolve this error, upgrade to TLS 1.2. The following syntax updates the ServicePointManager Security Protocol to allow TLS1.2:

```powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
```

To learn more, see [How to enable TLS 1.2](/mem/configmgr/core/plan-design/security/enable-tls-1-2).

<!--
## Uninstall the MSCommerce module

Before you uninstall the MSCommerce module, close your current PowerShell session, then open a new session with admin rights.

To remove the **MSCommerce** PowerShell module from your computer, run the following command:

```powershell
Uninstall-Module -Name MSCommerce
```-->

## Related content

[Manage self-service purchases (Admin)](manage-self-service-purchases-admins.md) (article)\
[Self-service purchase FAQ](self-service-purchase-faq.yml) (article)
