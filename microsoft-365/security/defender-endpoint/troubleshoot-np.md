---
title: Troubleshoot problems with Network protection
description: Resources and sample code to troubleshoot issues with Network protection in Microsoft Defender for Endpoint.
ms.service: defender-endpoint
ms.localizationpriority: medium
audience: ITPro
author: siosulli
ms.author: siosulli
ms.reviewer: oogunrinde, yongrhee
manager: deniseb
ms.subservice: asr
ms.topic: how-to
ms.collection: 
- m365-security
- tier3
- mde-asr
search.appverid: met150
ms.date: 03/03/2024
---

# Troubleshoot network protection

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business?branch=main)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!TIP]
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

This article provides troubleshooting information for [network protection](network-protection.md), in cases, such as:

- Network protection blocks a website that is safe (false positive)
- Network protection fails to block a suspicious or known malicious website (false negative)

There are four steps to troubleshooting these problems:

1. Confirm prerequisites
2. Use audit mode to test the rule
3. Add exclusions for the specified rule (for false positives)
4. Submit support logs

## Confirm prerequisites

Network protection works on devices with the following conditions:

> [!div class="checklist"]
> > - Endpoints are running Windows 10 Pro or Enterprise edition, version 1709 or higher.
> - Endpoints are using Microsoft Defender Antivirus as the sole antivirus protection app. [See what happens when you're using a non-Microsoft antivirus solution](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).
> - [Real-time protection](/windows/security/threat-protection/microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus) is enabled.
> - [Behavior Monitoring](/microsoft-365/security/defender-endpoint/behavior-monitor) is enabled.
> - [Cloud-delivered protection](/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus) is enabled.
> - [Cloud Protection network connectivity](/microsoft-365/security/defender-endpoint/configure-network-connections-microsoft-defender-antivirus) is functional.
> - Audit mode isn't enabled. Use [Group Policy](enable-network-protection.md#group-policy) to set the rule to **Disabled** (value: **0**).

## Use audit mode

You can enable network protection in audit mode and then visit a website designed to demo the feature. All website connections are allowed by network protection but an event is logged to indicate any connection that would be blocked if network protection were enabled.

1. Set network protection to **Audit mode**.

   ```PowerShell
   Set-MpPreference -EnableNetworkProtection AuditMode
   ```

2. Perform the connection activity that is causing an issue (for example, attempt to visit the site, or connect to the IP address you do or don't want to block).

3. [Review the network protection event logs](network-protection.md#review-network-protection-events-in-windows-event-viewer) to see if the feature would block the connection if it were set to **Enabled**.

   If network protection isn't blocking a connection that you're expecting it should block, enable the feature.

   ```PowerShell
   Set-MpPreference -EnableNetworkProtection Enabled
   ```

## Report a false positive or false negative

If you've tested the feature with the demo site and with audit mode, and network protection is working on preconfigured scenarios, but isn't working as expected for a specific connection, use the [Windows Defender Security Intelligence web-based submission form](https://www.microsoft.com/wdsi/filesubmission) to report a false negative or false positive for network protection. With an E5 subscription, you can also [provide a link to any associated alert](alerts-queue.md).

See [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md).

## Add exclusions

The current exclusion options are:

1. Setting up a custom allow indicator.

2. Using IP exclusions: `Add-MpPreference -ExclusionIpAddress 192.168.1.1`.

3. Excluding an entire process. For more information, see [Microsoft Defender Antivirus exclusions](configure-exclusions-microsoft-defender-antivirus.md). 

## Network Performance issues

In certain circumstances, a network protections component might contribute to slow network connections to Domain Controllers and/or Exchange servers. You might also notice Event ID 5783 NETLOGON errors.

To attempt to solve these issues, change Network Protection from ‘block mode’ to either ‘[audit mode](troubleshoot-np.md)’ or 'disabled'. If your network issues are fixed, follow the next steps to find out which component in Network Protection is contributing to the behavior. 

Disable the following components in order and test your network connectivity performance after disabling each one:

   1. [Disable Datagram Processing on Windows Server](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable Network Protection Perf Telemetry](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable FTP parsing](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable SSH parsing](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable RDP parsing](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable HTTP parsing](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable SMTP parsing](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable DNS over TCP parsing](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable DNS parsing ](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true) 
   1. [Disable inbound connection filtering](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)
   1. [Disable TLS parsing](/powershell/module/defender/set-mppreference?view=windowsserver2022-ps&preserve-view=true)

If your network performance issues persist after following these troubleshooting steps, then they're probably not related to network protection and you should look for other causes of your network performance issues.

## Collect diagnostic data for file submissions

When you report a problem with network protection, you're asked to collect and submit diagnostic data for Microsoft support and engineering teams to help troubleshoot issues.

1. Open an elevated command prompt and change to the Windows Defender directory:

   ```console
   cd c:\program files\windows defender
   ```

2. Run this command to generate the diagnostic logs:

   ```console
   mpcmdrun -getfiles
   ```

3. Attach the file to the submission form. By default, diagnostic logs are saved at `C:\ProgramData\Microsoft\Windows Defender\Support\MpSupportFiles.cab`.

## Resolve connectivity issues with network protection (for E5 customers)

Due to the environment where network protection runs, Microsoft is unable to see your operating system proxy settings. In some cases, network protection clients are unable to reach the cloud service. To resolve connectivity issues with network protection, configure one of the following registry keys so that network protection becomes aware of the proxy configuration:

```powershell
Set-MpPreference -ProxyServer <proxy IP address: Port>
```

---OR---

```powershell
Set-MpPreference -ProxyPacUrl <Proxy PAC url>
```

You can configure the registry key by using PowerShell, Microsoft Configuration Manager, or Group Policy. Here are some resources to help:

- [Working with Registry Keys](/powershell/scripting/samples/working-with-registry-keys)
- [Configure custom client settings for Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection-configure-client)
- [Use Group Policy settings to manage Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection-group-policies)

## See also

- [Network protection](network-protection.md)
- [Network protection and the TCP three-way handshake](network-protection.md#network-protection-and-the-tcp-three-way-handshake)
- [Evaluate network protection](evaluate-network-protection.md)
- [Enable network protection](enable-network-protection.md)
- [Address false positives/negatives in Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
