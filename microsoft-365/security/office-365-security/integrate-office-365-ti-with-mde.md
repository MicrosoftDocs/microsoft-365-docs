---
title: Use Microsoft Defender for Office 365 together with Microsoft Defender for Endpoint
f1.keywords:
  - NOCSH
keywords: integrate, Microsoft Defender, Microsoft Defender for Endpoint
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 06/10/2021
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


[Microsoft Defender for Office 365](defender-for-office-365.md) can be configured to work with [Microsoft Defender for Endpoint](/windows/security/threat-protection).

Integrating Microsoft Defender for Office 365 with Microsoft Defender for Endpoint can help your security operations team monitor and take action quickly if users' devices are at risk. For example, once integration is enabled, your security operations team will be able to see the devices that are potentially affected by a detected email message, as well as how many recent alerts were generated for those devices in Microsoft Defender for Endpoint.

The following image depicts what the **Devices** tab looks like when you have Microsoft Defender for Endpoint integration enabled:

![When Microsoft Defender for Endpoint is enabled, you can see a list of devices with alerts.](../../media/fec928ea-8f0c-44d7-80b9-a2e0a8cd4e89.PNG)

In this example, you can see that the recipients of the detected email message have four devices and one has an alert. Clicking the link for a device opens its page in [the Microsoft 365 Defender portal](../defender-endpoint/microsoft-defender-security-center.md) (formerly the Microsoft Defender security center).

> [!TIP]
> The Microsoft 365 Defender portal replaces the Microsoft Defender Security Center. See [Microsoft Defender for Endpoint in Microsoft 365 Defender](../defender/microsoft-365-security-center-mde.md).

## Requirements

- Your organization must have Microsoft Defender for Office 365 (or Office 365 E5) and Microsoft Defender for Endpoint.

- You must be a global administrator or have a security administrator role (such as Security Administrator) assigned in Microsoft 365. For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

- You must have access to [Explorer (or real-time detections)](threat-explorer.md).

## To integrate Microsoft Defender for Office 365 with Microsoft Defender for Endpoint

Integrating Microsoft Defender for Office 365 with Microsoft Defender for Endpoint is set up in both Defender for Endpoint and Defender for Office 365.

1. As a global administrator or a security administrator, open the Microsoft 365 Defender portal (<https://security.microsoft.com>) and go to **Email & collaboration** \> **Explorer**. To go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorer>.

2. On the **Explorer** page, in the upper right corner of the screen, click **MDE Settings**.

3. In the **Microsoft Defender for Endpoint connection** flyout that appears, turn on **Connect to Microsoft Defender for Endpoint** (![Toggle on](../../media/scc-toggle-on.png)) and then click ![Close icon](../../media/m365-cc-sc-close-icon.png) **Close**.

    :::image type="content" source="../../media/explorer-mdeconnection-dialognew.png" alt-text="MDE Connection":::

4. Back in the navigation pane, choose **Settings**. On the **Settings** page, choose **Endpoints**

5. On the **Endpoints** page that opens, choose **Advanced features**.

6. Scroll down to **Office 365 Threat Intelligence connection**, and turn it on (![Toggle on](../../media/scc-toggle-on.png)).

   When you're finished, click **Save preferences**.

## Related articles

[Threat investigation and response capabilities in Office 365](office-365-ti.md)

[Microsoft Defender for Office 365](defender-for-office-365.md)

[Microsoft Defender for Endpoint](/windows/security/threat-protection)
