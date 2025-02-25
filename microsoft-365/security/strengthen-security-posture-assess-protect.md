---

title: "Strengthen your security posture - Assess and protect"
f1.keywords:
- security posture
- strengthen security posture
ms.author: deniseb
author: denisebmsft
manager: deniseb
audience: Admin
description: Learn how to strengthen your organization's security posture - assess and protect.
ms.topic: solution-overview
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
- ContentEnagagementFY24
ms.date: 08/28/2024
---

# Strengthen your security posture - Assess and protect

Welcome to Phase 2 of [Strengthen your security posture](../security/security-posture-solution-overview.md): **Assess and protect**.

Central to understanding your security posture is having a comprehensive inventory of all your assets. This article describes capabilities you can use to get an accurate view of the assets in your network and ways to help you protect them.

|Capability |Description|Get started|
|:----------|:------------|:--------|
|**Assess your devices** | Use the device inventory page in Microsoft Defender for Endpoint to get a comprehensive view of the devices discovered in your organization. Explore the information available like the risk level, platform information, and the onboarding status of a device. Use the filters available to customize your view. | [Device inventory](../security/defender-endpoint/machines-view-overview.md)|
|**Assign device value** | Every device can potentially pose a risk to your organization but the impact of some devices being compromised compared to others can vary. You might have devices that belong to people who have access to sensitive, proprietary, or high priority information, this means the impact could be high if these devices are compromised. In contrast, devices that are only used for internet access with no data could be classified as having a lower risk. <br /><br /> Identifying and assigning value to your devices can help identify how vulnerable your organization is to cybersecurity threats. How assets affect your vulnerability is reflected in your exposure score in the Microsoft Defender portal. Devices assigned as "high value" receive more weight meaning your score will be higher. | [Assign device value](../security/defender-vulnerability-management/tvm-assign-device-value.md)|
|**Onboard newly discovered devices** | Devices that have been discovered, but aren't yet onboarded and secured by Microsoft Defender for Endpoint, appear in the device inventory Computers and Mobile tab. <br /><br /> To start onboarding these devices, see [Onboard newly discovered devices](#onboard-newly-discovered-devices). |[About onboarding status](../security/defender-endpoint/device-discovery.md#device-inventory) |

## Onboard newly discovered devices

The device inventory provides a clear view into newly discovered devices in your network that aren't yet protected. At the top of each device inventory tab, you can see the total number of devices that aren't onboarded:

:::image type="content" source="../media/content-understanding/onboard-discovered-devices.png" alt-text="number of discovered devices on the device inventory page" lightbox="../media/content-understanding/onboard-discovered-devices.png":::

Once you're ready, you can start onboarding these devices by choosing the **Onboard them now** card. This card brings you directly to the **Onboard devices to Microsoft Defender for Endpoint** security recommendation.

:::image type="content" source="../media/content-understanding/onboard-device-security-recommendation.png" alt-text="onboard devices security recommendation" lightbox="../media/content-understanding/onboard-device-security-recommendation.png":::

To learn more about how to request remediation to onboard your devices using this security recommendation, see [request remediation](../security/defender-vulnerability-management/tvm-security-recommendation.md#how-to-request-remediation).

## Next step

- [Phase 3: Investigate and improve](strengthen-security-posture-investigate-improve.md)
