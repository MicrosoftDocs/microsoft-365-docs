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
ms.subservice: mde
ms.date: 10/21/2022
---

# Network protection demonstrations

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Network Protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that may host phishing scams, exploits, and other malicious content on the Internet.

## Scenario requirements and setup

- Windows 10 1709 build 16273, Windows 11
- Microsoft Defender Antivirus

## PowerShell command

```powershell
Set-MpPreference -EnableNetworkProtection Enabled
```

## Rule states

|State | Mode| Numeric value |
|:---|:---|:---|
| Disabled | = Off | 0 |
| Enabled | = Block mode | 1 |
| Audit | = Audit mode | 2 |

## Verify configuration

```powershell
Get-MpPreference
```

## Scenario

1. Turn on Network Protection using powershell command:

   ```powershell
   Set-MpPreference -EnableNetworkProtection Enabled
   ```

2. Using the browser of your choice (not Microsoft Edge*), navigate to the [Network Protection website test](https://smartscreentestratings2.net/). Microsoft Edge has other security measures in place to protect from this vulnerability (SmartScreen).

## Expected results

Navigation to the website should be blocked and you should see a **Connection blocked** notification.

## Clean-up

```powershell
Set-MpPreference -EnableNetworkProtection Disabled
```

## See also

[Network Protection](network-protection.md)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
