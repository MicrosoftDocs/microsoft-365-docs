---
title: Get started with troubleshooting mode in Microsoft Defender for Endpoint 
description: Turn on the Microsoft Defender for Endpoint troubleshooting mode to address various antivirus issues.
search.appverid: met150
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
ms.reviewer: pricci
audience: ITPro
ms.collection: 
- m365-security
- tier2
- mde-ngp
ms.topic: conceptual
ms.subservice: ngp
ms.date: 09/25/2023
---

# Get started with troubleshooting mode in Microsoft Defender for Endpoint 

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)

Troubleshooting mode in Microsoft Defender for Endpoint enables admins to troubleshoot various Microsoft Defender Antivirus features, even if devices are managed by organizational policies. For example, if [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) is enabled, [certain settings](prevent-changes-to-security-settings-with-tamper-protection.md#what-happens-when-tamper-protection-is-turned-on) can't be modified or turned off, but you can use troubleshooting mode on a device to edit those settings temporarily.

Troubleshooting mode is disabled by default, and requires you to turn it on for a device (and/or group of devices) for a limited time. Troubleshooting mode is exclusively an enterprise-only feature, and requires Microsoft Defender portal access.

> [!TIP]
> - During troubleshooting mode, you can use the PowerShell command `Set-MPPreference -DisableTamperProtection $true` on Windows devices.
> - To check the state of [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md), you can use the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus) PowerShell cmdlet. In the list of results, look for `IsTamperProtected` or `RealTimeProtectionEnabled`. (A value of *true* means tamper protection is enabled.)
.
## What do you need to know before you begin?

During troubleshooting mode, you can use the PowerShell command `Set-MPPreference -DisableTamperProtection $true` or, on client operating systems, the Security Center app to temporarily disable tamper protection on your device and make your necessary configuration changes. 

- Use troubleshooting mode to disable/change the tamper protection setting to perform:

  - Microsoft Defender Antivirus functional troubleshooting /application compatibility (false positive application blocks).

- Local admins, with appropriate permissions, can change configurations on individual endpoints that are usually locked by policy. Having a device in troubleshooting mode can be helpful when diagnosing Microsoft Defender Antivirus performance and compatibility scenarios.

  - Local admins can't turn off Microsoft Defender Antivirus, or uninstall it.

  - Local admins can configure all other security settings in the Microsoft Defender Antivirus suite (for example, cloud protection, tamper protection).

- Admins with "Manage Security settings" permissions have access to turn on troubleshooting mode.

- Microsoft Defender for Endpoint collects logs and investigation data throughout the troubleshooting process.

  - A snapshot of `MpPreference` is taken before troubleshooting mode begins.

  - A second snapshot is taken just before troubleshooting mode expires.
  
  - Operational logs from during troubleshooting mode are also collected.

  - Logs and snapshots are collected and are available for an admin to collect using the [Collect investigation package](respond-machine-alerts.md#collect-investigation-package-from-devices) feature on the device page. Microsoft doesn't remove this data from the device until an admin has collected it.

- Admins can also review the changes in settings that take place during Troubleshooting mode in **Event Viewer** on the device page.

- Troubleshooting mode automatically turns off after reaching the expiration time (it lasts for 4 hours). After expiration, all policy-managed configurations become read-only again and revert back to how the device was configured before enabling troubleshooting mode.

- It could take up to 15 minutes from the time the command is sent from Microsoft Defender XDR to when it becomes active on the device.

- Notifications are sent to the user when troubleshooting mode begins and when troubleshooting mode ends. A warning is also sent to indicate that troubleshooting mode is ending soon.

- The beginning and ending of troubleshooting mode is identified in the **Device Timeline** on the device page.

- You can query all troubleshooting mode events in advanced hunting.

> [!NOTE]
> Policy management changes are applied to the device when it is actively in troubleshooting mode. However, the changes do not take effect until troubleshooting mode expires. Additionally, Microsoft Defender Antivirus Platform updates are not applied during Troubleshooting mode. Platform updates are applied when troubleshooting mode ends with a Windows update.

## Prerequisites

- A device running Windows 10 (version 19044.1618 or later), Windows 11, Windows Server 2019, or Windows Server 2022.

  Semester/Redstone|OS version|Release
  :---|:---|:---
  21H2/SV1|>=22000.593|[KB5011563: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5019275)
  20H1/20H2/21H1|>=19042.1620<br/> >=19041.1620<br/> >=19043.1620|[KB5011543: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5011543)
  Windows Server 2022|>=20348.617|[KB5011558: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5011558)
  Windows Server 2019 (RS5)|>=17763.2746|[KB5011551: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5011551)

- Troubleshooting mode is also available for machines running the modern, unified solution for Windows Server 2012 R2 and Windows Server 2016. Before you use troubleshooting mode, make sure all of the following components are up to date:

  - Sense version `10.8049.22439.1084` or later ([KB5005292: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5005292))

  - Microsoft Defender Antivirus - Platform: `4.18.2207.7` or later ([KB4052623: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4052623))

  - Microsoft Defender Antivirus - Engine: `1.1.19500.2` or later ([KB2267602: Microsoft Update Catalog](https://www.microsoft.com/en-us/wdsi/defenderupdates))

- For troubleshooting mode to be applied, Microsoft Defender for Endpoint must be tenant-enrolled and active on the device.

- The device must be actively running Microsoft Defender Antivirus, version 4.18.2203 or later.

## Enable troubleshooting mode

1. Go to the Microsoft Defender portal (<https://security.microsoft.com>), and sign in.

2. Navigate to the device page/machine page for the device you would like to turn on troubleshooting mode. Select **Turn on troubleshooting mode**. You must have "Manage security settings in Security Center" [permissions](assign-portal-access.md) for Microsoft Defender for Endpoint.

   :::image type="content" source="../../media/ts-mode-menu.png" alt-text="Turn on troubleshooting mode" lightbox="../../media/ts-mode-menu.png":::

> [!NOTE]
> The **Turn on troubleshooting mode** option is available on all devices, even if the device does not meet the prerequisites for troubleshooting mode.  

3. Confirm you want to turn on troubleshooting mode for the device.

   :::image type="content" source="../../media/ts-mode-conf-flyout.png" alt-text="The configuration flyout" lightbox="../../media/ts-mode-conf-flyout.png":::

4. The device page shows the device is now in troubleshooting mode.

   :::image type="content" source="../../media/ts-mode-option-greyed-out.png" alt-text="The device is now in troubleshooting mode" lightbox="../../media/ts-mode-option-greyed-out.png":::

## Advanced hunting queries

Here are some prebuilt advanced hunting queries to give you visibility into the troubleshooting events that are occurring in your environment. You can also use these queries to [create detection rules](../defender/custom-detection-rules.md#create-a-custom-detection-rule) to generate alerts when devices are in troubleshooting mode.

### Get troubleshooting events for a particular device

Search by deviceId or deviceName by commenting out the respective lines. 
 
```kusto
//let deviceName = "<deviceName>";   // update with device name
let deviceId = "<deviceID>";   // update with device id
DeviceEvents
| where DeviceId == deviceId
//| where DeviceName  == deviceName
| where ActionType == "AntivirusTroubleshootModeEvent"
| extend _tsmodeproperties = parse_json(AdditionalFields)
| project Timestamp,DeviceId, DeviceName, _tsmodeproperties,
 _tsmodeproperties.TroubleshootingState, _tsmodeproperties.TroubleshootingPreviousState, _tsmodeproperties.TroubleshootingStartTime,
 _tsmodeproperties.TroubleshootingStateExpiry, _tsmodeproperties.TroubleshootingStateRemainingMinutes,
 _tsmodeproperties.TroubleshootingStateChangeReason, _tsmodeproperties.TroubleshootingStateChangeSource
```

### Devices currently in troubleshooting mode  

```kusto
DeviceEvents
| where Timestamp > ago(3h) // troubleshooting mode automatically disables after 4 hours 
| where ActionType == "AntivirusTroubleshootModeEvent"
| extend _tsmodeproperties = parse_json(AdditionalFields)
| where _tsmodeproperties.TroubleshootingStateChangeReason contains "started"
|summarize (Timestamp, ReportId)=arg_max(Timestamp, ReportId), count() by DeviceId
| order by Timestamp desc
```

### Count of troubleshooting mode instances by device

```kusto
DeviceEvents
| where ActionType == "AntivirusTroubleshootModeEvent"
| extend _tsmodeproperties = parse_json(AdditionalFields)
| where Timestamp > ago(30d)  // choose the date range you want
| where _tsmodeproperties.TroubleshootingStateChangeReason contains "started"
| summarize (Timestamp, ReportId)=arg_max(Timestamp, ReportId), count() by DeviceId
| sort by count_
```

### Total count

```kusto
DeviceEvents
| where ActionType == "AntivirusTroubleshootModeEvent"
| extend _tsmodeproperties = parse_json(AdditionalFields)
| where Timestamp > ago(2d) //beginning of time range
| where Timestamp < ago(1d) //end of time range
| where _tsmodeproperties.TroubleshootingStateChangeReason contains "started"
| summarize (Timestamp, ReportId)=arg_max(Timestamp, ReportId), count()
| where count_ > 5          // choose your max # of TS mode instances for your time range
```

## Related articles

> [!TIP]
> **Performance tip** Due to a variety of factors, Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are:
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
>

- [Troubleshooting mode scenarios](troubleshooting-mode-scenarios.md)
- [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
