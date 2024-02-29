---
title: Evaluate network protection
description: See how network protection works by testing common scenarios that it protects against.
ms.service: defender-endpoint
ms.localizationpriority: medium
audience: ITPro
ms.topic: conceptual
author: siosulli
ms.author: siosulli
ms.reviewer: 
manager: deniseb
ms.subservice: asr
ms.collection: 
- m365-security
- tier2
- mde-asr
search.appverid: met150
ms.date: 12/18/2020
---

# Evaluate network protection

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

[Network protection](network-protection.md) helps prevent employees from using any application to access dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet.

This article helps you evaluate network protection by enabling the feature and guiding you to a testing site. The sites in this evaluation article aren't malicious. They're specially created websites that pretend to be malicious. The site replicates the behavior that would happen if a user visited a malicious site or domain.

## Enable network protection in audit mode

Enable network protection in audit mode to see which IP addresses and domains might be blocked. You can make sure it doesn't affect line-of-business apps, or get an idea of how often blocks occur.

1. Type **powershell** in the Start menu, right-click **Windows PowerShell** and select **Run as administrator**
2. Enter the following cmdlet:

    ```PowerShell
    Set-MpPreference -EnableNetworkProtection AuditMode
    ```

### Visit a (fake) malicious domain

1. Open Internet Explorer, Google Chrome, or any other browser of your choice.

2. Go to [https://smartscreentestratings2.net](https://smartscreentestratings2.net).

    The network connection is allowed and a test message displays.
    
    :::image type="content" source="images/np-notif.png" alt-text="The connection blockage notification" lightbox="images/np-notif.png":::

> [!NOTE]
> Network connections can be successful even though a site is blocked by network protection. To learn more, see [Network protection and the TCP three-way handshake](network-protection.md#network-protection-and-the-tcp-three-way-handshake).

## Review network protection events in Windows Event Viewer

To review apps that would have been blocked, open Event Viewer and filter for Event ID 1125 in the Microsoft-Windows-Windows Defender/Operational log. The following table lists all network protection events.

| Event ID | Provide/Source | Description |
|---|---|---|
| 5007 | Windows Defender (Operational) | Event when settings are changed |
| 1125 | Windows Defender (Operational) | Event when a network connection is audited |
| 1126 | Windows Defender (Operational) | Event when a network connection is blocked |

### Troubleshooting Network Protection
If network protection fails to detect, make sure that the following pre-requisites are enabled:

1. Microsoft Defender Antivirus is primary (active mode)

1. [Behavior Monitoring is enabled](/microsoft-365/security/defender-endpoint/behavior-monitor)

1. [Cloud Protection is enabled](/microsoft-365/security/defender-endpoint/enable-cloud-protection-microsoft-defender-antivirus)

1. [Cloud Protection network connectivity is functional](/microsoft-365/security/defender-endpoint/configure-network-connections-microsoft-defender-antivirus)

## See also

- [Network protection](network-protection.md)

- [Network protection and the TCP three-way handshake](network-protection.md#network-protection-and-the-tcp-three-way-handshake)

- [Enable network protection](enable-network-protection.md)

- [Troubleshoot network protection](troubleshoot-np.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
