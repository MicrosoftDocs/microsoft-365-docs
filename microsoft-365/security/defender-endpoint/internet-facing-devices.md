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
> Currently, only Windows devices onboarded to Microsoft Defender for Endpoint can be identified as internet facing. Support for other platforms will be available an upcoming release.

## What devices are flagged as internet facing

Devices that can be connected to or are approachable from the outside pose a threat to your organization. Devices that are successfully connected through TCP or identified as host reachable by UDP will be flagged as internet facing in the [Microsoft 365 Defender portal](https://security.microsoft.com). Defender for Endpoint uses different data sources  to identify the devices to flag:

- External scans are used to identify which devices are approachable from the outside.
- Device network connections, captured as part of Defender for Endpoint signals, help to identify external incoming connections that reach internal devices, indicating which devices are internet facing and devices with a public IP address that's exposed to the internet.

[Microsoft 365 Defender portal](https://security.microsoft.com) 

## View internet facing devices

For each onboarded device identified as internet facing, the internet facing tag appears in the **Tags** column in the [device inventory](https://security.microsoft.com/machines/). To view internet facing devices:

1. Go to **Assets** \> **Device inventory** in the [Microsoft 365 Defender portal](https://security.microsoft.com).

   :::image type="content" source="../../media/defender-vulnerability-management/internet-facing-tag.png" alt-text="Screenshot of the Browser extensions page" lightbox="../../media/defender-vulnerability-management/internet-facing-tag.png":::

Hover over the tag to see why it was applied:

- This device has a public IP address that's exposed to the internet
- This device was detected by an external scan
- This device received external incoming communication

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
// Find all devices that are internet facing
DeviceInfo
| where IsInternetFacing
| extend InternetFacingInfo = parse_json( AdditionalFields)
| extend  InternetFacingReason = extractjson("$.InternetFacingReason", InternetFacingInfo, typeof(string)), InternetFacingLocalPort = extractjson("$.InternetFacingLocalPort", InternetFacingInfo, typeof(int)), InternetFacingScannedPublicPort = extractjson("$.InternetFacingScannedPublicPort", InternetFacingInfo, typeof(int)), InternetFacingScannedPublicIp = extractjson("$.InternetFacingScannedPublicIp", InternetFacingInfo, typeof(string)), InternetFacingLocalIp = extractjson("$.InternetFacingLocalIp", InternetFacingInfo, typeof(string)),    InternetFacingTransportProtocol=extractjson("$.InternetFacingTransportProtocol", InternetFacingInfo, typeof(string)), InternetFacingLastSeen = extractjson("$.InternetFacingLastSeen", InternetFacingInfo, typeof(datetime))
| summarize arg_max(Timestamp, *) by DeviceId
```

This query returns the internet facing devices with their aggregated evidence in the “AdditionalFields” column.

- **InternetFacingLastSeen**
- **InternetFacingReason**
- **InternetFacingLocalIp**
- **InternetFacingLocalPort**
- **InternetFacingPublicScannedIp**
- **InternetFacingPublicScannedPort**
- **InternetFacingTransportProtocol**

## Report inaccuracy

You can report an inaccuracy for a device with incorrect internet facing information. For the internet facing device:

1. Open the device flyout from the Device inventory page.
2. Select **Report device inaccuracy**
3. In the **What part is inaccurate** dropdown, select **Device information**
4. For **Which information is inaccurate** select the **internet facing classification** checkbox from the dropdown
5. Fill in the requested details about what the correct information should be
6. Provide an email address (optional)
7. Select **Submit Report**

## See also

- [Device inventory](machines-view-overview.md)
