---
title: Identify internet facing devices in Microsoft Defender for Endpoint
description: Identify internet facing devices in the device inventory list
keywords: devices, internet-facing, internet facing
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 07/03/2023
---

# Identify internet facing devices

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-respondmachine-abovefoldlink)

Mapping your organization’s external attack surface is a key part of security posture management. Threat actors are continuously scanning the web to detect exposed devices they can exploit to gain a foothold in internal corporate networks. Identifying internet-facing devices is a key priority for many security teams as they can serve as an easy entry point to an organization’s environment.

In this private preview, we now can identify internet-facing devices. Providing this critical information allows for better visibility into the organizations external attack surface. This can provide deeper insights into asset exploitability and allow customers to consider this during security incident investigation and posture operations.  

> [!NOTE]
> The ability to identify internet facing is only available for Windows devices onboarded to Microsoft Defender for Endpoint.


## View internet facing devices

View internet-facing devices in the device inventory.

A new internet-facing tag - devices that are classified as internet-facing will be tagged accordingly along with the reason for this tag (available when hovering over the tag).  


1. Go to the **Device inventory**
 

Go to the device inventory to view details on internet-facing devices:  

 
Device inventory counter – a new counter appears at the top of the device inventory page indicating how many devices are currently identified as internet-facing. 

Filter – a new filter is available in the filter pane for internet-facing devices

   ![Image of exclude device menu option.](images/exclude-devices-menu.png)

3
## See also

- [Device inventory](machines-view-overview.md)
