---
title: Microsoft Defender Advanced Threat Protection Network protection demonstrations
description: 
keywords: network protection, protect against phishing scams, protect against exploits, protect against malicious content, demonstration 
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

# Network protection demonstrations

Network Protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet.

## Scenario requirements and setup

- Windows 10 1709 build 16273
- Microsoft Defender AV

## PowerShell command

Set-MpPreference -EnableNetworkProtection Enabled
Enabled = Block mode (1)
AuditMode = Audit Mode (2)
Disabled = Off (0)

## Verify configuration

Get-MpPreference

## Scenario

1. Turn on Network Protection using powershell command: Set-MpPreference -EnableNetworkProtection Enabled
2. Using the browser of your choice (not Edge*), navigate to the Network Protection website test
   *Edge has other security measures in place to protect from this vulnerability(smartscreen)

## Expected results

Navigation to the website should be blocked and you should see a "Connection blocked" notification.

## Clean-up

Set-MpPreference -EnableNetworkProtection Disabled

## See also

[Network Protection](/windows/threat-protection/windows-defender-exploit-guard/network-protection-exploit-guard?ocid=wd-av-demo-np-bottom)

[Microsoft Defender Advanced Threat Protection (ATP) - demonstration scenarios](advanced-threat-protection-demonstrations.md)
