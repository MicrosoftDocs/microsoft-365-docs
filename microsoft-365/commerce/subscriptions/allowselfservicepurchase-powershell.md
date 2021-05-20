---
title: Use AllowSelfServicePurchase for the MSCommerce PowerShell module
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: mijeffer, pablom
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: None
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- commerce_ssp
search.appverid:
- MET150
description: "Learn how to use the AllowSelfServicePurchase PowerShell cmdlet to turn self-service purchase on or off."
ROBOTS: NOINDEX, NOFOLLOW
ms.date: 03/18/2021
---

# Use AllowSelfServicePurchase for the MSCommerce PowerShell module

The **MSCommerce** PowerShell module is now available on [PowerShell Gallery](https://aka.ms/allowselfservicepurchase-powershell-gallery). The module includes a **PolicyID** parameter value for **AllowSelfServicePurchase** that lets you control whether users in your organization can make self-service purchases.

You can use the **MSCommerce** PowerShell module to:

- View the default state of the **AllowSelfServicePurchase** parameter value — whether it's enabled or disabled
- View a list of applicable products and whether self-service purchase is enabled or disabled
- View or modify the current setting for a specific product to either enable or disable it

## Requirements

To use the **MSCommerce** PowerShell module, you need:

- A Windows 10 device
- PowerShell 5 or below. Currently, PowerShell 6.x/7.x isn't supported with this module.
- Administrator permission for the device
- Global or Billing Admin role for your tenant

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

This command connects the current PowerShell session to an Azure Active Directory tenant. The command prompts you for a username and password for the tenant you want to connect to. If multi-factor authentication is enabled for your credentials, you use the interactive option to log in.

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

The following table lists the available products and their **ProductId**.

| Product | ProductId |
|-----------------------------|--------------|
| Power Apps per user | CFQ7TTC0KP0P |
| Power Automate per user | CFQ7TTC0KP0N |
| Power Automate RPA | CFQ7TTC0KXG6  |
| Power BI Premium (standalone) | CFQ7TTC0KXG7  |
| Power BI Pro | CFQ7TTC0L3PB |
| Project Plan 1 | CFQ7TTC0KXND |
| Project Plan 3 | CFQ7TTC0KXNC |
| Visio Plan 1 | CFQ7TTC0KXN9 |
| Visio Plan 2 | CFQ7TTC0KXN8 |

## View or set the status for AllowSelfServicePurchase

After you view the list of products available for self-service purchase, you can view or modify the setting for a specific product.

To get the policy setting for a specific product, run the following command:

```powershell
Get-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId CFQ7TTC0KP0N
```

To enable the policy setting for a specific product, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId CFQ7TTC0KP0N -Enabled $True
```

To disable the policy setting for a specific product, run the following command:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId CFQ7TTC0KP0N -Enabled $False
```

## Example script to disable AllowSelfServicePurchase

The following example walks you through how to import the **MSCommerce** module, sign in with your account, get the **ProductId** for Power Automate, and then disable **AllowSelfServicePurchase** for that product.

```powershell
Import-Module -Name MSCommerce
Connect-MSCommerce #sign-in with your global or billing administrator account when prompted
$product = Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase | where {$_.ProductName -match 'Power Automate'}
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product.ProductID -Enabled $false
```

## Troubleshooting

### Problem

You see the following error message:

> HandleError : Failed to retrieve policy with PolicyId 'AllowSelfServicePurchase', ErrorMessage - The underlying connection was closed: An unexpected error occurred on a send.

This may be due to an older version of Transport Layer Security (TLS). To connect this service you need to use TLS 1.2 or greater

### Solution

Upgrade to TLS 1.2: [https://docs.microsoft.com/mem/configmgr/core/plan-design/security/enable-tls-1-2](/mem/configmgr/core/plan-design/security/enable-tls-1-2)

<!--
## Uninstall the MSCommerce module

Before you uninstall the MSCommerce module, close your current PowerShell session, then open a new session with admin rights.

To remove the **MSCommerce** PowerShell module from your computer, run the following command:

```powershell
Uninstall-Module -Name MSCommerce
```-->

## Related content

[Manage self-service purchases (Admin)](manage-self-service-purchases-admins.md) (article)

[Self-service purchase FAQ](self-service-purchase-faq.yml) (article)