---
title: Manage exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus
description: Learn about exclusions for Defender for Endpoint and Microsoft Defender Antivirus. Suppress alerts, submit files for analysis, and define exclusions and indicators to reduce noise and risk for your organization.
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.topic: how-to
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 07/18/2023
ms.reviewer: pahuijbr, yongrhee, tudobril
manager: dansimp
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Manage exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender Antivirus
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

**Platforms**

- Windows

> [!NOTE]
> As a Microsoft MVP, [Fabian Bader](https://cloudbrothers.info) contributed to and provided material feedback for this article.

[Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) includes a wide range of capabilities to prevent, detect, investigate, and respond to advanced cyberthreats. These capabilities include [Next-generation protection](next-generation-protection.md) (which includes Microsoft Defender Antivirus). As with any endpoint protection or antivirus solution, sometimes files, folders, or processes that aren't actually a threat can be detected as malicious by Defender for Endpoint or Microsoft Defender Antivirus. These entities can be blocked or sent to quarantine, even though they're not really a threat. 

You can take certain actions to prevent false positives and similar issues from occurring. These actions include:

- [Submitting a file to Microsoft for analysis](#submitting-files-for-analysis)
- [Suppressing an alert](#suppressing-alerts)
- [Adding an exclusion or indicator](#exclusions-and-indicators)

This article explains how these actions work, and describes the various types of exclusions that can be defined for Defender for Endpoint and Microsoft Defender Antivirus.

> [!CAUTION]
> **Defining exclusions reduces the level of protection offered by Defender for Endpoint and Microsoft Defender Antivirus**. Use exclusions as a last resort, and make sure to define only the exclusions that are necessary. Make sure to review your exclusions periodically, and remove the ones you no longer need. See [Important points about exclusions](configure-exclusions-microsoft-defender-antivirus.md#important-points-about-exclusions) and [Common mistakes to avoid](common-exclusion-mistakes-microsoft-defender-antivirus.md).

## Submissions, suppressions, and exclusions

When you're dealing with false positives, or known entities that are generating alerts, you don't necessarily need to add an exclusion. Sometimes classifying and suppressing an alert is enough. We recommend submitting false positives (and false negatives) to Microsoft for analysis as well. The following table describes some scenarios and what steps to take with respect to file submissions, alert suppressions, and exclusions.

| Scenario | Steps to consider |
|:---|:----|
| [False positive](defender-endpoint-false-positives-negatives.md): An entity, such as a file or a process, was detected and identified as malicious, even though the entity isn't a threat. | 1. [Review and classify alerts](defender-endpoint-false-positives-negatives.md#part-1-review-and-classify-alerts) that were generated as a result of the detected entity. <br/>2. [Suppress an alert](defender-endpoint-false-positives-negatives.md#suppress-an-alert) for a known entity. <br/>3. [Review remediation actions](defender-endpoint-false-positives-negatives.md#part-2-review-remediation-actions) that were taken for the detected entity. <br/>4. [Submit the false positive to Microsoft](../intelligence/submission-guide.md) for analysis. <br/>5. [Define an exclusion](defender-endpoint-false-positives-negatives.md#part-3-review-or-define-exclusions) for the entity (only if necessary). |
| [Performance issues](troubleshoot-performance-issues.md) such as one of the following issues:<br/>- A system is having high CPU usage or other performance issues.<br/>- A system is having memory leak issues.<br/>- An app is slow to load on devices.<br/>- An app is slow to open a file on devices. | 1. [Collect diagnostic data](collect-diagnostic-data.md) for Microsoft Defender Antivirus.<br/>2. If you're using a non-Microsoft antivirus solution, [check with the vendor for any needed exclusions](troubleshoot-performance-issues.md#check-with-vendor-for-antivirus-exclusions).<br/>3. [Analyze the Microsoft Protection Log](troubleshoot-performance-issues.md#analyze-the-microsoft-protection-log) to see the estimated performance impact.<br/>4. [Define an exclusion for Microsoft Defender Antivirus](configure-exclusions-microsoft-defender-antivirus.md) (if necessary).<br/>5. [Create an indicator for Defender for Endpoint](manage-indicators.md) (only if necessary). |
| [Compatibility issues](microsoft-defender-antivirus-compatibility.md) with non-Microsoft antivirus products. <br/>Example: Defender for Endpoint relies on security intelligence updates for devices, whether they're running Microsoft Defender Antivirus or a non-Microsoft antivirus solution.  | 1. If you're using a non-Microsoft antivirus product as your primary antivirus/antimalware solution, [set Microsoft Defender Antivirus to passive mode](microsoft-defender-antivirus-compatibility.md#requirements-for-microsoft-defender-antivirus-to-run-in-passive-mode).<br/>2. If you're switching from a non-Microsoft antivirus/antimalware solution to Defender for Endpoint, see [Make the switch to Defender for Endpoint](switch-to-mde-overview.md). This guidance includes:<br/>- [Exclusions you might need to define for the non-Microsoft antivirus/antimalware solution](switch-to-mde-phase-2.md#step-3-add-microsoft-defender-for-endpoint-to-the-exclusion-list-for-your-existing-solution);<br/>- [Exclusions you might need to define for Microsoft Defender Antivirus](switch-to-mde-phase-2.md#step-4-add-your-existing-solution-to-the-exclusion-list-for-microsoft-defender-antivirus); and <br/>- [Troubleshooting information](switch-to-mde-troubleshooting.md) (just in case something goes wrong while migrating). |

> [!IMPORTANT]
> An "allow" indicator is the strongest type of exclusion you can define in Defender for Endpoint. Make sure to use indicators sparingly (only when necessary), and review all exclusions periodically.

## Submitting files for analysis

If you have a file that you think is wrongly detected as malware (a false positive), or a file that you suspect might be malware even though it wasn't detected (a false negative), you can submit the file to Microsoft for analysis. Your submission is scanned immediately, and will then be reviewed by Microsoft security analysts. You're able to check the status of your submission on the [submission history page](https://www.microsoft.com/wdsi/submissionhistory).

Submitting files for analysis helps reduce false positives and false negatives for all customers. To learn more, see the following articles:

- [Submit files for analysis](/microsoft-365/security/intelligence/submission-guide) (available to all customers)
- [Submit files using the new unified submissions portal in Defender for Endpoint](admin-submissions-mde.md) (available to customers who have Defender for Endpoint Plan 2 or Microsoft 365 Defender)

## Suppressing alerts

If you're getting alerts in the Microsoft 365 Defender portal for tools or processes that you know aren't actually a threat, you can suppress those alerts. To suppress an alert, you create a suppression rule, and specify what actions to take for that on other, identical alerts. You can create suppression rules for a specific alert on a single device, or for all alerts that have the same title across your organization.

To learn more, see the following articles:

- [Suppress alerts](manage-alerts.md#suppress-alerts)
- [Introducing the new alert suppression experience](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/introducing-the-new-alert-suppression-experience/ba-p/3562719) (for Defender for Endpoint)

## Exclusions and indicators

Sometimes, the term *exclusions* is used to refer to exceptions that apply across Defender for Endpoint and Microsoft Defender Antivirus. A more accurate way to describe these exceptions is as follows:

- [Indicators for Defender for Endpoint](manage-indicators.md); (which apply across Defender for Endpoint and Microsoft Defender Antivirus); and
- [Exclusions for Microsoft Defender Antivirus](configure-exclusions-microsoft-defender-antivirus.md).

The following table summarizes exclusion types that can be defined for Defender for Endpoint and Microsoft Defender Antivirus.

> [!TIP]
>
> - [Defender for Endpoint Plan 1](defender-endpoint-plan-1.md) is available as a standalone plan, and is included in Microsoft 365 E3.
> - [Defender for Endpoint Plan 2](microsoft-defender-endpoint.md) is available as a standalone plan, and is included in Microsoft 365 E5.
> - If you have Microsoft 365 E3 or E5, make sure to [set up your Defender for Endpoint capabilities](deployment-strategy.md).

| Product/service | Exclusion types  |
|:---|:----|
| [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md) <br/>[Defender for Endpoint Plan 1 or Plan 2](defender-endpoint-plan-1-2.md) | - [Automatic exclusions](#automatic-exclusions) (for active roles on Windows Server 2016 and later)<br/>- [Built-in exclusions](#built-in-exclusions) (for operating system files in Windows)<br/>- [Custom exclusions](#custom-exclusions), such as process-based exclusions, folder location-based exclusions, file extension exclusions, or contextual file and folder exclusions<br/>- [Custom remediation actions](#custom-remediation-actions) based on threat severity or for specific threats<br/><br/>*The standalone versions of Defender for Endpoint Plan 1 and Plan 2 don't include server licenses. To onboard servers, you need another license, such as Microsoft Defender for Endpoint for Servers or [Microsoft Defender for Servers Plan 1 or 2](/azure/defender-for-cloud/defender-for-servers-introduction). To learn more, see [Defender for Endpoint onboarding Windows Server](onboard-windows-server.md).*<br/><br/>*If you're a small or medium-sized business using [Microsoft Defender for Business](../defender-business/mdb-overview.md), you can get [Microsoft Defender for Business servers](../defender-business/get-defender-business.md#how-to-get-microsoft-defender-for-business-servers).* |
| [Defender for Endpoint Plan 1 or Plan 2](defender-endpoint-plan-1-2.md) | - [Indicators](#defender-for-endpoint-indicators) for files, certificates, or IP addresses, URLs/domains<br/>- [Attack surface reduction exclusions](#attack-surface-reduction-exclusions)<br/>- [Controlled folder access exclusions](#controlled-folder-access-exclusions) |
| [Defender for Endpoint Plan 2](microsoft-defender-endpoint.md) | [Automation folder exclusions](#automation-folder-exclusions) (for automated investigation and remediation)  |

The following sections describe these exclusions in more detail:

- [Microsoft Defender Antivirus exclusions](#microsoft-defender-antivirus-exclusions)
- [Defender for Endpoint indicators](#defender-for-endpoint-indicators)
- [Attack surface reduction exclusions](#attack-surface-reduction-exclusions)
- [Controlled folder access exclusions](#controlled-folder-access-exclusions)
- [Automation folder exclusions](#automation-folder-exclusions) (for automated investigation and remediation)

## Microsoft Defender Antivirus exclusions

Microsoft Defender Antivirus exclusions can apply to antivirus scans and/or to real-time protection. These exclusions include:

- [Automatic exclusions](#automatic-exclusions) (for server roles on Windows Server 2016 and later)
- [Built-in exclusions](#built-in-exclusions) (for operating system files in all versions of Windows)
- [Custom exclusions](#custom-exclusions) (for files and folders that you specify, if necessary)
- [Custom remediation actions](#custom-remediation-actions) (to determine what happens with detected threats)

### Automatic exclusions

[Automatic exclusions](configure-server-exclusions-microsoft-defender-antivirus.md#automatic-server-role-exclusions) (also referred to as *automatic server role exclusions*) include exclusions for server roles and features in Windows Server. These exclusions aren't scanned by [real-time protection](configure-protection-features-microsoft-defender-antivirus.md) but are still subject to [quick, full, or on-demand antivirus scans](schedule-antivirus-scans.md#comparing-the-quick-scan-full-scan-and-custom-scan). 

Examples include: 

- File Replication Service (FRS)
- Hyper-V
- SYSVOL
- Active Directory
- DNS Server
- Print Server
- Web Server
- Windows Server Update Services
- ...and more.

> [!NOTE]
> Automatic exclusions for server roles aren't supported on Windows Server 2012 R2. For servers running Windows Server 2012 R2 with the Active Directory Domain Services (AD DS) server role installed, exclusions for domain controllers must be specified manually. See [Active Directory exclusions](configure-server-exclusions-microsoft-defender-antivirus.md#active-directory-exclusions).  

For more information, see [Automatic server role exclusions](configure-server-exclusions-microsoft-defender-antivirus.md#automatic-server-role-exclusions).

### Built-in exclusions

[Built-in exclusions](configure-server-exclusions-microsoft-defender-antivirus.md#built-in-exclusions) include certain operating system files that are excluded by Microsoft Defender Antivirus on all versions of Windows (including Windows 10, Windows 11, and Windows Server). 

Examples include:

- `%windir%\SoftwareDistribution\Datastore\*\Datastore.edb` 
- `%allusersprofile%\NTUser.pol`
- Windows Update files
- Windows Security files 
- ... and more.

For more information, see [Built-in exclusions](configure-server-exclusions-microsoft-defender-antivirus.md#built-in-exclusions).

### Custom exclusions

[Custom exclusions](configure-exclusions-microsoft-defender-antivirus.md) include files and folders that you specify. Exclusions for files, folders, and processes will be skipped by scheduled scans, on-demand scans, and real-time protection. Exclusions for process-opened files won't be scanned by [real-time protection](configure-protection-features-microsoft-defender-antivirus.md) but are still subject to [quick, full, or on-demand antivirus scans](schedule-antivirus-scans.md#comparing-the-quick-scan-full-scan-and-custom-scan).

### Custom remediation actions

When Microsoft Defender Antivirus detects a potential threat while running a scan, it attempts to remediate or remove the detected threat. You can define custom remediation actions to configure how Microsoft Defender Antivirus should address certain threats, whether a restore point should be created before remediating, and when threats should be removed. [Configure remediation actions for Microsoft Defender Antivirus detections](configure-remediation-microsoft-defender-antivirus.md).

## Defender for Endpoint indicators

You can define [indicators](manage-indicators.md) with specific actions for entities, such as files, IP addresses, URLs/domains, and certificates. In Defender for Endpoint, indicators are referred to as Indicators of Compromise (IoCs), and less often, as custom indicators. When you define your indicators, you can specify one of the following actions:

- **Allow** – Defender for Endpoint won't block files, IP addresses, URLs/domains, or certificates that have Allow indicators. (*Use this action with caution.*)

- **Audit** – Files, IP addresses, and URLs/domains with Audit indicators are monitored, and when they're accessed by users, informational alerts are generated in the Microsoft 365 Defender portal.

- **Block and Remediate** – Files or certificates with Block and Remediate indicators are blocked and quarantined when detected.

- **Block Execution** – IP addresses and URLs/domains with Block Execution indicators are blocked. Users can't access those locations.

- **Warn** – IP addresses and URLs/domains with Warn indicators cause a warning message to be displayed when a user attempts to access those locations. Users can choose to bypass the warning and proceed to the IP address or URL/domain.

> [!IMPORTANT]
> You can have up to 15,000 indicators in your tenant.

The following table summarizes IoC types and available actions:

| Indicator type | Available actions |
|:---|:---|
| [Files](indicator-file.md) | - Allow <br/> - Audit <br/> - Warn <br/> - Block execution <br/> - Block and remediate |
| [IP addresses and URLs/domains](indicator-ip-domain.md) | - Allow <br/> - Audit <br/> - Warn <br/> - Block execution |
| [Certificates](indicator-certificates.md) | - Allow <br/> - Block and remediate |

> [!TIP]
> See the following resources to learn more about indicators:
>
> - [Create indicators](manage-indicators.md)
> - [Create indicators for files](indicator-file.md)
> - [Create indicators for IP addresses and URLs/domains](indicator-ip-domain.md)
> - [Create indicators based on certificates](indicator-certificates.md)
> - [Manage indicators](indicator-manage.md)

## Attack surface reduction exclusions

[Attack surface reduction rules](attack-surface-reduction.md) (also known as ASR rules) target certain software behaviors, such as:

- Launching executable files and scripts that attempt to download or run files
- Running scripts that seem to be obfuscated or otherwise suspicious
- Performing behaviors that apps don't usually initiate during normal day-to-day work

Sometimes, legitimate applications exhibit software behaviors that could be blocked by attack surface reduction rules. If that's occurring in your organization, you can define exclusions for certain files and folders. Such exclusions are applied to all attack surface reduction rules. See [Enable attack surface reduction (ASR) rules](attack-surface-reduction-rules-deployment-implement.md#exclude-files-and-folders).

Also note that while most ASR rules exclusions are independent from Microsoft Defender Antivirus exclusions, some ASR rules do honor some Microsoft Defender Antivirus exclusions. See [Attack surface reduction rules reference - Microsoft Defender Antivirus exclusions and ASR rules](attack-surface-reduction-rules-reference.md#microsoft-defender-antivirus-exclusions-and-asr-rules).

## Controlled folder access exclusions

[Controlled folder access](controlled-folders.md) monitors apps for activities that are detected as malicious and protects the contents of certain (protected) folders on Windows devices. Controlled folder access allows only trusted apps to access protected folders, such as common system folders (including boot sectors) and other folders that you specify. You can allow certain apps or signed executables to access protected folders by defining exclusions. See [Customize controlled folder access](customize-controlled-folders.md).

## Automation folder exclusions

Automation folder exclusions apply to [automated investigation and remediation](automated-investigations.md) in Defender for Endpoint, which is designed to examine alerts and take immediate action to resolve detected breaches. As alerts are triggered, and an automated investigation runs, a verdict (Malicious, Suspicious, or No threats found) is reached for each piece of evidence investigated. Depending on the [automation level](automation-levels.md) and other security settings, remediation actions can occur automatically or only upon approval by your security operations team.

You can specify folders, file extensions in a specific directory, and file names to be excluded from automated investigation and remediation capabilities. Such automation folder exclusions apply to all devices onboarded to Defender for Endpoint. These exclusions are still subject to antivirus scans. See [Manage automation folder exclusions](manage-automation-folder-exclusions.md).

## How exclusions and indicators are evaluated

Most organizations have several different types of exclusions and indicators to determine whether users should be able to access and use a file or process. Exclusions and indicators are processed in a particular order so that [policy conflicts are handled systematically](indicator-file.md#policy-conflict-handling).

The following image summarizes how exclusions and indicators are handled across Defender for Endpoint and Microsoft Defender Antivirus:

:::image type="content" source="images/mdav-mde-flow.png" alt-text="Screenshot that Shows the order in which exclusions and indicators are evaluated." lightbox="images/mdav-mde-flow.png":::

Here's how it works:

1. If a detected file/process isn't allowed by Windows Defender Application Control and AppLocker, it's blocked. Otherwise, it proceeds to Microsoft Defender Antivirus.

2. If the detected file/process isn't part of an exclusion for Microsoft Defender Antivirus, it's blocked. Otherwise, Defender for Endpoint checks for a custom indicator for the file/process.

3. If the detected file/process has a Block or Warn indicator, that action is taken. Otherwise, the file/process is allowed, and proceeds to evaluation by attack surface reduction rules, controlled folder access, and SmartScreen protection.

4. If the detected file/process isn't blocked by attack surface reduction rules, controlled folder access, or SmartScreen protection, it proceeds to Microsoft Defender Antivirus.

5. If the detected file/process isn't allowed by Microsoft Defender Antivirus, it's checked for an action based on its threat ID.

## How policy conflicts are handled

In cases where Defender for Endpoint indicators conflict, here's what to expect:

- If there are conflicting file indicators, the indicator that uses the most secure hash is applied. For example, SHA256 takes precedence over SHA-1, which takes precedence over MD5.

- If there are conflicting URL indicators, the more strict indicator is used. For [Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview), an indicator that uses the longest URL path is applied. For example, `www.dom.ain/admin/` takes precedence over `www.dom.ain`. ([Network protection](network-protection.md) applies to domains, rather than subpages within a domain.)

- If there are similar indicators for a file or process that have different actions, the indicator that is scoped to a specific device group takes precedence over an indicator that targets all devices.

## How automated investigation and remediation works with indicators

[Automated investigation and remediation capabilities](automated-investigations.md) in Defender for Endpoint first determine a verdict for each piece of evidence, and then take an action depending on Defender for Endpoint indicators. Thus, a file/process could get a verdict of "good" (which means no threats were found) and still be blocked if there's an indicator with that action. Similarly, an entity could get a verdict of "bad" (which means it's determined to be malicious) and still be allowed if there's an indicator with that action.

The following diagram shows how [automated investigation and remediation works with indicators](manage-indicators.md#automated-investigation-and-remediation-engine):

:::image type="content" source="images/air-exclusions.png" alt-text="Screenshot that Shows automated investigation and remediation and indicators." lightbox="images/air-exclusions.png":::

## Other server workloads and exclusions

If your organization is using other server workloads, such as Exchange Server, SharePoint Server, or SQL Server, be aware that only built-in server roles (that could be prerequisites for software you install later) on Windows Server are excluded by [automatic exclusions](#automatic-exclusions) feature (and only when using their default installation location). You'll likely need to define antivirus exclusions for these other workloads, or for all workloads if you disable automatic exclusions.

Here are some examples of technical documentation to identify and implement the exclusions you need:

- [Running antivirus software on Exchange Server](/exchange/antispam-and-antimalware/windows-antivirus-software?view=exchserver-2019&preserve-view=true)
- [Folders to exclude from antivirus scans on SharePoint Server](https://support.microsoft.com/office/certain-folders-may-have-to-be-excluded-from-antivirus-scanning-when-you-use-file-level-antivirus-software-in-sharepoint-01cbc532-a24e-4bba-8d67-0b1ed733a3d9)
- [Choosing antivirus software for SQL Server](https://support.microsoft.com/topic/how-to-choose-antivirus-software-to-run-on-computers-that-are-running-sql-server-feda079b-3e24-186b-945a-3051f6f3a95b)

Depending on what you're using, you might need to refer to the documentation for that server workload.

> [!TIP]
> **Performance tip** Due to a variety of factors, Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are: 
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations, such as:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).

## See also

- [Important points about exclusions](configure-exclusions-microsoft-defender-antivirus.md#important-points-about-exclusions)
- [Common mistakes to avoid when defining exclusions](common-exclusion-mistakes-microsoft-defender-antivirus.md)
- [Blog post: The Hitchhiker's Guide to Microsoft Defender for Endpoint exclusions](https://cloudbrothers.info/en/guide-to-defender-exclusions/)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
