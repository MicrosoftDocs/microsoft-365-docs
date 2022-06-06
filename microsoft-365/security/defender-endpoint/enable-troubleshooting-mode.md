---
title: Get started with troubleshooting mode in Microsoft Defender for Endpoint (preview)
description: Turn on the Microsoft Defender for Endpoint troubleshooting mode to address various antivirus issues.
keywords: antivirus, troubleshoot, troubleshooting mode, tamper protection, compatibility
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
ms.topic: article
ms.technology: mde
---

# Get started with troubleshooting mode in Microsoft Defender for Endpoint (preview)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)

> [!IMPORTANT]
> Some information relates to pre-released products which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Microsoft Defender for Endpoint troubleshooting mode allows you to troubleshoot various Microsoft Defender antivirus features by enabling them from the device and testing different scenarios, even if they're controlled by the organization policy. The troubleshooting mode is disabled by default and requires you to turn it on for a device (and/or group of devices) for a limited time. Note that this is exclusively an Enterprise-only feature, and requires Microsoft 365 Defender access.

## What do you need to know before you begin?

- Use troubleshooting mode to disable/change the tamper protection setting to perform:

  - Microsoft Defender Antivirus functional troubleshooting /application compatibility (false positive application blocks).

  - Microsoft Defender Antivirus performance troubleshooting by using the troubleshooting mode and manipulating tamper protection and other antivirus settings.

- If a tampering event occurs (for example, the `MpPreference` snapshot is altered or deleted), troubleshooting mode will end and tamper protection will be enabled on the device.

- Local admins, with appropriate permissions, can change configurations on individual endpoints that are usually locked by policy. Having a device in troubleshooting mode can be helpful when diagnosing Microsoft Defender Antivirus performance and compatibility scenarios.

  - Local admins won't be able to turn off Microsoft Defender Antivirus, or uninstall it.

  - Local admins will be able to configure all other security settings in the Microsoft Defender Antivirus suite (for example, cloud protection, tamper protection).

- Admins with “Manage Security settings” permissions will have access to turn on troubleshooting mode.

- Microsoft Defender for Endpoint collects logs and investigation data throughout the troubleshooting process.

  - Snapshot of `MpPreference` will be taken before troubleshooting mode begins.

  - Second snapshot will be taken just before troubleshooting mode expires.

  - Operational logs from during troubleshooting mode will also be collected.

  - All the above logs and snapshots will be collected and will be available for an admin to collect using the [Collect investigation package](respond-machine-alerts.md#collect-investigation-package-from-devices) feature on the device page. Note that Microsoft won't remove this data from the device until an admin collects them.

- Admins can also review the changes in settings that take place during Troubleshooting mode in **Event Viewer** on the device page.

- Troubleshooting mode automatically turns off after reaching the expiration time (it lasts for 3 hours). After expiration, all policy-managed configurations will become read-only again and will revert back to how it was before setting the troubleshooting mode on.

- It could take up to 15 minutes from the time the command is sent from Microsoft 365 Defender to when it becomes active on the device.

- Notification will be sent to the end user when the troubleshooting mode begins and when the troubleshooting mode ends. A warning will also be sent notifying that it will end soon.

- The beginning and ending of troubleshooting mode will be identified in the **Device Timeline** on the device page.

- You can query all troubleshooting mode events in advanced hunting.

> [!NOTE]
> Policy management changes will be applied to the machine when it is actively in Troubleshooting mode. However, the changes will not take effect until the Troubleshooting mode expires. Additionally, Microsoft Defender Antivirus Platform updates will not be applied during Troubleshooting mode. Platform updates will be applied once Troubleshooting mode ends with a Windows update.

## Prerequisites

- A device running Windows 10 (version 19044.1618 or later), Windows 11, Windows Server 2019, or Windows Server 2022.

  Semester/Redstone|OS version|Release
  :---|:---|:---
  21H2/SV1|>=22000.593|[KB5011563: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5011563)
  20H1/20H2/21H1|>=19042.1620<br/> >=19041.1620<br/> >=19043.1620|[KB5011543: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5011543)
  Windows Server 2022|>=20348.617|[KB5011558: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5011558)
  Windows Server 2019 (RS5)|>=17763.2746|[KB5011551: Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5011551)

- For troubleshooting mode to be applied, Microsoft Defender for Endpoint must be tenant-enrolled and active on the device.

- The device must be actively running Microsoft Defender Antivirus, version 4.18.2203 or later.

## Enable the troubleshooting mode

1. Go to the Microsoft 365 Defender portal (<https://security.microsoft.com>), and sign in.

2. Navigate to the device page/machine page for the device you would like to turn on troubleshooting mode. Select **Turn on troubleshooting mode**. Note that this requires "Manage security settings in Security Center" permissions for Microsoft Defender for Endpoint.

   :::image type="content" source="../../media/ts-mode-menu.png" alt-text="Turn on troubleshooting mode" lightbox="../../media/ts-mode-menu.png":::

3. Confirm you want to turn on troubleshooting mode for the device.

   :::image type="content" source="../../media/ts-mode-conf-flyout.png" alt-text="The configuration flyout" lightbox="../../media/ts-mode-conf-flyout.png":::

4. The device page shows the device is now in troubleshooting mode.

   :::image type="content" source="../../media/ts-mode-option-greyed-out.png" alt-text="The device is now in troubleshooting mode" lightbox="../../media/ts-mode-option-greyed-out.png":::

## Advanced hunting queries

Here are some pre-built advanced hunting queries to give you visibility into the troubleshooting events that are occurring in your environment. You can also use these queries to [create detection rules](/defender/custom-detection-rules.md#create-a-custom-detection-rule) that'd alert you when the devices are in troubleshooting mode.

### Get troubleshooting events for a particular device

```kusto
let deviceName = "<device name>";   // update with device name
let deviceId = "<device id>";   // update with device id
search in (DeviceEvents)
(DeviceName == deviceName
) and ActionType == "AntivirusTroubleshootModeEvent"
| extend _tsmodeproperties = parse_json(AdditionalFields)
| project $table, Timestamp,DeviceId, DeviceName, _tsmodeproperties,
 _tsmodeproperties.TroubleshootingState, _tsmodeproperties.TroubleshootingPreviousState, _tsmodeproperties.TroubleshootingStartTime,
 _tsmodeproperties.TroubleshootingStateExpiry, _tsmodeproperties.TroubleshootingStateRemainingMinutes,
 _tsmodeproperties.TroubleshootingStateChangeReason, _tsmodeproperties.TroubleshootingStateChangeSource
```

### Devices currently in troubleshooting mode

```kusto
search in (DeviceEvents)
ActionType == "AntivirusTroubleshootModeEvent"
| extend _tsmodeproperties = parse_json(AdditionalFields)
| where Timestamp > ago(3h)
| where _tsmodeproperties.TroubleshootingStateChangeReason == "Troubleshooting mode started"
|summarize (Timestamp, ReportId)=arg_max(Timestamp, ReportId), count() by DeviceId
```

### Count of troubleshooting mode instances by device

```kusto
search in (DeviceEvents)
ActionType == "AntivirusTroubleshootModeEvent"
| extend _tsmodeproperties = parse_json(AdditionalFields)
| where Timestamp > ago(30d)  // choose the date range you want
| where _tsmodeproperties.TroubleshootingStateChangeReason == "Troubleshooting mode started"
| summarize (Timestamp, ReportId)=arg_max(Timestamp, ReportId), count() by DeviceId
| sort by count_
```

### Total count

```kusto
search in (DeviceEvents)
ActionType == "AntivirusTroubleshootModeEvent"
| extend _tsmodeproperties = parse_json(AdditionalFields)
| where Timestamp > ago(2d) //beginning of time range
| where Timestamp < ago(1d) //end of time range
| where _tsmodeproperties.TroubleshootingStateChangeReason == "Troubleshooting mode started"
| summarize (Timestamp, ReportId)=arg_max(Timestamp, ReportId), count()
| where count_ > 5          // choose your max # of TS mode instances for your time range
```

## Related topic

- [Troubleshooting mode scenarios](troubleshooting-mode-scenarios.md)
- [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
