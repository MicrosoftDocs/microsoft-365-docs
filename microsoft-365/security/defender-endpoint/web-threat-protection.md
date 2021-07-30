---
title: Protect your organization against web threats
description: Learn about web protection in Microsoft Defender for Endpoint and how it can protect your organization.
keywords: web protection, web threat protection, web browsing, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser
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

# Protect your organization against web threats

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

Web threat protection is part of [Web protection](web-protection-overview.md) in Defender for Endpoint. It uses [network protection](network-protection.md) to secure your devices against web threats. By integrating with Microsoft Edge and popular third-party browsers like Chrome and Firefox, web threat protection stops web threats without a web proxy and can protect devices while they are away or on premises. Web threat protection stops access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, as well as sites that you have blocked in your [custom indicator list](manage-indicators.md).

> [!NOTE]
> It can take up to an hour for devices to receive new custom indicators.

## Prerequisites

Web protection uses network protection to provide web browsing security on Microsoft Edge and third-party web browsers.

To turn on network protection on your devices:

- Edit the Defender for Endpoint security baseline under **Web & Network Protection** to enable network protection before deploying or redeploying it. [Learn about reviewing and assigning the Defender for Endpoint security baseline](configure-machines-security-baseline.md#review-and-assign-the-microsoft-defender-for-endpoint-security-baseline)
- Turn network protection on using Intune device configuration, SCCM, Group Policy, or your MDM solution. [Read more about enabling network protection](enable-network-protection.md)

> [!NOTE]
> If you set network protection to **Audit only**, blocking will be unavailable. Also, you will be able to detect and log attempts to access malicious and unwanted websites on Microsoft Edge only.

## Related topics

- [Web protection overview](web-protection-overview.md)
- [Web threat protection](web-threat-protection.md)
- [Monitor web security](web-protection-monitoring.md)
- [Respond to web threats](web-protection-response.md)
- [Network protection](network-protection.md)
