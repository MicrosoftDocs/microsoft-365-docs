---
title: Restore quarantined files in Microsoft Defender Antivirus
description: You can restore quarantined files and folders in Microsoft Defender Antivirus.
ms.service: microsoft-365-security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 08/28/2023
ms.reviewer: pahuijbr
manager: dansimp
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Restore quarantined files in Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Depending on how Microsoft Defender Antivirus is configured, it quarantines suspicious files. If you're certain a quarantined file isn't a threat, you can restore it on your Windows device.

1. On your Windows device, open **Windows Security**.

2. Select **Virus & threat protection** and then, under **Current threats**, select **Protection history**.

3. If you have a list of items, you can filter on **Quarantined Items**.

4. Select an item you want to keep, and choose an action, such as **Restore**.

> [!TIP]
> You can also restore a file from quarantine by using Command Prompt. See [Restore file from quarantine](respond-file-alerts.md#restore-file-from-quarantine). 


## See also

- [Configure remediation for scans](configure-remediation-microsoft-defender-antivirus.md)
- [Review scan results](review-scan-results-microsoft-defender-antivirus.md)

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

