---
title: Microsoft Defender Advanced Threat Protection demonstration scenarios
description: Lists numerous Microsoft Defender Advanced Threat Protection demonstration scenarios that you can run.
keywords: demonstration Advanced Threat Protection, Microsoft Defender Advanced Threat Protection demonstration, anti-Malware demonstration, Cloud-delivered protection, Block at First Sight (BAFS), Potentially unwanted applications (PUA)s, Microsoft security intelligence VDI, VDI security, Attack Surface Reduction (ASR) rules demonstration, Controlled folder access demonstration, Exploit Protection, Network Protection, Microsoft Defender SmartScreen, edge SmartScreen, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: v-jweston
author: jweston-1
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Microsoft Defender Advanced Threat Protection (ATP) - demonstration scenarios

The following demonstration scenarios will help you learn about the capabilities of Microsoft Defender Advanced Threat Protection (ATP). None of the sample files are actually malicious, they are all harmless demonstration files.  We encourage you to read [Microsoft Defender Antivirus documentation](/windows/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10?ocid=wd-av-demo-home-top), and to download the [Evaluation guide](/windows/threat-protection/windows-defender-antivirus/evaluate-windows-defender-antivirus?ocid=wd-av-demo-home-top).

## [[ATP area name (ie, ~ to ASR and CFA, etc.)]]

### Block at First Sight (BAFS)

The BAFS feature in Microsoft Defender Antivirus analyzes newly-discovered files are analyzed and if found to be problematic, the files are blocked shortly thereafter from being accessed any ATP-enabled computer.

Try the [Block at First Sight \(BAFS\) demonstration)](advanced-threat-protection-demonstration-block-at-first-sight-bafs.md).

### Cloud-delivered protection

Cloud-delivered protection enables Windows Defender Antivirus to block most new, previously-unseen threats at first sight. When Windows Defender Antivirus needs additional intelligence to verify the intent of a suspicious file, it sends metadata to the cloud protection service (created by Microsoft). Within milliseconds, the cloud protection service can determine whether a file is safe or malicious.

Try our [Cloud-delivered protection demonstration](advanced-threat-protection-demonstration-cloud-delivered-protection.md) to confirm that cloud-delivered protection is working properly on your computer.

### Potentially unwanted applications (PUA)s

See how potentially unwanted applications are blocked on your network by running the [Potentially unwanted applications \(PUA\) demonstration](advanced-threat-protection-demonstration-potentially-unwanted-applications.md).

### VDI testing guide

Learn how Microsoft security intelligence update features function in a virtual desktop infrastructure to protect virtual machines while simultaneously minimizing impact on VDI hardware resources.

Download this guide

<!-- Hide {this intro with no subsequent list items}
[CURRENTLY{https://demo.wd.microsoft.com/Content/wdav-testing-vdi-ssu.pdf}{NEED link to: wdav-testing-vdi-ssu.pdf} ]
-->

to test new virtual desktop infrastructure security intelligence update features. This test requires VMs and a host running Windows 10 Insider Preview build 18323 or later.

## Attack surface reduction demonstration scenarios

Reduce your attack surfaces by minimizing the places where your organization is vulnerable to cyberthreats and attacks.

For more information, see [attack surface reduction](/windows/security/threat-protection/microsoft-defender-atp/overview-attack-surface-reduction?ocid=wd-av-demo-home-middle) documentation, and download the [Evaluation guides](/windows/security/threat-protection/windows-defender-antivirus/evaluate-windows-defender-antivirus?ocid=wd-av-demo-home-middle).

### Attack Surface Reduction (ASR) rules demonstration scenarios

Attack surface reduction rules identify certain software behaviors and respond to prevent potentially unwanted activities, such as:

- Launching executable files and scripts that attempt to download or run files
- Running obfuscated or otherwise suspicious scripts
- Performing behaviors that apps don't usually initiate during normal day-to-day work

See the [Attack surface reduction rules demonstrations](advanced-threat-protection-demonstration-attack-surface-reduction-rules.md), which provides safe sample files that you can download and use to trigger ASR rules.

### Controlled Folder Access (CFA)

Controlled folder access works by only allowing trusted apps to access protected folders. Protected folders are specified when controlled folder access is configured. Typically, commonly used folders, such as those used for documents, pictures, downloads, and so on, are included in the list of controlled folders.

Try the [Controlled folder access \(CFA\) demonstration](advanced-threat-protection-demonstration-controlled-folder-access.md) to experience CFA ransomware protection.

### Controlled Folder Access (CFA) test tool

The [Controlled folder access \(CFA\) demonstration test tool](advanced-threat-protection-demonstration-controlled-folder-access-test-tool.md) works in conjunction with the Controlled folder access (DFA) demonstration.

### Exploit Protection (EP)

Exploit protection helps protect against malware that uses exploits to infect devices and spread. Exploit protection consists of many mitigations that can be applied to either the operating system or individual apps.

See [Exploit protection \(EP\) demonstrations](advanced-threat-protection-demonstration-exploit-protection.md) for two exploit protection demonstration scenarios.

### Network Protection

Network protection is an attack surface reduction capability. It helps prevent employees from accessing dangerous domains through applications. Domains that host phishing scams, exploits, and other malicious content on the Internet are considered dangerous. Network protection expands the scope of Microsoft Defender SmartScreen to block all outbound HTTP(s) traffic that attempts to connect to low-reputation sources (based on the domain or hostname).

Try the [Network protection demonstration](advanced-threat-protection-demonstration-network-protection.md) to see the response when you navigate to a suspicious URL and trigger network protection.

## Microsoft Defender SmartScreen

SmartScreen Filters alert you to reported phishing and malware websites and helps you make informed decisions about downloads.

### App Reputation

When attempting to download a apps or files, SmartScreen responds in one of several ways, depending the reputation associated with apps and files available at that url.

Try the [Microsoft Defender SmartScreen app reputation demonstrations](advanced-threat-protection-demonstration-app-reputation.md) to see the demonstration scenarios using edge.

### URL Reputation

When attempting to access a URL, SmartScreen responds in one of several ways, depending the reputation associated with that URL.

Go to the [Microsoft Defender SmartScreen URL reputation demonstrations](advanced-threat-protection-demonstration-smartscreen-url-reputation.md) page to try several scenarios using edge.

<!-- Hide {this intro with no subsequent list items}
[## Windows Enterprise Features     ??? Keep???

As part of Olympia [Windows Insider Lab for Enterprise](https://olympia.windows.com/), you can try out these Enterprise features.

### Windows Insider lab for Enterprise

Visit Windows Insider lab for Enterprise for additional Enterprise and Security features.
{https://olympia.windows.com/info/features}]
-->

## See also

[https://www.microsoft.com/security/blog/microsoft-defender-advanced-threat-protection/](https://www.microsoft.com/security/blog/microsoft-defender-advanced-threat-protection/)
