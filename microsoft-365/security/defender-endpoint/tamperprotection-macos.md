---
title: Protect macOS security settings with tamper protection 
description: Use tamper protection to prevent malicious apps from changing important macOS security settings.
keywords: macos, tamper protection, security settings, malware
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Protect macOS security settings with tamper protection 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-rbac-abovefoldlink)

Tamper protection in macOS helps prevent unwanted changes to security settings from being made by unauthorized users. Tamper protection helps prevent unauthorized removal of Microsoft Defender for Endpoint on macOS. This capability also helps important security files, processes, and configuration settings from being tampered. 



You can set tamper protection in the following modes: 
                    

 Topic | Description 
:---|:---
Disabled  | Tamper protection is completely off (this is the default mode after installation)  
Audit     | Tampering operations are logged, but not blocked                                   
Block     | Tamper protection is on, tampering operations are blocked 

When tamper protection is set to audit or block mode, you can expect the following outcomes:

**Audit mode** 
- Actions to uninstall Defender for Endpoint agent is logged (audited)  
- Editing/modification of Defender for Endpoint files are logged (audited) 
- Creation of new files under Defender for Endpoint location is logged (audited) 
- Deletion of Defender for Endpoint files is logged (audited) 
- Renaming of Defender for Endpoint files is logged (audited) 
- Commands to stop the agent fail 

**Block mode**
- Actions to uninstall Defender for Endpoint agent  is blocked  
- Editing/modification of Defender for Endpoint files are blocked 
- Creation of new files under Defender for Endpoint location is blocked 
- Deletion of Defender for Endpoint files is blocked 
- Renaming of Defender for Endpoint files is blocked 
- Commands to stop the agent fail 

Here is an example of a system message in response to a blocked action: 

![Image of operation blocked](images/operation-blocked.png)

You can configure the tamper protection mode by providing the mode name as enforcement-level. 


>[!NOTE]
>- The mode change will apply immediately. You don’t need to change the feature flag nor restart Microsoft Defender for Endpoint. 
>- If you used JAMF during the initial configuration, then you'll need to update the configuration using JAMF as well.

## Before you begin
-   Supported macOS versions: Monterey (12), Big Sur (11), Catalina (10.15+) 
-   Minimum required version for Defender for Endpoint: 101.49.25 


**Highly recommended settings:** 

1. System Integrity Protection (SIP) enabled
1. Use a Mobile device management (MDM) tool to configure Microsoft Defender for Endpoint

 

## Configure tamper protection on macOS devices


There are several ways you can configure tamper protection: 

-   [Manual configuration](#manual-configuration)
-   [JAMF](#jamf) 
-   [Intune](#intune)

 

### Before you begin

Verify that "tamper_protection" is set to "disabled".  

![Image of command line with tamper protection in disable mode](images/verify-tp.png)


### Manual configuration

1. Use the following command: 

    ``` 
    sudo mdatp config tamper-protection enforcement-level --value block
    ```


    ![Image of manual configuration command](images/manual-config-cmd.png)


    >[!NOTE]
    > If you use manual configuration to enable tamper protection, you can also disable tamper protection manually at any time. For example, you can revoke Full Disk Access from Defender in System Preferences manually. You must use MDM instead of manual configuration to prevent a local admin from doing that.

2. Verify the result. 

    ![Image of result of manual configuration command](images/result-manual-config.png)


Notice that the "tamper_protection" is now set to "block". 

### JAMF

Configure tamper protection mode in Microsoft Defender for Endpoint [configuration profile](mac-jamfpro-policies.md), by adding the following settings:



```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>tamperProtection</key>
    <dict>
      <key>enforcementLevel</key>
      <string>block</string>
    </dict>
  </dict>
</plist>
```
 

>[!NOTE]
>If you already have a configuration profile for Microsoft Defender for Endpoint then you need to *add* settings to it. You don’t need to create a second configuration profile. 

 

### Intune

Follow the documented Intune profile example to configure tamper protection through Intune. For more information, see [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md). 

Add the following configuration in your Intune profile:

>[!NOTE]
>For Intune configuration, you can create a new profile configuration file to add the Tamper protection configuration, or you can add these parameters to the existing one.

                 
```xml
?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1">
    <dict>
        <key>PayloadUUID</key>
        <string>C4E6A782-0C8D-44AB-A025-EB893987A295</string>
        <key>PayloadType</key>
        <string>Configuration</string>
        <key>PayloadOrganization</key>
        <string>Microsoft</string>
        <key>PayloadIdentifier</key>
        <string>com.microsoft.wdav</string>
        <key>PayloadDisplayName</key>
        <string>Microsoft Defender for Endpoint settings</string>
        <key>PayloadDescription</key>
        <string>Microsoft Defender for Endpoint configuration settings</string>
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
                <string>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295</string>
                <key>PayloadType</key>
                <string>com.microsoft.wdav</string>
                <key>PayloadOrganization</key>
                <string>Microsoft</string>
                <key>PayloadIdentifier</key>
                <string>com.microsoft.wdav</string>
                <key>PayloadDisplayName</key>
                <string>Microsoft Defender for Endpoint configuration settings</string>
                <key>PayloadDescription</key>
                <string/>
                <key>PayloadVersion</key>
                <integer>1</integer>
                <key>PayloadEnabled</key>
                <true/>
                <key>tamperProtection</key>
                <dict>
                             <key>enforcementLevel</key>
                             <string>block</string>
                </dict>
            </dict>
        </array>
    </dict>
</plist>
```


Check the tamper protection status by running the following command: 
 

`mdatp health --field tamper_protection`

 
The result will show "block" if tamper protection is on: 

![Image of tamper protection in block mode](images/tp-block-mode.png)



You can also run full `mdatp health` and look for the "tamper_protection" in the output: 

![Image of tamper protection when in block mode](images/health-tp-audit.png)




## Verify tamper protection preventive capabilities  
You can verify that tamper protection is on through various ways.
 

### Verify block mode

Tampering alert is raised in the Microsoft 365 Defender portal

![Image of tampering alert raised in the Microsoft 365 Defender portal](images/tampering-sensor-portal.png)

 
 
### Verify block mode and audit modes 

-   Using Advanced hunting, you'll see tampering alerts appear  
-   Tampering events can be found in the local device logs: `sudo grep -F '\[{tamperProtection}\]' /Library/Logs/Microsoft/mdatp/microsoft_defender_core.log`

![Image of tamper protection log](images/tamper-protection-log.png)


 
### DIY scenarios 

- With tamper protection set to "block", attempt different methods to uninstall Defender for Endpoint. For example, drag the app tile into trash or uninstall tamper protection using the command line. 
- Try to stop the Defender for Endpoint process (kill). 
- Try to delete, rename, modify, move Defender for Endpoint files (similar to what a malicious user would do), for example: 

  - /Applications/Microsoft Defender ATP.app/ 
  - /Library/LaunchDaemons/com.microsoft.fresno.plist 
  - /Library/LaunchDaemons/com.microsoft.fresno.uninstall.plist 
  - /Library/LaunchAgents/com.microsoft.wdav.tray.plist 
  - /Library/Managed Preferences/com.microsoft.wdav.ext.plist 
  - /Library/Managed Preferences/mdatp_managed.json 
  - /Library/Managed Preferences/com.microsoft.wdav.atp.plist 
  - /Library/Managed Preferences/com.microsoft.wdav.atp.offboarding.plist 
  - /usr/local/bin/mdatp 

 
## Turning off tamper protection 

You can turn off tamper protection using any of the following methods.  

### Manual configuration

Use the following command:

`sudo mdatp config tamper-protection enforcement-level – –value disabled`

 

## JAMF
Change the `enforcementLevel` value to "disabled" in your configuration profile, and push it to the machine:


```console
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>tamperProtection</key>
    <dict>
      <key>enforcementLevel</key>
      <string>disabled</string>
    </dict>
  </dict>
</plist>

```


### Intune 
Add the following configuration in your Intune profile:

```
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1">
    <dict>
        <key>PayloadUUID</key>
        <string>C4E6A782-0C8D-44AB-A025-EB893987A295</string>
        <key>PayloadType</key>
        <string>Configuration</string>
        <key>PayloadOrganization</key>
        <string>Microsoft</string>
        <key>PayloadIdentifier</key>
        <string>com.microsoft.wdav</string>
        <key>PayloadDisplayName</key>
        <string>Microsoft Defender for Endpoint settings</string>
        <key>PayloadDescription</key>
        <string>Microsoft Defender for Endpoint configuration settings</string>
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
                <string>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295</string>
                <key>PayloadType</key>
                <string>com.microsoft.wdav</string>
                <key>PayloadOrganization</key>
                <string>Microsoft</string>
                <key>PayloadIdentifier</key>
                <string>com.microsoft.wdav</string>
                <key>PayloadDisplayName</key>
                <string>Microsoft Defender for Endpoint configuration settings</string>
                <key>PayloadDescription</key>
                <string/>
                <key>PayloadVersion</key>
                <integer>1</integer>
                <key>PayloadEnabled</key>
                <true/>
                <key>tamperProtection</key>
                <dict>
                             <key>enforcementLevel</key>
                             <string>disabled</string>
                </dict>
            </dict>
        </array>
    </dict>
</plist>
```

## Troubleshooting configuration issues


### Issue: Tamper protection is reported as disabled 

If running the command `mdatp health` reports that the tamper protection is disabled, even if you enabled it and more than an hour has passed since the onboarding, then you can check if you have the right configuration by running the following command: 

 
```console
$ sudo grep -F '\[{tamperProtection}\]: Feature state:' /Library/Logs/Microsoftmdatpmicrosoft_defender_core.log \| tail -n 1 

\[85246\]\[2021-12-08 15:45:34.184781 UTC\]\[info\]: \[{tamperProtection}\]: Feature state: enabledmode: "block" 
```
 

The mode must be "block" (or "audit"). If it is not, then you haven’t set the tamper protection mode either through `mdatp config` command or through Intune. 

 

