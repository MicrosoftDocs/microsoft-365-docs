---
title: Protect your organization against web threats
description: Learn about web protection in Microsoft Defender for Endpoint and how it can protect your organization.
keywords: web protection, web threat protection, web browsing, security, phishing, malware, exploit, websites, network protection, Edge, Internet Explorer, Chrome, Firefox, web browser
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
ms.date: 08/22/2022
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
---

# Protect your organization against web threats

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-main-abovefoldlink&rtc=1)

Web threat protection is part of [Web protection](web-protection-overview.md) in Defender for Endpoint. It uses [network protection](network-protection.md) to secure your devices against web threats. By integrating with Microsoft Edge and popular third-party browsers like Chrome and Firefox, web threat protection stops web threats without a web proxy and can protect devices while they are away or on premises. Web threat protection stops access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, as well as sites that you have blocked in your [custom indicator list](manage-indicators.md).

> [!NOTE]
> It might take up to two hours for devices to receive new custom indicators.

## Prerequisites

Web protection uses network protection to provide web browsing security on Microsoft Edge and third-party web browsers.

To turn on network protection on your devices:

- Edit the Defender for Endpoint security baseline under **Web & Network Protection** to enable network protection before deploying or redeploying it. [Learn about reviewing and assigning the Defender for Endpoint security baseline](configure-machines-security-baseline.md#review-and-assign-the-microsoft-defender-for-endpoint-security-baseline)
- Turn network protection on using Intune device configuration, SCCM, Group Policy, or your MDM solution. [Read more about enabling network protection](enable-network-protection.md)

> [!NOTE]
> If you set network protection to **Audit only**, blocking will be unavailable. Also, you will be able to detect and log attempts to access malicious and unwanted websites on Microsoft Edge only.

## Configure web threat protection

The following procedure describes how to configure web threat protection using the Microsoft Intune admin center.

1. Go to the Microsoft Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), and sign in.
 
2. Choose **Endpoint security** \> **Attack surface reduction**, and then choose **+ Create policy**.

3. Select a platform, such as **Windows 10 and later**, select the **Web protection** profile, and then choose **Create**. 

4. On the **Basics** tab, specify a name and description, and then choose **Next**.

5. On the **Configuration settings** tab, expand **Web Protection**, specify your settings, and then choose **Next**.

   - Set **Enable network protection** to **Enabled** so web protection is turned on. Alternately, you can set network protection to **Audit mode** to see how it will work in your environment. In audit mode, network protection does not prevent users from visiting sites or domains, but it does track detections as events. 
   - To protect users from potential phishing scams and malicious software, turn **Require SmartScreen for Microsoft Edge Legacy** to **Yes**.
   - To prevent users from bypassing warnings about potentially malicious sites, set **Block malicious site access** to **Yes**.
   - To prevent users from bypassing the warnings and downloading unverified files, set **Block unverified file download** to **Yes**. 

6. On the **Scope tags** tab, if your organization is using scope tags, choose **+ Select scope tags**, and then choose **Next**. (If you are not using scope tags, choose **Next**.) To learn more about scope tags, see [Use role-based access control (RBAC) and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).

7. On the **Assignments** tab, specify the users and devices to receive the web protection policy, and then choose **Next**.

8. On the **Review + create** tab, review your policy settings, and then choose **Create**.

## Related topics

- [Web protection overview](web-protection-overview.md)
- [Web threat protection](web-threat-protection.md)
- [Monitor web security](web-protection-monitoring.md)
- [Respond to web threats](web-protection-response.md)
- [Network protection](network-protection.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
