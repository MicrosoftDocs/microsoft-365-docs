---
title: Enable the limited periodic Microsoft Defender Antivirus scanning feature
description: Limited periodic scanning lets you use Microsoft Defender Antivirus in addition to your other installed AV providers
ms.service: defender-endpoint
ms.localizationpriority: medium
ms.topic: conceptual
author: siosulli
ms.author: siosulli
ms.custom: nextgen
ms.date: 02/18/2024
ms.reviewer: yongrhee
manager: deniseb
ms.subservice: ngp
ms.collection: 
- m365-security
- tier3
- mde-ngp
search.appverid: met150
---


# Use limited periodic scanning in Microsoft Defender Antivirus

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

- Microsoft Defender for Individual

**Platforms**
- Windows

> [!NOTE]  
> **Microsoft does not support using this feature in Enterprise environments.** This feature only uses a limited subset of the Microsoft Defender Antivirus capabilities to detect malware, and can't detect most malware and potentially unwanted software. Management of the feature is not supported, the feature cannot be enabled or disabled through policies, and reporting capabilities are extremely limited. Microsoft recommends that enterprise organizations choose a primary antivirus/antimalware solution, and use it exclusively. 

Limited periodic scanning is a special type of threat detection and remediation that can be enabled when another antivirus product is installed on a Windows 10 or Windows 11 device. It can only be enabled in certain situations. For more information about limited periodic scanning and how Microsoft Defender Antivirus works with other antivirus products, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

## How to enable limited periodic scanning

By default, Microsoft Defender Antivirus enables itself on a Windows 10 or a Windows 11 device if there is no other antivirus product installed, or if the other product is out-of-date, expired, or not working correctly. If Microsoft Defender Antivirus is enabled, the usual options to configure it are available on that device:

:::image type="content" source="media/vtp-wdav.png" alt-text="The Windows Security app showing Microsoft Defender Antivirus options, including scan options, settings, and update options" lightbox="media/vtp-wdav.png":::

If another antivirus product is installed and working correctly, Microsoft Defender Antivirus disables itself. In this case, the Windows Security app changes the **Virus & threat protection** section to show status about the antivirus product, and provides a link to the product's configuration options. 

Underneath the name of a non-Microsoft antivirus product, a link appears as **Microsoft Defender Antivirus options**. Select this link to show the toggle that enables limited periodic scanning. Note that the limited periodic option is a toggle to enable or disable periodic scanning. Sliding the switch to **On** shows the standard Microsoft Defender Antivirus options underneath the non-Microsoft antivirus product. The limited periodic scanning option will appear at the bottom of the page.

## Related articles

- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
