---
title: Attack surface reduction rules
description: Lists details about attack surface reduction rules on a per-rule basis.
keywords: Attack surface reduction rules, ASR, asr rules, hips, host intrusion prevention system, protection rules, anti-exploit rules, antiexploit, exploit rules, infection prevention rules, Microsoft Defender for Endpoint, configure ASR rules
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
audience: ITPro
author: jweston-1
ms.author: v-jweston
ms.reviewer: oogunrinde, sugamar, jcedola
manager: dansimp
ms.custom: asr
ms.technology: mde
ms.topic: article
---

# Attack surface reduction rules

This article provides information about attack reduction rules:  

- [Supported operating system versions](#supported-operating-systems)
- [Supported configuration management systems](#supported-configuration-management-systems)
- [Per-rule-descriptions](#per-rule-descriptions)
  - Rule descriptions
  - GUIDs
  - Configuration management system rule names

## Supported operating systems

Links to information about operating system versions referenced in this table are listed below this table.

> [!Note]
>
> - Unless otherwise indicated, the minimum Windows&nbsp;10 build is version 1709 (RS3, build 16299) or later; the minimum Windows&nbsp;Server build is version is 1809 or later.
>
> - \* All rules support file and folder exclusions, unless stated otherwise.

| Rule name |  Windows&nbsp;10 | Windows&nbsp;Server 2019 | Windows&nbsp;Server | Windows&nbsp;Server 2016 | Windows&nbsp;Server 2012 R2 |
|---|:---:|:---:|:---:|:---:|:---:|
|[Block abuse of exploited vulnerable signed drivers](#block-abuse-of-exploited-vulnerable-signed-drivers) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> version 1803 (Semi-Annual Channel) or later |  |  |
|[Block Adobe Reader from creating child processes](#block-adobe-reader-from-creating-child-processes) | ![supported](images/checkmark.png) <br><br> version 1809 or later | ![supported](images/checkmark.png) | ![supported](images/checkmark.png)  <br><br> |  |  |
|[Block all Office applications from creating child processes](#block-all-office-applications-from-creating-child-processes) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block credential stealing from the Windows local security authority subsystem (lsass.exe)](#block-credential-stealing-from-the-windows-local-security-authority-subsystem) | ![supported](images/checkmark.png) <br><br> version 1803 or later | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block executable content from email client and webmail](#block-executable-content-from-email-client-and-webmail) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block executable files from running unless they meet a prevalence, age, or trusted list criterion](#block-executable-files-from-running-unless-they-meet-a-prevalence-age-or-trusted-list-criterion) | ![supported](images/checkmark.png) <br><br> version 1803 or later | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block execution of potentially obfuscated scripts](#block-execution-of-potentially-obfuscated-scripts) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block JavaScript or VBScript from launching downloaded executable content](#block-javascript-or-vbscript-from-launching-downloaded-executable-content) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block Office applications from creating executable content](#block-office-applications-from-creating-executable-content) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block Office applications from injecting code into other processes](#block-office-applications-from-injecting-code-into-other-processes)  | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block Office communication application from creating child processes](#block-office-communication-application-from-creating-child-processes) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block persistence through WMI event subscription](#block-persistence-through-wmi-event-subscription) <br><br> \* _File and folder exclusions not supported._ | ![supported](images/checkmark.png) <br><br> version 1903 (build 18362) or later| ![supported](images/checkmark.png) | ![supported](images/checkmark.png) <br><br> version 1903 (build 18362) or later |  |  |
|[Block process creations originating from PSExec and WMI commands](#block-process-creations-originating-from-psexec-and-wmi-commands) | ![supported](images/checkmark.png) <br><br> version 1803 or later | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br>  |  |  |
|[Block untrusted and unsigned processes that run from USB](#block-untrusted-and-unsigned-processes-that-run-from-usb) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Block Win32 API calls from Office macros](#block-win32-api-calls-from-office-macros) | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
|[Use advanced protection against ransomware](#use-advanced-protection-against-ransomware) | ![supported](images/checkmark.png) <br><br> version 1803 or later | ![supported](images/checkmark.png) <br><br> | ![supported](images/checkmark.png) <br><br> |  |  |
| **Rule name** |  **Windows&nbsp;10** | **Windows&nbsp;Server 2019** | **Windows&nbsp;Server** | **Windows&nbsp;Server 2016** | **Windows&nbsp;Server 2012 R2** |

### Operating system version

- [Windows 10, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows 10 Pro, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows 10 Enterprise, version 1709](/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows 10, version 1803](/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows 10, version 1809](/windows/whats-new/whats-new-windows-10-version-1809)

- [Windows Server, version 1803 (Semi-Annual Channel)](/windows-server/get-started/whats-new-in-windows-server-1803)
- [Windows Server, version 1809](/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](/windows-server/get-started-19/whats-new-19)

## Supported configuration management systems

Links to information about configuration management system versions referenced in this table are listed below this table.

|Rule name | Intune | Microsoft Endpoint Manager | Microsoft Endpoint Configuration Manager | Group Policy | PowerShell |
|---|:---:|:---:|:---:|:---:|:---:|
|[Block abuse of exploited vulnerable signed drivers](#block-abuse-of-exploited-vulnerable-signed-drivers) | ![supported](images/checkmark.png) <br><br>  |  ![supported](images/checkmark.png) <br><br> MEM OMA-URI |   |   |  ![supported](images/checkmark.png) <br><br> |
|[Block Adobe Reader from creating child processes](#block-adobe-reader-from-creating-child-processes) | ![supported](images/checkmark.png) |   | ![supported](images/checkmark.png) |   |   |
|[Block all Office applications from creating child processes](#block-all-office-applications-from-creating-child-processes) | ![supported](images/checkmark.png) |   | ![supported](images/checkmark.png) <br><br> CB 1710 |   |   |
|[Block credential stealing from the Windows local security authority subsystem (lsass.exe)](#block-credential-stealing-from-the-windows-local-security-authority-subsystem) | ![supported](images/checkmark.png)  |   |  ![supported](images/checkmark.png) <br><br> CB 1802 |   |   |
|[Block executable content from email client and webmail](#block-executable-content-from-email-client-and-webmail) | ![supported](images/checkmark.png) |  | ![supported](images/checkmark.png) <br><br> CB 1710 | ![supported](images/checkmark.png) |   |
|[Block executable files from running unless they meet a prevalence, age, or trusted list criterion](#block-executable-files-from-running-unless-they-meet-a-prevalence-age-or-trusted-list-criterion) | ![supported](images/checkmark.png) |   | ![supported](images/checkmark.png) <br><br> CB 1802 |   |   |
|[Block execution of potentially obfuscated scripts](#block-execution-of-potentially-obfuscated-scripts) | ![supported](images/checkmark.png) |   |  ![supported](images/checkmark.png)  <br><br> CB 1710 |   |   |
|[Block JavaScript or VBScript from launching downloaded executable content](#block-javascript-or-vbscript-from-launching-downloaded-executable-content) | ![supported](images/checkmark.png) |   |  ![supported](images/checkmark.png) <br><br> CB 1710 |   |   |
|[Block Office applications from creating executable content](#block-office-applications-from-creating-executable-content) | ![supported](images/checkmark.png) <br><br> |  | ![supported](images/checkmark.png) <br><br> CB 1710 <br><br> |   |   |
|[Block Office applications from injecting code into other processes](#block-office-applications-from-injecting-code-into-other-processes) | ![supported](images/checkmark.png) |  |  ![supported](images/checkmark.png) <br><br> CB 1710 |   |   |
|[Block Office communication application from creating child processes](#block-office-communication-application-from-creating-child-processes) | ![supported](images/checkmark.png) |  | ![supported](images/checkmark.png) <br><br>  CB 1710 |   |   |
|[Block persistence through WMI event subscription](#block-persistence-through-wmi-event-subscription) |  |  |  |   |   |
|[Block process creations originating from PSExec and WMI commands](#block-process-creations-originating-from-psexec-and-wmi-commands) | ![supported](images/checkmark.png) |   |   |   |   |
|[Block untrusted and unsigned processes that run from USB](#block-untrusted-and-unsigned-processes-that-run-from-usb) | ![supported](images/checkmark.png) |   | ![supported](images/checkmark.png) <br><br> CB 1802 <br><br> |   |   |
|[Block Win32 API calls from Office macros](#block-win32-api-calls-from-office-macros) | ![supported](images/checkmark.png) |   | ![supported](images/checkmark.png) <br><br> CB 1710 <br><br> |   |   |
|[Use advanced protection against ransomware](#use-advanced-protection-against-ransomware) | ![supported](images/checkmark.png) |   |  ![supported](images/checkmark.png) <br><br>  CB 1802 |   |   |
| **Rule name** | **Intune** | **Microsoft Endpoint Manager** | **Microsoft Endpoint Configuration Manager** | **Group Policy** | **PowerShell** |

- [Configuration Manager CB 1710](/configmgr/core/servers/manage/updates)
- [Configuration Manager CB 1802](/configmgr/core/servers/manage/updates)
- [Microsoft Endpoint Manager CB 1710](/configmgr/core/servers/manage/updates)
- [System Center Configuration Manager (SCCM) CB 1710](/configmgr/core/servers/manage/updates) <br>_SCCM is now Microsoft Endpoint Configuration Manager._

## Per rule descriptions

### Block abuse of exploited vulnerable signed drivers

This rule prevents an application from writing a vulnerable signed driver to disk. In-the-wild, vulnerable signed drivers can be exploited by local applications \- _that have sufficient privileges_ \- to gain access to the kernel. Vulnerable signed drivers enable attackers to disable or circumvent security solutions, eventually leading to system compromise.

The **Block abuse of exploited vulnerable signed drivers** rule does not block a driver already existing on the system from being loaded.

>[!NOTE]
>
> You can configure this rule using MEM OMA-URI. See [MEM OMA-URI](enable-attack-surface-reduction.md#mem) for configuring custom rules.
>
> You can also configure this rule using [PowerShell](enable-attack-surface-reduction.md#powershell).
>
> To have a driver examined, use this Web site to [Submit a driver for analysis](https://www.microsoft.com/en-us/wdsi/driversubmission).

Intune Name: `Block abuse of exploited vulnerable signed drivers`

GUID:  `56a863a9-875e-4185-98a7-b882c64b5ce5`

### Block Adobe Reader from creating child processes

This rule prevents attacks by blocking Adobe Reader from creating processes.

Through social engineering or exploits, malware can download and launch payloads, and break out of Adobe Reader. By blocking child processes from being generated by Adobe Reader, malware attempting to use it as a vector are prevented from spreading.

Intune name: `Process creation from Adobe Reader (beta)`

Configuration Manager name: Not yet available

GUID: `7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c`

### Block all Office applications from creating child processes

This rule blocks Office apps from creating child processes. Office apps include Word, Excel, PowerPoint, OneNote, and Access.

Creating malicious child processes is a common malware strategy. Malware that abuse Office as a vector often run VBA macros and exploit code to download and attempt to run more payloads. However, some legitimate line-of-business applications might also generate child processes for benign purposes; such as spawning a command prompt or using PowerShell to configure registry settings.

Intune name: `Office apps launching child processes`

Configuration Manager name: `Block Office application from creating child processes`

GUID: `D4F940AB-401B-4EFC-AADC-AD5F3C50688A`

### Block credential stealing from the Windows local security authority subsystem

This rule helps prevent credential stealing by locking down Local Security Authority Subsystem Service (LSASS).

LSASS authenticates users who sign in on a Windows computer. Microsoft Defender Credential Guard in Windows 10 normally prevents attempts to extract credentials from LSASS. However, some organizations can't enable Credential Guard on all of their computers because of compatibility issues with custom smartcard drivers or other programs that load into the Local Security Authority (LSA). In these cases, attackers can use hack tools like Mimikatz to scrape cleartext passwords and NTLM hashes from LSASS.

> [!NOTE]
> In some apps, the code enumerates all running processes and attempts to open them with exhaustive permissions. This rule denies the app's process open action and logs the details to the security event log. This rule can generate a lot of noise. If you have an app that simply enumerates LSASS, but has no real impact in functionality, there is NO need to add it to the exclusion list. By itself, this event log entry doesn't necessarily indicate a malicious threat.

Intune name: `Flag credential stealing from the Windows local security authority subsystem`

Configuration Manager name: `Block credential stealing from the Windows local security authority subsystem`

GUID: `9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2`

### Block executable content from email client and webmail

This rule blocks the following file types from launching from email opened within the Microsoft Outlook application, or Outlook.com and other popular webmail providers:

- Executable files (such as .exe, .dll, or .scr)
- Script files (such as a PowerShell .ps, Visual Basic .vbs, or JavaScript .js file)

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

Intune name: `Executables that don't meet a prevalence, age, or trusted list criteria`

Configuration Manager name: `Block executable files from running unless they meet a prevalence, age, or trusted list criteria`

GUID: `01443614-cd74-433a-b99e-2ecdc07bfc25`

### Block execution of potentially obfuscated scripts

This rule detects suspicious properties within an obfuscated script.

Script obfuscation is a common technique that both malware authors and legitimate applications use to hide intellectual property or decrease script loading times. Malware authors also use obfuscation to make malicious code harder to read, which prevents close scrutiny by humans and security software.

Intune name: `Obfuscated js/vbs/ps/macro code`

Configuration Manager name: `Block execution of potentially obfuscated scripts`

GUID: `5BEB7EFE-FD9A-4556-801D-275E5FFC04CC`

### Block JavaScript or VBScript from launching downloaded executable content

This rule prevents scripts from launching potentially malicious downloaded content. Malware written in JavaScript or VBScript often acts as a downloader to fetch and launch other malware from the Internet.

Although not common, line-of-business applications sometimes use scripts to download and launch installers.

Intune name: `js/vbs executing payload downloaded from Internet (no exceptions)`

Configuration Manager name: `Block JavaScript or VBScript from launching downloaded executable content`

GUID: `D3E037E1-3EB8-44C8-A917-57927947596D`

### Block Office applications from creating executable content

This rule prevents Office apps, including Word, Excel, and PowerPoint, from creating potentially malicious executable content, by blocking malicious code from being written to disk.

Malware that abuses Office as a vector might attempt to break out of Office and save malicious components to disk. These malicious components would survive a computer reboot and persist on the system. Therefore, this rule defends against a common persistence technique.

Intune name: `Office apps/macros creating executable content`

SCCM name: `Block Office applications from creating executable content`

GUID: `3B576869-A4EC-4529-8536-B80A7769E899`

### Block Office applications from injecting code into other processes

This rule blocks code injection attempts from Office apps into other processes.

Attackers might attempt to use Office apps to migrate malicious code into other processes through code injection, so the code can masquerade as a clean process.

There are no known legitimate business purposes for using code injection.

This rule applies to Word, Excel, and PowerPoint.

Intune name: `Office apps injecting code into other processes (no exceptions)`

Configuration Manager name: `Block Office applications from injecting code into other processes`

GUID: `75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84`

### Block Office communication application from creating child processes

This rule prevents Outlook from creating child processes, while still allowing legitimate Outlook functions.

This rule protects against social engineering attacks and prevents exploiting code from abusing vulnerabilities in Outlook. It also protects against [Outlook rules and forms exploits](https://blogs.technet.microsoft.com/office365security/defending-against-rules-and-forms-injection/) that attackers can use when a user's credentials are compromised.

> [!NOTE]
> This rule blocks DLP policy tips and ToolTips in Outlook. This rule applies to Outlook and Outlook.com only.

Intune name: `Process creation from Office communication products (beta)`

Configuration Manager name: Not available

GUID: `26190899-1602-49e8-8b27-eb1d0a1ce869`

### Block persistence through WMI event subscription

This rule prevents malware from abusing WMI to attain persistence on a device.

> [!IMPORTANT]
> File and folder exclusions don't apply to this attack surface reduction rule.

Fileless threats employ various tactics to stay hidden, to avoid being seen in the file system, and to gain periodic execution control. Some threats can abuse the WMI repository and event model to stay hidden.

Intune name: Not available

Configuration Manager name: Not available

GUID: `e6db77e5-3df2-4cf1-b95a-636979351e5b`

### Block process creations originating from PSExec and WMI commands

This rule blocks processes created through [PsExec](/sysinternals/downloads/psexec) and [WMI](/windows/win32/wmisdk/about-wmi) from running. Both PsExec and WMI can remotely execute code, so there is a risk of malware abusing this functionality for command and control purposes, or to spread an infection throughout an organization's network.

> [!WARNING]
> Only use this rule if you're managing your devices with [Intune](/intune) or another MDM solution. This rule is incompatible with management through [Microsoft Endpoint Configuration Manager](/configmgr) because this rule blocks WMI commands the Configuration Manager client uses to function correctly.

Intune name: `Process creation from PSExec and WMI commands`

Configuration Manager name: Not applicable

GUID: `d1e49aac-8f56-4280-b9ba-993a6d77406c`

### Block untrusted and unsigned processes that run from USB

With this rule, admins can prevent unsigned or untrusted executable files from running from USB removable drives, including SD cards. Blocked file types include executable files (such as .exe, .dll, or .scr)

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

Intune name: `Advanced ransomware protection`

Configuration Manager name: `Use advanced protection against ransomware`

GUID: `c1db55ab-c21a-4637-bb3f-a12568109d35`
