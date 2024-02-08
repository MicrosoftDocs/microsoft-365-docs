---
title: Troubleshooting mode in Microsoft Defender for Endpoint on macOS
description: This article describes how to enable the troubleshooting mode in Microsoft Defender for Endpoint on macOS.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, install, mde for mac
ms.service: defender-endpoint
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-aljupudi
author: alekyaj
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-macos
ms.topic: conceptual
ms.subservice: macos
search.appverid: met150
ms.date: 02/06/2024
---

# Troubleshooting mode in Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This article describes how to enable the troubleshooting mode in Microsoft Defender for Endpoint on macOS so admins can troubleshoot various Microsoft Defender Antivirus features temporarily, even if organizational policies manage the devices.

For example, if the tamper protection is enabled, certain settings can't be modified or turned off, but you can use troubleshooting mode on the device to edit those settings temporarily.

Troubleshooting mode is disabled by default, and requires you to turn it on for a device (and/or group of devices) for a limited time. Troubleshooting mode is exclusively an enterprise-only feature, and requires access to [Microsoft Defender XDR portal](https://security.microsoft.com/).

## What do you need to know before you begin

During the troubleshooting mode, you can:

- Use Microsoft Defender for Endpoint on macOS functional troubleshooting /application compatibility (false positives). 
- Local admins, with appropriate permissions, can change the following policy locked configurations on individual endpoints: 

     | Setting  | Enable  | Disable/Remove |
     | ----| ---- | ----|
     | Real-Time Protection/ Passive mode / On-Demand | `mdatp config real-time-protection --value enabled` | `mdatp config real-time-protection --value disabled` |
     | Network Protection   | `mdatp config network-protection enforcement-level --value block` | `mdatp config network-protection enforcement-level --value disabled` |
     | realTimeProtectionStatistics | `mdatp config real-time-protection-statistics  --value enabled`   | `mdatp config real-time-protection-statistics  --value disabled`    |
     | tags     | `mdatp edr tag set --name GROUP --value [name]` | `mdatp edr tag remove --tag-name [name]`   |
     | groupIds | `mdatp edr group-ids --group-id [group]`|    |
     | Endpoint DLP | `mdatp config data_loss_prevention --value enabled` | `mdatp config data_loss_prevention --value disabled` |

During troubleshooting mode, you can't:

- Disable tamper protection for Microsoft Defender for Endpoint on macOS. 
- Uninstall the Microsoft Defender for Endpoint on macOS.

### Prerequisites

- Supported version of macOS for Microsoft Defender for Endpoint.
- Microsoft Defender for Endpoint must be tenant-enrolled and active on the device. 
- Permissions for "Manage security settings in Security Center" in Microsoft Defender for Endpoint.
- A device that is actively running on Microsoft Defender for Endpoint, version 101.23092.0007 or later.

## Enable troubleshooting mode on macOS

1. Go to the [Microsoft Defender XDR portal](https://security.microsoft.com/), and sign in.
2. Navigate to the device page you would like to turn on troubleshooting mode. Then, select the ellipses(...) and select **Turn on troubleshooting mode**.  

   :::image type="content" source="images/troubleshooting-mode-on-mac.png" alt-text="Image displaying the screenshot of the troubleshooting mode on mac.":::

   > [!NOTE]
   > The **Turn on troubleshooting mode** option is available on all devices, even if the device does not meet the prerequisites for troubleshooting mode.

3. Read the information displayed on the pane and once you're ready, select **Submit** to confirm that you want to turn on troubleshooting mode for that device.
4. You'll see *It might take a few minutes for the change to take effect* text being displayed. During this time, when you select the ellipses again, you'll see the **Turn On Troubleshooting mode is pending** option grayed-out.
5. Once complete, the device page shows that the device is now in troubleshooting mode. 

     If the end-user is logged-in on the macOS device, they'll see the following text:

     *Troubleshooting mode has started. This mode allows you to temporarily change settings that are managed by your Administrator. Expires at YEAR-MM-DDTHH:MM:SSZ.* 

     Select **OK**.

6. Once enabled, you can test the different command line options that are togglable in the troubleshooting mode (TS Mode).

     For example, when you use `mdatp config real-time-protection --value disabled` command to disable real time protection, you'll be prompted to enter your password. Select **OK** after entering your password.

     :::image type="content" source="images/ts-mode-rtp-disable.png" alt-text="Image displaying the screenshot of real time protection being disabled.":::

     The output report similar to the following screenshot will be displayed on running mdatp health with `real_time_protection_enabled` as "false" and `tamper_protection` as "block."
  
     :::image type="content" source="images/ts-mode-mdatp-health.png" alt-text="Image displaying the screenshot of the output report of mdatp health running.":::

## Advanced hunting queries for detection

There are some prebuilt advanced hunting queries to give you visibility into the troubleshooting events that are occurring in your environment. You can use these queries to [create detection rules](../defender/custom-detection-rules.md) to generate alerts when devices are in troubleshooting mode.

### Get troubleshooting events for a particular device

You can use the following query to search by `deviceId` or `deviceName` by commenting out the respective lines.

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

You can find the devices that are currently in troubleshooting mode using the following query:

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

You can find the number of troubleshooting mode instances for a device using the following query:

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

You can know the total count of troubleshooting mode instances using the following query:

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

## Recommended content

- [Microsoft Defender XDR for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender XDR for Endpoint integration with Microsoft Defender XDR for Cloud Apps](/defender-cloud-apps/mde-integration)
- [Get to know the innovative features in Microsoft Edge](https://www.microsoft.com/en-us/edge/features?form=MW00UY)
- [Protect your network](network-protection.md)
- [Turn on network protection](enable-network-protection.md)
- [Web protection](web-protection-overview.md)
- [Create indicators](manage-indicators.md)
- [Web content filtering](web-content-filtering.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
