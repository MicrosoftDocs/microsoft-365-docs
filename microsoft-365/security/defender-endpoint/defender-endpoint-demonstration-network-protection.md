---
title: Microsoft Defender for Endpoint Network protection demonstrations
description: Shows how Network protection prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet.
keywords: network protection, protect against phishing scams, protect against exploits, protect against malicious content, demonstration 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
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
ms.subservice: mde
---

# Network protection demonstrations

Network Protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet.

## Scenario requirements and setup

- Windows 10 1709 build 16273
- Microsoft Defender Antivirus

## PowerShell command

Set-MpPreference -EnableNetworkProtection Enabled

### States
- Enabled = Block mode (1)
- AuditMode = Audit Mode (2)
- Disabled = Off (0)

## Verify configuration

Get-MpPreference

## Scenario

1. Turn on Network Protection using powershell command: Set-MpPreference -EnableNetworkProtection Enabled
2. Using the browser of your choice (not Edge*), navigate to the [Network Protection website test](https://smartscreentestratings2.net/) (Edge has other security measures in place to protect from this vulnerability(smartscreen))

## Expected results

Navigation to the website should be blocked and you should see a "Connection blocked" notification.

## Clean-up

Set-MpPreference -EnableNetworkProtection Disabled

## See also

[Network Protection](network-protection.md)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
