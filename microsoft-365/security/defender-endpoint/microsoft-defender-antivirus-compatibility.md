---
title: Microsoft Defender Antivirus compatibility with other security products
description: Learn about Microsoft Defender Antivirus with other security products and the operating systems.
keywords: windows defender, defender for endpoint, next-generation, antivirus, compatibility, passive mode
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.topic: article
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: mkaminska, pahuijbr
manager: dansimp
ms.technology: mde
ms.collection: 
- M365-security-compliance
- m365initiative-defender-endpoint
---

# Microsoft Defender Antivirus compatibility with other security products

**Applies to:**

- Microsoft Defender Antivirus
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

**Platforms**
- Windows

Microsoft Defender Antivirus is automatically installed on endpoints running the following versions of Windows:

- Windows 10 or newer
- Windows Server 2022
- Windows Server 2019
- Windows Server, version 1803, or newer
- Windows Server 2016

What happens when another non-Microsoft antivirus/antimalware solution is used? Can you run Microsoft Defender Antivirus alongside another antivirus product? The answers depend on several factors, such as your operating system and whether you're using [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md) together with your antivirus protection.

This article describes what happens with Microsoft Defender Antivirus and a non-Microsoft antivirus/antimalware solution, with and without Defender for Endpoint.

> [!IMPORTANT]
> - Microsoft Defender Antivirus is available on devices running Windows 10 and 11, Windows Server 2022, Windows Server 2019, Windows Server, version 1803 or newer, and Windows Server 2016. 
> - Microsoft Defender Antivirus is also available on Windows Server 2012 R2 when onboarded using the [modern, unified solution](/microsoft-365/security/defender-endpoint/configure-server-endpoints).
> - On Windows 8.1, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](/previous-versions/system-center/system-center-2012-R2/hh508760(v=technet.10)), which is managed through Microsoft Endpoint Configuration Manager.
> - Windows Defender is also offered for [consumer devices on Windows 8.1](/previous-versions/windows/it-pro/windows-8.1-and-8/dn344918(v=ws.11)#BKMK_WindowsDefender), although Windows Defender does not provide enterprise-level management.

## Antivirus protection without Defender for Endpoint

This section describes what happens when you use Microsoft Defender Antivirus alongside non-Microsoft antivirus/antimalware products on endpoints that are not onboarded to Defender for Endpoint. 

> [!NOTE]
> In general, Microsoft Defender Antivirus does not run in passive mode on devices that are not onboarded to Defender for Endpoint.

The following table summarizes what to expect:

|Windows version|Primary antivirus/antimalware solution|Microsoft Defender Antivirus state|
|:---|:---|:---|
|Windows 10 <br/> Windows 11|Microsoft Defender Antivirus|Active mode|
|Windows 10 <br/> Windows 11|A non-Microsoft antivirus/antimalware solution|Disabled mode (happens automatically)|
|Windows Server 2022 <br/> Windows Server 2019<br/> Windows Server, version 1803, or newer <br/> Windows Server 2016 <br/> Windows Server 2012 R2 |Microsoft Defender Antivirus|Active mode|
|Windows Server 2022<br/>Windows Server 2019<br/>Windows Server, version 1803, or newer <br/> Windows Server 2016 |A non-Microsoft antivirus/antimalware solution|Disabled (set manually) <sup>[[1](#fn1)]</sup>|

(<a id="fn1">1</a>) On Windows Server, if you are running a non-Microsoft antivirus product, you can uninstall Microsoft Defender Antivirus to prevent conflict. If the device is onboarded to Microsoft Defender for Endpoint, you can use Microsoft Defender Antivirus in passive mode (see below).

> [!TIP]
> On Windows Server 2016, you might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus*.

## Microsoft Defender Antivirus and non-Microsoft antivirus/antimalware solutions

> [!NOTE]
> In general, Microsoft Defender Antivirus can be set to passive mode only on endpoints that are onboarded to Defender for Endpoint.

Whether Microsoft Defender Antivirus runs in active mode, passive mode, or is disabled depends on several factors, such as:

- Which version of Windows is installed on an endpoint
- Whether Microsoft Defender Antivirus is the primary antivirus/antimalware solution on the endpoint
- Whether the endpoint is onboarded to Defender for Endpoint

The following table summarizes the state of Microsoft Defender Antivirus in several scenarios. 

| Windows version   | Antivirus/antimalware solution  | Onboarded to <br/> Defender for Endpoint? | Microsoft Defender Antivirus state     |
|:------|:------|:-------|:-------|
| Windows 10 <br/> Windows 11| Microsoft Defender Antivirus | Yes  | Active mode | 
| Windows 10 <br/> Windows 11 | Microsoft Defender Antivirus | No   | Active mode |
| Windows 10 <br/> Windows 11  | A non-Microsoft antivirus/antimalware solution | Yes  | Passive mode (automatically) |
| Windows 10 <br/> Windows 11  | A non-Microsoft antivirus/antimalware solution | No   | Disabled mode (automatically)    |
| Windows Server 2022 <br/> Windows Server 2019 <br/>Windows Server, version 1803 or newer  | Microsoft Defender Antivirus  | Yes |         Active mode  |
| Windows Server 2022 <br/> Windows Server 2019 <br/> Windows Server, version 1803 or newer   | Microsoft Defender Antivirus | No  | Active mode |
| Windows Server 2022 <br/> Windows Server 2019 <p> Windows Server, version 1803 or newer  | A non-Microsoft antivirus/antimalware solution | Yes  | Microsoft Defender Antivirus must be set to passive mode (manually) <sup>[[2](#fn2)]<sup>  | 
| Windows Server 2022 <br/> Windows Server 2019 <p> Windows Server, version 1803 or newer  | A non-Microsoft antivirus/antimalware solution | No  | Microsoft Defender Antivirus must be disabled (manually) <sup>[[3](#fn3)]<sup></sup>  |
| Windows Server 2016 <br/> Windows Server 2012 R2   | Microsoft Defender Antivirus | Yes | Active mode |
|Windows Server 2016 <br/> Windows Server 2012 R2  | Microsoft Defender Antivirus | No | Active mode |
| Windows Server 2016 <br/> Windows Server 2012 R2  | A non-Microsoft antivirus/antimalware solution | Yes | Microsoft Defender Antivirus must be set to passive mode (manually) <sup>[[2](#fn2)]<sup> |
|Windows Server 2016 <br/> Windows Server 2012 R2  | A non-Microsoft antivirus/antimalware solution | No | Microsoft Defender Antivirus must be disabled (manually) <sup>[[3](#fn3)]<sup> |

(<a id="fn2">2</a>)  On Windows Server 2019, Windows Server, version 1803 or newer, Windows Server 2016, or  Windows Server 2012 R2, Microsoft Defender Antivirus does not enter passive mode automatically when you install a non-Microsoft antivirus product. In those cases, set Microsoft Defender Antivirus to passive mode to prevent problems caused by having multiple antivirus products installed on a server. You can set Microsoft Defender Antivirus to passive mode using PowerShell, Group Policy, or a registry key. 

**Registry Key Method**

  You can set Microsoft Defender Antivirus to passive mode by setting the following registry key:
- Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`
- Name: `ForceDefenderPassiveMode`
- Type: `REG_DWORD`
- Value: `1`

**GPO Method**

- Open Group Policy Management Editor > **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus**.
- Select **Turn Off Microsoft Defender Antivirus**.
- Set the GPO to **Enabled**.

You can view the Protection status in PowerShell with the command "Get-MpComputerStatus" and the key "AMRunningMode".

## SYNTAX

```
PS C:\Users\tommaso> Get-MpComputerStatus


AMEngineVersion                  : 0.0.0.0
AMProductVersion                 : 4.18.2205.4
AMRunningMode                    : Not running
AMServiceEnabled                 : False
AMServiceVersion                 : 0.0.0.0
AntispywareEnabled               : False
AntispywareSignatureAge          : 4294967295
AntispywareSignatureLastUpdated  :
AntispywareSignatureVersion      : 0.0.0.0
AntivirusEnabled                 : False
AntivirusSignatureAge            : 4294967295
AntivirusSignatureLastUpdated    :
AntivirusSignatureVersion        : 0.0.0.0
BehaviorMonitorEnabled           : False
ComputerID                       : 5CF99D95-BF09-4B2E-9911-8E01C55642E5
ComputerState                    : 0
DefenderSignaturesOutOfDate      : False
DeviceControlDefaultEnforcement  : N/A
DeviceControlPoliciesLastUpdated : 01/01/1601 00:00:00
DeviceControlState               : N/A
FullScanAge                      : 4294967295
FullScanEndTime                  :
FullScanOverdue                  : False
FullScanRequired                 : False
FullScanSignatureVersion         :
FullScanStartTime                :
IoavProtectionEnabled            : False
IsTamperProtected                : False
IsVirtualMachine                 : True
LastFullScanSource               : 0
LastQuickScanSource              : 0
NISEnabled                       : False
NISEngineVersion                 : 0.0.0.0
NISSignatureAge                  : 4294967295
NISSignatureLastUpdated          :
NISSignatureVersion              : 0.0.0.0
OnAccessProtectionEnabled        : False
ProductStatus                    : 1
QuickScanAge                     : 4294967295
QuickScanEndTime                 :
QuickScanOverdue                 : False
QuickScanSignatureVersion        :
QuickScanStartTime               :
RealTimeProtectionEnabled        : False
RealTimeScanDirection            : 0
RebootRequired                   : False
TamperProtectionSource           : Signatures
TDTMode                          : N/A
TDTStatus                        : N/A
TDTTelemetry                     : N/A
TroubleShootingDailyMaxQuota     :
TroubleShootingDailyQuotaLeft    :
TroubleShootingEndTime           :
TroubleShootingExpirationLeft    :
TroubleShootingMode              :
TroubleShootingModeSource        :
TroubleShootingQuotaResetTime    :
TroubleShootingStartTime         :
PSComputerName                   :
```

In the following example, the Defender status is **Not Running**.

 > [!NOTE]
 > For passive mode to work on endpoints running Windows Server 2016 and Windows Server 2012 R2, those endpoints must be onboarded with the modern, unified solution described in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016). 

(<a id="fn3">3</a>) On Windows Server 2016, Windows Server 2012 R2, Windows Server version 1803 or newer, Windows Server 2019, and Windows Server 2022, if you are using a non-Microsoft antivirus product on an endpoint that is *not* onboarded to Microsoft Defender for Endpoint, disable/uninstall Microsoft Defender Antivirus manually to prevent problems caused by having multiple antivirus products installed on a server.

> [!TIP]
> On Windows Server 2016, you might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus*.

> [!IMPORTANT]
> Microsoft Defender Antivirus is only available on devices running Windows 10 and 11, Windows Server 2022, Windows Server 2019, Windows Server, version 1803 or newer, Windows Server 2016, and Windows Server 2012 R2.
>
> In Windows 8.1, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](/previous-versions/system-center/system-center-2012-R2/hh508760(v=technet.10)), which is managed through Microsoft Endpoint Configuration Manager.
>
> Windows Defender is also offered for [consumer devices on Windows 8.1](/previous-versions/windows/it-pro/windows-8.1-and-8/dn344918(v=ws.11)#BKMK_WindowsDefender), although Windows Defender does not provide enterprise-level management.

Defender for Endpoint includes capabilities that further extend the antivirus protection that is installed on your endpoint. You can benefit from running Microsoft Defender Antivirus alongside another antivirus solution.

For example, [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md) provides added protection from malicious artifacts even if Microsoft Defender Antivirus is not the primary antivirus product. Such capabilities require Microsoft Defender Antivirus to be installed and running in passive mode or active mode.

### Requirements for Microsoft Defender Antivirus to run in passive mode

In order for Microsoft Defender Antivirus to run in passive mode, endpoints must meet the following requirements:

- Operating system: Windows 10 or newer; Windows Server 2022, Windows Server 2019, or Windows Server, version 1803, or newer
- Microsoft Defender Antivirus must be installed
- Another non-Microsoft antivirus/antimalware product must be installed and used as the primary antivirus solution
- Endpoints must be onboarded to Defender for Endpoint

## How Microsoft Defender Antivirus affects Defender for Endpoint functionality

Defender for Endpoint affects whether Microsoft Defender Antivirus can run in passive mode. Microsoft Defender Antivirus can affect certain capabilities in Defender for Endpoint, too. For example, real-time protection works when Microsoft Defender Antivirus is in active or passive mode, but not when Microsoft Defender Antivirus is disabled or uninstalled.

The table in this section summarizes the features and capabilities that are actively working or not, according to whether Microsoft Defender Antivirus is in active mode, passive mode, or disabled/uninstalled.

> [!IMPORTANT]
> The following table is designed to be informational only. **Do not turn off capabilities**, such as real-time protection, cloud-delivered protection, or limited periodic scanning if you are using Microsoft Defender Antivirus in passive mode, or if you are using [EDR in block mode](edr-in-block-mode.md), which works behind the scenes to detect and remediate malicious artifacts that were detected post-breach.

| Protection | Microsoft Defender Antivirus <br/>(*Active mode*) | Microsoft Defender Antivirus <br/>(*Passive mode*) | Microsoft Defender Antivirus <br/>(*Disabled or uninstalled*) | [EDR in block mode](edr-in-block-mode.md) | 
|:---|:---|:---|:---|:---| 
| [Real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) | Yes | See note <sup>[[4](#fn4)]</sup> | No | No | 
| [Cloud-delivered protection](enable-cloud-protection-microsoft-defender-antivirus.md) | Yes | No  | No | No | 
| [Network protection](network-protection.md)  | Yes | No | No | No | 
| [Attack surface reduction rules](attack-surface-reduction.md)  | Yes | No | No  | No | 
| [Limited periodic scanning availability](limited-periodic-scanning-microsoft-defender-antivirus.md) | No | No | Yes | No | 
| [File scanning and detection information](review-scan-results-microsoft-defender-antivirus.md) | Yes | Yes<sup>[[5](#fn5)]</sup> | No | Yes | 
| [Threat remediation](configure-remediation-microsoft-defender-antivirus.md) | Yes | See note <sup>[[6](#fn6)]</sup> | No | Yes | 
| [Security intelligence updates](manage-updates-baselines-microsoft-defender-antivirus.md) | Yes | Yes <sup>[[7](#fn7)]</sup> | No | Yes <sup>[[7](#fn7)]</sup> | 
| [Data Loss Prevention](../../compliance/endpoint-dlp-learn-about.md) | Yes | Yes | No | No |
| [Controlled folder access](controlled-folders.md) | Yes |No | No | No |
| [Web content filtering](web-content-filtering.md) | Yes | See note <sup>[[8](#fn8)]</sup> | No | No |
| [Device control](device-control-report.md) | Yes | Yes | No | No |
| [PUA protection](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md) | Yes | No | No | No |

(<a id="fn4">4</a>) In general, when Microsoft Defender Antivirus is in passive mode, real-time protection does not provide any blocking or enforcement, even though it is enabled and in passive mode.

(<a id="fn5">5</a>) When Microsoft Defender Antivirus is in passive mode, scans are not scheduled.

(<a id="fn6">6</a>) When Microsoft Defender Antivirus is in passive mode, it does not remediate threats. However, threats can be remediated by [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md). In this case, you might see alerts showing Microsoft Defender Antivirus as a source, even when Microsoft Defender Antivirus is in passive mode.

(<a id="fn7">7</a>) The security intelligence update cadence is controlled by Windows Update settings only. Defender-specific update schedulers (daily/weekly at specific time, interval-based) settings only work when Microsoft Defender Antivirus is in active mode. They are ignored in passive mode.

(<a id="fn8">8</a>) When Microsoft Defender Antivirus is in passive mode, web content filtering only works with the Microsoft Edge browser. 

> [!NOTE]
> [Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about) protection continues to operate normally when Microsoft Defender Antivirus is in either active or passive mode.

## Important notes

- Do not disable, stop, or modify any of the associated services that are used by Microsoft Defender Antivirus, Defender for Endpoint, or the Windows Security app. This recommendation includes the *wscsvc*, *SecurityHealthService*, *MsSense*, *Sense*, *WinDefend*, or *MsMpEng* services and processes. Manually modifying these services can cause severe instability on your devices and can make your network vulnerable. Disabling, stopping, or modifying those services can also cause problems when using non-Microsoft antivirus solutions and how their information is displayed in the [Windows Security app](microsoft-defender-security-center-antivirus.md).

- In Defender for Endpoint, turn EDR in block mode on, even if Microsoft Defender Antivirus is not your primary antivirus solution. EDR in block mode detects and remediate malicious items that are found on the device (post breach). To learn more, see [EDR in block mode](edr-in-block-mode.md).

## How to confirm the state of Microsoft Defender Antivirus

You can use one of several methods to confirm the state of Microsoft Defender Antivirus, as described in the following table:

 | Method | Procedure | 
 |:---|:---| 
 | Windows Security app |  1. On a Windows device, open the Windows Security app.<br/>2. Select **Virus & threat protection**.<br/>3. Under **Who's protecting me?** select **Manage providers**.<br/>4. On the **Security providers** page, under **Antivirus**, you should see **Microsoft Defender Antivirus is turned on**. | 
 | Task Manager |  1. On a Windows device, open the Task Manager app.<br/>2. Select the **Details** tab.<br/>3. Look for **MsMpEng.exe** in the list. | 
 | Windows PowerShell <br/> (To confirm that Microsoft Defender Antivirus is running) |  1. On a Windows device, open Windows PowerShell. <br/>2. Run the following PowerShell cmdlet: `Get-Process`.<br/>3. Review the results. You should see **MsMpEng.exe** if Microsoft Defender Antivirus is enabled. | 
 | Windows PowerShell <br/>(To confirm that antivirus protection is in place) |  You can use the [Get-MpComputerStatus PowerShell cmdlet](/powershell/module/defender/get-mpcomputerstatus).<br/>1. On a Windows device, open Windows PowerShell.<br/>2. Run following PowerShell cmdlet:<br/> Get-MpComputerStatus \| select AMRunningMode <br/>3. Review the results. You should see either **Normal**, **Passive**, or **EDR Block Mode** if Microsoft Defender Antivirus is enabled on the endpoint.  | 

## More details about Microsoft Defender Antivirus states

The table in this section describes various states you might see with Microsoft Defender Antivirus.

 |  State  |  What happens  | 
 |:---|:---| 
 |  Active mode  |  In active mode, Microsoft Defender Antivirus is used as the antivirus app on the machine. Settings that are configured by using Configuration Manager, Group Policy, Microsoft Intune, or other management products will apply. Files are scanned, threats are remediated, and detection information is reported in your configuration tool (such as Configuration Manager or the Microsoft Defender Antivirus app on the endpoint itself).  | 
 |  Passive mode <br/><br/> or <br/><br/> EDR Block mode |  In passive mode, Microsoft Defender Antivirus is not used as the antivirus app, and threats are *not* remediated by Microsoft Defender Antivirus. <br/><br/>Threats can be remediated by [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md) when running in EDR Block Mode, however. <br/><br/> Files are scanned by EDR, and reports are provided for threat detections that are shared with the Defender for Endpoint service. You might see alerts showing Microsoft Defender Antivirus as a source, even when Microsoft Defender Antivirus is in passive mode. <br/><br/> When Microsoft Defender Antivirus is in passive mode, you can still [manage updates for Microsoft Defender Antivirus](manage-updates-baselines-microsoft-defender-antivirus.md); however, you can't move Microsoft Defender Antivirus into active mode if your devices have a non-Microsoft antivirus product that is providing real-time protection from malware. <br/><br/> For optimal security layered defense and detection efficacy, make sure to get your antivirus and antimalware updates, even if Microsoft Defender Antivirus is running in passive mode. See [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md). <br/><br/> Note that passive mode is only supported on Windows Server 2012 R2 & 2016 when the machine is onboarded using the [modern, unified solution](/microsoft-365/security/defender-endpoint/configure-server-endpoints).  | 
 |  Disabled <br/><br/> or <br/><br/> Uninstalled  |  When disabled or uninstalled, Microsoft Defender Antivirus is not used as the antivirus app. Files are not scanned and threats are not remediated. <br/><br/> Disabling or uninstalling Microsoft Defender Antivirus is not recommended in general; if possible, keep Microsoft Defender Antivirus in passive mode if you are using a non-Microsoft antimalware/antivirus solution. <br/><br/> In cases where Microsoft Defender Antivirus is disabled automatically, it can be re-enabled automatically if the non-Microsoft antivirus/antimalware product expires or otherwise stops providing real-time protection from viruses, malware, or other threats. The automatic re-enabling of Microsoft Defender Antivirus helps to ensure that antivirus protection is maintained on your endpoints. <br/><br/> You might also use [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md), which works with the Microsoft Defender Antivirus engine to periodically check for threats if you are using a non-Microsoft antivirus app.  | 

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

- [Microsoft Defender Antivirus on Windows clients](microsoft-defender-antivirus-in-windows-10.md)
- [EDR in block mode](edr-in-block-mode.md)
- [Learn about Endpoint data loss prevention](/microsoft-365/compliance/endpoint-dlp-learn-about)
