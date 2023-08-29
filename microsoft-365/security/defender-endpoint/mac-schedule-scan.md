---
title: How to schedule scans with Microsoft Defender for Endpoint on macOS
description: Learn how to schedule an automatic scanning time for Microsoft Defender for Endpoint in macOS to better protect your organization's assets.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, scans, antivirus, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
ms.date: 07/13/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Schedule scans with Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

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
