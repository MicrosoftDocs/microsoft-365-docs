---
title: Use Microsoft Defender for Office 365 together with Microsoft Defender for Endpoint
f1.keywords: 
  - NOCSH
keywords: integrate, Microsoft Defender, ATP
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 01/21/2021
audience: ITPro
ms.topic: article

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - M365-security-compliance
description: Use Microsoft Defender for Office 365 together with Microsoft Defender for Endpoint to get more detailed information about threats against your devices and email content.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Use Microsoft Defender for Office 365 together with Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


[Microsoft Defender for Office 365](office-365-atp.md) can be configured to work with [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection).

Integrating Microsoft Defender for Office 365 with Microsoft Defender for Endpoint can help your security operations team monitor and take action quickly if users' devices are at risk. For example, once integration is enabled, your security operations team will be able to see the devices that are potentially affected by a detected email message, as well as how many recent alerts were generated for those devices in Microsoft Defender for Endpoint.

The following image depicts what the **Devices** tab looks like have Microsoft Defender for Endpoint integration enabled:

![When Microsoft Defender for Endpoint is enabled, you can see a list of devices with alerts.](../../media/fec928ea-8f0c-44d7-80b9-a2e0a8cd4e89.PNG)

In this example, you can see that the recipients of the detected email message have four devices and one has an alert. Clicking the link for a device opens its page in the Microsoft Defender Security Center (<https://securitycenter.windows.com>).

> [!TIP]
> **[Learn more about the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use)** (also referred to as the Microsoft Defender for Endpoint portal.)

## Requirements

- Your organization must have Microsoft Defender for Office 365 (or Office 365 E5) and Microsoft Defender for Endpoint.

- You must be a global administrator or have a security administrator role (such as Security Administrator) assigned in the [Security & Compliance Center](https://protection.office.com). (See [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md))

- You must have access to both [Explorer (or real-time detections)](threat-explorer.md) in the Security & Compliance Center and the Microsoft Defender Security Center.

## To integrate Microsoft Defender for Office 365 with Microsoft Defender for Endpoint

Integrating Microsoft Defender for Office 365 with Microsoft Defender for Endpoint is set up by using both the Security & Compliance Center AND the Microsoft Defender Security Center.

1. As a global administrator or a security administrator, go to <https://protection.office.com> and sign in. (This takes you to the Office 365 Security & Compliance Center.)

2. In the navigation pane, choose **Threat management** \> **Explorer**.

   ![Explorer in Threat Management menu](../../media/ThreatMgmt-Explorer-nav.png)

3. In the upper right corner of the screen, choose **Defender for Endpoint Settings (MDE Settings)**.

4. In the Microsoft Defender for Endpoint connection dialog box, turn on **Connect to Microsoft Defender for Endpoint**.

   ![Microsoft Defender for Endpoint connection](../../media/Explorer-WDATPConnection-dialog.png)

5. Go to the Microsoft Defender Security Center (<https://securitycenter.windows.com>).

6. In the navigation bar, choose **Settings**. Then, under **General**, choose **Advanced features**.

7. Scroll down to **Office 365 Threat Intelligence connection**, and turn the connection on.

   ![Office 365 threat intelligence connection](../../media/mdatp-oatptoggle.png)

## Related articles

[Threat investigation and response capabilities in Office 365](office-365-ti.md)

[Microsoft Defender for Office 365](office-365-atp.md)

[Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection)
