---
title: Respond to web threats in Microsoft Defender for Endpoint
description: Respond to alerts related to malicious and unwanted websites. Understand how web threat protection informs end users through their web browsers and Windows notifications
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier2
- mde-asr
ms.topic: conceptual
ms.subservice: asr
search.appverid: met150
ms.date: 12/18/2020
---

# Respond to web threats

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

Web protection in Microsoft Defender for Endpoint lets you efficiently investigate and respond to alerts related to malicious websites and websites in your custom indicator list.

## View web threat alerts

Microsoft Defender for Endpoint generates the following [alerts](manage-alerts.md) for malicious or suspicious web activity:

- **Suspicious connection blocked by network protection**: This alert is generated when network protection (in block mode) stops an attempt to access a malicious website or a website in your custom indicator list.
- **Suspicious connection detected by network protection**: This alert is generated when network protection (in audit mode) detects an attempt to access a malicious website or a website in your custom indicator list.

Each alert provides the following information:

- Device that attempted to access the blocked website
- Application or program used to send the web request
- Malicious URL or URL in the custom indicator list
- Recommended actions for responders

:::image type="content" source="images/wtp-alert.png" alt-text="The alert related to web threat protection" lightbox="images/wtp-alert.png":::

> [!NOTE]
> To reduce the volume of alerts, Microsoft Defender for Endpoint consolidates web threat detections for the same domain on the same device each day to a single alert. Only one alert is generated and counted into the [web protection report](web-protection-monitoring.md).

## Inspect website details

You can dive deeper by selecting the URL or domain of the website in the alert. This opens a page about that particular URL or domain with various information, including:

- Devices that attempted to access website
- Incidents and alerts related to the website
- How frequent the website was seen in events in your organization

  :::image type="content" source="images/wtp-website-details.png" alt-text="The domain or URL entity details page" lightbox="images/wtp-website-details.png":::

For more information, see [About URL or domain entity pages](investigate-domain.md).

## Inspect the device

You can also check the device that attempted to access a blocked URL. Selecting the name of the device on the alert page opens a page with comprehensive information about the device.

For more information, see [About device entity pages](investigate-machines.md).

## Web browser and Windows notifications for end users

With web protection in Defender for Endpoint, your end users are prevented from visiting malicious or unwanted websites using Microsoft Edge or other browsers. Because blocking is done by [network protection](network-protection.md) and not their web browser, users see a generic error from the web browser. They also see a notification from Windows.

:::image type="content" source="images/wtp-browser-blocking-page.png" alt-text="The Microsoft Edge showing a 403 error, and the Windows notification" lightbox="images/wtp-browser-blocking-page.png":::

*Web threat blocked on Microsoft Edge*

:::image type="content" source="images/wtp-chrome-browser-blocking-page.png" alt-text="The Chrome web browser showing a secure connection warning, and the Windows notification" lightbox="images/wtp-chrome-browser-blocking-page.png":::
*Web threat blocked on Chrome*

## Related articles

- [Web protection overview](web-protection-overview.md)
- [Web content filtering](web-content-filtering.md)
- [Web threat protection](web-threat-protection.md)
- [Monitor web security](web-protection-monitoring.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
