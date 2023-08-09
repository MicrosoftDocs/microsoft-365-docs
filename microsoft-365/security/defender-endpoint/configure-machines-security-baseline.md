---
title: Increase compliance to the Microsoft Defender for Endpoint security baseline
description: The Microsoft Defender for Endpoint security baseline sets security controls to provide optimal protection.
keywords: Intune management, Microsoft Defender for Endpoint, Microsoft Defender, Microsoft Defender for Endpoint ASR, security baseline
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
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Increase compliance to the Microsoft Defender for Endpoint security baseline

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

Security baselines ensure that security features are configured according to guidance from both security experts and expert Windows system administrators. When deployed, the Defender for Endpoint security baseline sets Defender for Endpoint security controls to provide optimal protection.

To understand security baselines and how they're assigned on Intune using configuration profiles, [read this FAQ](/intune/security-baselines#q--a).

Before you can deploy and track compliance to security baselines:

- [Enroll your devices to Intune management](configure-machines.md#enroll-devices-to-intune-management)
- [Ensure you have the necessary permissions](configure-machines.md#obtain-required-permissions)

## Compare the Microsoft Defender for Endpoint and the Windows Intune security baselines

The Windows Intune security baseline provides a comprehensive set of recommended settings needed to securely configure devices running Windows, including browser settings, PowerShell settings, and settings for some security features like Microsoft Defender Antivirus. In contrast, the Defender for Endpoint baseline provides settings that optimize all the security controls in the Defender for Endpoint stack, including settings for endpoint detection and response (EDR) and settings also found in the Windows Intune security baseline. For more information about each baseline, see:

- [Windows security baseline settings for Intune](/intune/security-baseline-settings-windows)
- [Microsoft Defender for Endpoint baseline settings for Intune](/intune/security-baseline-settings-defender-atp)

Ideally, devices onboarded to Defender for Endpoint are deployed both baselines: the Windows Intune security baseline to initially secure Windows and then the Defender for Endpoint security baseline layered on top to optimally configure the Defender for Endpoint security controls. To benefit from the latest data on risks and threats and to minimize conflicts as baselines evolve, always apply the latest versions of the baselines across all products as soon as they're released.

> [!NOTE]
> The Defender for Endpoint security baseline has been optimized for physical devices and is currently not recommended for use on virtual machine (VMs) or VDI endpoints. Certain baseline settings can impact remote interactive sessions on virtualized environments.

## Monitor compliance to the Defender for Endpoint security baseline

The **Security baseline** card on [device configuration management](configure-machines.md) provides an overview of compliance across Windows 10 and Windows 11 devices that have been assigned the Defender for Endpoint security baseline.

:::image type="content" source="images/secconmgmt_baseline_card.png" alt-text="The Security baseline card" lightbox="images/secconmgmt_baseline_card.png":::

*Card showing compliance to the Defender for Endpoint security baseline*

Each device is given one of the following status types:

- **Matches baseline**: Device settings match all the settings in the baseline.
- **Does not match baseline**: At least one device setting doesn't match the baseline.
- **Misconfigured**: At least one baseline setting isn't properly configured on the device and is in a conflict, error, or pending state.
- **Not applicable**: At least one baseline setting isn't applicable on the device.

To review specific devices, select **Configure security baseline** on the card. This takes you to Intune device management. From there, select **Device status** for the names and statuses of the devices.

> [!NOTE]
> You might experience discrepancies in aggregated data displayed on the device configuration management page and those displayed on overview screens in Intune.

## Review and assign the Microsoft Defender for Endpoint security baseline

Device configuration management monitors baseline compliance only of Windows 10 and Windows 11 devices that have been specifically assigned the Microsoft Defender for Endpoint security baseline. You can conveniently review the baseline and assign it to devices on Intune device management.

1. Select **Configure security baseline** on the **Security baseline** card to go to Intune device management. A similar overview of baseline compliance is displayed.

   > [!TIP]
   > Alternatively, you can navigate to the Defender for Endpoint security baseline in the Microsoft Azure portal from **All services > Intune > Device security > Security baselines > Microsoft Defender ATP baseline**.

2. Create a new profile.

   :::image type="content" source="images/secconmgmt_baseline_intuneprofile1.png" alt-text="The Create profile tab in the Microsoft Defender for Endpoint security baseline overview on Intune" lightbox="images/secconmgmt_baseline_intuneprofile1.png":::<br>
   *Microsoft Defender for Endpoint security baseline overview on Intune*

3. During profile creation, you can review and adjust specific settings on the baseline.

   :::image type="content" source="images/secconmgmt_baseline_intuneprofile2.png" alt-text="The Security baseline options during profile creation on Intune" lightbox="images/secconmgmt_baseline_intuneprofile2.png":::<br>
   *Security baseline options during profile creation on Intune*

4. Assign the profile to the appropriate device group.

   :::image type="content" source="images/secconmgmt_baseline_intuneprofile3.png" alt-text="The Security baseline profiles on Intune" lightbox="images/secconmgmt_baseline_intuneprofile3.png":::<br>
   *Assigning the security baseline profile on Intune*

5. Create the profile to save it and deploy it to the assigned device group.

   :::image type="content" source="images/secconmgmt_baseline_intuneprofile4.png" alt-text="Assigning the security baseline on Intune" lightbox="images/secconmgmt_baseline_intuneprofile4.png":::<br>
   *Creating the security baseline profile on Intune*

> [!TIP]
> Security baselines on Intune provide a convenient way to comprehensively secure and protect your devices. [Learn more about security baselines on Intune](/intune/security-baselines).

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-onboardconfigure-belowfoldlink)

## Related articles

- [Ensure your devices are configured properly](configure-machines.md)
- [Get devices onboarded to Microsoft Defender for Endpoint](configure-machines-onboarding.md)
- [Optimize ASR rule deployment and detections](configure-machines-asr.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
