---
title: "Step 6. Monitor device risk and compliance to security baselines"
ms.author: bcarter
author: brendacarter
f1.keywords:
- connect Intune to Defender
- monitor device risk
- monitor device compliance
- deploy security baselines
manager: dougeby
ms.date: 10/20/2021
audience: ITPro
description: Learn how to connect Microsoft Intune to Defender for Endpoint and monitor device risk as a condition for access.
ms.topic: article
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

# Step 6. Monitor device risk and compliance to security baselines

After your organization has deployed Microsoft Defender for Endpoint, you can gain greater insights and protection of your devices by integrating Microsoft Intune with Defender for Endpoint. For mobile devices, this includes the ability to monitor device risk as a condition for access. For Windows devices, you can monitor compliance of these devices to security baselines. 

Deploying Microsoft Defender for Endpoint includes onboarding endpoints. If you used Intune to onboard endpoints (recommended), then you have already connected Microsoft Intune to Defender for Endpoint. If you used a different method to onboard endpoints to Defender for Endpoint, see [Configure Microsoft Defender for Endpoint in Intune](/mem/intune/protect/advanced-threat-protection-configure) to ensure you have set up the service-to-service connection between Intune and Microsoft Defender for Endpoint. 


![Defender for Endpoint and Microsoft Intune integration illustration](../media/devices/devices-defender-for-endpoint-steps.png#lightbox)

In this illustration:
- Microsoft Defender for Endpoint greatly increases the sophistication of threat protection for devices. 
- While Microsoft Intune allows you to set App Protection Policies and manage devices (including configuration changes), Defender for Endpoint continuously monitors your devices for threats, and can take automated action to remediate attacks. 
- You can use Intune to onboard devices to Defender for Endpoint. When you do this, you're also enabling these devices to work with Microsoft Purview Endpoint data loss prevention (Endpoint DLP).

This article includes these steps:
- Monitor device risk
- Monitor compliance to security baselines

If Defender for Endpoint hasn’t already been set up, work with your threat protection admin to [set up the evaluation and pilot environment](../security/defender/eval-defender-endpoint-overview.md). You can work with the pilot group to try out the capabilities in this article.

## Monitor device risk as a condition for access

With Microsoft Defender for Endpoint deployed, you can take advantage of threat risk signals. This allows you to block access to devices based on their risk score. Microsoft recommends allowing access to devices with a risk score of medium or below.

For Android and iOS/iPadOS, threat signals can be used within your App Protection Policies (APP). For information on configuring this, see [Create and assign app protection policy to set device risk level](/mem/intune/protect/advanced-threat-protection-configure#create-and-assign-compliance-policy-to-set-device-risk-level).

For all platforms, you can set the risk level in the existing device compliance policies. See [Create a conditional access policy](/mem/intune/protect/advanced-threat-protection-configure#create-a-conditional-access-policy).

## Deploy security baselines and monitor compliance to these settings

Applies to: Windows 10, Windows 11

The article, [Step 5. Deploy configuration profiles](manage-devices-with-intune-configuration-profiles.md), recommends getting started with configuration profiles by using the security baselines, available for Windows 10 and Windows 11. Microsoft Defender for Endpoint also includes security baselines that provide settings that optimize all the security controls in the Defender for Endpoint stack, including settings for endpoint detection and response (EDR). These are also deployed by using Microsoft Intune.

Ideally, devices onboarded to Defender for Endpoint are deployed both baselines: the Windows Intune security baseline to initially secure Windows and then the Defender for Endpoint security baseline layered on top to optimally configure the Defender for Endpoint security controls.

To benefit from the latest data on risks and threats and to minimize conflicts as baselines evolve, always apply the latest versions of the baselines across all products as soon as they're released. 

Using Defender for Endpoint, you can monitor compliance to these baselines. 

![The card for monitoring compliance to security baselines](../media/devices/secconmgmt-baseline-card.png#lightbox)

To deploy security baselines and monitor compliance to these settings, use the steps in this table.


|Step  |Description  |
|---------|---------|
|1     |Review key concepts and compare the Microsoft Defender for Endpoint and the Windows Intune security baselines. <br><br>See [Increase compliance to the Microsoft Defender for Endpoint security baseline](../security/defender-endpoint/configure-machines-security-baseline.md) to learn recommendations.<br><br>See [Use security baselines to configure Windows devices in Intune ](/mem/intune/protect/security-baselines) to review the list of available security baselines and how to avoid conflicts.         |
|2     |  Deploy Windows security baseline settings for Intune. You might have already accomplished this if you followed the guidance in [Step 5. Deploy configuration profiles](manage-devices-with-intune-configuration-profiles.md).        |
|3    |  Deploy Defender for Endpoint baseline settings for Intune. See [Manage security baseline profiles in Microsoft Intune](/mem/intune/protect/security-baselines-configure) to create the profile and choose the baseline version.<br><br>You can also follow the instructions here: [Review and assign the Microsoft Defender for Endpoint security baseline](../security/defender-endpoint/configure-machines-security-baseline.md#review-and-assign-the-microsoft-defender-for-endpoint-security-baseline).     |
|4     | In Defender for Endpoint, review the [Security baseline card on device configuration management](../security/defender-endpoint/configure-machines.md).          |


## Next steps
Go to [Step 7. Implement DLP with information protection capabilities on endpoints](manage-devices-with-intune-dlp-mip.md).
