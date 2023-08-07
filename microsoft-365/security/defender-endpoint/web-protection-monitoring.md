---
title: Monitoring web browsing security in Microsoft Defender for Endpoint
description: Use web protection in Microsoft Defender for Endpoint to monitor web browsing security
keywords: web protection, web threat protection, web browsing, monitoring, reports, cards, domain list, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
ms.date: 12/18/2020
---

# Monitor web browsing security

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

Web protection lets you monitor your organization's web browsing security through reports under **Reports > Web protection** in the Microsoft 365 Defender portal. The report contains cards that provide web threat detection statistics.

- **Web threat protection detections over time** - this trending card displays the number of web threats detected by type during the selected time period (Last 30 days, Last 3 months, Last 6 months)

  :::image type="content" source="images/wtp-blocks-over-time.png" alt-text="The card showing web threats protection detections over time" lightbox="images/wtp-blocks-over-time.png":::

- **Web threat protection summary** - this card displays the total web threat detections in the past 30 days, showing distribution across the different types of web threats. Selecting a slice opens the list of the domains that were found with malicious or unwanted websites.

  :::image type="content" source="images/wtp-summary.png" alt-text="The card showing web threats protection summary"  lightbox="images/wtp-summary.png":::

> [!NOTE]
> It can take up to 12 hours before a block is reflected in the cards or the domain list.

## Types of web threats

Web protection categorizes malicious and unwanted websites as:

- **Phishing** - websites that contain spoofed web forms and other phishing mechanisms designed to trick users into divulging credentials and other sensitive information
- **Malicious** - websites that host malware and exploit code
- **Custom indicator** - websites whose URLs or domains you've added to your [custom indicator list](manage-indicators.md) for blocking

## View the domain list

Select a specific web threat category in the **Web threat protection summary** card to open the **Domains** page. This page displays the list of the domains under that threat category. The page provides the following information for each domain:

- **Access count** - number of requests for URLs in the domain
- **Blocks** - number of times requests were blocked
- **Access trend** - change in number of access attempts
- **Threat category** - type of web threat
- **Devices** - number of devices with access attempts

Select a domain to view the list of devices that have attempted to access URLs in that domain and the list of URLs.

## Related topics

- [Web protection overview](web-protection-overview.md)
- [Web content filtering](web-content-filtering.md)
- [Web threat protection](web-threat-protection.md)
- [Respond to web threats](web-protection-response.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
