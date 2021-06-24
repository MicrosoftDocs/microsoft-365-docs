---
title: Web protection
description: Learn about the web protection in Microsoft Defender for Endpoint and how it can protect your organization
keywords: web protection, web threat protection, web browsing, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser, malicious websites 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Web protection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

## What is web protection?

Web protection in Microsoft Defender for Endpoint is a capability made up of [Web threat protection](web-threat-protection.md) and [Web content filtering](web-content-filtering.md). Web protection lets you secure your devices against web threats and helps you regulate unwanted content. You can find Web protection reports in the Microsoft Defender Security Center by going to **Reports > Web protection**.

![Image of all web protection cards](images/web-protection.png)

### Web threat protection

The cards that make up web threat protection are **Web threat detections over time** and **Web threat summary**.

Web threat protection includes:

- Comprehensive visibility into web threats affecting your organization.

- Investigation capabilities over web-related threat activity through alerts and comprehensive profiles of URLs and the devices that access these URLs.

- A full set of security features that track general access trends to malicious and unwanted websites.

For more information, see [Web threat protection](web-threat-protection.md).

### Web content filtering

The cards that comprise web content filtering are **Web activity by category**, **Web content filtering summary**, and **Web activity summary**.

Web content filtering includes:

- Users are prevented from accessing websites in blocked categories, whether they are browsing on-premises or away.

- You can conveniently deploy varied policies to various sets of users using the device groups defined in the [Microsoft Defender for Endpoint role-based access control settings](/microsoft-365/security/defender-endpoint/rbac).

- You can access web reports in the same central location, with visibility over actual blocks and web usage.

For more information, see [Web content filtering](web-content-filtering.md).

## How does web protection work?

Web Protection is made up of the following components, listed in order of precedence. Each of these are enforced by the SmartScreen client in Microsoft Edge and by the Network Protection client in all other browsers/processes. 

- Custom indicator (IP URL/AB, MCAS Block/Warn (Preview))

- Web threats (malware, phish, etc.)

    - SmartScreen Intel, including Exchange Online Protection (EOP)
    - Fast pipe/escalations

- Windows Communication Foundation (WCF)

- Microsoft Cloud App Security (MCAS) allow

The order of precedence above relates to the order of operations by which a URL or IP is evaluated. For example, a customer who has a web content filtering policy can create exclusions through custom IP/URL indicators, since custom IoC’s are higher in the order of precedence than WCF blocks. 

When there is a conflict, MCAS allows always take precedence over blocks (override logic), meaning that an allow indicator will win over any block indicator further down the stack. This is also true with respect to web threats as the E5 custom indicator list is checked before web threats. This is not true in the case of MCAS. MCAS allows will not remediate WCF or SmartScreen.

Note that internal IP addresses are not supported by custom indicators. Also, for a warn policy, when bypassed by the end user, the site will be unblocked for 24 hours for that user by default (this time frame can be modified by the Admin and is passed down by the SmartScreen cloud service). The ability to bypass a warning can also be disabled via CSP for Web Threat blocks (malware/phish). For more details, see [Policy CSP - Browser - Windows Client Management](/windows/client-management/mdm/policy-csp-browser#browser-preventsmartscreenpromptoverride).



## Report false positives
