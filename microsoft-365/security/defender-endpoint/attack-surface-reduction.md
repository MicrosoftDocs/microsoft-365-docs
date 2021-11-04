---
title: Use attack surface reduction rules to prevent malware infection
description: Attack surface reduction rules can help prevent exploits from using apps and scripts to infect devices with malware.
keywords: Attack surface reduction rules, asr, hips, host intrusion prevention system, protection rules, anti-exploit, antiexploit, exploit, infection prevention, Microsoft Defender for Endpoint
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: jweston-1
ms.author: v-jweston
ms.reviewer: oogunrinde, sugamar, jcedola
manager: dansimp
ms.custom: asr
ms.technology: mde
ms.topic: article
ms.collection: M365-security-compliance
---

# Use attack surface reduction rules to prevent malware infection

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

## Why attack surface reduction rules are important

Your organization's attack surface includes all the places where an attacker could compromise your organization's devices or networks. Reducing your attack surface means protecting your organization's devices and network, which leaves attackers with fewer ways to perform attacks. Configuring attack surface reduction rules in Microsoft Defender for Endpoint can help!

Attack surface reduction rules target certain software behaviors, such as:

- Launching executable files and scripts that attempt to download or run files
- Running obfuscated or otherwise suspicious scripts
- Performing behaviors that apps don't usually initiate during normal day-to-day work

Such software behaviors are sometimes seen in legitimate applications. However, these behaviors are often considered risky because they are commonly abused by attackers through malware. Attack surface reduction rules can constrain software-based risky behaviors and help keep your organization safe.

For more information about configuring attack surface reduction rules, see [Enable attack surface reduction rules](enable-attack-surface-reduction.md).

## Assess rule impact before deployment

You can assess how an attack surface reduction rule might affect your network by opening the security recommendation for that rule in [threat and vulnerability management](/windows/security/threat-protection/#tvm).

:::image type="content" source="images/asrrecommendation.png" alt-text="Security reco for attack surface reduction rule.":::

In the recommendation details pane, check for user impact to determine what percentage of your devices can accept a new policy enabling the rule in blocking mode without adversely affecting productivity.

See [Requirements](enable-attack-surface-reduction.md#requirements) in the "Enable attack surface reduction rules" article for information about supported operating systems and additional requirement information.

## Audit mode for evaluation

Use [audit mode](audit-windows-defender.md) to evaluate how attack surface reduction rules would affect your organization if enabled. Run all rules in audit mode first so you can understand how they affect your line-of-business applications. Many line-of-business applications are written with limited security concerns, and they might perform tasks in ways that seem similar to malware. By monitoring audit data and [adding exclusions](enable-attack-surface-reduction.md#exclude-files-and-folders-from-asr-rules) for necessary applications, you can deploy attack surface reduction rules without reducing productivity.

## Warn mode for users

(**NEW**!) Prior to warn mode capabilities, attack surface reduction rules that are enabled could be set to either audit mode or block mode. With the new warn mode, whenever content is blocked by an attack surface reduction rule, users see a dialog box that indicates the content is blocked. The dialog box also offers the user an option to unblock the content. The user can then retry their action, and the operation completes. When a user unblocks content, the content remains unblocked for 24 hours, and then blocking resumes.

Warn mode helps your organization have attack surface reduction rules in place without preventing users from accessing the content they need to perform their tasks.

### Requirements for warn mode to work

Warn mode is supported on devices running the following versions of Windows:

- [Windows 10, version 1809](/windows/whats-new/whats-new-windows-10-version-1809) or later
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809) or later

Microsoft Defender Antivirus must be running with real-time protection in [Active mode](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility#functionality-and-features-available-in-each-state).

Also, make sure [Microsoft Defender Antivirus and antimalware updates](/windows/security/threat-protection/microsoft-defender-antivirus/manage-updates-baselines-microsoft-defender-antivirus#monthly-platform-and-engine-versions) are installed.

- Minimum platform release requirement: `4.18.2008.9`
- Minimum engine release requirement: `1.1.17400.5`

For more information and to get your updates, see [Update for Microsoft Defender antimalware platform](https://support.microsoft.com/help/4052623/update-for-microsoft-defender-antimalware-platform).

### Cases where warn mode is not supported

Warn mode isn't supported for three attack surface reduction rules when you configure them in Microsoft Endpoint Manager. (If you use Group Policy to configure your attack surface reduction rules, warn mode is supported.) The three rules that do not support warn mode when you configure them in Microsoft Endpoint Manager are as follows:

- [Block JavaScript or VBScript from launching downloaded executable content](attack-surface-reduction-rules.md#block-javascript-or-vbscript-from-launching-downloaded-executable-content) (GUID `d3e037e1-3eb8-44c8-a917-57927947596d`)
- [Block persistence through WMI event subscription](attack-surface-reduction-rules.md#block-persistence-through-wmi-event-subscription) (GUID `e6db77e5-3df2-4cf1-b95a-636979351e5b`)
- [Use advanced protection against ransomware](attack-surface-reduction-rules.md#use-advanced-protection-against-ransomware) (GUID `c1db55ab-c21a-4637-bb3f-a12568109d35`)

Also, warn mode isn't supported on devices running older versions of Windows. In those cases, attack surface reduction rules that are configured to run in warn mode will run in block mode.

## Notifications and alerts

Whenever an attack surface reduction rule is triggered, a notification is displayed on the device. You can [customize the notification](customize-attack-surface-reduction.md#customize-the-notification) with your company details and contact information.

Also, when certain attack surface reduction rules are triggered, alerts are generated.

Notifications and any alerts that are generated can be viewed in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) (formerly called [Microsoft 365 Defender](microsoft-defender-security-center.md)).

## Advanced hunting and attack surface reduction events

You can use advanced hunting to view attack surface reduction events. To streamline the volume of incoming data, only unique processes for each hour are viewable with advanced hunting. The time of an attack surface reduction event is the first time that event is seen within the hour.

For example, suppose that an attack surface reduction event occurs on 10 devices during the 2:00 PM hour. Suppose that the first event occurred at 2:15, and the last at 2:45. With advanced hunting, you'll see one instance of that event (even though it actually occurred on 10 devices), and its timestamp will be 2:15 PM.

For more information about advanced hunting, see [Proactively hunt for threats with advanced hunting](advanced-hunting-overview.md).

## Attack surface reduction features across Windows versions

You can set attack surface reduction rules for devices that are running any of the following editions and versions of Windows:

- Windows 10 Pro, [version 1709](/windows/whats-new/whats-new-windows-10-version-1709) or later
- Windows 10 Enterprise, [version 1709](/windows/whats-new/whats-new-windows-10-version-1709) or later
- Windows Server, [version 1803 (Semi-Annual Channel)](/windows-server/get-started/whats-new-in-windows-server-1803) or later
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)
- [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)

  >[!NOTE]
  >Windows Server 2016 and Windows Server 2012 R2 will need to be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016) for this feature to work. 


Although attack surface reduction rules don't require a [Windows E5 license](/windows/deployment/deploy-enterprise-licenses), if you have Windows E5, you get advanced management capabilities. The advanced capabilities - available only in Windows E5 - include:

- The monitoring, analytics, and workflows available in [Defender for Endpoint](microsoft-defender-endpoint.md)
- The reporting and configuration capabilities in [Microsoft 365 Defender](/microsoft-365/security/defender/overview-security-center).

These advanced capabilities aren't available with a Windows Professional or Windows E3 license. However, if you do have those licenses, you can use Event Viewer and Microsoft Defender Antivirus logs to review your attack surface reduction rule events.

## Review attack surface reduction events in the Microsoft 365 Defender portal

Defender for Endpoint provides detailed reporting for events and blocks as part of alert investigation scenarios.

You can query Defender for Endpoint data in [Microsoft 365 Defender](microsoft-defender-security-center.md) by using [advanced hunting](advanced-hunting-query-language.md). If you're running [audit mode](audit-windows-defender.md), you can use advanced hunting to understand how attack surface reduction rules might affect your environment.

Here is an example query:

```kusto
DeviceEvents
| where ActionType startswith 'Asr'
```

## Review attack surface reduction events in Windows Event Viewer

You can review the Windows event log to view events generated by attack surface reduction rules:

1. Download the [Evaluation Package](https://aka.ms/mp7z2w) and extract the file *cfa-events.xml* to an easily accessible location on the device.

2. Enter the words, *Event Viewer*, into the Start menu to open the Windows Event Viewer.

3. Under **Actions**, select **Import custom view...**.

4. Select the file *cfa-events.xml* from where it was extracted. Alternatively, [copy the XML directly](event-views.md).

5. Select **OK**.

You can create a custom view that filters events to only show the following events, all of which are related to controlled folder access:

|Event ID|Description|
|---|---|
|5007|Event when settings are changed|
|1121|Event when rule fires in Block-mode|
|1122|Event when rule fires in Audit-mode|

The "engine version" listed for attack surface reduction events in the event log, is generated by Defender for Endpoint, not by the operating system. Defender for Endpoint is integrated with Windows 10, so this feature works on all devices with Windows 10 installed.

## Attack surface reduction rules

The following table and subsections describe each of the 16 attack surface reduction rules. The attack surface reduction rules are listed in alphabetical order, by rule name.

If you are configuring attack surface reduction rules by using Group Policy or PowerShell, you'll need the GUIDs. On the other hand, if you use Microsoft Endpoint Manager or Microsoft Intune, you do not need the GUIDs.

|Rule name|GUID|File & folder exclusions|Minimum OS supported|
|---|:---:|---|---|
|[Block abuse of exploited vulnerable signed drivers](#block-abuse-of-exploited-vulnerable-signed-drivers)|`56a863a9-875e-4185-98a7-b882c64b5ce5`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater) |
|[Block Adobe Reader from creating child processes](#block-adobe-reader-from-creating-child-processes)|`7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br>  [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016) <br> [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2) |
|[Block all Office applications from creating child processes](#block-all-office-applications-from-creating-child-processes)|`D4F940AB-401B-4EFC-AADC-AD5F3C50688A`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br> Windows Server 2016|
|[Block credential stealing from the Windows local security authority subsystem (lsass.exe)](#block-credential-stealing-from-the-windows-local-security-authority-subsystem-lsassexe)|`9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br><br>  [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016) <br> [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)|
|[Block executable content from email client and webmail](#block-executable-content-from-email-client-and-webmail)|`BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br> Windows Server 2016 <br> Windows Server 2012 R2|
|[Block executable files from running unless they meet a prevalence, age, or trusted list criterion](#block-executable-files-from-running-unless-they-meet-a-prevalence-age-or-trusted-list-criterion)|`01443614-cd74-433a-b99e-2ecdc07bfc25`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater|
|[Block execution of potentially obfuscated scripts](#block-execution-of-potentially-obfuscated-scripts)|`5BEB7EFE-FD9A-4556-801D-275E5FFC04CC`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br>  [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016) <br> [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2) |
|[Block JavaScript or VBScript from launching downloaded executable content](#block-javascript-or-vbscript-from-launching-downloaded-executable-content)|`D3E037E1-3EB8-44C8-A917-57927947596D`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br> Windows Server 2016|
|[Block Office applications from creating executable content](#block-office-applications-from-creating-executable-content)|`3B576869-A4EC-4529-8536-B80A7769E899`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br> Windows Server 2016 <br> Windows Server 2012 R2 |
|[Block Office applications from injecting code into other processes](#block-office-applications-from-injecting-code-into-other-processes)|`75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater|
|[Block Office communication application from creating child processes](#block-office-communication-application-from-creating-child-processes)|`26190899-1602-49e8-8b27-eb1d0a1ce869`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater|
|[Block persistence through WMI event subscription](#block-persistence-through-wmi-event-subscription)|`e6db77e5-3df2-4cf1-b95a-636979351e5b`|Not supported|[Windows 10, version 1903](/windows/whats-new/whats-new-windows-10-version-1903) (build 18362) or greater|
|[Block process creations originating from PSExec and WMI commands](#block-process-creations-originating-from-psexec-and-wmi-commands)|`d1e49aac-8f56-4280-b9ba-993a6d77406c`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br> <br>  [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016) <br> [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)
|
|[Block untrusted and unsigned processes that run from USB](#block-untrusted-and-unsigned-processes-that-run-from-usb)|`b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater|
|[Block Win32 API calls from Office macros](#block-win32-api-calls-from-office-macros)|`92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater|
|[Use advanced protection against ransomware](#use-advanced-protection-against-ransomware)|`c1db55ab-c21a-4637-bb3f-a12568109d35`|Supported|[Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater <br> <br>  [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016) <br> [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2) |
|

### Block abuse of exploited vulnerable signed drivers

This rule prevents an application from writing a vulnerable signed driver to disk. In-the-wild, vulnerable signed drivers can be exploited by local applications \- _that have sufficient privileges_ \- to gain access to the kernel. Vulnerable signed drivers enable attackers to disable or circumvent security solutions, eventually leading to system compromise.

The **Block abuse of exploited vulnerable signed drivers** rule does not block a driver already existing on the system from being loaded.

>[!NOTE]
>
> You can configure this rule using [MEM OMA-URI](enable-attack-surface-reduction.md#mem) for MEM OMA-URI custom rules procedural information.
>
> You can also configure this rule using [PowerShell](enable-attack-surface-reduction.md#powershell).
>
> To have a driver examined, use this Web site to [Submit a driver for analysis](https://www.microsoft.com/en-us/wdsi/driversubmission).

Supported operating systems:

- [Windows 10 Pro, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) or later
- [Windows 10 Enterprise, version 1709](/windows/whats-new/whats-new-windows-10-version-1709) or later
- [Windows Server, version 1803 (Semi-Annual Channel)](/windows-server/get-started/whats-new-in-windows-server-1803) or later
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)

Intune Name: `Block abuse of exploited vulnerable signed drivers`

GUID:  `56a863a9-875e-4185-98a7-b882c64b5ce5`

### Block Adobe Reader from creating child processes

This rule prevents attacks by blocking Adobe Reader from creating processes.

Through social engineering or exploits, malware can download and launch payloads, and break out of Adobe Reader. By blocking child processes from being generated by Adobe Reader, malware attempting to use it as a vector are prevented from spreading.

Supported operating systems:

- [Windows 10, version 1809](/windows/whats-new/whats-new-windows-10-version-1809)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)
- [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)

Intune name: `Process creation from Adobe Reader (beta)`

Configuration Manager name: Not yet available

GUID: `7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c`

### Block all Office applications from creating child processes

This rule blocks Office apps from creating child processes. Office apps include Word, Excel, PowerPoint, OneNote, and Access.

Creating malicious child processes is a common malware strategy. Malware that abuse Office as a vector often run VBA macros and exploit code to download and attempt to run more payloads. However, some legitimate line-of-business applications might also generate child processes for benign purposes; such as spawning a command prompt or using PowerShell to configure registry settings.

Supported operating systems:

- [Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](/configmgr/core/servers/manage/updates)

Intune name: `Office apps launching child processes`

Configuration Manager name: `Block Office application from creating child processes`

GUID: `D4F940AB-401B-4EFC-AADC-AD5F3C50688A`

### Block credential stealing from the Windows local security authority subsystem

This rule helps prevent credential stealing by locking down Local Security Authority Subsystem Service (LSASS).

LSASS authenticates users who sign in on a Windows computer. Microsoft Defender Credential Guard in Windows 10 normally prevents attempts to extract credentials from LSASS. However, some organizations can't enable Credential Guard on all of their computers because of compatibility issues with custom smartcard drivers or other programs that load into the Local Security Authority (LSA). In these cases, attackers can use hack tools like Mimikatz to scrape cleartext passwords and NTLM hashes from LSASS.

> [!NOTE]
> In some apps, the code enumerates all running processes and attempts to open them with exhaustive permissions. This rule denies the app's process open action and logs the details to the security event log. This rule can generate a lot of noise. If you have an app that simply enumerates LSASS, but has no real impact in functionality, there is NO need to add it to the exclusion list. By itself, this event log entry doesn't necessarily indicate a malicious threat.

Supported operating systems:

- [Windows 10, version 1803](/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1802](/configmgr/core/servers/manage/updates)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)
- [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)

Intune name: `Flag credential stealing from the Windows local security authority subsystem`

Configuration Manager name: `Block credential stealing from the Windows local security authority subsystem`

GUID: `9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2`

### Block executable content from email client and webmail

This rule blocks the following file types from launching from email opened within the Microsoft Outlook application, or Outlook.com and other popular webmail providers:

- Executable files (such as .exe, .dll, or .scr)
- Script files (such as a PowerShell .ps, Visual Basic .vbs, or JavaScript .js file)

Supported operating systems:

- [Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Microsoft Endpoint Manager CB 1710](/configmgr/core/servers/manage/updates)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)
- [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)

Intune name: `Execution of executable content (exe, dll, ps, js, vbs, etc.) dropped from email (webmail/mail client) (no exceptions)`

Microsoft Endpoint Manager name: `Block executable content from email client and webmail`

GUID: `BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550`

> [!NOTE]
> The rule **Block executable content from email client and webmail** has the following alternative descriptions, depending on which application you use:
>
> - Intune (Configuration Profiles): Execution of executable content (exe, dll, ps, js, vbs, etc.) dropped from email (webmail/mail client) (no exceptions).
> - Endpoint Manager: Block executable content download from email and webmail clients.
> - Group Policy: Block executable content from email client and webmail.

### Block executable files from running unless they meet a prevalence, age, or trusted list criterion

This rule blocks executable files, such as .exe, .dll, or .scr, from launching unless any of the following conditions are met:

- Prevalence: The executable files are found on more than 1,000 endpoints
- Age: The executable files were released more than 24 hours ago
- Location: The executable files are included in a trusted list or an exclusion list

Launching untrusted or unknown executable files can be risky, as it might not be initially clear if the files are malicious.

> [!IMPORTANT]
> You must [enable cloud-delivered protection](/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus) to use this rule.
>
> The rule **Block executable files from running unless they meet a prevalence, age, or trusted list criterion** with GUID `01443614-cd74-433a-b99e-2ecdc07bfc25` is owned by Microsoft and is not specified by admins. This rule uses cloud-delivered protection to update its trusted list regularly.
>
> You can specify individual files or folders (using folder paths or fully qualified resource names) but you can't specify which rules or exclusions apply to.

Supported operating systems:

- [Windows 10, version 1803](/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1802](/configmgr/core/servers/manage/updates)

Intune name: `Executables that don't meet a prevalence, age, or trusted list criteria`

Configuration Manager name: `Block executable files from running unless they meet a prevalence, age, or trusted list criteria`

GUID: `01443614-cd74-433a-b99e-2ecdc07bfc25`

### Block execution of potentially obfuscated scripts

This rule detects suspicious properties within an obfuscated script.

Script obfuscation is a common technique that both malware authors and legitimate applications use to hide intellectual property or decrease script loading times. Malware authors also use obfuscation to make malicious code harder to read, which prevents close scrutiny by humans and security software.

Supported operating systems:

- [Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](/configmgr/core/servers/manage/updates)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)
- [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)

Intune name: `Obfuscated js/vbs/ps/macro code`

Configuration Manager name: `Block execution of potentially obfuscated scripts`

GUID: `5BEB7EFE-FD9A-4556-801D-275E5FFC04CC`

### Block JavaScript or VBScript from launching downloaded executable content

This rule prevents scripts from launching potentially malicious downloaded content. Malware written in JavaScript or VBScript often acts as a downloader to fetch and launch other malware from the Internet.

Although not common, line-of-business applications sometimes use scripts to download and launch installers.

Supported operating systems:

- [Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](/configmgr/core/servers/manage/updates)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)

Intune name: `js/vbs executing payload downloaded from Internet (no exceptions)`

Configuration Manager name: `Block JavaScript or VBScript from launching downloaded executable content`

GUID: `D3E037E1-3EB8-44C8-A917-57927947596D`

### Block Office applications from creating executable content

This rule prevents Office apps, including Word, Excel, and PowerPoint, from creating potentially malicious executable content, by blocking malicious code from being written to disk.

Malware that abuses Office as a vector might attempt to break out of Office and save malicious components to disk. These malicious components would survive a computer reboot and persist on the system. Therefore, this rule defends against a common persistence technique.

Supported operating systems:

- [Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [System Center Configuration Manager](/configmgr/core/servers/manage/updates) (SCCM) CB 1710 (SCCM is now Microsoft Endpoint Configuration Manager)

Intune name: `Office apps/macros creating executable content`

SCCM name: `Block Office applications from creating executable content`

GUID: `3B576869-A4EC-4529-8536-B80A7769E899`

### Block Office applications from injecting code into other processes

This rule blocks code injection attempts from Office apps into other processes.

Attackers might attempt to use Office apps to migrate malicious code into other processes through code injection, so the code can masquerade as a clean process.

There are no known legitimate business purposes for using code injection.

This rule applies to Word, Excel, and PowerPoint.

Supported operating systems:

- [Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](/configmgr/core/servers/manage/updates)

Intune name: `Office apps injecting code into other processes (no exceptions)`

Configuration Manager name: `Block Office applications from injecting code into other processes`

GUID: `75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84`

### Block Office communication application from creating child processes

This rule prevents Outlook from creating child processes, while still allowing legitimate Outlook functions.

This rule protects against social engineering attacks and prevents exploiting code from abusing vulnerabilities in Outlook. It also protects against [Outlook rules and forms exploits](https://blogs.technet.microsoft.com/office365security/defending-against-rules-and-forms-injection/) that attackers can use when a user's credentials are compromised.

> [!NOTE]
> This rule blocks DLP policy tips and ToolTips in Outlook. This rule applies to Outlook and Outlook.com only.

Supported operating systems:

- [Windows 10, version 1809](/windows/whats-new/whats-new-windows-10-version-1809)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)

Intune name: `Process creation from Office communication products (beta)`

Configuration Manager name: Not available

GUID: `26190899-1602-49e8-8b27-eb1d0a1ce869`

### Block persistence through WMI event subscription

This rule prevents malware from abusing WMI to attain persistence on a device.

> [!IMPORTANT]
> File and folder exclusions don't apply to this attack surface reduction rule.

Fileless threats employ various tactics to stay hidden, to avoid being seen in the file system, and to gain periodic execution control. Some threats can abuse the WMI repository and event model to stay hidden.

Supported operating systems:

- [Windows 10, version 1903](/windows/whats-new/whats-new-windows-10-version-1903)
- [Windows Server 1903](/windows-server/get-started-19/whats-new-in-windows-server-1903-1909)

Intune name: Not available

Configuration Manager name: Not available

GUID: `e6db77e5-3df2-4cf1-b95a-636979351e5b`

### Block process creations originating from PSExec and WMI commands

This rule blocks processes created through [PsExec](/sysinternals/downloads/psexec) and [WMI](/windows/win32/wmisdk/about-wmi) from running. Both PsExec and WMI can remotely execute code, so there is a risk of malware abusing this functionality for command and control purposes, or to spread an infection throughout an organization's network.

> [!WARNING]
> Only use this rule if you're managing your devices with [Intune](/intune) or another MDM solution. This rule is incompatible with management through [Microsoft Endpoint Configuration Manager](/configmgr) because this rule blocks WMI commands the Configuration Manager client uses to function correctly.

Supported operating systems:

- [Windows 10, version 1803](/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)
- [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)

Intune name: `Process creation from PSExec and WMI commands`

Configuration Manager name: Not applicable

GUID: `d1e49aac-8f56-4280-b9ba-993a6d77406c`

### Block untrusted and unsigned processes that run from USB

With this rule, admins can prevent unsigned or untrusted executable files from running from USB removable drives, including SD cards. Blocked file types include executable files (such as .exe, .dll, or .scr)

Supported operating systems:

- [Windows 10, version 1803](/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1802](/configmgr/core/servers/manage/updates)

Intune name: `Untrusted and unsigned processes that run from USB`

Configuration Manager name: `Block untrusted and unsigned processes that run from USB`

GUID: `b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4`

### Block Win32 API calls from Office macros

This rule prevents VBA macros from calling Win32 APIs.

Office VBA enables Win32 API calls. Malware can abuse this capability, such as [calling Win32 APIs to launch malicious shellcode](https://www.microsoft.com/security/blog/2018/09/12/office-vba-amsi-parting-the-veil-on-malicious-macros/) without writing anything directly to disk. Most organizations don't rely on the ability to call Win32 APIs in their day-to-day functioning, even if they use macros in other ways.

Supported operating systems:

- [Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](/configmgr/core/servers/manage/updates)

Intune name: `Win32 imports from Office macro code`

Configuration Manager name: `Block Win32 API calls from Office macros`

GUID: `92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B`

### Use advanced protection against ransomware

This rule provides an extra layer of protection against ransomware. It uses both client and cloud heuristics to determine whether a file resembles ransomware. This rule does not block files that have one or more of the following characteristics:

- The file has already been found to be unharmful in the Microsoft cloud.
- The file is a valid signed file.
- The file is prevalent enough to not be considered as ransomware.

The rule tends to err on the side of caution to prevent ransomware.

> [!NOTE]
> You must [enable cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) to use this rule.

Supported operating systems:

- [Windows 10, version 1803](/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1802](/configmgr/core/servers/manage/updates)
- [Windows Server 2016](/windows-server/get-started/whats-new-in-windows-server-2016)
- [Windows Server 2012 R2](/win32/srvnodes/what-s-new-for-windows-server-2012-r2)

Intune name: `Advanced ransomware protection`

Configuration Manager name: `Use advanced protection against ransomware`

GUID: `c1db55ab-c21a-4637-bb3f-a12568109d35`
