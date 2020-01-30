---
title:  Troubleshoot Microsoft Threat Protection service issues
description: Find solutions and work arounds to known Microsoft Threat Protection issues
keywords: troubleshoot  Microsoft Threat Protection, troubleshoot, Azure ATP, issues, add-on, settings page
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Troubleshoot Microsoft Threat Protection service issues

**Applies to:**
- Microsoft Threat Protection

This section addresses issues that might arise as you use the Microsoft Threat Protection service.


## I don't see Microsoft Threat Protection content
If you don't see capabilities on the navigation page such as the Incidents, Action Center, or Hunting in your portal, you'll need to verify that your tenant has the appropriate licenses. 

For more information, see [Prerequisites](prerequisites.md).

## Azure ATP alerts are not showing up in the Microsoft Threat Protection incidents
If you have Azure ATP deployed in your environment but you're not seeing Azure ATP alerts as part of Microsoft Threat Protection incidents, you'll need to ensure that the Microsoft Cloud App Security and Azure ATP integration is enabled. 

For more information, see [Azure ATP integration](https://docs.microsoft.com/cloud-app-security/aatp-integration).

## Is Microsoft Threat Protection available for US Government Community Cloud (GCC) or GCC High?
At the moment, it is not available.

## Where is the settings page for turning the service on?
To turn on Microsoft Threat Protection, access **Settings** from the navigation pane in the Microsoft 365 security center. This navigation item is visible only if you have the [prerequisite permissions and licenses](mtp-enable.md#check-license-eligibility-and-required-permissions).

## Can I use an add-on instead of the required E5 licenses?
There are currently no add-ons for Microsoft Threat Protection. [See licensing requirements](prerequisites.md) 

