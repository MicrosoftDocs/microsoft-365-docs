---
title: Defender for Endpoint onboarding Windows Client
description: Onboard Windows Client.
keywords: onboarding, Microsoft Defender for Endpoint onboarding, sccm, group policy, mdm, local script, detection test
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
ms.date: 05/19/2022
---

# Defender for Endpoint onboarding Windows Client

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Endpoint data loss prevention (DLP)](/microsoft-365/compliance/endpoint-dlp-learn-about)
- [Insider risk management](/microsoft-365/compliance/insider-risk-management)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https:%2F%2Faka.ms%2FMDEp2OpenTrial)

You'll need to go through onboarding steps of the Defender for Endpoint portal to onboard any of the supported devices. Depending on the device, you'll be guided with appropriate steps and provided management and deployment tool options suitable for the device.

Devices in your organization must be configured so that the Defender for Endpoint service can get sensor data from them. There are various methods and deployment tools that you can use to configure the devices in your organization.

In general, you'll identify the client you're onboarding, then follow the corresponding tool appropriate to the device or your environment.

:::image type="content" source="images/onboarddevices.png" alt-text="Onboard devices" lightbox="images/onboarddevices.png":::



[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]



## Related topics
- [Onboard Windows devices using Microsoft Intune](configure-endpoints-mdm.md)
- [Onboard Windows devices using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows devices using a local script](configure-endpoints-script.md)
- [Onboard non-persistent virtual desktop infrastructure (VDI) devices](configure-endpoints-vdi.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
