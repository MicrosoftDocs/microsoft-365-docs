---
title: Configure custom exclusions for Microsoft Defender Antivirus
description: You can exclude files (including files modified by specified processes) and folders from Microsoft Defender Antivirus scans.
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.date: 07/18/2023
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

# Configure custom exclusions for Microsoft Defender Antivirus

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

In general, you shouldn't need to define exclusions for Microsoft Defender Antivirus. However, if necessary, you can exclude files, folders, processes, and process-opened files from Microsoft Defender Antivirus scans. These types of exclusions are known as custom exclusions. This article describes how to define custom exclusions for Microsoft Defender Antivirus with Microsoft Intune and includes links to other resources for more information.

Custom exclusions apply to [scheduled scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md), [on-demand scans](run-scan-microsoft-defender-antivirus.md), and [always-on real-time protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md). Exclusions for process-opened files only apply to real-time protection.

> [!TIP]
> For a detailed overview of suppressions, submissions, and exclusions across Microsoft Defender Antivirus and Defender for Endpoint, see [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md).

## Configure and validate exclusions

> [!CAUTION]
> Use Microsoft Defender Antivirus extensions sparingly. Make sure to review the information in [Manage exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md).

If you're using Microsoft Intune to manage Microsoft Defender Antivirus or Microsoft Defender for Endpoint, use the following procedures to define exclusions:

- [Manage antivirus exclusions in Intune (for existing policies)](#manage-antivirus-exclusions-in-intune-for-existing-policies)
- [Create a new antivirus policy with exclusions in Intune](#create-a-new-antivirus-policy-with-exclusions-in-intune)

If you're using another tool, such as Configuration Manager or Group Policy, or you want more detailed information about custom exclusions, see these articles:

- [Configure and validate exclusions based on file extension and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md)
- [Configure exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md)
- [Configure contextual file and folder exclusions](configure-contextual-file-folder-exclusions-microsoft-defender-antivirus.md) to configure restrictions for your exclusions.

#### Manage antivirus exclusions in Intune (for existing policies)

1. In the [Microsoft Intune admin center](https://intune.microsoft.com), choose **Endpoint security** \> **Antivirus**, and then select an existing policy. (If you don't have an existing policy, or you want to create a new policy, skip to [Create a new antivirus policy with exclusions in Intune](#create-a-new-antivirus-policy-with-exclusions-in-intune).)

2. Choose **Properties**, and next to **Configuration settings**, choose **Edit**.

3. Expand **Microsoft Defender Antivirus Exclusions** and then specify your exclusions.

   - **Excluded Extensions** are exclusions that you define by file type extension. These extensions apply to any file name that has the defined extension without the file path or folder. Separate each file type in the list must be separated with a `|` character. For example, `lib|obj`. For more information, see [ExcludedExtensions](/windows/client-management/mdm/policy-csp-defender#excludedextensions).
   - **Excluded Paths** are exclusions that you define by their location (path). These types of exclusions are also known as file and folder exclusions. Separate each path in the list with a `|` character. For example, `C:\Example|C:\Example1`. For more information, see [ExcludedPaths](/windows/client-management/mdm/policy-csp-defender#excludedpaths).
   - **Excluded Processes** are exclusions for files that are opened by certain processes. Separate each file type in the list with a `|` character. For example, `C:\Example. exe|C:\Example1.exe`. These exclusions aren't for the actual processes. To exclude processes, you can use file and folder exclusions. For more information, see [ExcludedProcesses](/windows/client-management/mdm/policy-csp-defender#excludedprocesses).

4. Choose **Review + save**, and then choose **Save**.

#### Create a new antivirus policy with exclusions in Intune

1. In the [Microsoft Intune admin center](https://intune.microsoft.com), choose **Endpoint security** \> **Antivirus** \> **+ Create Policy**.

2. Select a platform (such as **Windows 10, Windows 11, and Windows Server**).

3. For **Profile**, select **Microsoft Defender Antivirus exclusions**, and then choose **Create**.

4. On the **Create profile** step, specify a name and description for the profile, and then choose **Next**.

5. On the **Configuration settings** tab, specify your antivirus exclusions, and then choose **Next**.

   - **Excluded Extensions** are exclusions that you define by file type extension. These extensions apply to any file name that has the defined extension without the file path or folder. Separate each file type in the list with a `|` character. For example, `lib|obj`. For more information, see [ExcludedExtensions](/windows/client-management/mdm/policy-csp-defender#excludedextensions).
   - **Excluded Paths** are exclusions that you define by their location (path). These types of exclusions are also known as file and folder exclusions. Separate each path in the list with a `|` character. For example, `C:\Example|C:\Example1`. For more information, see [ExcludedPaths](/windows/client-management/mdm/policy-csp-defender#excludedpaths).
   - **Excluded Processes** are exclusions for files that are opened by certain processes. Separate each file type in the list with a `|` character. For example, `C:\Example. exe|C:\Example1.exe`. These exclusions aren't for the actual processes. To exclude processes, you can use file and folder exclusions. For more information, see [ExcludedProcesses](/windows/client-management/mdm/policy-csp-defender#excludedprocesses).

6. On the **Scope tags** tab, if you're using scope tags in your organization, specify scope tags for the policy you're creating. (See [Scope tags](/mem/intune/fundamentals/scope-tags).)

7. On the **Assignments** tab, specify the users and groups to whom your policy should be applied, and then choose **Next**. (If you need help with assignments, see [Assign user and device profiles in Microsoft Intune](/mem/intune/configuration/device-profile-assign).)

8. On the **Review + create** tab, review the settings, and then choose **Create**.

## Important points about exclusions

Defining exclusions lowers the protection offered by Microsoft Defender Antivirus. You should always evaluate the risks that are associated with implementing exclusions, and you should only exclude files that you're confident aren't malicious.

Exclusions directly affect the ability for Microsoft Defender Antivirus to block, remediate, or inspect events related to the files, folders, or processes that are added to the exclusion list. Custom exclusions can affect features that are directly dependent on the antivirus engine (such as protection against malware, [file IOCs](indicator-file.md), and [certificate IOCs](indicator-certificates.md)). Process exclusions also affect [network protection](network-protection.md) and [attack surface reduction (ASR) rules](attack-surface-reduction.md). Specifically, a process exclusion on any platform causes network protection and ASR to be unable to inspect traffic or enforce rules for that specific process.

Keep the following points in mind when you're defining exclusions:

- Exclusions are technically a protection gap. Consider all your options when defining exclusions. See [Submissions, suppressions, and exclusions](defender-endpoint-antivirus-exclusions.md#submissions-suppressions-and-exclusions).

- Review exclusions periodically. Recheck and re-enforce mitigations as part of your review process.

- Ideally, avoid defining exclusions in an attempt to be proactive. For example, don't exclude something just because you think it might be a problem in the future. Use exclusions only for specific issues, such as those pertaining to performance or application compatibility that exclusions could mitigate.

- Review and audit changes to your list of exclusions. Your security team should preserve context around why a certain exclusion was added to avoid confusion later on. Your security team should be able to provide specific answers to questions about why exclusions exist.

## Audit antivirus exclusions on Exchange systems

Microsoft Exchange has supported integration with the Antimalware Scan Interface (AMSI) since the June 2021 Quarterly Updates for Exchange (see [Running Windows antivirus software on Exchange servers](/exchange/antispam-and-antimalware/windows-antivirus-software)). It's highly recommended to install these updates and make sure that AMSI is working properly. See [Microsoft Defender Antivirus security intelligence and product updates](microsoft-defender-antivirus-updates.md).  

Many organizations exclude the Exchange directories from antivirus scans for performance reasons. Microsoft recommends auditing Microsoft Defender Antivirus exclusions on Exchange systems and assessing whether exclusions can be removed without impacting performance in your environment to ensure the highest level of protection. Exclusions can be managed by using Group Policy, PowerShell, or systems management tools like Microsoft Intune.

To audit Microsoft Defender Antivirus exclusions on an Exchange Server, run the **Get-MpPreference** command from an elevated PowerShell prompt. (See [Get-MpPreference](/powershell/module/defender/get-mppreference).)

If exclusions can't be removed for the Exchange processes and folders, keep in mind that running a quick scan in Microsoft Defender Antivirus scans the Exchange directories and files, regardless of exclusions.

## See also

- [Microsoft Defender Antivirus exclusions on Windows Server 2016 and later](configure-server-exclusions-microsoft-defender-antivirus.md)
- [Common mistakes to avoid when defining exclusions](common-exclusion-mistakes-microsoft-defender-antivirus.md)
- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
- [Configure and validate exclusions for Microsoft Defender for Endpoint on Linux](linux-exclusions.md)
- [Configure and validate exclusions for Microsoft Defender for Endpoint on macOS](mac-exclusions.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]