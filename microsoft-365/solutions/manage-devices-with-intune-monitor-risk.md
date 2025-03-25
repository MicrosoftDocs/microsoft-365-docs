---
title: "Step 6. Monitor device risk and compliance for security baselines"
description: Learn how to connect Microsoft Intune to Defender for Endpoint and monitor device risk as a condition for access.
ms.author: bcarter
author: brendacarter
f1.keywords:
- connect Intune to Defender
- monitor device risk
- monitor device compliance
- deploy security baselines
manager: dougeby
ms.date: 03/14/2025
audience: ITPro
ms.topic: how-to
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- M365-security-compliance
- deploy security baselines
- m365solution-managedevices
- m365solution-scenario
- zerotrust-solution
ms.custom: 
keywords: 
---

# Step 6. Monitor device risk and compliance for security baselines

After your organization deploys Microsoft Defender for Endpoint, you can gain greater insights and protection of your devices by integrating Microsoft Intune with Defender for Endpoint. For mobile devices, this includes the ability to monitor device risk as a condition for access. For Windows devices, you can monitor compliance of these devices to security baselines.

Deploying Microsoft Defender for Endpoint includes onboarding endpoints. If you used Intune to onboard endpoints (recommended), then you've connected Intune to Defender for Endpoint. If you used a different method to onboard endpoints to Defender for Endpoint, see [Configure Microsoft Defender for Endpoint in Intune](/mem/intune-service/protect/advanced-threat-protection-configure) to ensure you set up the service-to-service connection between Intune and Defender for Endpoint.

:::image type="content" source="../media/devices/devices-defender-for-endpoint-steps.svg" alt-text="The integration of Microsoft Intune with Microsoft Defender for Endpoint, including how Defender for Endpoint shares its signals with Microsoft Defender XDR." lightbox="../media/devices/devices-defender-for-endpoint-steps.svg":::

In this illustration:

- Microsoft Defender for Endpoint greatly increases the sophistication of threat protection for devices.
- Microsoft Intune allows you to set app protection policies and manage devices (including configuration changes). Defender for Endpoint continuously monitors your devices for threats, and can take automated action to remediate attacks.
- You can use Intune to onboard devices to Defender for Endpoint, which enables these devices to work with Microsoft Purview Endpoint Data Loss Prevention (DLP).

This article includes these steps:

- Monitor device risk
- Monitor compliance for security baselines

If Defender for Endpoint hasn’t already been set up, work with your threat protection admin to [set up the evaluation and pilot environment](../security/defender/eval-defender-endpoint-overview.md). You can work with the pilot group to try out the capabilities in this article.

## Monitor device risk as a condition for access

With Microsoft Defender for Endpoint deployed, you can take advantage of threat risk signals. This allows you to block access to devices based on their risk score. Microsoft recommends allowing access to devices with a risk score of medium or lower.

For Android and iOS/iPadOS, threat signals can be used within your app protection policies. For more information, see [Create and assign app protection policy to set device risk level](/mem/intune-service/protect/advanced-threat-protection-configure#create-and-assign-compliance-policy-to-set-device-risk-level).

For all platforms, you can set the risk level in the existing device compliance policies. For more information, see [Create a Conditional Access policy](/mem/intune-service/protect/advanced-threat-protection-configure#create-a-conditional-access-policy).

## Deploy security baselines and monitor compliance for these settings

Applies to: Windows 10, Windows 11

The [Step 5. Deploy configuration profiles](manage-devices-with-intune-configuration-profiles.md) article recommends getting started with configuration profiles by using the Intune security baselines that are available for Windows 10 and Windows 11. Intune also includes security baselines for Microsoft Defender for Endpoint that provide settings to optimize all the security controls in the Defender for Endpoint stack, including settings for endpoint detection and response (EDR).

Ideally, devices onboarded to Defender for Endpoint would receive both baselines: the security baseline for Windows to initially secure Windows, and then the Defender for Endpoint security baseline layered on top to optimally configure the Defender for Endpoint security controls.

To benefit from the latest data on risks and threats and to minimize conflicts as baselines evolve, always apply the latest versions of the baselines across all products as soon as they're released. 

Using Defender for Endpoint, you can monitor compliance for these baselines. 

:::image type="content" source="../media/devices/secconmgmt-baseline-card.png" alt-text="A screenshot example of the card in Defender for Endpoint for monitoring compliance for security baselines." lightbox="../media/devices/secconmgmt-baseline-card.png":::

To deploy security baselines and monitor compliance for these settings, use the steps in this table.

|Step  |Description  |
|---------|---------|
|1     |Review key concepts and compare the Microsoft Defender for Endpoint and the Windows security baselines in Intune. <br><br> To learn about recommendations for Defender for Endpoint, see [Increase compliance to the Microsoft Defender for Endpoint security baseline](../security/defender-endpoint/configure-machines-security-baseline.md). <br><br> To review the list of security baselines that are available with Intune, and how to avoid conflicts, see [Use security baselines to configure Windows devices in Intune](/mem/intune-service/protect/security-baselines).
|2     |  Use Intune to deploy the security baseline for Windows settings. For more information, see related guidance in [Step 5. Deploy device profiles](manage-devices-with-intune-configuration-profiles.md).        |
|3    |  Use Intune to deploy Defender for Endpoint baseline settings. To create the profile and choose the correct baseline, see [Manage security baseline profiles in Microsoft Intune](/mem/intune-service/protect/security-baselines-configure). <br><br> You can also follow the instructions as [Review and assign the Microsoft Defender for Endpoint security baseline](../security/defender-endpoint/configure-machines-security-baseline.md#review-and-assign-the-microsoft-defender-for-endpoint-security-baseline) in the Defender for Endpoint documentation. |
|4     | In the Defender for Endpoint documentation, review [Ensure your devices are configured properly](../security/defender-endpoint/configure-machines.md) and the [Security baseline card on device configuration management](/defender-endpoint/configure-machines-security-baseline#monitor-compliance-to-the-defender-for-endpoint-security-baseline). |

## Next step

Go to [Step 7. Implement DLP with information protection capabilities on endpoints](manage-devices-with-intune-dlp-mip.md).
