---
title: Configure Microsoft Defender Antivirus with Group Policy
description: Learn how to use a Group Policy to configure and manage Microsoft Defender Antivirus on your endpoints in Microsoft Defender for Endpoint.
keywords: group policy, GPO, configuration, settings
ms.service: microsoft-365-security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 05/24/2023
ms.reviewer: ksarens, jtoole, pahuijbr
manager: dansimp
ms.subservice: mde
audience: ITPro
ms.topic: how-to
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Use Group Policy settings to configure and manage Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

We recommend using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) to manage Microsoft Defender Antivirus settings for your organization. However, you can use [Group Policy](/windows/win32/srvnodes/group-policy) to configure and manage some settings for Microsoft Defender Antivirus.

> [!IMPORTANT]
> If [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) is enabled in your organization, any changes made to [tamper-protected settings](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection#what-happens-when-tamper-protection-is-turned-on) are ignored. In addition, you cannot turn off tamper protection by using Group Policy. 
> 
> If you must make changes to a device and those changes are blocked by tamper protection, we recommend using [troubleshooting mode](/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode) to temporarily disable tamper protection on the device. Note that after troubleshooting mode ends, any changes made to tamper-protected settings are reverted to their configured state.
> 

## Configure Microsoft Defender Antivirus using Group Policy

In general, you can use the following procedure to configure or change some settings for Microsoft Defender Antivirus.

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

2. Using the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus**.

5. Expand the section (referred to as **Location** in the table in this topic) that contains the setting you want to configure, double-click the setting to open it, and make configuration changes.

6. [Deploy the updated GPO as you normally do](/windows/win32/srvnodes/group-policy).

## Group Policy settings and resources

The following table lists commonly used Group Policy settings that are available in Windows 10.

> [!TIP]
> For the most current settings, see get the latest ADMX files in your central store to access the correct policy options. See [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) and download the latest files. 


|Location|Setting|Article|
|---|---|---|
|Client interface|Enable headless UI mode|[Prevent users from seeing or interacting with the Microsoft Defender Antivirus user interface](prevent-end-user-interaction-microsoft-defender-antivirus.md)|
|Client interface|Display additional text to clients when they need to perform an action|[Configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md)|
|Client interface|Suppress all notifications|[Configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md)|
|Client interface|Suppresses reboot notifications|[Configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md)|
|Exclusions|Extension Exclusions|[Configure and validate exclusions in Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md)|
|Exclusions|Path Exclusions|[Configure and validate exclusions in Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md)|
|Exclusions|Process Exclusions|[Configure and validate exclusions in Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md)|
|Exclusions|Turn off Auto Exclusions|[Configure and validate exclusions in Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md)|
|MAPS|Configure the "Block at First Sight" feature|[Enable block at first sight](configure-block-at-first-sight-microsoft-defender-antivirus.md)|
|MAPS|Join Microsoft MAPS|[Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)|
|MAPS|Send file samples when further analysis is required|[Enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md)|
|MAPS|Configure local setting override for reporting to Microsoft MAPS|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|MpEngine|Configure extended cloud check|[Configure the cloud block timeout period](configure-cloud-block-timeout-period-microsoft-defender-antivirus.md)|
|MpEngine|Select cloud protection level|[Specify the cloud-delivered protection level](specify-cloud-protection-level-microsoft-defender-antivirus.md)|
|Network inspection system|Specify additional definition sets for network traffic inspection| Not used (deprecated) |
|Network inspection system|Turn on definition retirement| Not used (deprecated)|
|Network inspection system|Turn on protocol recognition| Not used (deprecated)|
|Quarantine|Configure local setting override for the removal of items from Quarantine folder|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Quarantine|Configure removal of items from Quarantine folder|[Configure remediation for Microsoft Defender Antivirus scans](configure-remediation-microsoft-defender-antivirus.md)|
|Real-time protection|Configure local setting override for monitoring file and program activity on your computer|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Real-time protection|Configure local setting override for monitoring for incoming and outgoing file activity|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Real-time protection|Configure local setting override for scanning all downloaded files and attachments|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Real-time protection|Configure local setting override for turn on behavior monitoring|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Real-time protection|Configure local setting override to turn on real-time protection|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Real-time protection|Define the maximum size of downloaded files and attachments to be scanned|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Real-time protection|Monitor file and program activity on your computer|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Real-time protection|Scan all downloaded files and attachments|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Real-time protection|Turn off real-time protection|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Real-time protection|Turn on behavior monitoring|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Real-time protection|Turn on process scanning whenever real-time protection is enabled|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Real-time protection|Turn on raw volume write notifications|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Real-time protection|Configure monitoring for incoming and outgoing file and program activity|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Remediation|Configure local setting override for the time of day to run a scheduled full scan to complete remediation|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Remediation|Specify the day of the week to run a scheduled full scan to complete remediation|[Configure scheduled Microsoft Defender Antivirus scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Remediation|Specify the time of day to run a scheduled full scan to complete remediation|[Configure scheduled Microsoft Defender Antivirus scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Reporting|Turn off enhanced notifications|[Configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md)
|Root|Turn off Microsoft Defender Antivirus|Not used. If you're using or planning to use a non-Microsoft antivirus product, see [Microsoft Defender Antivirus compatibility with other security products](microsoft-defender-antivirus-compatibility.md).|
|Root|Define addresses to bypass proxy server|[Configure device proxy and Internet connectivity settings](configure-proxy-internet.md#configure-a-static-proxy-for-microsoft-defender-antivirus)|
|Root|Define proxy autoconfig (.pac) for connecting to the network|[Configure device proxy and Internet connectivity settings](configure-proxy-internet.md#configure-a-static-proxy-for-microsoft-defender-antivirus)|
|Root|Define proxy server for connecting to the network|[Configure device proxy and Internet connectivity settings](configure-proxy-internet.md#configure-a-static-proxy-for-microsoft-defender-antivirus)|
|Root|Configure local administrator merge behavior for lists|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Root|Allow antimalware service to start up with normal priority|[Configure remediation for Microsoft Defender Antivirus scans](configure-remediation-microsoft-defender-antivirus.md)|
|Root|Allow antimalware service to remain running always|[Configure remediation for Microsoft Defender Antivirus scans](configure-remediation-microsoft-defender-antivirus.md)|
|Root|Turn off routine remediation|[Configure remediation for Microsoft Defender Antivirus scans](configure-remediation-microsoft-defender-antivirus.md)|
|Root|Randomize scheduled task times|[Configure scheduled scans for Microsoft Defender Antivirus](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Scan|Allow users to pause scan|[Prevent users from seeing or interacting with the Microsoft Defender Antivirus user interface](prevent-end-user-interaction-microsoft-defender-antivirus.md) (Not supported on Windows 10)|
|Scan|Check for the latest virus and spyware definitions before running a scheduled scan|[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md)|
|Scan|Define the number of days after which a catch-up scan is forced|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md)|
|Scan|Turn on catch up full scan|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md)|
|Scan|Turn on catch up quick scan|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md)|
|Scan|Configure local setting override for maximum percentage of CPU utilization|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Scan|Configure local setting override for schedule scan day|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Scan|Configure local setting override for scheduled quick scan time|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Scan|Configure local setting override for scheduled scan time|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Scan|Configure local setting override for the scan type to use for a scheduled scan|[Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)|
|Scan|Create a system restore point|[Configure remediation for Microsoft Defender Antivirus scans](configure-remediation-microsoft-defender-antivirus.md)|
|Scan|Turn on removal of items from scan history folder|[Configure remediation for Microsoft Defender Antivirus scans](configure-remediation-microsoft-defender-antivirus.md)|
|Scan|Turn on heuristics|[Enable and configure Microsoft Defender Antivirus always-on protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)|
|Scan|Turn on e-mail scanning|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Turn on reparse point scanning|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Run full scan on mapped network drives|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Scan archive files|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Scan network files|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Scan packed executables|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
| Scan | Scan scripts | [Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md) <p>Also see [Defender/AllowScriptScanning](/windows/client-management/mdm/policy-csp-defender).|
|Scan|Scan removable drives|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Specify the maximum depth to scan archive files|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Specify the maximum percentage of CPU utilization during a scan|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Specify the maximum size of archive files to be scanned|[Configure scanning options in Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)|
|Scan|Specify the day of the week to run a scheduled scan|[Configure scheduled scans for Microsoft Defender Antivirus](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Scan|Specify the interval to run quick scans per day|[Configure scheduled scans for Microsoft Defender Antivirus](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Scan|Specify the scan type to use for a scheduled scan|[Configure scheduled scans for Microsoft Defender Antivirus](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Scan|Specify the time for a daily quick scan|[Configure scheduled scans for Microsoft Defender Antivirus](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Scan|Specify the time of day to run a scheduled scan|[Configure scheduled scans for Microsoft Defender Antivirus](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Scan|Start the scheduled scan only when computer is on but not in use|[Configure scheduled scans for Microsoft Defender Antivirus](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Security intelligence updates|Allow security intelligence updates from Microsoft Update|[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)|
|Security intelligence updates|Allow security intelligence updates when running on battery power|[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)|
|Security intelligence updates|Allow notifications to disable definitions-based reports to Microsoft MAPS|[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md)|
|Security intelligence updates|Allow real-time security intelligence updates based on reports to Microsoft MAPS|[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md)|
|Security intelligence updates|Check for the latest virus and spyware definitions on startup|[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md)|
|Security intelligence updates|Define file shares for downloading security intelligence updates|[Manage Microsoft Defender Antivirus protection and security intelligence updates](manage-protection-updates-microsoft-defender-antivirus.md)|
|Security intelligence updates|Define the number of days after which a catch up security intelligence update is required|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md)|
|Security intelligence updates|Define the number of days before spyware definitions are considered out of date|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md)|
|Security intelligence updates|Define the number of days before virus definitions are considered out of date|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md)|
|Security intelligence updates|Define the order of sources for downloading security intelligence updates|[Manage Microsoft Defender Antivirus protection and security intelligence updates](manage-protection-updates-microsoft-defender-antivirus.md)|
|Security intelligence updates|Initiate security intelligence update on startup|[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md)|
|Security intelligence updates|Specify the day of the week to check for security intelligence updates|[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md)|
|Security intelligence updates|Specify the interval to check for security intelligence updates|[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md)|
|Security intelligence updates|Specify the time to check for security intelligence updates|[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md)|
|Security intelligence updates|Turn on scan after Security intelligence update|[Configure scheduled scans for Microsoft Defender Antivirus](scheduled-catch-up-scans-microsoft-defender-antivirus.md)|
|Threats|Specify threat alert levels at which default action should not be taken when detected|[Configure remediation for Microsoft Defender Antivirus scans](configure-remediation-microsoft-defender-antivirus.md)|
|Threats|Specify threats upon which default action should not be taken when detected|[Configure remediation for Microsoft Defender Antivirus scans](configure-remediation-microsoft-defender-antivirus.md)|

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

> [!TIP]
> **Performance tip** Due to a variety of factors (examples listed below) Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are:
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).

## See also

- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
- [Reference topics for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
