---
title: Understand next-generation protection configuration settings in Microsoft Defender for Business
description: Understand antivirus and next-generation protection settings in Defender for Business, endpoint security for small and medium sized businesses.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.date: 08/11/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Understand next-generation configuration settings in Microsoft Defender for Business

Next-generation protection in Defender for Business includes robust antivirus and antimalware protection. The default policies are designed to protect your devices and users without hindering productivity. You can also customize the policies to suit your business needs. And, if you're using Microsoft Intune, you can use the Microsoft Endpoint Manager admin center to manage your security policies.

**This article describes**:

- [Next-generation protection settings and options](#next-generation-protection-settings-and-options)
- [Other preconfigured settings in Defender for Business](#other-preconfigured-settings-in-defender-for-business) 
- [Defender for Business default settings and Microsoft Intune](#defender-for-business-default-settings-and-microsoft-intune)

## Next-generation protection settings and options

The following table lists settings and options.

| Setting | Description |
|:---|:---|
| **Real-time protection**  |  |
| **Turn on real-time protection** | Enabled by default, real-time protection locates and stops malware from running on devices. *We recommend keeping real-time protection turned on.* When real-time protection is turned on, it configures the following settings:<ul><li>Behavior monitoring is turned on ([AllowBehaviorMonitoring](/windows/client-management/mdm/policy-csp-defender#defender-allowbehaviormonitoring)).</li><li>All downloaded files and attachments are scanned ([AllowIOAVProtection](/windows/client-management/mdm/policy-csp-defender#defender-allowioavprotection)).</li><li>Scripts that are used in Microsoft browsers are scanned ([AllowScriptScanning](/windows/client-management/mdm/policy-csp-defender#defender-allowscriptscanning)).</li></ul>   |
| **Block at first sight** | Enabled by default, block at first sight blocks malware within seconds of detection, increases the time (in seconds) allowed to submit sample files for analysis, and sets your detection level to High. *We recommend keeping block at first sight turned on.*<br/><br/>When block at first sight is turned on, it configures the following settings for Microsoft Defender Antivirus:<ul><li>Blocking and scanning of suspicious files is set to the High blocking level ([CloudBlockLevel](/windows/client-management/mdm/policy-csp-defender#defender-cloudblocklevel)).</li><li>The number of seconds for a file to be blocked and checked is set to 50 seconds ([CloudExtendedTimeout](/windows/client-management/mdm/policy-csp-defender#defender-cloudextendedtimeout)).</li></ul> <br/>**Important** If block at first sight is turned off, it affects `CloudBlockLevel` and `CloudExtendedTimeout` for Microsoft Defender Antivirus.  |
| **Turn on network protection** | When turned on, network protection helps protect against phishing scams, exploit-hosting sites, and malicious content on the internet. It also prevents users from turning network protection off.<br/><br/>Network protection can be set to the following modes:<ul><li>**Block mode** is the default setting. It prevents users from visiting sites that are considered unsafe. *We recommend keeping network protection set to Block mode.*</li><li>**Audit mode** allows users to visit sites that might be unsafe and tracks network activity to/from such sites.</li><li>**Disabled mode** neither blocks users from visiting sites that might be unsafe nor tracks network activity to/from such sites.</li></ul> |
| **Remediation**  |  |
| **Action to take on potentially unwanted apps (PUA)** | PUA can include advertising software; bundling software that offers to install other, unsigned software; and evasion software that attempts to evade security features. Although PUA isn't necessarily a virus, malware, or other type of threat, it can affect device performance. PUA protection blocks items that are detected as PUA. You can set PUA protection to the following:<ul><li>**Enabled** is the default setting. It blocks items detected as PUA on devices. *We recommend keeping PUA protection enabled.*</li><li>**Audit mode** takes no action on items detected as PUA.</li><li>**Disabled** doesn't detect or take action on items that might be PUA.</li></ul> |
| **Scan**   |  |
| **Scheduled scan type** | Consider running a weekly antivirus scan on your devices. You can choose from the following scan type options:<ul><li>**Quickscan** checks locations, such as registry keys and startup folders, where malware could be registered to start along with a device. *We recommend using the quickscan option.*</li><li>**Fullscan** checks all files and folders on a device.</li><li>**Disabled** means no scheduled scans will take place. Users can still run scans on their own devices. (In general, we don't recommend disabling scheduled scans.)</li></ul><br/> [Learn more about scan types](../defender-endpoint/schedule-antivirus-scans.md). |
| **Day of week to run a scheduled scan** | Select a day for your regular, weekly antivirus scans to run. |
| **Time of day to run a scheduled scan** | Select a time to run your regularly scheduled antivirus scans to run. |
| **Use low performance** | This setting is turned off by default. *We recommend keeping this setting turned off.* However, you can turn on this setting to limit the device memory and resources that are used during scheduled scans. **Important** If you turn on **Use low performance**, it configures the following settings for Microsoft Defender Antivirus:<ul><li>Archive files aren't scanned ([AllowArchiveScanning](/windows/client-management/mdm/policy-csp-defender#defender-allowarchivescanning)).</li><li>Scans are assigned a low CPU priority ([EnableLowCPUPriority](/windows/client-management/mdm/policy-csp-defender#defender-enablelowcpupriority)).</li><li>If a full antivirus scan is missed, no catch-up scan will run ([DisableCatchupFullScan](/windows/client-management/mdm/policy-csp-defender#defender-disablecatchupfullscan)).</li><li>If a quick antivirus scan is missed, no catch-up scan will run ([DisableCatchupQuickScan](/windows/client-management/mdm/policy-csp-defender#defender-disablecatchupquickscan)).</li><li>Reduces the average CPU load factor during an antivirus scan from 50 percent to 20 percent ([AvgCPULoadFactor](/windows/client-management/mdm/policy-csp-defender#defender-avgcpuloadfactor)).</li></ul> |
| **User experience**   |  |
| **Allow users to access the Windows Security app** | Turn on this setting to enable users to open the Windows Security app on their devices. Users won't be able to override settings that you configure in Defender for Business, but they'll be able to run a quick scan or view any detected threats. |
| **Antivirus exclusions** | Exclusions are processes, files, or folders that are skipped by Microsoft Defender Antivirus scans. *In general, you shouldn't need to define exclusions.* Microsoft Defender Antivirus includes many automatic exclusions that are based on known operating system behavior and typical management files. [Learn more about exclusions](../defender-endpoint/configure-exclusions-microsoft-defender-antivirus.md). |
| **Process exclusions** | Process exclusions prevent files that are opened by specific processes from being scanned by Microsoft Defender Antivirus. [Learn more about process exclusions](../defender-endpoint/configure-process-opened-file-exclusions-microsoft-defender-antivirus.md). |
| **File extension exclusions** | File extension exclusions prevent files with specific extensions from being scanned by Microsoft Defender Antivirus. [Learn more about file extension exclusions](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md). |
| **File and folder exclusions** | File and folder exclusions prevent files that are in specific folders from being scanned by Microsoft Defender Antivirus. [Learn more about file and folder exclusions](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md). |

## Other preconfigured settings in Defender for Business

The following security settings are preconfigured in Defender for Business:

- Scanning of removable drives is turned on ([AllowFullScanRemovableDriveScanning](/windows/client-management/mdm/policy-csp-defender#defender-allowfullscanremovabledrivescanning)).
- Daily quick scans don't have a preset time ([ScheduleQuickScanTime](/windows/client-management/mdm/policy-csp-defender#defender-schedulequickscantime)).
- Security intelligence updates are checked before an antivirus scan runs ([CheckForSignaturesBeforeRunningScan](/windows/client-management/mdm/policy-csp-defender#defender-checkforsignaturesbeforerunningscan)).
- Security intelligence checks occur every four hours ([SignatureUpdateInterval](/windows/client-management/mdm/policy-csp-defender#defender-signatureupdateinterval)).

## Defender for Business default settings and Microsoft Intune

The following table describes settings that are preconfigured for Defender for Business and how those settings correspond to what you might see in Intune (managed in the Microsoft Endpoint Manager admin center). If you're using the [simplified configuration process in Defender for Business](mdb-simplified-configuration.md), you don't need to edit these settings.

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
| [Check for signature updates before running scan](/windows/client-management/mdm/policy-csp-defender#defender-checkforsignaturesbeforerunningscan) | By default, [CheckForSignaturesBeforeRunningScan](/windows/client-management/mdm/policy-csp-defender#defender-checkforsignaturesbeforerunningscan) is configured to check for security intelligence updates prior to running antivirus/antimalware scans. [Learn more about scan settings](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies#scan-settings) and [Security intelligence updates](../defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus.md#security-intelligence-updates).   |
| [How often (0-24 hours) to check for security intelligence updates](/windows/client-management/mdm/policy-csp-defender#defender-signatureupdateinterval) | By default, [SignatureUpdateInterval](/windows/client-management/mdm/policy-csp-defender#defender-signatureupdateinterval) is configured to check for security intelligence updates every four hours. [Learn more about scan settings](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies#scan-settings) and [Security intelligence updates](../defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus.md#security-intelligence-updates). |


## Next steps

- [View and manage incidents in Defender for Business](mdb-view-manage-incidents.md)
- [Respond to and mitigate threats in Defender for Business](mdb-respond-mitigate-threats.md)
- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)


## See also

- [Visit the Microsoft 365 Defender portal](mdb-get-started.md)
- [Manage firewall settings in Defender for Business](mdb-custom-rules-firewall.md)
- [Policy CSP - Defender](/windows/client-management/mdm/policy-csp-defender)
