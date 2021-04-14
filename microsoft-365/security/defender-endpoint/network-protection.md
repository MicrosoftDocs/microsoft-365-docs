---
title: Use network protection to help prevent connections to bad sites
description: Protect your network by preventing users from accessing known malicious and suspicious network addresses
keywords: Network protection, exploits, malicious website, ip, domain, domains
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
audience: ITPro
author: denisebmsft
ms.author: deniseb
ms.reviewer: 
manager: dansimp
ms.custom: asr
ms.technology: mde
ms.topic: how-to
---

# Protect your network

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

Network protection helps reduce the attack surface of your devices from Internet-based events. It prevents employees from using any application to access dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet. Network protection expands the scope of [Microsoft Defender SmartScreen](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview) to block all outbound HTTP(s) traffic that attempts to connect to low-reputation sources (based on the domain or hostname).

Network protection is supported on Windows, beginning with Windows 10, version 1709. Network protection is not yet supported on other operating systems, but web protection is supported using th new Microsoft Edge based on Chromium. To learn more, see [Web protection](web-protection-overview.md).

network protection extends the protection in [Web protection](web-protection-overview.md) to the operating system level. It provides web protection functionality in Edge to other supported browsers and non-browser applications. In addition, network protection provides visibility and blocking of indicators of compromise (IOCs) when used with [Endpoint detection and response](overview-endpoint-detection-response.md). For example, network protection works with your [custom indicators](manage-indicators.md).

For more information about how to enable network protection, see [Enable network protection](enable-network-protection.md). Use Group Policy, PowerShell, or MDM CSPs to enable and manage network protection in your network.

> [!TIP]
> See the Microsoft Defender for Endpoint testground site at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to see how network protection works.

Network protection works best with [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md), which gives you detailed reporting into exploit protection events and blocks as part of [alert investigation scenarios](investigate-alerts.md).

When network protection blocks a connection, a notification is displayed from the Action Center. Your security operations team can [customize the notification](customize-attack-surface-reduction.md#customize-the-notification) with your organization's details and contact information. In addition, individual attack surface reduction rules can be enabled and customized to suit certain techniques to monitor.

You can also use [audit mode](audit-windows-defender.md) to evaluate how network protection would impact your organization if it were enabled.

## Requirements

Network protection requires Windows 10 Pro or Enterprise, and Microsoft Defender Antivirus real-time protection.

| Windows version | Microsoft Defender Antivirus |
|:---|:---|
| Windows 10 version 1709 or later <p>Windows Server 1803 or later | [Microsoft Defender Antivirus real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) and [cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) must be enabled |

After you have enabled the services, you might need to configure your network or firewall to allow the connections between the services and your devices (also referred to as endpoints).  

- `.smartscreen.microsoft.com`
- `.smartscreen-prod.microsoft.com`

## Review network protection events in the Microsoft Defender for Endpoint Security Center

Microsoft Defender for Endpoint provides detailed reporting into events and blocks as part of its [alert investigation scenarios](investigate-alerts.md).

You can query Microsoft Defender for Endpoint data by using [advanced hunting](advanced-hunting-overview.md). If you're using [audit mode](audit-windows-defender.md), you can use advanced hunting to see how network protection settings would affect your environment if they were enabled.

Here is an example query

```kusto
DeviceEvents
| where ActionType in ('ExploitGuardNetworkProtectionAudited','ExploitGuardNetworkProtectionBlocked')
```

## Review network protection events in Windows Event Viewer

You can review the Windows event log to see events that are created when network protection blocks (or audits) access to a malicious IP or domain:

1. [Copy the XML directly](event-views.md).

2. Select **OK**.

This procedure creates a custom view that filters to only show the following events related to network protection:

| Event ID | Description |
|:---|:---|
| 5007 | Event when settings are changed |
| 1125 | Event when network protection fires in audit mode |
| 1126 | Event when network protection fires in block mode |

## Considerations for Windows virtual desktop running Windows 10 Enterprise Multi-Session

Due to the multi-user nature of Windows 10 Enterprise, keep the following points in mind:

1. Network protection is a device-wide feature and cannot be targeted to specific user sessions.

2. Web content filtering policies are also device wide.

3. If you need to differentiate between user groups, consider creating separate Windows Virtual Desktop host pools and assignments.

4. Test network protection in audit mode to assess its behavior before rolling out. 

5. Consider resizing your deployment if you have a large number of users or a large number of multi-user sessions.

### Alternative option for network protection

For Windows 10 Enterprise Multi-Session 1909 and up, used in Windows Virtual Desktop on Azure, network protection for Microsoft Edge can be enabled using the following method:

1. Use [Turn on network protection](enable-network-protection.md) and follow the instructions to apply your policy.

2. Execute the following PowerShell command: `Set-MpPreference -AllowNetworkProtectionOnWinServer 1`

## Network protection troubleshooting

Due to the environment where Network Protection runs, Microsoft might not be able to detect operating system proxy settings. In some cases, network protection clients are unable to reach Cloud Service. To resolve the connectivity problem, customers with E5 licenses should configure one of the following Defender registry keys:

```console
reg add "HKLM\Software\Microsoft\Windows Defender" /v ProxyServer /d "<proxy IP address: Port>" /f
reg add "HKLM\Software\Microsoft\Windows Defender" /v ProxyPacUrl /d "<Proxy PAC url>" /f

```

## Related articles

- [Evaluate network protection](evaluate-network-protection.md) | Undertake a quick scenario that demonstrates how the feature works, and what events would typically be created.

- [Enable network protection](enable-network-protection.md) | Use Group Policy, PowerShell, or MDM CSPs to enable and manage network protection in your network.
