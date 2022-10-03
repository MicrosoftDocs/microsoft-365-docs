---
title: Microsoft Defender Antivirus in Windows
description: Learn how to manage, configure, and use Microsoft Defender Antivirus, built-in antimalware and antivirus protection.
keywords: Microsoft Defender Antivirus, windows defender, antimalware, scep, system center endpoint protection, system center configuration manager, virus, malware, threat, detection, protection, security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
ms.topic: article
author: denisebmsft
ms.author: deniseb
ms.reviewer: mkaminska
manager: dansimp
ms.custom: nextgen
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Microsoft Defender Antivirus in Windows

**Applies to:**

- Microsoft Defender for Endpoint Plans 1 and 2
- Microsoft Defender for Business
- Microsoft Defender Antivirus

**Platforms**
- Windows 

Microsoft Defender Antivirus is available in Windows 10 and Windows 11, and in versions of Windows Server.

Microsoft Defender Antivirus is a major component of your next-generation protection in Microsoft Defender for Endpoint. This protection brings together machine learning, big-data analysis, in-depth threat resistance research, and the Microsoft cloud infrastructure to protect devices (or endpoints) in your organization. Microsoft Defender Antivirus is built into Windows, and it works with Microsoft Defender for Endpoint to provide protection on your device and in the cloud.

## Compatibility with other antivirus products

If you're using a non-Microsoft antivirus/antimalware product on your device, you might be able to run Microsoft Defender Antivirus in passive mode alongside the non-Microsoft antivirus solution. It depends on the operating system used and whether your device is onboarded to Defender for Endpoint. To learn more, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

## Comparing active mode, passive mode, and disabled mode

The following table describes what to expect when Microsoft Defender Antivirus is in active mode, passive mode, or disabled.

| Mode | What happens |
|---|---|
| Active mode | In active mode, Microsoft Defender Antivirus is used as the primary antivirus app on the device. Files are scanned, threats are remediated, and detected threats are listed in your organization's security reports and in your Windows Security app. |
| Passive mode | In passive mode, Microsoft Defender Antivirus is not used as the primary antivirus app on the device. Files are scanned, and detected threats are reported, but threats are not remediated by Microsoft Defender Antivirus. <br/><br/> **IMPORTANT**: Microsoft Defender Antivirus can run in passive mode only on endpoints that are onboarded to Microsoft Defender for Endpoint. See [Requirements for Microsoft Defender Antivirus to run in passive mode](microsoft-defender-antivirus-compatibility.md#requirements-for-microsoft-defender-antivirus-to-run-in-passive-mode). |
| Disabled or uninstalled | When disabled or uninstalled, Microsoft Defender Antivirus is not used. Files are not scanned, and threats are not remediated. In general, we do not recommend disabling or uninstalling Microsoft Defender Antivirus. |

To learn more, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

## Check the state of Microsoft Defender Antivirus on your device

You can use one of several methods, such as the Windows Security app or Windows PowerShell, to check the state of Microsoft Defender Antivirus on your device.

### Use the Windows Security app to check the status of Microsoft Defender Antivirus

1. On your Windows device, select the **Start** menu, and begin typing `Security`. Then open the Windows Security app in the results.

2. Select **Virus & threat protection**.

3. Under **Who's protecting me?**, choose **Manage Providers**.

You'll see the name of your antivirus/antimalware solution on the security providers page.

### Use PowerShell to check the status of Microsoft Defender Antivirus

1. Select the **Start** menu, and begin typing `PowerShell`. Then open Windows PowerShell in the results.

2. Type `Get-MpComputerStatus`.

3. In the list of results, look at the **AMRunningMode** row.

   - **Normal** means Microsoft Defender Antivirus is running in active mode.

   - **Passive mode** means Microsoft Defender Antivirus running, but is not the primary antivirus/antimalware product on your device. Passive mode is only available for devices that are onboarded to Microsoft Defender for Endpoint and that meet certain requirements. To learn more, see [Requirements for Microsoft Defender Antivirus to run in passive mode](microsoft-defender-antivirus-compatibility.md#requirements-for-microsoft-defender-antivirus-to-run-in-passive-mode).

   - **EDR Block Mode** means Microsoft Defender Antivirus is running and [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md), a capability in Microsoft Defender for Endpoint, is enabled.

   - **SxS Passive Mode** means Microsoft Defender Antivirus is running alongside another antivirus/antimalware product, and  [limited periodic scanning is used](limited-periodic-scanning-microsoft-defender-antivirus.md).

> [!TIP]
> To learn more about the Get-MpComputerStatus PowerShell cmdlet, see the reference article [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus).

## Get your antivirus/antimalware platform updates

It's important to keep Microsoft Defender Antivirus (or any antivirus/antimalware solution) up to date. Microsoft releases regular updates to help ensure that your devices have the latest technology to protect against new malware and attack techniques. To learn more, see [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

- [Microsoft Defender Antivirus management and configuration](configuration-management-reference-microsoft-defender-antivirus.md)
- [Evaluate Microsoft Defender Antivirus protection](evaluate-microsoft-defender-antivirus.md)
