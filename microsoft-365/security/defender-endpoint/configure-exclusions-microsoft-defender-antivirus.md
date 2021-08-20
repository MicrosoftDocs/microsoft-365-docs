---
title: Set up exclusions for Microsoft Defender Antivirus scans
description: You can exclude files (including files modified by specified processes) and folders from being scanned by Microsoft Defender Antivirus. Validate your exclusions with PowerShell.
keywords: 
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: ksarens
manager: dansimp
ms.technology: mde
ms.audience: ITPro
ms.topic: how-to
---

# Configure and validate exclusions for Microsoft Defender Antivirus scans

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

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

## See also

- [Microsoft Defender Antivirus exclusions on Windows Server 2016](configure-server-exclusions-microsoft-defender-antivirus.md)
- [Common mistakes to avoid when defining exclusions](common-exclusion-mistakes-microsoft-defender-antivirus.md)
