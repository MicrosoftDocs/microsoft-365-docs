---

title: "Strengthen your security posture Phase 2: Assess and protect"
f1.keywords:
- security posture
- strengthen security posture
ms.author: siosulli
author: siosulli
manager: dansimp
audience: Admin
description: Learn how to strengthen your organization's security posture - assess and protect.
ms.topic: tutorial
ms.service: microsoft-365-security
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection:
- m365solution-securityposture
- m365solution-overview
- m365-security
- securityposture-solution
- highpri
- tier1
---

# Strengthen your security posture - Phase 2: Assess and protect

Welcome to **Phase 2: Assess and protect** in our **[Strengthen your security posture](/security-posture-solution-overview.md)** solution.

Central to understanding your security posture is having a comprehensive inventory of all your assets. This article describes the following capabilities that you can use to an get an accurate view of the assets in your network and ways to help you protect them:

1. [Assess your devices](#1-assess-your-devices)
2. [Onboard newly discovered devices](#2-onboard-newly-discovered-devices)
3. [Assign device value](#3-assign-device-value)

## 1. Assess your devices

Use the device inventory page in Microsoft Defender for Endpoint to get a comprehensive view of the assets discovered in your organization. For more information on how to explore the device inventory or how to use filters to get more detailed information, go to [Device inventory](../security/defender-endpoint/machines-view-overview.md).

## 2. Onboard newly discovered devices

With the device inventory providing a clear view into newly discovered devices that are not yet protected you can start onboarding unmanaged devices in your network to Defender for Endpoint.

At the top of each device inventory tab, you can see the total number of devices that are not onboarded:

:::image type="content" source="../media/content-understanding/onboard-discovered-devices.png" alt-text="number of discovered devices on the device inventory page" lightbox="../media/content-understanding/onboard-discovered-devices.png":::

Once you're ready you can start onboarding these devices by choosing the **Onboard them now** card. This will bring you directly to the **Onboard devices to Microsoft Defender for Endpoint** security recommendation.

To learn more about on how to onboard your devices using this security recommendation, see [explore security recommendation options](../security/defender-vulnerability-management/tvm-security-recommendation.md#explore-security-recommendation-options). This provides details on the different options available to you in the security recommendation and how you can request remediation.

## 3. Assign device value

Every device can potentially pose a risk to your organization but the impact of some devices being compromised compared to others can vary.  You might have devices that belong to people who have access to sensitive, proprietary, or high priority information meaning the impact could be high if these devices are compromised. In contrast, devices that are only used for internet access with no data could be classified as having a lower risk.

Identifying and assigning value to your devices can help identify how vulnerable your organization is to cyber security threats. How assets affect your vulnerability is in reflected in your exposure score in the Microsoft Defender 365 portal. Devices assigned as "high value" will receive more weight meaning your score will be higher.

To learn more and get started with assigning values to your devices, see [Assign device value](../security/defender-vulnerability-management/tvm-assign-device-value.md)

## Next step

- Proceed to [Phase 3: Investigate and improve](strengthen-security-posture-investigate-improve.md)
