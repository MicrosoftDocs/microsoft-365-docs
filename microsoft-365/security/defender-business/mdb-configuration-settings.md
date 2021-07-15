---
title: Configuration settings in Microsoft Defender for business
description: Understand your configuration settings in Microsoft Defender for business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 07/13/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# Configuration settings in Microsoft Defender for business

This article describes configuration settings for Microsoft Defender for business. Your next-generation protection includes robust antivirus and antimalware protection. Your default policies are designed to protect your devices and users without hindering productivity; however, you can also customize your policies to suit your business needs. 

The following table lists your settings and options:

| Setting | Description |
|:---|:---|
| **Real-time protection**  |
| Turn on real-time protection | Enabled by default, real-time protection locates and stops malware from running on devices. <p> *We recommend keeping real-time protection turned on.* |
| Turn on block at first sight | Enabled by default, block at first sight blocks malware within seconds of detection, increases the time (in seconds) allowed to submit sample files for analysis, and sets your detection level to High. <p> *We recommend keeping block at first sight turned on.* |
| Set network protection to Block mode | When turned on, network protection helps protect against phishing scams, exploit-hosting sites, and malicious content on the Internet. It also prevents users from turning network protection off. <p> Network protection can be set to one of the following modes:<br/>- Block mode (this setting is the default), which prevents users from visiting sites that are considered unsafe <br/>- Audit mode, which allows users to visit sites that might be unsafe and tracks network activity to/from such sites <br/>- Disabled mode, which nether blocks users from visiting sites that might be unsafe nor tracks network activity to/from such sites <p> *We recommend using network protection set to Block mode.* |
| **Remediation**  |
| Enable protection from potentially unwanted apps | Potentially unwanted applications (PUA) can include advertising software, bundling software that offers to install other, unsigned software, and evasion software that attempts to evade security features. Although PUA is not necessarily a virus, malware, or other type of threats, PUA can affect device performance. <p> Enabled by default, PUA protection blocks items that are detected as PUA. You can set PUA protection to one of the following settings: <br/>- Enable (this setting is the default), which blocks items detected as PUA on devices. <br/>- Audit, which takes no action on items detected as PUA <br/>- Off, which does not detect or take action on items that might be PUA <p> *We recommend keeping PUA protection enabled.* |
| **Scan**   |
| Scheduled scan type | Consider running a weekly antivirus scan on your devices. You can choose between full, quick, or custom scans. <br/>- Full scan checks all files and folders on a device <br/>- Quick scan checks locations, such as registry keys and startup folders, where malware could be registered to start with a device.  <br/>- Custom scan enables you to specify the files and folders to scan, including USB drives <p> *We recommend using a quick scan.* [Learn more about scan types](../defender-endpoint/schedule-antivirus-scans.md). |
| Day of week to run a scheduled scan | Select a day for your regular, weekly antivirus scans to run. |
| Time of day to run a scheduled scan | Select a time to run your regularly scheduled antivirus scans to run. |
| Use low performance | Turn this setting on to limit the device memory and resources that are used during scheduled scans. |
| **User experience**   |
| Allow users to access the Windows Security app | Turn this on to enable users to open the Windows Security app on their devices. Users won’t be able to override settings that you configure in Microsoft Defender for business, but they will be able to run a quick scan if need be, or view any detected threats. |
| **Antivirus exclusions** | *In general, you should not need to define exclusions.* Microsoft Defender Antivirus includes many automatic exclusions that are based on known operating system behaviors and typical management files. [Learn more about exclusions](../defender-endpoint/configure-exclusions-microsoft-defender-antivirus.md). |
| Process exclusions | Exclude files that are opened by specific processes from Microsoft Defender Antivirus scans. [Learn more about process exclusions](../defender-endpoint/configure-process-opened-file-exclusions-microsoft-defender-antivirus.md). |
| File and extension exclusions | Exclude specific files or files with specific extensions from Microsoft Defender Antivirus scans. [Learn more about file and extension exclusions](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md). |
| File and folder exclusions | Exclude files that are in specific folders from Microsoft Defender Antivirus scans. [Learn more about file and folder exclusions](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md). |

## Next step

[Get started with Microsoft Defender for business](mdb-get-started.md)

[Review the setup and configuration process](mdb-setup-configuration.md)

[View or edit device policies in Microsoft Defender for business](mdb-view-edit-device-policies.md)