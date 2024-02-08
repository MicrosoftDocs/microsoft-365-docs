---
title: How to schedule scans with Microsoft Defender for Endpoint on macOS
description: Learn how to schedule an automatic scanning time for Microsoft Defender for Endpoint in macOS to better protect your organization's assets.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, scans, antivirus, big sur, monterey, ventura, mde for mac
ms.service: defender-endpoint
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
ms.date: 02/12/2024
manager: dansimp
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

**Pre-requisites:**<br>
Platform Update version: 101.23102.0000 or newer

While you can start a threat scan at any time with Microsoft Defender for Endpoint, your enterprise might benefit from scheduled or timed scans. For example, you can schedule a scan to run at the beginning of every workday or week. 

## Schedule a scan with *launchd*

You can create a scanning schedule using the *launchd* daemon on a macOS device.

For more information on the *.plist* file format used here, see [About Information Property List Files](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/AboutInformationPropertyListFiles.html) at the official Apple developer website.

### Schedule a quick scan

The following code shows the schema you need to use to schedule a quick scan. 

1. Open a text editor and use this example as a guide for your own scheduled scan file.

    ```XML
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
      "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.microsoft.wdav.schedquickscan</string>
        <key>ProgramArguments</key>
        <array>
            <string>sh</string>
            <string>-c</string>
            <string>/usr/local/bin/mdatp scan quick</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>StartCalendarInterval</key>
        <dict>
            <key>Hour</key>
            <integer>2</integer>
            <key>Minute</key>
            <integer>0</integer>
            <key>Weekday</key>
            <integer>5</integer>
        </dict>
        <key>WorkingDirectory</key>
        <string>/usr/local/bin/</string>
    </dict>
    </plist>
     ```

2. Save the file as *com.microsoft.wdav.schedquickscan.plist* to the /Library/LaunchDaemons directory.

### Schedule a full scan

1. Open a text editor and use this example for a full scan.

    ```XML
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
      "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.microsoft.wdav.schedfullscan</string>
        <key>ProgramArguments</key>
        <array>
            <string>sh</string>
            <string>-c</string>
            <string>/usr/local/bin/mdatp scan full</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>StartCalendarInterval</key>
        <dict>
            <key>Hour</key>
            <integer>2</integer>
            <key>Minute</key>
            <integer>50</integer>
            <key>Weekday</key>
            <integer>5</integer>
        </dict>
        <key>WorkingDirectory</key>
        <string>/usr/local/bin/</string>
    </dict>
    </plist>
     ```

2. Save the file as *com.microsoft.wdav.schedfullscan.plist* to the /Library/LaunchDaemons directory.
 
### Load your file

1. Open **Terminal**.
2. Enter the following commands to load your file:

    ```bash
    chown root:wheel /Library/LaunchDaemons/com.microsoft.wdav.sched*
    chmod 644 /Library/LaunchDaemons/com.microsoft.wdav.sched*
    xattr -c /Library/LaunchDaemons/com.microsoft.wdav.sched*     
    launchctl load -w /Library/LaunchDaemons/<your file name.plist>
    ```

3. Your scheduled scan will run at the date, time, and frequency you defined in your p-list. In the previous examples, the scan runs at 2:50 AM every Friday. 

    - The `Weekday` value of `StartCalendarInterval` uses an integer to indicate the fifth day of the week, or Friday. The range is between 1 and 7 with 7 representing Sunday.
    - The `Day` value of `StartCalendarInterval` uses an integer to indicate the third day of the month. The range is between 1 and 31.
    - The `Hour` value of `StartCalendarInterval` uses an integer to indicate the second hour of the day. The range is between 0 and 23.
      The `Minute` value of `StartCalendarInterval` uses an integer to indicate fifty minutes of the hour. The range is between 0 and 59.
    
    
 > [!IMPORTANT]
 > Agents executed with *launchd* will not run at the scheduled time while the device is asleep. They will instead run once the device resumes from sleep mode.
 >
 > If the device is turned off, the scan will run at the next scheduled scan time.

## Schedule a scan with Intune

You can also schedule scans with Microsoft Intune. The runMDATPQuickScan.sh shell script available at [Scripts for Microsoft Defender for Endpoint](https://github.com/microsoft/shell-intune-samples/tree/master/macOS/Config/MDATP) will persist when the device resumes from sleep mode. 

See [Use shell scripts on macOS devices in Intune](/mem/intune/apps/macos-shell-scripts) for more detailed instructions on how to use this script in your enterprise.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]

## Schedule a scan with Microsoft Defender for Endpoint on macOS

You can create a scanning schedule using the _Microsoft Defender for Endpoint on macOS_ on a macOS device.

For more information on the _.plist_ file format used here, see [About Information Property List Files](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/AboutInformationPropertyListFiles.html) at the official Apple developer website.

dailyConfiguration and/or weeklyConfiguration

Schedules are based on the local time zone of the device.

| Parameter | The acceptable values for this parameter are: |
| --- | --- |
| scheduledScan | enabled or disabled |
| scanType | quick or full |
| ignoreExclusions | true or false |
| lowPriorityScheduledScan | true or false |
| dayOfWeek | The range is between 0 and 8. <br>- 0: Everyday <br>- 1: Sunday <br>- 2: Monday <br>- 3: Tuesday <br>- 4: Wednesday <br>- 5: Thursday <br>- 6: Friday <br>- 7: Saturday <br>- 8: Never |
| timeOfDay | Specifies the time of day, as the number of _minutes after midnight_, to perform a scheduled scan. The time refers to the local time on the computer. If you don't specify a value for this parameter, a scheduled scan runs at a default time of two hours after midnight. |
| interval | 0 (never), every 1 (hour) to 24 (hours, 1 scan per day) |
| randomizeScanStartTime | Only supported on version 101.23122.\* or higher. Only applicable for daily quick scans or weekly quick/full scans. Randomize the start time of the scan by up to specified number of hours. <br> For example, if a scan is scheduled for 2 p.m and randomizeScanStartTime is set to 2, the scan will commence at a random time between 2 p.m and 4 p.m. |

Your scheduled scan will run at the date, time, and frequency you defined in your _plist_.

### Option 1: Schedule a quick scan using a _plist_

In the following example, the daily quick scan configuration is set to run at 885 minutes after midnight (2:45 p.m.).<br>
The weekly configuration is set to run a quick scan on Wednesday at 880 minutes after midnight (2:40 p.m.).
And it's set to ignore exclusions and run on a low priority scan.

The following code shows the schema you need to use to schedule a quick scan.

1. Open a text editor and use this example as a guide for your own scheduled scan file.

``` XML

\<?xml version="1.0" encoding="UTF-8"?\>

\<!DOCTYPEplist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "[http://www.apple.com/DTDs/PropertyList-1.0.dtd](http://www.apple.com/DTDs/PropertyList-1.0.dtd)"\>

\<plistversion="1.0"\>

\<dict\>

\<key\>features\</key\>

\<dict\>

\<key\>scheduledScan\</key\>

\<string\>enabled\</string\>

\</dict\>

\<key\>scheduledScan\</key\>

\<dict\>

\<key\>ignoreExclusions\</key\>

\<true/\>

\<key\>lowPriorityScheduledScan\</key\>

\<true/\>

\<key\>dailyConfiguration\</key\>

\<dict\>

\<key\>timeOfDay\</key\>

\<integer\>885\</integer\>

\<key\>interval\</key\>

\<string\>0\</string\>

\</dict\>

\<key\>weeklyConfiguration\</key\>

\<dict\>

\<key\>dayOfWeek\</key\>

\<integer\>4\</integer\>

\<key\>timeOfDay\</key\>

\<integer\>880\</integer\>

\<key\>scanType\</key\>

\<string\>quick\</string\>

\</dict\>

\</dict\>

\</dict\>

\</plist\>
```

1. Save the file as _com.microsoft.wdav.schedquickscan.plist_.

### Option 2: Schedule a full scan using a _plist_

1. Open a text editor and use this example for a full scan.

```XML

\<?xml version="1.0" encoding="UTF-8"?\>

\<!DOCTYPEplist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "[http://www.apple.com/DTDs/PropertyList-1.0.dtd](http://www.apple.com/DTDs/PropertyList-1.0.dtd)"\>

\<plistversion="1.0"\>

\<dict\>

\<key\>features\</key\>

\<dict\>

\<key\>scheduledScan\</key\>

\<string\>enabled\</string\>

\</dict\>

\<key\>scheduledScan\</key\>

\<dict\>

\<key\>ignoreExclusions\</key\>

\<true/\>

\<key\>lowPriorityScheduledScan\</key\>

\<true/\>

\<key\>dailyConfiguration\</key\>

\<dict\>

\<key\>timeOfDay\</key\>

\<integer\>885\</integer\>

\<key\>interval\</key\>

\<string\>1\</string\>

\</dict\>

\<key\>weeklyConfiguration\</key\>

\<dict\>

\<key\>dayOfWeek\</key\>

\<integer\>4\</integer\>

\<key\>timeOfDay\</key\>

\<integer\>880\</integer\>

\<key\>scanType\</key\>

\<string\>full\</string\>

\</dict\>

\</dict\>

\</dict\>

\</plist\>
```

1. Save the file as _com.microsoft.wdav.schedfullscan.plist_.

### Option 3: Configure scheduled scans through CLI tool

To enable scheduled scan feature:

|Version|Command|
|---|---|
| Version 101.23102.\* or lower | `sudo mdatp config scheduled-scan-settings feature --value enabled` |
| Version 101.23122.\* or higher | `sudo mdatp config scheduled-scan settings feature --value enabled` |

To schedule hourly quick scans:

|Version|Command|
|---|---|
| Version 101.23102.\* or lower | sudo mdatp config schedule-quick-scan hourly-interval --value \<arg\> |
| Version 101.23122.\* or higher | sudo mdatp config scheduled-scan quick-scan hourly-interval --value \<arg\> |

:::image type="content" source="media/schedule-scans-mac/schedule-scan-1.png" alt-text="Screenshot of schedule hourly scan." lightbox="media/schedule-scans-mac/schedule-scan-1.png":::

To schedule daily quick scans:

|Version|Command|
|---|---|
| Version 101.23102.\* or lower | sudo mdatp config schedule-quick-scan time-of-day --value \<arg\> |
| Version 101.23122.\* or higher | sudo mdatp config scheduled-scan quick-scan time-of-day --value \<arg\> |

:::image type="content" source="media/schedule-scans-mac/schedule-scan-2.png" alt-text="Screenshot of schedule daily quick scan." lightbox="media/schedule-scans-mac/schedule-scan-2.png":::

To schedule weekly scans:

|Version|Command|
|---|---|
| Version 101.23102.\* or lower | sudo mdatp config schedule-weekly-scan –day-of-week \<arg\> --time-of-day \<arg\> --scan-type \<arg\> |
| Version 101.23122.\* or higher | sudo mdatp config scheduled-scan weekly-scan --day-of-week \<arg\> --time-of-day \<arg\>--scan-type \<arg\> |

:::image type="content" source="media/schedule-scans-mac/schedule-scan-3.png" alt-text="Screenshot of schedule weekly scan." lightbox="media/schedule-scans-mac/schedule-scan-3.png":::

For other configuration options:

- To check for definitions update before scheduled scans:

  `sudo mdatp config scheduled-scan-settings check-for-definitions --value true`

- To use low priority threads for scheduled scanning:

  `sudo mdatp config scheduled-scan-settings low-priority --value true`

### Check that the scheduled scan ran
Use the following command:

`mdatp scan list`

:::image type="content" source="media/schedule-scans-mac/schedule-scan-check.png" alt-text="Screenshot of schedule ran." lightbox="media/schedule-scans-mac/schedule-scan-check.png":::

`\<snip\>`

:::image type="content" source="media/schedule-scans-mac/schedule-scan-chk.png" alt-text="Screenshot of schedule ran successfully." lightbox="media/schedule-scans-mac/schedule-scan-chk.png":::  

 
> [!IMPORTANT]
> Scheduled scans will not run at the scheduled time while the device is asleep. They will instead run once the device resumes from sleep mode.
> If the device is turned off, the scan will run at the next scheduled scan time.

> [!TIP]
> Do you want to learn more? Engage with the Microsoft Security community in our Tech Community: [**Microsoft Defender for Endpoint Tech Community**](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/bd-p/MicrosoftDefenderATP).