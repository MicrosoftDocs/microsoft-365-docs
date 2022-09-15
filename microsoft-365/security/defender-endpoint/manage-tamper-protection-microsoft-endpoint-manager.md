---
title: Manage tamper protection for your organization using Microsoft Endpoint Manager
ms.reviewer: mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off for your organization in Microsoft Endpoint Manager.
keywords: malware, defender, antivirus, tamper protection, Microsoft Endpoint Manager
ms.pagetype: security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
ms.topic: article
author: denisebmsft
ms.author: deniseb
ms.custom: 
- nextgen
- admindeeplinkDEFENDER
ms.subservice: mde
ms.collection: 
- M365-security-compliance
- m365initiative-defender-endpoint
search.appverid: met150
---

# Manage tamper protection for your organization using Microsoft Endpoint Manager

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows


If your organization uses Microsoft Endpoint Manager (MEM) you can turn tamper protection on (or off) for your organization in the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)). Use Intune when you want to fine-tune tamper protection settings. For example, if you want to enable tamper protection on some devices, but not all, use Intune.

## Requirements for managing tamper protection in Endpoint Manager

- You must have appropriate [permissions](/microsoft-365/security/defender-endpoint/assign-portal-access) assigned, such as global admin, security admin, or security operations.
- Your organization uses [Microsoft Endpoint Manager to manage devices](/mem/endpoint-manager-getting-started). (Microsoft Endpoint Manager (MEM) licenses are required; MEM is included in Microsoft 365 E3/E5, Enterprise Mobility + Security E3/E5, Microsoft 365 Business Premium, Microsoft 365 F1/F3, Microsoft 365 Government G3/G5, and corresponding education licenses.)
- Your Windows devices must be running Windows 11 or Windows 10 [1709](/lifecycle/announcements/revised-end-of-service-windows-10-1709), [1803](/lifecycle/announcements/windows-server-1803-end-of-servicing), [1809](/windows/release-health/status-windows-10-1809-and-windows-server-2019), or later. (For more information about releases, see [Windows 10 release information](/windows/release-health/release-information).)
- You must be using Windows security with [security intelligence](https://www.microsoft.com/wdsi/definitions) updated to version 1.287.60.0 (or above).
- Your devices must be using anti-malware platform version 4.18.1906.3 (or above) and anti-malware engine version `1.1.15500.X` (or above). ([Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).)

## Turn tamper protection on (or off) in Microsoft Endpoint Manager

:::image type="content" source="images/turnontamperprotectinmem.png" alt-text="Turn tamper protection turned on with Intune" lightbox="images/turnontamperprotectinmem.png":::

1. In the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint security** \> **Antivirus**, and then choose **+ Create Policy**.

   - In the **Platform** list, select **Windows 10 and later**.
   - In the **Profile** list, select **Windows Security experience**.

2. Create a profile that includes the following setting:

    - **Enable tamper protection to prevent Microsoft Defender being disabled: Enable**

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