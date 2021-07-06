---
title: Microsoft Defender Antivirus
description: Learn how to manage, configure, and use Microsoft Defender Antivirus, built-in antimalware and antivirus protection.
keywords: Microsoft Defender Antivirus, windows defender, antimalware, scep, system center endpoint protection, system center configuration manager, virus, malware, threat, detection, protection, security
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Priority
ms.topic: article
author: denisebmsft
ms.author: deniseb
ms.reviewer: mkaminska
manager: dansimp
ms.custom: nextgen
ms.technology: mde
---

# Microsoft Defender Antivirus in Windows

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

Microsoft Defender Antivirus is a major component of your next-generation protection in Microsoft Defender for Endpoint. This protection brings together machine learning, big-data analysis, in-depth threat resistance research, and the Microsoft cloud infrastructure to protect devices (or endpoints) in your organization. Microsoft Defender Antivirus is built into Windows, and it works with Microsoft Defender for Endpoint to provide protection on your device and in the cloud. 

## Compatibility with other antivirus products

If you're using a non-Microsoft antivirus/antimalware product on your device, you might be able to run Microsoft Defender Antivirus in passive mode alongside the non-Microsoft antivirus solution. It depends on the operating system used and whether your device is onboarded to Defender for Endpoint. To learn more, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

## Comparing active mode, passive mode, and disabled mode

The following table describes what to expect when Microsoft Defender Antivirus is in active mode, passive mode, or disabled.

| Mode  | What happens  |
|---------|---------|
| Active mode | In active mode, Microsoft Defender Antivirus is used as the primary antivirus app on the device. Files are scanned, threats are remediated, and detected threats are listed in your organization's security reports and in your Windows Security app. |
| Passive mode | In passive mode, Microsoft Defender Antivirus is not used as the primary antivirus app on the device. Files are scanned, and detected threats are reported, but threats are not remediated by Microsoft Defender Antivirus.   |
| Disabled or uninstalled  | When disabled or uninstalled, Microsoft Defender Antivirus is not used. Files are not scanned, and threats are not remediated. In general, we do not recommend disabling or uninstalling Microsoft Defender Antivirus.  |

To learn more, see [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).

## Check the state of Microsoft Defender Antivirus on your device

If you want to check the state of Microsoft Defender Antivirus on your device, you can use one of several methods, such as the Windows Security app or Windows PowerShell.

### Use the Windows Security app to check status of Microsoft Defender Antivirus

1. On your Windows device, select the Start menu, and begin typing `Security`. Then open the Windows Security app in the results.

2. Select **Virus & threat protection**.

3. Under **Virus & threat protection settings**, choose **Manage settings**.

You'll see the name of your antivirus/antimalware solution on the settings page.

### Use PowerShell to check status of Microsoft Defender Antivirus

1. Select the Start menu, and begin typing `PowerShell`. Then open Windows PowerShell in the results.

2. Type `Get-MpComputerStatus`.

3. In the list of results, look at the **AMRunningMode** row.

   - **Normal** means Microsoft Defender Antivirus is running in active mode.
   - **Passive mode** means Microsoft Defender Antivirus running, but is not the primary antivirus/antimalware product on your device.
   - **EDR Block Mode** means Microsoft Defender Antivirus is running and a capability in Microsoft Defender for Endpoint that is called "EDR in block mode" is enabled. (See [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md).)
   - **SxS Passive Mode** means Microsoft Defender Antivirus is running in passive mode alongside another antivirus/antimalware product, and your device is not onboarded to Microsoft Defender for Endpoint. In this case, limited periodic scanning is used for Microsoft Defender Antivirus. To learn more, see [Use limited periodic scanning in Microsoft Defender Antivirus](limited-periodic-scanning-microsoft-defender-antivirus.md).

To learn more about the Get-MpComputerStatus PowerShell cmdlet, see the reference article [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus?view=windowsserver2019-ps).

## Get your antivirus/antimalware platform updates

It's important to keep Microsoft Defender Antivirus, or any antivirus/antimalware solution, up to date. Microsoft releases regular updates to help ensure that your devices have the latest technology to protect against new malware and attack techniques. To learn more, see [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md). 

## See also

- [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md)
- [Microsoft Defender Antivirus management and configuration](configuration-management-reference-microsoft-defender-antivirus.md)
- [Evaluate Microsoft Defender Antivirus protection](evaluate-microsoft-defender-antivirus.md)
