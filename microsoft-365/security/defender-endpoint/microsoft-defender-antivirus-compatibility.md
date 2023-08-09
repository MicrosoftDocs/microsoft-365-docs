---
title: Microsoft Defender Antivirus compatibility with other security products
description: Learn about Microsoft Defender Antivirus with other security products and the operating systems.
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.date: 06/14/2023
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: mkaminska, pahuijbr
manager: dansimp
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Microsoft Defender Antivirus compatibility with other security products

**Applies to:**

- Microsoft Defender Antivirus
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

**Platforms**
- Windows

Microsoft Defender Antivirus is automatically installed on endpoints running the following versions of Windows:

- Windows 10 or 11
- Windows Server 2022
- Windows Server 2019
- Windows Server, version 1803, or newer
- Windows Server 2016

What happens when another non-Microsoft antivirus/antimalware solution is used? Can you run Microsoft Defender Antivirus alongside another antivirus product? The answers depend on several factors, such as your operating system and whether you're using [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) together with your antivirus protection.

This article describes what happens with Microsoft Defender Antivirus and a non-Microsoft antivirus/antimalware solution, with and without Defender for Endpoint.

> [!IMPORTANT]
> - Microsoft Defender Antivirus is available on devices running Windows 10 and 11, Windows Server 2022, Windows Server 2019, Windows Server, version 1803 or newer, and Windows Server 2016. 
> - Microsoft Defender Antivirus is also available on Windows Server 2012 R2 when onboarded using the [modern, unified solution](/microsoft-365/security/defender-endpoint/configure-server-endpoints).
> - The [Defender for Endpoint modern unified solution on Windows Server 2012 R2](configure-server-endpoints.md#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution) automatically installs Microsoft Defender Antivirus in **Active mode**.
> - On Windows 8.1, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](/previous-versions/system-center/system-center-2012-R2/hh508760(v=technet.10)), which is managed through Microsoft Endpoint Configuration Manager.
> - Windows Defender is also offered for [consumer devices on Windows 8.1](/previous-versions/windows/it-pro/windows-8.1-and-8/dn344918(v=ws.11)#BKMK_WindowsDefender), although Windows Defender does not provide enterprise-level management.

## Antivirus protection without Defender for Endpoint

This section describes what happens when you use Microsoft Defender Antivirus alongside non-Microsoft antivirus/antimalware products on endpoints that aren't onboarded to Defender for Endpoint. 

In general, Microsoft Defender Antivirus doesn't run in passive mode on devices that aren't onboarded to Defender for Endpoint.

The following table summarizes what to expect:

|Windows version|Primary antivirus/antimalware solution|Microsoft Defender Antivirus state|
|:---|:---|:---|
|Windows 10 <br/> Windows 11|Microsoft Defender Antivirus|Active mode|
|Windows 10 <br/> Windows 11|A non-Microsoft antivirus/antimalware solution|Disabled mode (happens automatically)|
|Windows Server 2022 <br/> Windows Server 2019<br/> Windows Server, version 1803, or newer <br/> Windows Server 2016 <br/> Windows Server 2012 R2 |Microsoft Defender Antivirus|Active mode|
|Windows Server 2022<br/>Windows Server 2019<br/>Windows Server, version 1803, or newer <br/> Windows Server 2016 |A non-Microsoft antivirus/antimalware solution|Disabled<br/>(set manually; see the note that follows this table) |

> [!NOTE]
> On Windows Server, if you're running a non-Microsoft antivirus product, you can uninstall Microsoft Defender Antivirus by using the following PowerShell cmdlet (as an administrator): `Uninstall-WindowsFeature Windows-Defender`. Restart your server to finish removing Microsoft Defender Antivirus.
> On Windows Server 2016, you might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus*.

If the device is onboarded to Microsoft Defender for Endpoint, you can use Microsoft Defender Antivirus in passive mode as described later in this article.

## Microsoft Defender Antivirus and non-Microsoft antivirus/antimalware solutions

> [!NOTE]
> In general, Microsoft Defender Antivirus can be set to passive mode only on endpoints that are onboarded to Defender for Endpoint.

Whether Microsoft Defender Antivirus runs in active mode, passive mode, or is disabled depends on several factors, such as:

- Which version of Windows is installed on an endpoint
- Whether Microsoft Defender Antivirus is the primary antivirus/antimalware solution on the endpoint
- Whether the endpoint is onboarded to Defender for Endpoint
- Whether Smart App Control is turned on or is in evaluation mode. (See [What is Smart App Control](https://support.microsoft.com/topic/what-is-smart-app-control-285ea03d-fa88-4d56-882e-6698afdb7003)?)

The following table summarizes the state of Microsoft Defender Antivirus in several scenarios. 

|Antivirus/antimalware solution | Onboarded to Defender for Endpoint? | Smart App Control State | Microsoft Defender Antivirus state |
|---|---|---|---|
| Microsoft Defender Antivirus | Yes | N/A <br/>Smart App Control is a consumer-only product | Active mode |
| Microsoft Defender Antivirus | No | Off or Evaluation | Active mode |
| Microsoft Defender Antivirus | No | On | Passive mode (automatically) |
| A non-Microsoft antivirus/antimalware solution | Yes | N/A <br/>Smart App Control is a consumer-only product | Passive mode (automatically) |
| A non-Microsoft antivirus/antimalware solution | No | Evaluation or On | Passive mode (automatically) |

## Windows Server and passive mode

On Windows Server 2019, Windows Server, version 1803 or newer, Windows Server 2016, or  Windows Server 2012 R2, Microsoft Defender Antivirus doesn't enter passive mode automatically when you install a non-Microsoft antivirus product. In those cases, set Microsoft Defender Antivirus to passive mode to prevent problems caused by having multiple antivirus products installed on a server. You can set Microsoft Defender Antivirus to passive mode using a registry key as follows:

- Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`
- Name: `ForceDefenderPassiveMode`
- Type: `REG_DWORD`
- Value: `1`

You can view your protection status in PowerShell by using the command [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus). Check the value for `AMRunningMode`. You should see **Normal**, **Passive**, or **EDR Block Mode** if Microsoft Defender Antivirus is enabled on the endpoint. 

For passive mode to work on endpoints running Windows Server 2016 and Windows Server 2012 R2, those endpoints must be onboarded with the modern, unified solution described in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016). 

On Windows Server 2016, Windows Server 2012 R2, Windows Server version 1803 or newer, Windows Server 2019, and Windows Server 2022, if you're using a non-Microsoft antivirus product on an endpoint that *isn't* onboarded to Microsoft Defender for Endpoint, disable/uninstall Microsoft Defender Antivirus manually to prevent problems caused by having multiple antivirus products installed on a server. However, Defender for Endpoint includes capabilities that further extend the antivirus protection that is installed on your endpoint. If you have Defender for Endpoint, you can benefit from running Microsoft Defender Antivirus alongside another antivirus solution.

For example, [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md) provides added protection from malicious artifacts even if Microsoft Defender Antivirus isn't the primary antivirus product. Such capabilities require Microsoft Defender Antivirus to be installed and running in passive mode or active mode.

> [!TIP]
> On Windows Server 2016, you might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus*.

## Requirements for Microsoft Defender Antivirus to run in passive mode

In order for Microsoft Defender Antivirus to run in passive mode, endpoints must meet the following requirements:

- Operating system: Windows 10 or newer; Windows Server 2022, Windows Server 2019, or Windows Server, version 1803, or newer <br/>(Windows Server 2012 R2 and Windows Server 2016 if onboarded using the [modern, unified solution](/microsoft-365/security/defender-endpoint/configure-server-endpoints)). 
- Microsoft Defender Antivirus must be installed. 
- Another non-Microsoft antivirus/antimalware product must be installed and used as the primary antivirus solution. 
- Endpoints must be onboarded to Defender for Endpoint. 

> [!IMPORTANT]
> - Microsoft Defender Antivirus is only available on devices running Windows 10 and 11, Windows Server 2022, Windows Server 2016, Windows Server 2019, Windows Server, version 1803 or newer, Windows Server 2016, and Windows Server 2012 R2.
> - Passive mode is only supported on Windows Server 2012 R2 & 2016 when the device is onboarded using the [modern, unified solution](/microsoft-365/security/defender-endpoint/configure-server-endpoints). 
> - In Windows 8.1, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](/previous-versions/system-center/system-center-2012-R2/hh508760(v=technet.10)), which is managed through Microsoft Endpoint Configuration Manager.
> - Windows Defender is also offered for [consumer devices on Windows 8.1](/previous-versions/windows/it-pro/windows-8.1-and-8/dn344918(v=ws.11)#BKMK_WindowsDefender), although Windows Defender does not provide enterprise-level management.

## How Microsoft Defender Antivirus affects Defender for Endpoint functionality

Defender for Endpoint affects whether Microsoft Defender Antivirus can run in passive mode. And, the state of Microsoft Defender Antivirus can affect certain capabilities in Defender for Endpoint. For example, real-time protection works when Microsoft Defender Antivirus is in active or passive mode, but not when Microsoft Defender Antivirus is disabled or uninstalled.

> [!IMPORTANT]
> - The table in this section summarizes the features and capabilities that are actively working or not, according to whether Microsoft Defender Antivirus is in active mode, passive mode, or disabled/uninstalled. This table designed to be informational only.   
> - **Do not turn off capabilities**, such as real-time protection, cloud-delivered protection, or limited periodic scanning if you are using Microsoft Defender Antivirus in passive mode, or if you are using [EDR in block mode](edr-in-block-mode.md), which works behind the scenes to detect and remediate malicious artifacts that were detected post-breach.

| Protection | Microsoft Defender Antivirus <br/>(*Active mode*) | Microsoft Defender Antivirus <br/>(*Passive mode*) | Microsoft Defender Antivirus <br/>(*Disabled or uninstalled*) |
|:---|:---|:---|:---|:---| 
| [Real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) | Yes | [See note 1](#notes-about-protection-states) | No | 
| [Cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) | Yes | No  | No |
| [Network protection](network-protection.md)  | Yes | No | No |
| [Attack surface reduction rules](attack-surface-reduction.md)  | Yes | No | No  |
| [Limited periodic scanning availability](limited-periodic-scanning-microsoft-defender-antivirus.md) | No | Yes | No |
| [File scanning and detection information](review-scan-results-microsoft-defender-antivirus.md) | Yes | Yes <br/>[See note 2](#notes-about-protection-states) | No |
| [Threat remediation](configure-remediation-microsoft-defender-antivirus.md) | Yes | [See note 3](#notes-about-protection-states) | No | 
| [Security intelligence updates](microsoft-defender-antivirus-updates.md) | Yes | Yes <br/>[See note 4](#notes-about-protection-states) | No | 
| [Data Loss Prevention](../../compliance/endpoint-dlp-learn-about.md) | Yes | Yes | No | 
| [Controlled folder access](controlled-folders.md) | Yes |No | No | 
| [Web content filtering](web-content-filtering.md) | Yes | [See note 5](#notes-about-protection-states) | No | 
| [Device control](device-control-report.md) | Yes | Yes | No | 
| [PUA protection](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md) | Yes | No | No | 

### Notes about protection states

1. In general, when Microsoft Defender Antivirus is in passive mode, real-time protection doesn't provide any blocking or enforcement, even though it's enabled and in passive mode.

2. When Microsoft Defender Antivirus is in passive mode, scans aren't scheduled. If scans *are* scheduled in your configuration, the schedule is ignored. However, catchup scans continue to occur unless they are disabled. Scan tasks that are set up in Windows Task Scheduler continue to run according to their schedule. If you have scheduled tasks, you can remove them, if preferred.

3. When Microsoft Defender Antivirus is in passive mode, it doesn't remediate threats. However, [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md) can remediate threats. In this case, you might see alerts showing Microsoft Defender Antivirus as a source, even when Microsoft Defender Antivirus is in passive mode.

4. The security intelligence update cadence is controlled by Windows Update settings only. Defender-specific update schedulers (daily/weekly at specific time, interval-based) settings only work when Microsoft Defender Antivirus is in active mode. They're ignored in passive mode.

5. When Microsoft Defender Antivirus is in passive mode, web content filtering only works with the Microsoft Edge browser. 

> [!IMPORTANT]
> - [Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about) protection continues to operate normally when Microsoft Defender Antivirus is in either active or passive mode.
>
> - Don't disable, stop, or modify any of the associated services that are used by Microsoft Defender Antivirus, Defender for Endpoint, or the Windows Security app. This recommendation includes the *wscsvc*, *SecurityHealthService*, *MsSense*, *Sense*, *WinDefend*, or *MsMpEng* services and processes. Manually modifying these services can cause severe instability on your devices and can make your network vulnerable. Disabling, stopping, or modifying those services can also cause problems when using non-Microsoft antivirus solutions and how their information is displayed in the [Windows Security app](microsoft-defender-security-center-antivirus.md).
>
> - In Defender for Endpoint, you can turn EDR in block mode on, even if Microsoft Defender Antivirus isn't your primary antivirus solution. EDR in block mode detects and remediate malicious items that are found on the device (post breach). To learn more, see [EDR in block mode](edr-in-block-mode.md).

## How to confirm the state of Microsoft Defender Antivirus

You can use one of several methods to confirm the state of Microsoft Defender Antivirus. You can:

- [Use the Windows Security app to identify your antivirus app](#use-the-windows-security-app-to-identify-your-antivirus-app).
- [Use Task Manager to confirm that Microsoft Defender Antivirus is running](#use-task-manager-to-confirm-that-microsoft-defender-antivirus-is-running).
- [Use Windows PowerShell to confirm that Microsoft Defender Antivirus is running](#use-windows-powershell-to-confirm-that-microsoft-defender-antivirus-is-running).
- [Use Windows PowerShell to confirm that antivirus protection is running](#use-windows-powershell-to-confirm-that-antivirus-protection-is-running).

> [!IMPORTANT]
> Beginning with [platform version 4.18.2208.0 and later](microsoft-defender-antivirus-updates.md#monthly-platform-and-engine-versions): If a server has been onboarded to Microsoft Defender for Endpoint, the "Turn off Windows Defender" [group policy](configure-endpoints-gp.md#update-endpoint-protection-configuration) setting no longer completely disables Windows Defender Antivirus on Windows Server 2012 R2 and later. Instead, it place Microsoft Defender Antivirus into passive mode. In addition, the [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) allows a switch to active mode, but not to passive mode.
> 
> - If "Turn off Windows Defender" is already in place before onboarding to Microsoft Defender for Endpoint, Microsoft Defender Antivirus remains disabled.
> - To switch Microsoft Defender Antivirus to passive mode, even if it was disabled before onboarding, you can apply the [ForceDefenderPassiveMode configuration](switch-to-mde-phase-2.md#set-microsoft-defender-antivirus-to-passive-mode-on-windows-server) with a value of `1`. To place it into active mode, switch this value to `0` instead.
> 
> Note the modified logic for `ForceDefenderPassiveMode` when tamper protection is enabled: Once Microsoft Defender Antivirus is toggled to active mode, tamper protection prevents it from going back into passive mode even when `ForceDefenderPassiveMode` is set to `1`.

### Use the Windows Security app to identify your antivirus app

1. On a Windows device, open the Windows Security app.

2. Select **Virus & threat protection**.

3. Under **Who's protecting me?** select **Manage providers**.

4. On the **Security providers** page, under **Antivirus**, you should see **Microsoft Defender Antivirus is turned on**.

### Use Task Manager to confirm that Microsoft Defender Antivirus is running

1. On a Windows device, open the Task Manager app.

2. Select the **Details** tab.

3. Look for **MsMpEng.exe** in the list.

### Use Windows PowerShell to confirm that Microsoft Defender Antivirus is running

> [!NOTE]
> Use this procedure only to confirm whether Microsoft Defender Antivirus is running on an endpoint.

1. On a Windows device, open Windows PowerShell. 

2. Run the following PowerShell cmdlet: `Get-Process`.

3. Review the results. You should see **MsMpEng.exe** if Microsoft Defender Antivirus is enabled.

### Use Windows PowerShell to confirm that antivirus protection is running

> [!NOTE]
> Use this procedure only to confirm whether antivirus protection is enabled on an endpoint.

1. On a Windows device, open Windows PowerShell.

2. Run following PowerShell cmdlet: `Get-MpComputerStatus | select AMRunningMode`.

3. Review the results. You should see **Normal**, **Passive**, or **EDR Block Mode** if antivirus protection is enabled on the endpoint. 

> [!NOTE]
> Note that this procedure is only to confirm whether antivirus protection is enabled on an endpoint.

## More details about Microsoft Defender Antivirus states

The following sections describe what to expect when Microsoft Defender Antivirus is:

- [In active mode](#active-mode)
- [In passive mode, or when EDR in block mode is turned on](#passive-mode-or-edr-block-mode)
- [Disabled or uninstalled](#disabled-or-uninstalled)

### Active mode

In active mode, Microsoft Defender Antivirus is used as the antivirus app on the machine. Settings that are configured by using Configuration Manager, Group Policy, Microsoft Intune, or other management products apply. Files are scanned, threats are remediated, and detection information is reported in your configuration tool (such as in the Microsoft Intune admin center or the Microsoft Defender Antivirus app on the endpoint).  

### Passive mode or EDR Block mode

In passive mode, Microsoft Defender Antivirus isn't used as the antivirus app, and threats aren't* remediated by Microsoft Defender Antivirus. However, [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md) can remediate threats. Files are scanned by EDR, and reports are provided for threat detections that are shared with the Defender for Endpoint service. You might see alerts showing Microsoft Defender Antivirus as a source, even when Microsoft Defender Antivirus is in passive mode. 

When Microsoft Defender Antivirus is in passive mode, you can still [manage updates for Microsoft Defender Antivirus](microsoft-defender-antivirus-updates.md); however, you can't move Microsoft Defender Antivirus into active mode if your devices have a non-Microsoft antivirus product that is providing real-time protection from malware.

**Make sure to get your antivirus and antimalware updates, even if Microsoft Defender Antivirus is running in passive mode**. See [Manage Microsoft Defender Antivirus updates and apply baselines](microsoft-defender-antivirus-updates.md). Passive mode is only supported on Windows Server 2012 R2 & 2016 when the machine is onboarded using the [modern, unified solution](/microsoft-365/security/defender-endpoint/configure-server-endpoints). 

### Disabled or uninstalled

When disabled or uninstalled, Microsoft Defender Antivirus isn't used as the antivirus app. Files aren't scanned and threats aren't remediated. Disabling or uninstalling Microsoft Defender Antivirus isn't recommended in general; if possible, keep Microsoft Defender Antivirus in passive mode if you're using a non-Microsoft antimalware/antivirus solution.

In cases where Microsoft Defender Antivirus is disabled automatically, it can be re-enabled automatically if the non-Microsoft antivirus/antimalware product expires, is uninstalled, or otherwise stops providing real-time protection from viruses, malware, or other threats. The automatic re-enabling of Microsoft Defender Antivirus helps to ensure that antivirus protection is maintained on your endpoints.

You might also use [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md), which works with the Microsoft Defender Antivirus engine to periodically check for threats if you're using a non-Microsoft antivirus app.  | 

## What about non-Windows devices?

 If you're looking for Antivirus related information for other platforms, see:

- [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
- [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Defender for Endpoint on Android features](android-configure.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

- [Microsoft Defender Antivirus on Windows clients](microsoft-defender-antivirus-in-windows-10.md)
- [EDR in block mode](edr-in-block-mode.md)
- [Learn about Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
