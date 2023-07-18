---
title: Custom exclusions for Microsoft Defender Antivirus
description: You can exclude files (including files modified by specified processes) and folders from being scanned by Microsoft Defender Antivirus. Validate your exclusions with PowerShell.
keywords:
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.date: 04/14/2023
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

# Custom exclusions for Microsoft Defender Antivirus

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

In general, you shouldn't need to define exclusions for Microsoft Defender Antivirus. However, when necessary, you can exclude certain files, folders, processes, and process-opened files from Microsoft Defender Antivirus scans. These types of exclusions are known as *custom exclusions*. 

Custom exclusions apply to [scheduled scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md), [on-demand scans](run-scan-microsoft-defender-antivirus.md), and [always-on real-time protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md). Exclusions for process-opened files only apply to real-time protection.

> [!TIP]
> For a detailed overview of suppressions, submissions, and exclusions across Microsoft Defender Antivirus and Defender for Endpoint, see [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md).

## Configure and validate exclusions

If you're using Microsoft Intune to manage your 

#### Use Intune to manage antivirus exclusions (for existing policies)

1. In the [Microsoft Intune admin center](https://endpoint.microsoft.com), choose **Endpoint security** \> **Antivirus**, and then select an existing policy. (If you don't have an existing policy, or you want to create a new policy, skip to [the next procedure](#use-intune-to-create-a-new-antivirus-policy-with-exclusions)).

2. Choose **Properties**, and next to **Configuration settings**, choose **Edit**.

3. Expand **Microsoft Defender Antivirus Exclusions** and then specify your exclusions.

4. Choose **Review + save**, and then choose **Save**.

#### Use Intune to create a new antivirus policy with exclusions

1. In the [Microsoft Intune admin center](https://endpoint.microsoft.com), choose **Endpoint security** \> **Antivirus** \> **+ Create Policy**.

2. Select a platform (such as **Windows 10, Windows 11, and Windows Server**).

3. For **Profile**, select **Microsoft Defender Antivirus exclusions**, and then choose **Create**.

4. On the **Create profile** step, specify a name and description for the profile, and then choose **Next**.

5. On the **Configuration settings** tab, specify your antivirus exclusions, and then choose **Next**.

   - **Excluded Extensions** are exclusions that you define by file type extension. These extensions apply to any file name that has the defined extension without the file path or folder. Each file type in the list must be separated by a `|`. For example, `lib|obj`. See [Configure and validate exclusions based on file extension and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md).
   - **Excluded Paths** are exclusions that you define by their location (path). These types of exclusions are also known as file and folder exclusions. Each path in the list must be separated by a `|`. For example, `C:\Example|C:\Example1`. See [Configure and validate exclusions based on file extension and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md).
   - **Excluded Processes** are exclusions for files that are opened by certain processes. Each file type must be separated by a `|`. For example, `C:\Example. exe|C:\Example1.exe`. These exclusions are not for the actual processes. To exclude processes, you can use file and folder exclusions. See [Configure exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md).

6. On the **Scope tags** tab, if you're using scope tags in your organization, specify scope tags for the policy you're creating. (See [Scope tags](/mem/intune/fundamentals/scope-tags).)

7. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (If you need help with assignments, see [Assign user and device profiles in Microsoft Intune](/mem/intune/configuration/device-profile-assign).)

8. On the **Review + create** tab, review the settings, and then choose **Create**.



To configure and validate exclusions, see the following:

- [Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md). You can exclude files from Microsoft Defender Antivirus scans based on their file extension, file name, or location.

- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md). You can exclude files from scans that have been opened by a specific process.

## Recommendations for defining exclusions

> [!IMPORTANT]
> Microsoft Defender Antivirus includes many automatic exclusions based on known operating system behaviors and typical management files, such as those used in enterprise management, database management, and other enterprise scenarios and situations. For more information, see [automatic exclusions](configure-server-exclusions-microsoft-defender-antivirus.md).
>
> Defining exclusions lowers the protection offered by Microsoft Defender Antivirus. You should always evaluate the risks that are associated with implementing exclusions, and you should only exclude files that you are confident are not malicious.

> [!NOTE]
> Exclusions directly impact the ability for Microsoft Defender Antivirus to block, remediate or inspect events related to the files, folders or processes that are added to the exclusion list. This means that features which are directly dependent on the AV engine such as protection against malware, file IOCs and certificate IOCs will not be effective. Furthermore, the **Network Protection** and **Attack Surface Reduction (ASR) Rules** are also impacted by process exclusions specifically, meaning that a process exclusion on any platform will result in Network Protection or ASR being unable to inspect traffic or enforce rules for that specific process.

Keep the following points in mind when you're defining exclusions:

- Exclusions are technically a protection gap. Consider all your options when defining exclusions. Other options can be as simple as making sure the excluded location has the appropriate access-control lists (ACLs) or setting policies to audit mode at first.

- Review the exclusions periodically. Recheck and re-enforce mitigations as part of your review process.

- Ideally, avoid defining exclusions in an effort to be proactive. For example, don't exclude something just because you think it might be a problem in the future. Use exclusions only for specific issues, such as those pertaining to performance or application compatibility that exclusions could mitigate.

- Review and audit changes to your list of exclusions. Your security team should preserve context around why a certain exclusion was added to avoid confusion later on. Your security team should be able to provide specific answers to questions about why exclusions exist.

## Audit Antivirus Exclusions

Exchange has supported integration with the Antimalware Scan Interface (AMSI) since the June 2021 Quarterly Updates for Exchange. It's highly recommended to ensure these updates are installed and AMSI is working using the guidance provided by the Exchange Team as this integration allows the best ability for Defender Antivirus to detect and block exploitation of Exchange.  

Many organizations exclude the Exchange directories from antivirus scans for performance reasons. Microsoft recommends auditing AV exclusions on Exchange systems and assessing if they can be removed without impacting performance in your environment to ensure the highest level of protection. Exclusions can be managed by using Group Policy, PowerShell, or systems management tools like Microsoft Endpoint Configuration Manager.

To audit AV exclusions on an Exchange Server running Defender Antivirus, run the **Get-MpPreference** command from an elevated PowerShell prompt.

If exclusions can't be removed for the Exchange processes and folders, running a Quick Scan in Defender Antivirus scans the Exchange directories and files, regardless of exclusions.

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
- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
