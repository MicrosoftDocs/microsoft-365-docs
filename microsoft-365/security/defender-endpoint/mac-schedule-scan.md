---
title: How to schedule scans with Microsoft Defender for Endpoint on macOS
description: Learn how to schedule an automatic scanning time for Microsoft Defender for Endpoint in macOS to better protect your organization's assets.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.reviewer: yongrhee
ms.localizationpriority: medium
ms.date: 04/09/2024
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-macos
ms.topic: conceptual
ms.subservice: macos
search.appverid: met150
---

# Schedule scans with Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Schedule a scan *built-in to* Microsoft Defender for Endpoint on macOS

While you can start a threat scan at any time with Microsoft Defender for Endpoint, your enterprise might benefit from scheduled or timed scans. For example, you can schedule a scan to run at the beginning of every workday or week. 

There are three types of scheduled scans that are configurable: hourly, daily, and weekly scans. Hourly and daily scheduled scans are always run as quick scans, weekly scans can be configured to be either quick or full scans. It is possible to have all three types of scheduled scans at the same time. See the samples below. 

**Prerequisites**:

- Platform Update version: [101.23122.0005](mac-whatsnew.md#jan-2024-build-101231220005---release-version-2012312250) or newer

## Schedule a scan with *Microsoft Defender for Endpoint on macOS*

You can create a scheduled scan for your macOS, which is built in to *Microsoft Defender for Endpoint on macOS*.

For more information on the _.plist_ file format used here, see [About Information Property List Files](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/AboutInformationPropertyListFiles.html) at the official Apple developer website.

The following sample shows the daily and/or weekly configuration for the scheduled scan on macOS.

> [!TIP] 
> Schedules are based on the local time zone of the device.

| Parameter | The acceptable values for this parameter are: |
| --- | --- |
| scheduledScan | enabled or disabled |
| scanType | quick or full |
| ignoreExclusions | true or false |
| lowPriorityScheduledScan | true or false |
| dayOfWeek | The range is between 0 and 8. <br>- 0: Everyday <br>- 1: Sunday <br>- 2: Monday <br>- 3: Tuesday <br>- 4: Wednesday <br>- 5: Thursday <br>- 6: Friday <br>- 7: Saturday <br>- 8: Never |
| timeOfDay | Specifies the time of day, as the number of _minutes after midnight_, to perform a scheduled scan. The time refers to the local time on the computer. If you don't specify a value for this parameter, a scheduled scan runs at a default time of two hours after midnight. |
| interval | 0 (never), every 1 (hour) to 24 (hours, 1 scan per day) |
| randomizeScanStartTime | Only applicable for daily quick scans or weekly quick/full scans. Randomize the start time of the scan by up to specified number of hours. <br> For example, if a scan is scheduled for 2 p.m and randomizeScanStartTime is set to 2, the scan commences at a random time between 2 p.m and 4 p.m. |

Your scheduled scan runs at the date, time, and frequency you defined in your _plist_.

### Example 1: Schedule a daily quick scan and weekly full scan using a _plist_

In the following example, the daily quick scan configuration is set to run at 885 minutes after midnight (2:45 p.m.).<br>
The weekly configuration is set to run a full scan on Wednesday at 880 minutes after midnight (2:40 p.m.).
And it's set to ignore exclusions and run a low priority scan.

The following code shows the schema you need to use to schedule scans according to the requirements above.

1. Open a text editor and use this example as a guide for your own scheduled scan file.

``` XML
<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"> 
<plist version="1.0"> 
<dict> 
    <key>features</key> 
    <dict> 
        <key>scheduledScan</key> 
        <string>enabled</string> 
    </dict> 
    <key>scheduledScan</key> 
    <dict> 
        <key>ignoreExclusions</key> 
        <true/> 
        <key>lowPriorityScheduledScan</key> 
        <true/> 
        <key>dailyConfiguration</key> 
        <dict> 
            <key>timeOfDay</key> 
            <integer>885</integer> 
        </dict> 
        <key>weeklyConfiguration</key> 
        <dict> 
            <key>dayOfWeek</key> 
            <integer>4</integer> 
            <key>timeOfDay</key> 
            <integer>880</integer> 
            <key>scanType</key> 
            <string>full</string> 
        </dict> 
    </dict> 
</dict> 
</plist> 
```

2. Save the file as _com.microsoft.wdav.plist_.

### Example 2: Schedule an hourly quick scan, a daily quick scan, and weekly full scan using a _plist_

In the following example, an hourly quick scan will run every 6 hours, a daily quick scan configuration is set to run at 885 minutes after midnight (2:45 p.m.), and a weekly full scan will run on Wednesdays at 880 minutes after midnight (2:40 p.m).
1. Open a text editor and use this example.

```XML
<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"> 
<plist version="1.0"> 
<dict> 
    <key>features</key> 
    <dict> 
        <key>scheduledScan</key> 
        <string>enabled</string> 
    </dict> 
<key>scheduledScan</key> 
<dict> 
    <key>ignoreExclusions</key> 
    <true/> 
    <key>lowPriorityScheduledScan</key> 
    <true/> 
    <key>dailyConfiguration</key> 
    <dict> 
        <key>timeOfDay</key> 
        <integer>885</integer> 
        <key>interval</key> 
        <string>1</string> 
    </dict> 
    <key>weeklyConfiguration</key> 
    <dict> 
        <key>dayOfWeek</key> 
        <integer>4</integer> 
        <key>timeOfDay</key> 
        <integer>880</integer> 
        <key>scanType</key> 
        <string>full</string> 
        </dict> 
        </dict> 
    </dict> 
</plist> 
```

2. Save the file as _com.microsoft.wdav.plist_.

### Option 3: Configure scheduled scans through CLI tool

To enable scheduled scan feature:

|Version|Command|
|---|---|
| Version 101.23122.\* or higher | `sudo mdatp config scheduled-scan settings feature --value enabled` |

To schedule hourly quick scans:

|Version|Command|
|---|---|
| Version 101.23122.\* or higher | `sudo mdatp config scheduled-scan quick-scan hourly-interval --value \<arg\>` |

:::image type="content" source="media/schedule-scans-mac/schedule-scan-pic1.png" alt-text="Screenshot of schedule hourly scan.":::

To schedule daily quick scans:

|Version|Command|
|---|---|
| Version 101.23122.\* or higher | `sudo mdatp config scheduled-scan quick-scan time-of-day --value \<arg\>` |

:::image type="content" source="media/schedule-scans-mac/schedule-scan-pic2.png" alt-text="Screenshot of schedule daily quick scan.":::

To schedule weekly scans:

|Version|Command|
|---|---|
| Version 101.23122.\* or higher | `sudo mdatp config scheduled-scan weekly-scan --day-of-week \<arg\> --time-of-day \<arg\>--scan-type \<arg\>` |

:::image type="content" source="media/schedule-scans-mac/schedule-scan-pic3.png" alt-text="Screenshot of schedule weekly scan.":::

For other configuration options:

- To check for definitions update before scheduled scans:

  `sudo mdatp config scheduled-scan settings check-for-definitions --value true`

- To use low priority threads for scheduled scanning:

  `sudo mdatp config scheduled-scan settings low-priority --value true`

### Check that the scheduled scan ran
Use the following command:

`mdatp scan list`

:::image type="content" source="media/schedule-scans-mac/schedule-scan-pic4.png" alt-text="Screenshot of schedule ran.":::

`\<snip\>`

:::image type="content" source="media/schedule-scans-mac/schedule-scan-pic5.png" alt-text="Screenshot of schedule ran successfully.":::  

 
> [!IMPORTANT]
> Scheduled scans do not run at the scheduled time while the device is asleep. Instead, scheduled scans run when the device resumes from sleep mode.
> If the device is turned off, the scan runs at the next scheduled scan time.

> [!TIP]
> Do you want to learn more? Engage with the Microsoft Security community in our Tech Community: [**Microsoft Defender for Endpoint Tech Community**](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/bd-p/MicrosoftDefenderATP).
