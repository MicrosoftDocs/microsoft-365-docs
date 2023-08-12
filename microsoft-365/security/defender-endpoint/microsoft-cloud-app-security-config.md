---
title: Configure Microsoft Defender for Cloud Apps integration
ms.reviewer:
description: Learn how to turn on the settings to enable the Microsoft Defender for Endpoint integration with Microsoft Defender for Cloud Apps.
keywords: cloud, app, security, settings, integration, discovery, report
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Configure Microsoft Defender for Cloud Apps in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

To benefit from Microsoft Defender for Endpoint cloud app discovery signals, turn on Microsoft Defender for Cloud Apps integration.

> [!NOTE]
> This feature will be available with an E5 license for [Enterprise Mobility + Security](https://www.microsoft.com/cloud-platform/enterprise-mobility-security) on devices running Windows 10 and Windows 11.

> [!TIP]
> See [Microsoft Defender for Endpoint integration with Microsoft Defender for Cloud Apps](/cloud-app-security/mde-integration) for detailed integration of Microsoft Defender for Endpoint with Microsoft Defender for Cloud Apps.

## Enable Microsoft Defender for Cloud Apps in Microsoft Defender for Endpoint

1. In the navigation pane, select **Preferences setup** \> **Advanced features**.
2. Select **Microsoft Defender for Cloud Apps** and switch the toggle to **On**.
3. Click **Save preferences**.

Once activated, Microsoft Defender for Endpoint will immediately start forwarding discovery signals to Defender for Cloud Apps.

## View the data collected

To view and access Microsoft Defender for Endpoint data in Microsoft Defender for Cloud Apps, see [Investigate devices in Defender for Cloud Apps](/cloud-app-security/mde-integration#investigate-devices-in-cloud-app-security).

For more information about cloud discovery, see [Working with discovered apps](/cloud-app-security/discovered-apps).

If you're interested in trying Microsoft Defender for Cloud Apps, see [Microsoft Defender for Cloud Apps Trial](https://signup.microsoft.com/Signup?OfferId=757c4c34-d589-46e4-9579-120bba5c92ed&ali=1).

## Related topic

- [Microsoft Defender for Cloud Apps integration](microsoft-cloud-app-security-integration.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
