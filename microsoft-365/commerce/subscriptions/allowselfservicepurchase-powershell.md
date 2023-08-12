---
title: Use AllowSelfServicePurchase for the MSCommerce PowerShell module
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: prlachhw, pablom
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_ssp
- AdminSurgePortfolio
search.appverid:
- MET150
description: "Learn how to use the AllowSelfServicePurchase PowerShell cmdlet to turn self-service purchase on or off."
ROBOTS: NOINDEX, NOFOLLOW
ms.date: 04/06/2023
---

# Use AllowSelfServicePurchase for the MSCommerce PowerShell module

The **MSCommerce** PowerShell module is now available on [PowerShell Gallery](https://aka.ms/allowselfservicepurchase-powershell-gallery). The module includes a **PolicyID** parameter value for **AllowSelfServicePurchase** that lets you control whether users in your organization can make self-service purchases.

You can use the **MSCommerce** PowerShell module to:

- View the default state of the **AllowSelfServicePurchase** parameter value—whether it's enabled, disabled, or allows trials without a payment method
- View a list of applicable products and whether self-service purchase is enabled, disabled, or allows trials without a payment method
- View or modify the current setting for a specific product to either enable or disable it
- View or modify the setting for trials without payment methods

## Requirements

To use the **MSCommerce** PowerShell module, you need:

- A Windows 10 or later operating system.
- PowerShell 5 or below. Currently, PowerShell 6.x/7.x isn't supported with this module.
- The Global or Billing admin role for your tenant to change the **MSCommerce** product policies.
- The Global reader role for your tenant to see a read-only list of **MSCommerce** product policies.

## Install the MSCommerce PowerShell module

You install the **MSCommerce** PowerShell module on your Windows 10 device once and then import it into each PowerShell session you start. Download the **MSCommerce** PowerShell module from the [PowerShell Gallery](https://aka.ms/allowselfservicepurchase-powershell-gallery).

To install the **MSCommerce** PowerShell module with **PowerShellGet**, run the following command:

```powershell
Install-Module -Name MSCommerce
```

## Import MSCommerce into the PowerShell session

After you install the module on your Windows 10 device, you then import it into each PowerShell session that you start. To import it into a PowerShell session, run the following command:

```powershell
Import-Module -Name MSCommerce
```

## Connect to MSCommerce with your credentials

To connect to the PowerShell module with your credentials, run the following command.

```powershell
Connect-MSCommerce
```

This command connects the current PowerShell session to an Azure Active Directory tenant. The command prompts you for a username and password for the tenant you want to connect to. If multi-factor authentication is enabled for your credentials, you use the interactive option to sign in.

## View details for AllowSelfServicePurchase

To view a description of the **AllowSelfServicePurchase** parameter value and the default status, based on your organization, run the following command:

```powershell
Get-MSCommercePolicy -PolicyId AllowSelfServicePurchase
```

## View a list of self-service purchase products and their status

To view a list of all available self-service purchase products and the status of each, run the following command:

```powershell
Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase
```

The following table lists the available products and their **ProductId**. It also indicates which products have a trial available and don't require a payment method. If applicable, all other trials require a payment method. For the products that have trial without payment method enabled, you can enable the trial, while keeping the ability to purchase the product disabled. For sample commands, see View or set the status for **AllowSelfServicePurchase**.

| Product | ProductId | Is trial without payment method enabled? |
|-----------------------------|--------------|--------------|
| Power Apps per user* | CFQ7TTC0LH2H | No |
| Power Automate per user* | CFQ7TTC0LH3L | No |
| Power Automate RPA* | CFQ7TTC0LSGZ  | No |
| Power BI Premium (standalone)* | CFQ7TTC0H6RP  | No |
| Power BI Pro* | CFQ7TTC0H9MP | No |
| Project Plan 1* | CFQ7TTC0HDB1 | Yes |
| Project Plan 3* | CFQ7TTC0HDB0 | No |
| Teams Exploratory | CFQ7TTC0J1FV | Yes |
| Teams Premium Introductory Pricing | CFQ7TTC0RM8K | Yes |
| Visio Plan 1* | CFQ7TTC0HD33 | No |
| Visio Plan 2* | CFQ7TTC0HD32 | No |
| Viva Goals (self-service trials only) | CFQ7TTC0PW0V | Yes |
| Windows 365 Enterprise | CFQ7TTC0HHS9 | No |
| Windows 365 Business | CFQ7TTC0J203 | No |
| Windows 365 Business with Windows Hybrid Benefit | CFQ7TTC0HX99 | No |
| Microsoft 365 F3 | CFQ7TTC0LH05 | No |
| Dynamics 365 Marketing | CFQ7TTC0LH3N | No |
| Dynamics 365 Marketing Attach | CFQ7TTC0LHWP | No |
| Dynamics 365 Marketing Additional Application | CFQ7TTC0LHVK | No |
| Dynamics 365 Marketing Additional Non-Prod Application | CFQ7TTC0LHWM | No |

*These IDs have changed. If you previously blocked products using the old IDs, they're automatically blocked using the new IDs. No other work is required.

## View or set the status for AllowSelfServicePurchase

You can set the **Value** parameter for **AllowSelfServicePurchase** to allow or prevent users from making a self-service purchase. You can also use the **OnlyTrialsWithoutPaymentMethod** value to allow users to try products that have no payment required trials. Refer to the product list above to see which products have these trials enabled. Users can only buy the product after the trial is over if **AllowSelfServicePurchase** is enabled.

> [!NOTE]
> Changing the value for **AllowSelfServicePurchase** or **OnlyTrialsWithoutPaymentMethod** only impacts trials or purchases made for the specified product from that point forward. Existing trials or purchases for the specified product aren't affected.

The following table describes the settings for the **Value** parameter.

| **Setting** | **Impact** |
|---|---|
| Enabled | Users can make self-service purchases and acquire trials for the product. |
| OnlyTrialsWithoutPaymentMethod | Users can't make self-service purchases but can acquire free trials for products that don't require them to add a payment method. After the trial expires, a user can't buy the paid version of the product. |
| Disabled | Users can't make self-service purchases or acquire trials for the product. |

To get the policy setting for a specific product, run the following command:

```powershell
Get-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId CFQ7TTC0KP0N
```

To enable the policy setting for a specific product, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId CFQ7TTC0KP0N -Value "Enabled"
```

To disable the policy setting for a specific product, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId CFQ7TTC0KP0N -Value "Disabled"
```

To allow users to try a specific product without a payment method, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId CFQ7TTC0KP0N -Value "OnlyTrialsWithoutPaymentMethod" 
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
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product[0].ProductID -Value "Disabled"
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product[1].ProductID -Value "Disabled"
```

## Troubleshooting

### Problem

You see the following error message:

> HandleError : Failed to retrieve policy with PolicyId 'AllowSelfServicePurchase', ErrorMessage - The underlying connection was closed: An unexpected error occurred on a send.

This may be due to an older version of Transport Layer Security (TLS). When you connect to this service, you must use TLS 1.2 or greater

### Solution

Upgrade to TLS 1.2. The following syntax updates the ServicePointManager Security Protocol to allow TLS1.2:

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
