---
title: Use Microsoft Defender for Office 365 together with Microsoft Defender for Endpoint
f1.keywords:
  - NOCSH
keywords: integrate, Microsoft Defender, Microsoft Defender for Endpoint
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 05/29/2023
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.collection:
  - m365-security
  - tier3
description: Use Microsoft Defender for Office 365 together with Microsoft Defender for Endpoint to get more detailed information about threats against your devices and email content.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Use Microsoft Defender for Office 365 together with Microsoft Defender for Endpoint

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

[Microsoft Defender for Office 365](defender-for-office-365.md) can be configured to work with [Microsoft Defender for Endpoint](/windows/security/threat-protection).

Integrating Microsoft Defender for Office 365 with Microsoft Defender for Endpoint can help your security operations team monitor and take action quickly if users' devices are at risk. For example, once integration is enabled, your security operations team will be able to see the devices that are potentially affected by a detected email message, as well as how many recent alerts were generated for those devices in Microsoft Defender for Endpoint.

The following image depicts what the **Devices** tab looks like when you have Microsoft Defender for Endpoint integration enabled:

:::image type="content" source="../../media/fec928ea-8f0c-44d7-80b9-a2e0a8cd4e89.PNG" alt-text="A list of devices with alerts" lightbox="../../media/fec928ea-8f0c-44d7-80b9-a2e0a8cd4e89.PNG":::

In this example, you can see that the recipients of the detected email message have four devices and one has an alert. Clicking the link for a device opens its page in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender).

> [!TIP]
> The Microsoft 365 Defender portal replaces the Microsoft Defender Security Center. See [Microsoft Defender for Endpoint in Microsoft 365 Defender](../defender/microsoft-365-security-center-mde.md).

## Requirements

- Your organization must have Microsoft Defender for Office 365 (or Office 365 E5) and Microsoft Defender for Endpoint.

- You must have either the global administrator or security administrator role assigned in Microsoft 365. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

- You must have access to [Explorer (or real-time detections)](threat-explorer-about.md).

## To integrate Microsoft Defender for Office 365 with Microsoft Defender for Endpoint

> [!IMPORTANT]
> This setting was used when Microsoft Defender for Office 365 and Microsoft Defender for Endpoint were in different portals previously. After the convergence of security experiences into a unified portal that is now called Microsoft 365 Defender, these settings are irrelevant and don't have any functionality associated with them. You can safely ignore the status of the control until it is removed from the portal.

Integrating Microsoft Defender for Office 365 with Microsoft Defender for Endpoint is set up in both Defender for Endpoint and Defender for Office 365.

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Go to **Email & collaboration** \> **Explorer**.

3. On the **Explorer** page, in the upper right corner of the screen, select **MDE Settings**.

3. In the **Microsoft Defender for Endpoint connection** flyout that appears, turn on **Connect to Microsoft Defender for Endpoint** (![Toggle on.](../../media/scc-toggle-on.png)) and then select **Close**.

   :::image type="content" source="../../media/explorer-mdeconnection-dialognew.png" alt-text="The MDE Connection page" lightbox="../../media/explorer-mdeconnection-dialognew.png":::

4. In the navigation pane, choose **Settings**. On the **Settings** page, choose **Endpoints**

5. On the **Endpoints** page that opens, choose **Advanced features**.

6. Scroll down to **Office 365 Threat Intelligence connection**, and turn it on (![Toggle on.](../../media/scc-toggle-on.png)).

   When you're finished, select **Save preferences**.

## See also

[Threat investigation and response capabilities in Office 365](office-365-ti.md)

[Microsoft Defender for Office 365](defender-for-office-365.md)

[Microsoft Defender for Endpoint](/windows/security/threat-protection)
