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
ms.date: 03/7/2023
---

# Identify internet facing devices

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-respondmachine-abovefoldlink)

Mapping your organization’s external attack surface is a key part of security posture management, and identifying internet-facing devices is a key priority for many security teams. Threat actors are continuously scanning the web to detect exposed devices they can exploit to gain a foothold in internal corporate networks and internet facing devices can serve as an easy entry point to an organization’s environment.

Microsoft Defender for Endpoint will automatically flag onboarded, exposed, internet facing devices in the [Microsoft 365 Defender portal](https://security.microsoft.com/), providing more context to security teams and deeper insights into device exploitability.

> [!NOTE]
> The ability to identify internet facing is only available for Windows devices onboarded to Microsoft Defender for Endpoint.

## How we discover and flag internet facing devices

Devices will be flagged as internet facing if they were identified as if they were successfully connected via TCP or reachable via UDP.

The internet-facing tag will be applied to identified devices that appear in the [device inventory](https://security.microsoft.com/machines/). The use of the tag helps support the mapping of your network and they can be used as a filter in the Device inventory view, or to group devices.

## What devices get flagged

Or devices that will are will be flagged like make it simpler. Devices will be flagged flagged as Internet facing if they were identified as if they were successfully connected via TCP or reachable via UDP. Nimrod does that. Answers like does that covers it.

## View internet facing devices

For each onboarded device, identified as internet facing, you'll see the internet facing tag in the **Tags** column.

1. Go to **Assets** \> **Device inventory** in the [Microsoft 365 Defender portal](https://security.microsoft.com).

   :::image type="content" source="../../media/defender-vulnerability-management/internet-facing-tag.png" alt-text="Screenshot of the Browser extensions page" lightbox="../../media/defender-vulnerability-management/internet-facing-tag.png":::

Hover over the tag to see the reason for the tag was applied.

At the top of the page, you can view the number of devices that have been identified as internet facing and are potentially less secure and 

## Use the filter to focus on internet facing devices

You can use filters to only view internet facing devices. This can help you focus in on these devices and investigate the risk they may introduce into your organization.

   :::image type="content" source="../../media/defender-vulnerability-management/internet-facing-filter.png" alt-text="Screenshot of the Browser extensions page" lightbox="../../media/defender-vulnerability-management/internet-facing-filter.png":::

## Get more information on internet facing devices

Select an internet facing device to open its flyout pane, where you can learn more about the device:

   :::image type="content" source="../../media/defender-vulnerability-management/internet-facing-details.png" alt-text="Screenshot of the Browser extensions page" lightbox="../../media/defender-vulnerability-management/internet-facing-details.png":::

## See also

- [Device inventory](machines-view-overview.md)
