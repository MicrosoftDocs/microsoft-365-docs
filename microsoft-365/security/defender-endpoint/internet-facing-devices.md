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

As threat actors continuously scan the web to detect exposed devices they can exploit to gain a foothold in internal corporate networks, mapping your organization’s external attack surface is a key part of your security posture management. Internet facing devices can serve as an easy entry point to an organization’s environment, which makes identifying them a top priority for many security teams.

Microsoft Defender for Endpoint automatically identifies and flags onboarded, exposed, internet facing devices in the [Microsoft 365 Defender portal](https://security.microsoft.com/). This critical information provides better visibility into the organizations external attack surface and deep insights into asset exploitability.

> [!NOTE]
> Only Windows devices onboarded to Microsoft Defender for Endpoint can be identified as internet facing.

## How we discover internet facing devices

We determine whether a device is internet facing is by checking its IP range.

To identify the external IPs that are communicating with internal devices, we need to determine which subnets are part of the corporate network. We can see subnets for machines that are protected by Defender for Endpoint. This information helps to determine whether a connection captured by Microsoft Defender for Endpoint is internal, or external.

Device network connections, captured as part of Defender for Endpoint signals, help to identify external incoming connections that reach internal devices, indicating which devices are internet facing.

Devices are flagged as internet facing if they were successfully connected to through TCP or host reachable by UDP.

> [!NOTE]
>Internet facing signals are constantly processed:
>
> - The scan to discover internet facing devices runs every 24 hours.
> - The internet facing tag is updated on device change or every 12 hours.
> - If no new signals are received on the internet facing device for 48 hours, the tag will be removed.

## View internet facing devices

For each onboarded device identified as internet facing, the internet facing tag appears in the **Tags** column in the [device inventory](https://security.microsoft.com/machines/). To view internet facing devices:

1. Go to **Assets** \> **Device inventory** in the [Microsoft 365 Defender portal](https://security.microsoft.com).

   :::image type="content" source="../../media/defender-vulnerability-management/internet-facing-tag.png" alt-text="Screenshot of the Browser extensions page" lightbox="../../media/defender-vulnerability-management/internet-facing-tag.png":::

Hover over the tag to see why it was applied:

- **This device was detected by an external scan**: An external scan identified the device as internet facing. For devices identified by the external scanner, the tag is applied straight away.
- **This device was detected by external network connection** - Defender for Endpoint network signals processing identified the device as internet facing. Extra processing takes place to verify these devices are internet facing before the tag is applied.

At the top of the page, you can view a counter that shows the number of devices that have been identified as internet facing and are potentially less secure.

## Use the filter to focus on internet facing devices

You can use filters to focus in on internet facing devices and investigate the risk they may introduce into your organization.

   :::image type="content" source="../../media/defender-vulnerability-management/internet-facing-filter.png" alt-text="Screenshot of the Browser extensions page" lightbox="../../media/defender-vulnerability-management/internet-facing-filter.png":::

## Get more information on internet facing devices

Select an internet facing device to open its flyout pane, where you can learn more about the device:

   :::image type="content" source="../../media/defender-vulnerability-management/internet-facing-details.png" alt-text="Screenshot of the Browser extensions page" lightbox="../../media/defender-vulnerability-management/internet-facing-details.png":::

The information in this pane helps you understand how the device was identified as an internet facing device along with details of the port and protocol for both the internal and external device. In the above example, we can tell that this device was successfully connected to as it was through TCP.

Devices are flagged as internet facing if they are host reachable via UDP.

## Use advanced hunting

You can use advanced hunting queries to gain visibility into internet facing devices in your organization, for example:

```kusto
// Find all devices that are internet facing, replace ComponentVersion with what you are looking for
DeviceInfo 
| where IsInternetFacing == true 
| summarize arg_max(Timestamp, *) by DeviceId 
```

This query returns the internet facing devices with their aggregated evidence in the “AdditionalFields” column.

- **InternetFacingLastSeen** – last time the device was updated as internet facing.
- **InternetFacingReason** – the detection method used to identify internet facing.
- **InternetFacingPublicScannedIp** – what the external address is, in case NAT was detected.

## See also

- [Device inventory](machines-view-overview.md)
