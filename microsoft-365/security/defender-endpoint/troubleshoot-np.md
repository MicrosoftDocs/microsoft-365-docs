---
title: Troubleshoot problems with Network protection
description: Resources and sample code to troubleshoot issues with Network protection in Microsoft Defender for Endpoint.
keywords: troubleshoot, error, fix, windows defender eg, asr, rules, hips, troubleshoot, audit, exclusion, false positive, broken, blocking, Microsoft Defender for Endpoint
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
audience: ITPro
author: dansimp
ms.author: dansimp
ms.reviewer: oogunrinde
manager: dansimp
ms.technology: mde
ms.topic: how-to
---

# Troubleshoot network protection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!TIP]
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-pullalerts-abovefoldlink) 


When you use [Network protection](network-protection.md) you may encounter issues, such as:

- Network protection blocks a website that is safe (false positive)
- Network protection fails to block a suspicious or known malicious website (false negative)

There are four steps to troubleshooting these problems:

1. Confirm prerequisites
2. Use audit mode to test the rule
3. Add exclusions for the specified rule (for false positives)
4. Submit support logs

## Confirm prerequisites

Network protection will only work on devices with the following conditions:

>[!div class="checklist"]
> - Endpoints are running Windows 10 Pro or Enterprise edition, version 1709 or higher.
> - Endpoints are using Microsoft Defender Antivirus as the sole antivirus protection app. [See what happens when you are using a non-Microsoft antivirus solution](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).
> - [Real-time protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus) is enabled.
> - [Cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus) is enabled.
> - Audit mode is not enabled. Use [Group Policy](enable-network-protection.md#group-policy) to set the rule to **Disabled** (value: **0**).

## Use audit mode

You can enable network protection in audit mode and then visit a website that we've created to demo the feature. All website connections will be allowed by network protection but an event will be logged to indicate any connection that would have been blocked if network protection was enabled.

1. Set network protection to **Audit mode**.

   ```PowerShell
   Set-MpPreference -EnableNetworkProtection AuditMode
   ```

2. Perform the connection activity that is causing an issue (for example, attempt to visit the site, or connect to the IP address you do or don't want to block).

3. [Review the network protection event logs](network-protection.md#review-network-protection-events-in-windows-event-viewer) to see if the feature would have blocked the connection if it had been set to **Enabled**.
   
   If network protection is not blocking a connection that you are expecting it should block, enable the feature.

   ```PowerShell
   Set-MpPreference -EnableNetworkProtection Enabled
   ```

## Report a false positive or false negative

If you've tested the feature with the demo site and with audit mode, and network protection is working on pre-configured scenarios, but is not working as expected for a specific connection, use the [Windows Defender Security Intelligence web-based submission form](https://www.microsoft.com/wdsi/filesubmission) to report a false negative or false positive for network protection. With an E5 subscription, you can also [provide a link to any associated alert](alerts-queue.md).

See [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md).

## Exclude website from network protection scope

To allow the website that is being blocked (false positive), add its URL to the [list of trusted sites](https://blogs.msdn.microsoft.com/asiatech/2014/08/19/how-to-add-web-sites-to-trusted-sites-via-gpo-from-dc-installed-ie10-or-higher-ie-version/). Web resources from this list bypass the network protection check.

## Collect diagnostic data for file submissions

When you report a problem with network protection, you are asked to collect and submit diagnostic data that can be used by Microsoft support and engineering teams to help troubleshoot issues.

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
reg add "HKLM\Software\Microsoft\Windows Defender" /v ProxyServer /d "<proxy IP address: Port>" /f
```

---OR---


```powershell
reg add "HKLM\Software\Microsoft\Windows Defender" /v ProxyPacUrl /d "<Proxy PAC url>" /f
```

You can configure the registry key by using PowerShell, Microsoft Endpoint Manager, or Group Policy. Here are some resources to help:
- [Working with Registry Keys](/powershell/scripting/samples/working-with-registry-keys)
- [Configure custom client settings for Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection-configure-client)
- [Use Group Policy settings to manage Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection-group-policies)

## See also

- [Network protection](network-protection.md)
- [Evaluate network protection](evaluate-network-protection.md)
- [Enable network protection](enable-network-protection.md)
- [Address false positives/negatives in Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
