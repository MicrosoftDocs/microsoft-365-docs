---
title: Set up exclusions for Microsoft Defender Antivirus scans
description: You can exclude files (including files modified by specified processes) and folders from being scanned by Microsoft Defender Antivirus. Validate your exclusions with PowerShell.
keywords:
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: ksarens
manager: dansimp
ms.subservice: mde
ms.audience: ITPro
ms.topic: how-to
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Configure and validate exclusions for Microsoft Defender Antivirus scans

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

You can exclude certain files, folders, processes, and process-opened files from Microsoft Defender Antivirus scans. Such exclusions apply to [scheduled scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md), [on-demand scans](run-scan-microsoft-defender-antivirus.md), and [always-on real-time protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md). Exclusions for process-opened files only apply to real-time protection.

## Configure and validate exclusions

To configure and validate exclusions, see the following:

- [Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md). You can exclude files from Microsoft Defender Antivirus scans based on their file extension, file name, or location.

- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md). You can exclude files from scans that have been opened by a specific process.

## Recommendations for defining exclusions

> [!IMPORTANT]
> Microsoft Defender Antivirus includes many automatic exclusions based on known operating system behaviors and typical management files, such as those used in enterprise management, database management, and other enterprise scenarios and situations.
>
> Defining exclusions lowers the protection offered by Microsoft Defender Antivirus. You should always evaluate the risks that are associated with implementing exclusions, and you should only exclude files that you are confident are not malicious.

Keep the following points in mind when you are defining exclusions:

- Exclusions are technically a protection gap. Consider all your options when defining exclusions. Other options can be as simple as making sure the excluded location has the appropriate access-control lists (ACLs) or setting policies to audit mode at first.

- Review the exclusions periodically. Recheck and re-enforce mitigations as part of your review process.

- Ideally, avoid defining exclusions in an effort to be proactive. For example, don't exclude something just because you think it might be a problem in the future. Use exclusions only for specific issues, such as those pertaining to performance or application compatibility that exclusions could mitigate.

- Review and audit changes to your list of exclusions. Your security team should preserve context around why a certain exclusion was added to avoid confusion later on. Your security team should be able to provide specific answers to questions about why exclusions exist.

## Microsoft Exchange AMSI integration and Antivirus Exclusions

Exchange has supported integration with the Antimalware Scan Interface (AMSI) since the June 2021 Quarterly Updates for Exchange. It is highly recommended to ensure these updates are installed and AMSI is working using the guidance provided by the Exchange Team as this integration will allow the best ability for Defender Antivirus to detect and block exploitation of Exchange.  

Many organizations exclude the Exchange directories from antivirus scans for performance reasons. Microsoft recommendeds to audit AV exclusions on Exchange systems and assess if they can be removed without impacting performance in your environment to ensure the highest level of protection. Exclusions can managed by using Group Policy, PowerShell, or systems management tools like Microsoft Endpoint Configuration Manager.

To audit AV exclusions on an Exchange Server running Defender Antivirus, run the **Get-MpPreference** command from an elevated PowerShell prompt.

If exclusions cannot be removed for the Exchange processes and folders, running a Quick Scan in Defender Antivirus will scan the Exchange directories and files, regardless of exclusions.

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

- [Microsoft Defender Antivirus exclusions on Windows Server 2016](configure-server-exclusions-microsoft-defender-antivirus.md)
- [Common mistakes to avoid when defining exclusions](common-exclusion-mistakes-microsoft-defender-antivirus.md)
