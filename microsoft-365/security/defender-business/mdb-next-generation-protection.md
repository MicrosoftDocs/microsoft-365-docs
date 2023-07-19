---
title: Review or edit your next-generation protection policies Microsoft Defender for Business
description: Learn how to view and edit your next-generation protection policies in Defender for Business. These policies pertain to antivirus and anti-malware protection.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 06/30/2023
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
---

# Review or edit your next-generation protection policies in Microsoft Defender for Business

In Defender for Business, next-generation protection includes robust antivirus and antimalware protection for computers and mobile devices. Default policies with recommended settings are included in Defender for Business. The default policies are designed to protect your devices and users without hindering productivity. However, you can customize your policies to suit your business needs. 

You can choose from several options for managing your next-generation protection policies:

- Use the Microsoft 365 Defender portal at [https://security.microsoft.com](https://security.microsoft.com) (recommended if you're using the standalone version of Defender for Business without Intune); or 
- Use the Microsoft Intune admin center at [https://intune.microsoft.com](https://intune.microsoft.com) (available if your subscription includes Intune)

## [**Microsoft 365 Defender portal**](#tab/M365D)

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, go to **Configuration management** > **Device configuration**. Policies are organized by operating system and policy type.

3. Select an operating system tab (such as **Windows**).

4. Expand **Next-generation protection** to view your list of policies. At a minimum, a default policy using recommended settings is listed. This default policy is assigned to all onboarded devices running operating system you selected in the previous step (such as **Windows**). You can:

   - Keep your default policy as currently configured.
   - Edit your default policy to make any needed adjustments.
   - Create a new policy.

5. Use one of the procedures in the following table:

   | Task | Procedure |
   |---|---|
   | Edit your default policy | 1. In the **Next-generation protection** section, select your default policy, and then choose **Edit**.<br/><br/>2. On the **General information** step, review the information. If necessary, edit the description, and then select **Next**.<br/><br/>3. On the **Device groups** step, either use an existing group, or set up a new group. Then choose **Next**.<br/><br/>4. On the **Configuration settings** step, review and if necessary, edit your security settings, and then choose **Next**. For more information about the settings, see [Next-generation protection settings and options](#next-generation-protection-settings-and-options) (in this article).<br/><br/>5. On the **Review your policy** step, review your current settings. Select **Edit** to make any needed changes. Then select **Update policy**. |
   | Create a new policy | 1. In the **Next-generation protection** section, select **Add**.<br/><br/>2. On the **General information** step, specify a name and description for your policy. You can also keep or change the a policy order (see [Understand policy order in Microsoft Defender for Business](mdb-policy-order.md)). Then select **Next**.<br/><br/>3. On the **Device groups** step, you can either use an existing group, or create up a new group (see [Device groups in Microsoft Defender for Business](mdb-create-edit-device-groups.md)). Then choose **Next**.<br/><br/>4. On the **Configuration settings** step, review and edit your security settings, and then choose **Next**. For more information about the settings, see [Next-generation protection settings and options](#next-generation-protection-settings-and-options) (in this article).<br/><br/>5. On the **Review your policy** step, review your current settings. Select **Edit** to make any needed changes. Then select **Create policy**. |


## [**Intune admin center**](#tab/Intune)

1. Go to the Microsoft Intune admin center ([https://intune.microsoft.com](https://intune.microsoft.com)) and sign in. 

2. Select **Endpoint security**.

3. Select **Antivirus** to view your policies in that category.

4. Select an individual policy to edit it. 

   For help with managing your security settings in Intune, start with [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security).

---

## Next-generation protection settings and options

The following table lists settings and options for next-generation protection in Defender for Business.

| Setting | Description |
|:---|:---|
| **Real-time protection**  |  |
| **Turn on real-time protection** | Enabled by default, real-time protection locates and stops malware from running on devices. *We recommend keeping real-time protection turned on.* When real-time protection is turned on, it configures the following settings:  <br/>- Behavior monitoring is turned on ([AllowBehaviorMonitoring](/windows/client-management/mdm/policy-csp-defender#defender-allowbehaviormonitoring)).<br/> - All downloaded files and attachments are scanned ([AllowIOAVProtection](/windows/client-management/mdm/policy-csp-defender#defender-allowioavprotection)).<br/> - Scripts that are used in Microsoft browsers are scanned ([AllowScriptScanning](/windows/client-management/mdm/policy-csp-defender#defender-allowscriptscanning)).    |
| **Block at first sight** | Enabled by default, block at first sight blocks malware within seconds of detection, increases the time (in seconds) allowed to submit sample files for analysis, and sets your detection level to High. *We recommend keeping block at first sight turned on.*<br/><br/>When block at first sight is turned on, it configures the following settings for Microsoft Defender Antivirus: <br/>- Blocking and scanning of suspicious files is set to the High blocking level ([CloudBlockLevel](/windows/client-management/mdm/policy-csp-defender#defender-cloudblocklevel)).<br/> - The number of seconds for a file to be blocked and checked is set to 50 seconds ([CloudExtendedTimeout](/windows/client-management/mdm/policy-csp-defender#defender-cloudextendedtimeout)).  <br/>**Important** If block at first sight is turned off, it affects `CloudBlockLevel` and `CloudExtendedTimeout` for Microsoft Defender Antivirus.  |
| **Turn on network protection** | Enabled in Block mode by default, network protection helps protect against phishing scams, exploit-hosting sites, and malicious content on the internet. It also prevents users from turning network protection off.<br/><br/>Network protection can be set to the following modes: <br/>- **Block mode** is the default setting. It prevents users from visiting sites that are considered unsafe. *We recommend keeping network protection set to Block mode.*<br/> - **Audit mode** allows users to visit sites that might be unsafe and tracks network activity to/from such sites.<br/> - **Disabled mode** neither blocks users from visiting sites that might be unsafe nor tracks network activity to/from such sites.  |
| **Remediation**  |  |
| **Action to take on potentially unwanted apps (PUA)** | Enabled by default, PUA protection blocks items that are detected as PUA. PUA can include advertising software; bundling software that offers to install other, unsigned software; and evasion software that attempts to evade security features. Although PUA isn't necessarily a virus, malware, or other type of threat, it can affect device performance. You can set PUA protection to the following modes:  <br/>- **Enabled** is the default setting. It blocks items detected as PUA on devices. *We recommend keeping PUA protection enabled.*<br/> - **Audit mode** takes no action on items detected as PUA.<br/> - **Disabled** doesn't detect or take action on items that might be PUA.  |
| **Scan**   |  |
| **Scheduled scan type** | Enabled in Quickscan mode by default, you can specify a day and time to run weekly antivirus scans. The following scan type options are available: <br/>- **Quickscan** checks locations, such as registry keys and startup folders, where malware could be registered to start along with a device. *We recommend using the quickscan option.* <br/> - **Fullscan** checks all files and folders on a device.<br/> - **Disabled** means no scheduled scans will take place. Users can still run scans on their own devices. (In general, we don't recommend disabling scheduled scans.) <br/> [Learn more about scan types](../defender-endpoint/schedule-antivirus-scans.md). |
| **Day of week to run a scheduled scan** | Select a day for your regular, weekly antivirus scans to run. |
| **Time of day to run a scheduled scan** | Select a time to run your regularly scheduled antivirus scans to run. |
| **Use low performance** | This setting is turned off by default. *We recommend keeping this setting turned off.* However, you can turn on this setting to limit the device memory and resources that are used during scheduled scans. **Important** If you turn on **Use low performance**, it configures the following settings for Microsoft Defender Antivirus: <br/>- Archive files aren't scanned ([AllowArchiveScanning](/windows/client-management/mdm/policy-csp-defender#defender-allowarchivescanning)).<br/> - Scans are assigned a low CPU priority ([EnableLowCPUPriority](/windows/client-management/mdm/policy-csp-defender#defender-enablelowcpupriority)).<br/> - If a full antivirus scan is missed, no catch-up scan will run ([DisableCatchupFullScan](/windows/client-management/mdm/policy-csp-defender#defender-disablecatchupfullscan)).<br/> - If a quick antivirus scan is missed, no catch-up scan will run ([DisableCatchupQuickScan](/windows/client-management/mdm/policy-csp-defender#defender-disablecatchupquickscan)).<br/> - Reduces the average CPU load factor during an antivirus scan from 50 percent to 20 percent ([AvgCPULoadFactor](/windows/client-management/mdm/policy-csp-defender#defender-avgcpuloadfactor)).  |
| **User experience**   |  |
| **Allow users to access the Windows Security app** | Turn on this setting to enable users to open the Windows Security app on their devices. Users won't be able to override settings that you configure in Defender for Business, but they'll be able to run a quick scan or view any detected threats. |
| **Antivirus exclusions** | Exclusions are processes, files, or folders that are skipped by Microsoft Defender Antivirus scans. *In general, you shouldn't need to define exclusions.* Microsoft Defender Antivirus includes many automatic exclusions that are based on known operating system behavior and typical management files. Every exclusion reduces your level of protection, so it's important to consider carefully what exclusions to define. Before you add any exclusions, see [Manage exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](../defender-endpoint/defender-endpoint-antivirus-exclusions.md). |
| **Process exclusions** | Process exclusions prevent files that are opened by specific processes from being scanned by Microsoft Defender Antivirus. When you add a process to the process exclusion list, Microsoft Defender Antivirus won't scan files that are opened by that process, no matter where the files are located. The process itself is scanned unless it is added to the file exclusion list. See [Configure exclusions for files opened by processes](../defender-endpoint/configure-process-opened-file-exclusions-microsoft-defender-antivirus.md). |
| **File extension exclusions** | File extension exclusions prevent files with specific extensions from being scanned by Microsoft Defender Antivirus. See [Configure and validate exclusions based on file extension and folder location](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md). |
| **File and folder exclusions** | File and folder exclusions prevent files that are in specific folders from being scanned by Microsoft Defender Antivirus. See [Contextual file and folder exclusions](../defender-endpoint/configure-contextual-file-folder-exclusions-microsoft-defender-antivirus.md). |

## Other preconfigured settings in Defender for Business

The following security settings are preconfigured in Defender for Business:

- Scanning of removable drives is turned on ([AllowFullScanRemovableDriveScanning](/windows/client-management/mdm/policy-csp-defender#defender-allowfullscanremovabledrivescanning)).
- Daily quick scans don't have a preset time ([ScheduleQuickScanTime](/windows/client-management/mdm/policy-csp-defender#defender-schedulequickscantime)).
- Security intelligence updates are checked before an antivirus scan runs ([CheckForSignaturesBeforeRunningScan](/windows/client-management/mdm/policy-csp-defender#defender-checkforsignaturesbeforerunningscan)).
- Security intelligence checks occur every four hours ([SignatureUpdateInterval](/windows/client-management/mdm/policy-csp-defender#defender-signatureupdateinterval)).

## How default settings in Defender for Business correspond to settings in Microsoft Intune

The following table describes settings that are preconfigured for Defender for Business and how those settings correspond to what you might see in Intune. If you're using the [simplified configuration process in Defender for Business](mdb-setup-configuration.md), you don't need to edit these settings.

| Setting  | Description  |
|---------|---------|
| [Cloud protection](/windows/client-management/mdm/policy-csp-defender#defender-allowcloudprotection)     | Sometimes referred to as cloud-delivered protection or Microsoft Advanced Protection Service (MAPS), cloud protection works with Microsoft Defender Antivirus and the Microsoft cloud to identify new threats, sometimes even before a single device is affected. By default, [AllowCloudProtection](/windows/client-management/mdm/policy-csp-defender#defender-allowcloudprotection) is turned on. [Learn more about cloud protection](../defender-endpoint/cloud-protection-microsoft-defender-antivirus.md).         |
| [Monitoring for incoming and outgoing files](/windows/client-management/mdm/policy-csp-defender#defender-realtimescandirection)     | To monitor incoming and outgoing files, [RealTimeScanDirection](/windows/client-management/mdm/policy-csp-defender#defender-realtimescandirection) is set to monitor all files.         |
| [Scan network files](/windows/client-management/mdm/policy-csp-defender#defender-allowscanningnetworkfiles) | By default, [AllowScanningNetworkFiles](/windows/client-management/mdm/policy-csp-defender#defender-allowscanningnetworkfiles) isn't enabled, and network files aren't scanned. |
| [Scan email messages](/windows/client-management/mdm/policy-csp-defender#defender-allowemailscanning) | By default, [AllowEmailScanning](/windows/client-management/mdm/policy-csp-defender#defender-allowemailscanning) isn't enabled, and email messages aren't scanned. |
| [Number of days (0-90) to keep quarantined malware](/windows/client-management/mdm/policy-csp-defender#defender-daystoretaincleanedmalware) | By default, the [DaysToRetainCleanedMalware](/windows/client-management/mdm/policy-csp-defender#defender-daystoretaincleanedmalware) setting is set to zero (0) days. Artifacts that are in quarantine aren't removed automatically.  |
| [Submit samples consent](/windows/client-management/mdm/policy-csp-defender#defender-submitsamplesconsent) | By default, [SubmitSamplesConsent](/windows/client-management/mdm/policy-csp-defender#defender-submitsamplesconsent) is set to send safe samples automatically. Examples of safe samples include `.bat`, `.scr`, `.dll`, and `.exe` files that don't contain personally identifiable information (PII). If a file does contain PII, the user receives a request to allow the sample submission to proceed. [Learn more about cloud protection and sample submission](../defender-endpoint/cloud-protection-microsoft-antivirus-sample-submission.md). |
| [Scan removable drives](/windows/client-management/mdm/policy-csp-defender#defender-allowfullscanremovabledrivescanning) | By default, [AllowFullScanRemovableDriveScanning](/windows/client-management/mdm/policy-csp-defender#defender-allowfullscanremovabledrivescanning) is configured to scan removable drives, such as USB thumb drives on devices. [Learn more about antimalware policy settings](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies#list-of-antimalware-policy-settings).   |
| [Run daily quick scan time](/windows/client-management/mdm/policy-csp-defender#defender-schedulequickscantime) | By default, [ScheduleQuickScanTime](/windows/client-management/mdm/policy-csp-defender#defender-schedulequickscantime) is set to 2:00 AM. [Learn more about scan settings](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies#scan-settings).   |
| [Check for signature updates before running scan](/windows/client-management/mdm/policy-csp-defender#defender-checkforsignaturesbeforerunningscan) | By default, [CheckForSignaturesBeforeRunningScan](/windows/client-management/mdm/policy-csp-defender#defender-checkforsignaturesbeforerunningscan) is configured to check for security intelligence updates prior to running antivirus/antimalware scans. [Learn more about scan settings](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies#scan-settings) and [Security intelligence updates](../defender-endpoint/microsoft-defender-antivirus-updates.md#security-intelligence-updates).   |
| [How often (0-24 hours) to check for security intelligence updates](/windows/client-management/mdm/policy-csp-defender#defender-signatureupdateinterval) | By default, [SignatureUpdateInterval](/windows/client-management/mdm/policy-csp-defender#defender-signatureupdateinterval) is configured to check for security intelligence updates every four hours. [Learn more about scan settings](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies#scan-settings) and [Security intelligence updates](../defender-endpoint/microsoft-defender-antivirus-updates.md#security-intelligence-updates). |

## Next steps

- [Set up your firewall policies](mdb-firewall.md) and [custom rules for firewall policies](mdb-firewall.md).
- [Set up your web content filtering policy](mdb-web-content-filtering.md) and enable web protection automatically.
- [Set up your controlled folder access policy](mdb-controlled-folder-access.md) for ransomware protection.
- [Enable your attack surface reduction rules](mdb-asr.md).
- [Review settings for advanced features and the Microsoft 365 Defender portal](mdb-portal-advanced-feature-settings.md).
- [Use your vulnerability management dashboard in Microsoft Defender for Business](mdb-view-tvm-dashboard.md)