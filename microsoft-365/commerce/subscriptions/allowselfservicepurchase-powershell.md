---
title: Use AllowSelfServicePurchase for the MSCommerce PowerShell module
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: mijeffer, pablom
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: null
ms.collection:
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
ms.date: 4/7/2022
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
| Power Apps per user* | CFQ7TTC0LH2H |
| Power Automate per user | CFQ7TTC0KP0N |
| Power Automate RPA | CFQ7TTC0KXG6  |
| Power BI Premium (standalone) | CFQ7TTC0KXG7  |
| Power BI Pro | CFQ7TTC0L3PB |
| Project Plan 1* | CFQ7TTC0HDB1 |
| Project Plan 3* | CFQ7TTC0HDB0 |
| Visio Plan 1* | CFQ7TTC0HD33 |
| Visio Plan 2* | CFQ7TTC0HD32 |
| Windows 365 Enterprise | CFQ7TTC0HHS9 |
| Windows 365 Business | CFQ7TTC0J203 |
| Windows 365 Business with Windows Hybrid Benefit | CFQ7TTC0HX99 |
| Microsoft 365 F3 | CFQ7TTC0LH05 |
| Dynamics 365 Marketing | CFQ7TTC0LH3N |
| Dynamics 365 Marketing Attach | CFQ7TTC0LHWP | 
| Dynamics 365 Marketing Additional Application | CFQ7TTC0LHVK |
| Dynamics 365 Marketing Additional Non-Prod Application | CFQ7TTC0LHWM |

*These IDs have changed. If you previously blocked products using the old IDs, they are automatically blocked using the new IDs. No additional work is required.

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

The following example walks you through how to import the **MSCommerce** module, sign in with your account, get the **ProductId** for Power Automate per user, and then disable **AllowSelfServicePurchase** for that product.

```powershell
Import-Module -Name MSCommerce
Connect-MSCommerce #sign-in with your global or billing administrator account when prompted
$product = Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase | where {$_.ProductName -match 'Power Automate per user'}
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product.ProductID -Enabled $false
```

If there are multiple values for the product, you can run the command individually for each value as shown in the following example:

```powershell
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product[0].ProductID -Enabled $false
Update-MSCommerceProductPolicy -PolicyId AllowSelfServicePurchase -ProductId $product[1].ProductID -Enabled $false
```

## Troubleshooting

### Problem

You see the following error message:

> HandleError : Failed to retrieve policy with PolicyId 'AllowSelfServicePurchase', ErrorMessage - The underlying connection was closed: An unexpected error occurred on a send.

This may be due to an older version of Transport Layer Security (TLS). To connect this service you need to use TLS 1.2 or greater

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

[Manage self-service purchases (Admin)](manage-self-service-purchases-admins.md) (article)

[Self-service purchase FAQ](self-service-purchase-faq.yml) (article)
