---
title: Microsoft Defender for Endpoint Network protection demonstrations
description: Shows how Network protection prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet.
keywords: network protection, protect against phishing scams, protect against exploits, protect against malicious content, demonstration 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-endpoint
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
- demo
ms.topic: article
ms.subservice: asr
ms.date: 01/15/2024
---

# Network protection demonstrations

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows)

Network Protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet.

## Scenario requirements and setup

- Windows 11 or Windows 10 version 1709 build 16273 or newer.
- Windows Server 2022, Windows Server 2019, Windows Server 2016, and Windows Server 2012 R2 with the new unified MDE Client.
- macOS
- Linux
- Microsoft Defender Antivirus

## Windows

PowerShell command

```powershell
Set-MpPreference -EnableNetworkProtection Enabled
```

Rule states

|State | Mode| Numeric value |
|:---|:---|:---|
| Disabled | = Off | 0 |
| Enabled | = Block mode | 1 |
| Audit | = Audit mode | 2 |

Verify configuration

```powershell
Get-MpPreference
```

Scenario

1. Turn on Network Protection using powershell command:

   ```powershell
   Set-MpPreference -EnableNetworkProtection Enabled
   ```

2. Using the browser of your choice (not Microsoft Edge*), navigate to the [Network Protection website test](https://smartscreentestratings2.net/). Microsoft Edge has other security measures in place to protect from this vulnerability (SmartScreen).

Expected results

Navigation to the website should be blocked and you should see a **Connection blocked** notification.

Clean-up

```powershell
Set-MpPreference -EnableNetworkProtection Disabled
```

## macOS/Linux

To configure the Network Protection enforcement level, run the following command from the Terminal:


```bash
mdatp config network-protection enforcement-level --value [enforcement-level]
```

For example, to configure network protection to run in blocking mode, execute the following command:


```bash
mdatp config network-protection enforcement-level --value block
```

To confirm that network protection has been started successfully, run the following command from the Terminal, and verify that it prints "started":


```bash
mdatp health --field network_protection_status
```

To test Network Protection on macOS/Linux

1. Using the browser of your choice (not Microsoft Edge*), navigate to the [Network Protection website test](https://smartscreentestratings2.net/). Microsoft Edge has other security measures in place to protect from this vulnerability (SmartScreen).
1. or from terminal 

```bash
curl -o ~/Downloads/smartscreentestratings2.net https://smartscreentestratings2.net/ 
```

Expected results

Navigation to the website should be blocked and you should see a **Connection blocked** notification.

Clean-up


```bash
mdatp config network-protection enforcement-level --value audit
```

## See also

[Network Protection](network-protection.md)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
