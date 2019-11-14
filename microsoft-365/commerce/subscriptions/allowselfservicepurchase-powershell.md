---
title: Use AllowSelfServicePurchase for the MSCommerce PowerShell module
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: None
ms.collection:
- commerce 
ms.custom:
search.appverid:
- MET150
description: "Learn how to use the AllowSelfServicePurchase PowerShell cmdlet to turn self-service purchase on or off."
---

# Use AllowSelfServicePurchase for the MSCommerce PowerShell module

The **MSCommerce** PowerShell module is now available on [PowerShell Gallery](https://go.microsoft.com/fwlink/?linkid=).

You can use the **MSCommerce** PowerShell module to:

- View the default state of the **AllowSelfServicePurchase** policy — whether it's enabled or disabled
- View a list of applicable products and their current settings
- View or modify the current setting for a specific product to either enable or disable it

## Requirements

To use the **MSCommerce** PowerShell module, you need:

- A Windows 10 device
- Administrator permission for the device
- Global or Billing Admin role for Microsoft 365 admin center

## Install the MSCommerce PowerShell module

You install the **MSCommerce** PowerShell module on your Windows 10 device once and then import it into each PowerShell session you start. Download the **MSCommerce** PowerShell module from the [PowerShell Gallery](https://go.microsoft.com/fwlink/?linkid=).

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

You're prompted to sign in with your account and then to authorize the PowerShell Module to access your Microsoft 365 admin center account. After the module is imported into the current PowerShell session and authorized to call into your Microsoft 365 admin center account, the **MSCommerce** PowerShell cmdlets are loaded and ready to use.

## View details for AllowSelfServicePurchase

To view a description of the **AllowSelfServicePurchase** policy and the default status, based on your organization, run the following command:

```powershell

Get-MSCommercePolicy -PolicyId AllowSelfServicePurchase
```

## View list of self-service purchase products and their status

To view a list of all available self-service purchase products and the status of each, run the following command:

```powershell

Get-MSCommerceProductPolicies -PolicyId AllowSelfServicePurchase
```

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

## Uninstall the MSStore Module

To remove the **MSCommerce** PowerShell module from your computer, use the following PowerShell command:

Get-InstalledModule -Name "MSCommerce" -RequiredVersion 1.0 | Uninstall-Module
```