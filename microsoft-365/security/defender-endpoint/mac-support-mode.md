---
title: Troubleshooting mode in Microsoft Defender for Endpoint on macOS
description: Learn about troubleshooting mode in Microsoft Defender for Endpoint on macOS.
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

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Troubleshooting mode in Microsoft Defender for Endpoint on macOS enables admins to troubleshoot various Microsoft Defender Antivirus features, even if devices are managed by organizational policies. 

For example, if tamper protection is enabled, certain settings can't be modified or turned off, but you can use troubleshooting mode on a device to edit those settings temporarily. 

Troubleshooting mode is disabled by default, and requires you to turn it on for a device (and/or group of devices) for a limited time. Troubleshooting mode is exclusively an enterprise-only feature, and requires Microsoft Defender XDR portal (security.microsoft.com) access. 

## What do you need to know before you begin?

During troubleshooting mode, you can: 

- Use Microsoft Defender for Endpoint on macOS functional troubleshooting /application compatibility (false positives). 
- Local admins, with appropriate permissions, can change the following configurations on individual endpoints that are usually locked by policy. 

| Setting  | Enable  | Disable/Remove |
| ----| ---- | ----|
| Real-Time Protection/ Passive mode / On-Demand | mdatp config real-time-protection --value enabled | mdatp config real-time-protection --value disabled |
| Network Protection   | mdatp config network-protection enforcement-level --value block | mdatp config network-protection enforcement-level --value disabled |
| realTimeProtectionStatistics | mdatp config real-time-protection-statistics  --value enabled   | mdatp config real-time-protection-statistics  --value disabled     |
| tags     | mdatp edr tag set --name GROUP --value [name] | mdatp edr tag remove --tag-name [name]   |
| groupIds | mdatp edr group-ids --group-id [group]|    |
| Endpoint DLP | mdatp config data_loss_prevention --value enabled | mdatp config data_loss_prevention --value disabled |

During troubleshooting mode, you cannot: 

- Disable Tamper Protection for Microsoft Defender for Endpoint on macOS  
- Uninstall the Microsoft Defender for Endpoint on macOS 

### Prerequisites

- Supported version of macOS for Microsoft Defender for Endpoint on macOS 
- For troubleshooting mode to be applied, Microsoft Defender for Endpoint must be tenant-enrolled and active on the device. 
- You must have "Manage security settings in Security Center" permissions for Microsoft Defender for Endpoint. 
- The device must be actively running Microsoft Defender for Endpoint, version </version number/> or later. 

## Enable troubleshooting mode 

1. Go to the Microsoft Defender XDR portal (security.microsoft.com), and sign in. 
2. Navigate to the device page/machine page for the device you would like to turn on troubleshooting mode. Select Turn on troubleshooting mode.  

    1. Click on the ellipses (…) 
    2. Click on “Turn on troubleshooting mode” 

     > [!NOTE]
     > The Turn on troubleshooting mode option is available on all devices, even if the device does not meet the prerequisites for troubleshooting mode. 

3. Confirm you want to turn on troubleshooting mode for the device. Read through the information. 

     Once ready, click on “Submit”.

4. You will see *It might take a few minutes for the change to take effect.*

5. Select **Turn On Troubleshooting mode on pending.**
6. The device page shows the device is now in troubleshooting mode.
    <The device is now in troubleshooting mode> 

    On the macOS device, the end-user if logged on, will see the following: 

    roubleshooting mode has started 

    This mode allows you to temporarily change settings that are managed by your Administrator.  Expires at YEAR-MM-DDTHH:MM:SSZ. 
    
    OK 
    
     
    
    Ok, now here is where you could test the different command line that are togglable when Troubleshooting Mode (TS Mode) is enabled. 
    
    In this example, we will be using mdatp config real-time-protection --value disabled in order to disable RTP. 


7. You will get prompted for a password: Enter the password 

Click on OK

8. Running mdatp health. Notice that the real_time_protection_enabled is ‘false’. And tamper_protection is ‘block’ 


## Advanced hunting queries 

Here are some prebuilt advanced hunting queries to give you visibility into the troubleshooting events that are occurring in your environment. You can also use these queries to create detection rules to generate alerts when devices are in troubleshooting mode. 

## Get troubleshooting events for a particular device

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

## Recommended content

[Microsoft Defender XDR for Endpoint on Mac](microsoft-defender-endpoint-mac.md)

[Microsoft Defender XDR for Endpoint integration with Microsoft Defender XDR for Cloud Apps](/defender-cloud-apps/mde-integration)

[Get to know the innovative features in Microsoft Edge](https://www.microsoft.com/en-us/edge/features?form=MW00UY) 

[Protect your network](network-protection.md) 

[Turn on network protection](enable-network-protection.md) 

[Web protection](web-protection-overview.md) 

[Create indicators](manage-indicators.md) 

[Web content filtering](web-content-filtering.md) 

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
