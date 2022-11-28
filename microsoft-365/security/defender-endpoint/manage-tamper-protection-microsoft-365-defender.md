---
title: Manage tamper protection for your organization using Microsoft 365 Defender
ms.reviewer: mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off for your tenant using the Microsoft 365 Defender portal.
keywords: malware, defender, antivirus, tamper protection, Microsoft 365 Defender
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: 
- nextgen
- admindeeplinkDEFENDER
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Manage tamper protection for your organization using Microsoft 365 Defender portal

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Tamper protection can be turned on or off for your tenant using the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). Here are a few points to keep in mind:

- Currently, the option to manage 'tamper protection' in the Microsoft 365 Defender portal is on by default for new deployments. For existing deployments, 'tamper protection' is available on an opt-in basis. To opt in, in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, choose **Settings** \> **Endpoints** \> **Advanced features** \> **Tamper protection**.
- When you use the Microsoft 365 Defender portal to manage 'tamper protection', you do not have to use Intune or the tenant attach method.
- When you manage 'tamper protection' in the Microsoft 365 Defender portal, the setting is applied tenant wide, affecting all of your devices that are running Windows 10, Windows 10 Enterprise multi-session, Windows 11, Windows 11 Enterprise multi-session, Windows Server 2012 R2, Windows Server 2016, Windows Server 2019 or Windows Server 2022. To fine-tune 'tamper protection' (such as having tamper protection on for some devices but off for others), use either [Manage tamper protection for your organization using Microsoft Endpoint Manager](manage-tamper-protection-microsoft-endpoint-manager.md) or [Manage tamper protection using tenant attach with Configuration Manager, version 2006](manage-tamper-protection-configuration-manager.md).
- If you have a hybrid environment, tamper protection settings configured in Intune take precedence over settings configured in the Microsoft 365 Defender portal.

## Requirements for managing tamper protection in the Microsoft 365 Defender portal

- You must have appropriate [permissions](/microsoft-365/security/defender-endpoint/assign-portal-access) assigned, such as global admin, security admin, or security operations.

- Your Windows devices must be running one of the following versions of Windows:
  
  - Windows 11
  - Windows 11 Enterprise multi-session 
  - Windows 10
  - Windows 10 Enterprise multi-session
  - Windows Server 2022
  - Windows Server 2019
  - Windows Server, version 1803 or later
  - Windows Server 2016
  - Windows Server 2012 R2

For more information about releases, see [Windows 10 release information](/windows/release-health/release-information).

- Your devices must be [onboarded to Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/onboarding).
- Your devices must be using anti-malware platform version `4.18.2010.7` (or above) and anti-malware engine version `1.1.17600.5` (or above). ([Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).)
- [Cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) must be turned on.

> [!NOTE]
> When tamper protection is enabled via the Microsoft 365 Defender portal, cloud-delivered protection is required, so that the enabled state of tamper protection can be controlled.  
> Starting with the November 2021 update (platform version `4.18.2111.5`), if cloud-delivered protection is not turned on for a device and tamper protection is turned on in the Microsoft 365 Defender portal, then cloud-delivered protection will be automatically turned on for that device along with tamper protection.   

## Turn tamper protection on (or off) in the Microsoft 365 Defender portal

:::image type="content" source="../../media/mde-turn-tamperprotectionon.png" alt-text="Turn tamper protection turned on in the Microsoft 365 Defender portal" lightbox="../../media/mde-turn-tamperprotectionon.png":::

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Choose **Settings** \> **Endpoints**.

3. Go to **General** \> **Advanced features**, and then turn tamper protection on.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)