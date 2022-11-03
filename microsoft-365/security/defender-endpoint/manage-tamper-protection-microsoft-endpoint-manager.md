---
title: Manage tamper protection for your organization using Microsoft Intune
ms.reviewer: mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off for your organization in Microsoft Intune.
keywords: malware, defender, antivirus, tamper protection, Microsoft Intune
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.date: 10/14/2022
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

# Manage tamper protection for your organization using Microsoft Intune

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

If your organization uses [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), you can turn tamper protection on (or off) for your organization in the [Microsoft Endpoint Manager admin center](https://endpoint.microsoft.com). Use Intune when you want to fine-tune tamper protection settings. For example, if you want to enable tamper protection on some devices, but not all, use Intune.

## Requirements for managing tamper protection in Intune

- You must have appropriate [permissions](/microsoft-365/security/defender-endpoint/assign-portal-access) assigned, such as global admin, security admin, or security operations.
- Your organization uses [Intune to manage devices](/mem/endpoint-manager-getting-started). (Intune licenses are required; Intune is included in Microsoft 365 E3/E5, Enterprise Mobility + Security E3/E5, Microsoft 365 Business Premium, Microsoft 365 F1/F3, Microsoft 365 Government G3/G5, and corresponding education licenses.)
- Your Windows devices must be running Windows 10 [version 1709 or later](/lifecycle/announcements/revised-end-of-service-windows-10-1709) or Windows 11. (For more information about releases, see [Windows 10 release information](/windows/release-health/release-information).)
- You must be using Windows security with [security intelligence](https://www.microsoft.com/wdsi/definitions) updated to version 1.287.60.0 (or above).
- Your devices must be using anti-malware platform version 4.18.1906.3 (or above) and anti-malware engine version `1.1.15500.X` (or above). ([Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).)
- Your Intune and Defender for Endpoint tenants must share the same Microsoft Entra (Azure Active Directory) infrastructure.
- Your devices must be onboarded to Defender for Endpoint.

> [!NOTE]
> If your devices are not enrolled in Microsoft Defender for Endpoint, tamper protection will show as **Not Applicable** until the onboarding process completes.

## Turn tamper protection on (or off) in Microsoft Intune

:::image type="content" source="images/turnontamperprotectinmem.png" alt-text="Turn tamper protection turned on with Intune" lightbox="images/turnontamperprotectinmem.png":::

1. In the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint security** \> **Antivirus**, and then choose **+ Create Policy**.

   - In the **Platform** list, select **Windows 10, Windows 11, and Windows Server**.
   - In the **Profile** list, select **Windows Security experience**.

2. Create a profile that includes the following setting:

    - **TamperProtection (Device): Enable**

3. Assign the profile to one or more groups.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)