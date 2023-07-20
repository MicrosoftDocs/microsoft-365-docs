---
title: Deploy updates for Microsoft Defender for Endpoint on Mac
description: Control updates for Microsoft Defender for Endpoint on Mac in enterprise environments.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, updates, deploy, big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Deploy updates for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features.

To update Microsoft Defender for Endpoint on macOS, a program named Microsoft AutoUpdate (MAU) is used. MAU checks updates periodically, and automatically downloads and installs them.

:::image type="content" source="images/MDATP-34-MAU.png" alt-text="MAU" lightbox="images/MDATP-34-MAU.png":::

You can deploy preferences to configure how and when MAU checks for updates for the Macs in your organization.

## Use msupdate

MAU includes a command-line tool, called *msupdate*, that is designed for IT administrators so that they have more precise control over when updates are applied. Instructions for how to use this tool can be found in [Update Office for Mac by using msupdate](/deployoffice/mac/update-office-for-mac-using-msupdate).

In MAU, the application identifier for Microsoft Defender for Endpoint on macOS is *WDAV00*. To download and install the latest updates for Microsoft Defender for Endpoint on macOS, execute the following command from a Terminal window:

```dos
cd /Library/Application\ Support/Microsoft/MAU2.0/Microsoft\ AutoUpdate.app/Contents/MacOS
./msupdate --install --apps wdav00
```

## Set preferences for Microsoft AutoUpdate

This section describes the most common preferences that can be used to configure MAU. These settings can be deployed as a configuration profile through the management console that your enterprise is using. An example of a configuration profile is shown in the following sections.

### Set the channel name

The channel determines the type and frequency of updates that are offered through MAU. Devices in `Beta` can try out new features before devices in `Preview` and `Current`.

The `Current` channel contains the most stable version of the product.

> [!IMPORTANT]
> Prior to Microsoft AutoUpdate version 4.29, channels had different names:
>
> - `Beta Channel` was named `InsiderFast` (Insider Fast)
> - `Current Channel` (Preview) was named `External` (Insider Slow)
> - `Current Channel` was named `Production`

> [!TIP]
> In order to preview new features and provide early feedback, it is recommended that you configure some devices in your enterprise to `Beta` or `Preview`.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.autoupdate2`|
|**Key**|ChannelName|
|**Data type**|String|
|**Possible values**|Beta <p> Preview <p> Current|
|||

> [!WARNING]
> This setting changes the channel for all applications that are updated through Microsoft AutoUpdate. To change the channel only for Microsoft Defender for Endpoint on macOS, execute the following command after replacing `[channel-name]` with the desired channel:
>
> ```bash
> defaults write com.microsoft.autoupdate2 Applications -dict-add "/Applications/Microsoft Defender.app" " { 'Application ID' = 'WDAV00' ; 'App Domain' = 'com.microsoft.wdav' ; LCID = 1033 ; ChannelName = '[channel-name]' ; }"
> ```

### Set update check frequency

Change how often MAU searches for updates.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.autoupdate2`|
|**Key**|UpdateCheckFrequency|
|**Data type**|Integer|
|**Default value**|720 (minutes)|
|**Comment**|This value is set in minutes. The allowed range is 240 minutes (4 hours) - 720 minutes (12 hours).|
|||

### Change how MAU interacts with updates

Change how MAU searches for updates.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.autoupdate2`|
|**Key**|HowToCheck|
|**Data type**|String|
|**Possible values**|Manual <p> AutomaticCheck <p> AutomaticDownload|
|**Comment**|Note that AutomaticDownload will download and install silently if possible.|
|||

### Change whether the "Check for Updates" button is enabled

Change whether local users are able to click the "Check for Updates" option in the Microsoft AutoUpdate user interface.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.autoupdate2`|
|**Key**|EnableCheckForUpdatesButton|
|**Data type**|Boolean|
|**Possible values**|True (default) <p> False|
|||

### Disable Insider checkbox

Set to true to make the "Join the Office Insider Program..." checkbox unavailable / greyed out to users.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.autoupdate2`|
|**Key**|DisableInsiderCheckbox|
|**Data type**|Boolean|
|**Possible values**|False (default) <p> True|
|||

## Example configuration profile

The following configuration profile is used to:

- Place the device in the Current channel
- Automatically download and install updates
- Enable the "Check for updates" button in the user interface
- Allow users on the device to enroll into the Insider channels

> [!WARNING]
> The below configuration is an example configuration and should not be used in production without proper review of settings and tailor of configurations.

### Jamf Pro

```XML
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>ChannelName</key>
    <string>Current</string>
    <key>HowToCheck</key>
    <string>AutomaticDownload</string>
    <key>EnableCheckForUpdatesButton</key>
    <true/>
    <key>DisableInsiderCheckbox</key>
    <false/>
</dict>
</plist>
```

### Intune

```XML
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1">
    <dict>
        <key>PayloadUUID</key>
        <string>B762FF60-6ACB-4A72-9E72-459D00C936F3</string>
        <key>PayloadType</key>
        <string>Configuration</string>
        <key>PayloadOrganization</key>
        <string>Microsoft</string>
        <key>PayloadIdentifier</key>
        <string>com.microsoft.autoupdate2</string>
        <key>PayloadDisplayName</key>
        <string>Microsoft AutoUpdate settings</string>
        <key>PayloadDescription</key>
        <string>Microsoft AutoUpdate configuration settings</string>
        <key>PayloadVersion</key>
        <integer>1</integer>
        <key>PayloadEnabled</key>
        <true/>
        <key>PayloadRemovalDisallowed</key>
        <true/>
        <key>PayloadScope</key>
        <string>System</string>
        <key>PayloadContent</key>
        <array>
            <dict>
            <key>PayloadUUID</key>
            <string>5A6F350A-CC2C-440B-A074-68E3F34EBAE9</string>
            <key>PayloadType</key>
            <string>com.microsoft.autoupdate2</string>
            <key>PayloadOrganization</key>
            <string>Microsoft</string>
            <key>PayloadIdentifier</key>
            <string>com.microsoft.autoupdate2</string>
            <key>PayloadDisplayName</key>
            <string>Microsoft AutoUpdate configuration settings</string>
            <key>PayloadDescription</key>
            <string/>
            <key>PayloadVersion</key>
            <integer>1</integer>
            <key>PayloadEnabled</key>
            <true/>
            <key>ChannelName</key>
            <string>Current</string>
            <key>HowToCheck</key>
            <string>AutomaticDownload</string>
            <key>EnableCheckForUpdatesButton</key>
            <true/>
            <key>DisableInsiderCheckbox</key>
            <false/>
            </dict>
        </array>
    </dict>
</plist>
```

To configure MAU, you can deploy this configuration profile from the management tool that your enterprise is using:

- From Jamf Pro, upload this configuration profile and set the Preference Domain to *com.microsoft.autoupdate2*.
- From Intune, upload this configuration profile and set the custom configuration profile name to *com.microsoft.autoupdate2*.

## Resources

- [msupdate reference](/deployoffice/mac/update-office-for-mac-using-msupdate)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
