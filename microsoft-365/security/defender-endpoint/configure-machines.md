---
title: Ensure your devices are configured properly
description: Properly configure devices to boost overall resilience against threats and enhance your capability to detect and respond to attacks.
keywords: onboard, Intune management, Microsoft Defender for Endpoint, Microsoft Defender, Windows Defender, attack surface reduction, ASR, security baseline
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Ensure your devices are configured properly

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

With properly configured devices, you can boost overall resilience against threats and enhance your capability to detect and respond to attacks. Security configuration management helps ensure that your devices:

- Onboard to Microsoft Defender for Endpoint
- Meet or exceed the Defender for Endpoint security baseline configuration
- Have strategic attack surface mitigations in place

Click **Configuration management** from the navigation menu to open the Device configuration management page.

:::image type="content" source="images/secconmgmt_main.png" alt-text="The Security configuration management page" lightbox="images/secconmgmt_main.png":::

*Device configuration management page*

You can track configuration status at an organizational level and quickly take action in response to poor onboarding coverage, compliance issues, and poorly optimized attack surface mitigations through direct, deep links to device management pages on Microsoft Intune and <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.

In doing so, you benefit from:

- Comprehensive visibility of the events on your devices
- Robust threat intelligence and powerful device learning technologies for processing raw events and identifying the breach activity and threat indicators
- A full stack of security features configured to efficiently stop the installation of malicious implants, hijacking of system files and process, data exfiltration, and other threat activities
- Optimized attack surface mitigations, maximizing strategic defenses against threat activity while minimizing impact to productivity

## Enroll devices to Intune management

Device configuration management works closely with Intune device management to establish the inventory of the devices in your organization and the baseline security configuration. You will be able to track and manage configuration issues on Intune-managed Windows devices.

Before you can ensure your devices are configured properly, enroll them to Intune management. Intune enrollment is robust and has several enrollment options for Windows devices. For more information about Intune enrollment options, read about [setting up enrollment for Windows devices](/intune/windows-enroll).

> [!NOTE]
> To enroll Windows devices to Intune, administrators must have already been assigned licenses. [Read about assigning licenses for device enrollment](/intune/licenses-assign).

> [!TIP]
> To optimize device management through Intune, [connect Intune to Defender for Endpoint](/intune/advanced-threat-protection#enable-windows-defender-atp-in-intune).

## Obtain required permissions

By default, only users who have been assigned the Global Administrator or the Intune Service Administrator role on Azure AD can manage and assign the device configuration profiles needed for onboarding devices and deploying the security baseline.

If you have been assigned other roles, ensure you have the necessary permissions:

- Full permissions to device configurations
- Full permissions to security baselines
- Read permissions to device compliance policies
- Read permissions to the organization

:::image type="content" source="images/secconmgmt_intune_permissions.png" alt-text="The required permissions on intune" lightbox="images/secconmgmt_intune_permissions.png":::

*Device configuration permissions on Intune*

> [!TIP]
> To learn more about assigning permissions on Intune, [read about creating custom roles](/intune/create-custom-role#to-create-a-custom-role).

## In this section

Topic|Description
:---|:---
[Get devices onboarded to Defender for Endpoint](configure-machines-onboarding.md)|Track onboarding status of Intune-managed devices and onboard more devices through Intune. 
[Increase compliance to the Defender for Endpoint security baseline](configure-machines-security-baseline.md)|Track baseline compliance and noncompliance. Deploy the security baseline to more Intune-managed devices.
[Optimize ASR rule deployment and detections](configure-machines-asr.md)|Review rule deployment and tweak detections using impact analysis tools in <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>.

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-onboardconfigure-belowfoldlink)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
