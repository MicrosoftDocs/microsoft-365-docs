---
title: Enable the limited periodic Microsoft Defender Antivirus scanning feature
description: Limited periodic scanning lets you use Microsoft Defender Antivirus in addition to your other installed AV providers
keywords: lps, limited, periodic, scan, scanning, compatibility, 3rd party, other av, disable
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 10/18/2018
ms.reviewer: 
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier3
search.appverid: met150
---


# Use limited periodic scanning in Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Limited periodic scanning is a special type of threat detection and remediation that can be enabled when you have installed another antivirus product on a Windows 10 or Windows 11 device.

It can only be enabled in certain situations. For more information about limited periodic scanning and how Microsoft Defender Antivirus works with other antivirus products, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

**Microsoft does not recommend using this feature in enterprise environments. This is a feature primarily intended for consumers.** This feature only uses a limited subset of the Microsoft Defender Antivirus capabilities to detect malware, and will not be able to detect most malware and potentially unwanted software. Also, management and reporting capabilities will be limited. Microsoft recommends enterprises choose their primary antivirus solution and use it exclusively.

## How to enable limited periodic scanning

By default, Microsoft Defender Antivirus will enable itself on a Windows 10 or a Windows 11 device if there is no other antivirus product installed, or if the other product is out-of-date, expired, or not working correctly.

If Microsoft Defender Antivirus is enabled, the usual options will appear to configure it on that device:

:::image type="content" source="images/vtp-wdav.png" alt-text="The Windows Security app showing Microsoft Defender Antivirus options, including scan options, settings, and update options" lightbox="images/vtp-wdav.png":::

If another antivirus product is installed and working correctly, Microsoft Defender Antivirus will disable itself. The Windows Security app will change the **Virus & threat protection** section to show status about the AV product, and provide a link to the product's configuration options.

Underneath any third party AV products, a new link will appear as **Microsoft Defender Antivirus options**. Clicking this link will expand to show the toggle that enables limited periodic scanning. Note that the limited periodic option is a toggle to enable or disable periodic scanning. 

Sliding the switch to **On** will show the standard Microsoft Defender Antivirus options underneath the third party AV product. The limited periodic scanning option will appear at the bottom of the page.

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
