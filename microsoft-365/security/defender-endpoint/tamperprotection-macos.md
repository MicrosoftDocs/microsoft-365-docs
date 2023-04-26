---
title: Protect macOS security settings with tamper protection
description: Use tamper protection to prevent malicious apps from changing important macOS security settings.
keywords: macos, tamper protection, security settings, malware
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/24/2023
---

# Protect macOS security settings with tamper protection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-rbac-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]


Tamper protection in macOS helps prevent unwanted changes to security settings from being made by unauthorized users. Tamper protection helps prevent unauthorized removal of Microsoft Defender for Endpoint on macOS. This capability also helps important security files, processes, and configuration settings from being tampered.

> [!IMPORTANT]
> Between March and May of 2023, Microsoft Defender for Endpoint on macOS will start respecting the selection for tamper protection applied via the global tamper protection switch under advanced settings in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). You can choose to enforce (block/audit/disable) your own macOS tamper protection settings by using a Mobile Device Management (MDM) solution such as Intune or JAMF (recommended). If the tamper protection setting was not enforced via MDM, a local administrator can continue to manually change the setting with the following command: `sudo mdatp config tamper-protection enforcement-level --value (chosen mode)`.

You can set tamper protection in the following modes:

|Topic|Description|
|---|---|
|Disabled|Tamper protection is completely off.|
|Audit|Tampering operations are logged, but not blocked. This is the default mode after installation.|
|Block|Tamper protection is on; tampering operations are blocked.|

When tamper protection is set to audit or block mode, you can expect the following outcomes:

**Audit mode**:

- Actions to uninstall Defender for Endpoint agent is logged (audited)
- Editing/modification of Defender for Endpoint files are logged (audited)
- Creation of new files under Defender for Endpoint location is logged (audited)
- Deletion of Defender for Endpoint files is logged (audited)
- Renaming of Defender for Endpoint files is logged (audited)

**Block mode**:

- Actions to uninstall Defender for Endpoint agent  is blocked
- Editing/modification of Defender for Endpoint files are blocked
- Creation of new files under Defender for Endpoint location is blocked
- Deletion of Defender for Endpoint files is blocked
- Renaming of Defender for Endpoint files is blocked
- Commands to stop the agent fail

Here is an example of a system message in response to a blocked action:

![Screenshot of operation blocked message.](images/operation-blocked.png)


You can configure the tamper protection mode by providing the mode name as enforcement-level.

> [!NOTE]
>
> - The mode change will apply immediately.
> - If you used JAMF during the initial configuration, then you'll need to update the configuration using JAMF as well.

## Before you begin

- Supported macOS versions: Big Sur (11), or later.
- Minimum required version for Defender for Endpoint: 101.70.19.

**Highly recommended settings:**

- System Integrity Protection (SIP) enabled. For more information, see [Disabling and Enabling System Integrity Protection](https://developer.apple.com/documentation/security/disabling_and_enabling_system_integrity_protection).
- Use a Mobile device management (MDM) tool to configure Microsoft Defender for Endpoint.
- Ensure that Defender for Endpoint has **Full Disk Access** authorization.

> [!NOTE]
> 
> Enabling **TCC** (Transparency, Consent & Control) through an Mobile Device Management solution such as [Intune](mac-install-with-intune.md), will eliminate the risk of Defender for Endpoint losing **Full Disk Access** Authorization to function properly 
.

## Configure tamper protection on macOS devices

There are several ways you can configure tamper protection:

- [Manual configuration](#manual-configuration)
- [JAMF](#jamf)
- [Intune](#intune)

### Before you begin

Verify that "tamper_protection" is set to "disabled" or "audit" to observe the state change.

```bash
mdatp health
```

```console
healthy                                     : true
health_issues                               : []
licensed                                    : true
engine_version                              : "1.1.19300.3"
app_version                                 : "101.70.19"
org_id                                      : "..."
log_level                                   : "info"
machine_guid                                : "..."
release_ring                                : "InsiderFast"
product_expiration                          : Dec 29, 2022 at 09:48:37 PM
cloud_enabled                               : true
cloud_automatic_sample_submission_consent   : "safe"
cloud_diagnostic_enabled                    : false
passive_mode_enabled                        : false
real_time_protection_enabled                : true
real_time_protection_available              : true
real_time_protection_subsystem              : "endpoint_security_extension"
network_events_subsystem                    : "network_filter_extension"
device_control_enforcement_level            : "audit"
tamper_protection                           : "audit"
automatic_definition_update_enabled         : true
definitions_updated                         : Jul 06, 2022 at 01:57:03 PM
definitions_updated_minutes_ago             : 5
definitions_version                         : "1.369.896.0"
definitions_status                          : "up_to_date"
edr_early_preview_enabled                   : "disabled"
edr_device_tags                             : []
edr_group_ids                               : ""
edr_configuration_version                   : "20.199999.main.2022.07.05.02-ac10b0623fd381e28133debe14b39bb2dc5b61af"
edr_machine_id                              : "..."
conflicting_applications                    : []
network_protection_status                   : "stopped"
data_loss_prevention_status                 : "disabled"
full_disk_access_enabled                    : true
```

### Manual configuration

1. Use the following command:

   ```console
sudo mdatp config tamper-protection enforcement-level --value block
```

   ![Image of manual configuration command](images/manual-config-cmd.png)

   > [!NOTE]
   > If you use manual configuration to enable tamper protection, you can also disable tamper protection manually at any time. For example, you can revoke Full Disk Access from Defender in System Preferences manually. You must use MDM instead of manual configuration to prevent a local admin from doing that.

2. Verify the result.

```bash
mdatp health
```

```console
healthy                                     : true
health_issues                               : []
licensed                                    : true
engine_version                              : "1.1.19300.3"
app_version                                 : "101.70.19"
org_id                                      : "..."
log_level                                   : "info"
machine_guid                                : "..."
release_ring                                : "InsiderFast"
product_expiration                          : Dec 29, 2022 at 09:48:37 PM
cloud_enabled                               : true
cloud_automatic_sample_submission_consent   : "safe"
cloud_diagnostic_enabled                    : false
passive_mode_enabled                        : false
real_time_protection_enabled                : true
real_time_protection_available              : true
real_time_protection_subsystem              : "endpoint_security_extension"
network_events_subsystem                    : "network_filter_extension"
device_control_enforcement_level            : "audit"
tamper_protection                           : "block"
automatic_definition_update_enabled         : true
definitions_updated                         : Jul 06, 2022 at 01:57:03 PM
definitions_updated_minutes_ago             : 5
definitions_version                         : "1.369.896.0"
definitions_status                          : "up_to_date"
edr_early_preview_enabled                   : "disabled"
edr_device_tags                             : []
edr_group_ids                               : ""
edr_configuration_version                   : "20.199999.main.2022.07.05.02-ac10b0623fd381e28133debe14b39bb2dc5b61af"
edr_machine_id                              : "..."
conflicting_applications                    : []
network_protection_status                   : "stopped"
data_loss_prevention_status                 : "disabled"
full_disk_access_enabled                    : true
```

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

> [!NOTE]
> If you already have a configuration profile for Microsoft Defender for Endpoint then you need to *add* settings to it. You should not create a second configuration profile.

### Intune

Follow the documented Intune profile example to configure tamper protection through Intune. For more information, see [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md).

Add the following configuration in your Intune profile:

> [!NOTE]
> For Intune configuration, you can create a new profile configuration file to add the Tamper protection configuration, or you can add these parameters to the existing one.

```xml
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
                             <string>block</string>
                </dict>
            </dict>
        </array>
    </dict>
</plist>
```

Check the tamper protection status by running the following command:

`mdatp health --field tamper_protection`

The result shows "block" if tamper protection is on:

![Image of tamper protection in block mode](images/tp-block-mode.png)


You can also run full `mdatp health` and look for the "tamper_protection" in the output

## Verify tamper protection preventive capabilities

You can verify that tamper protection is on through various ways.

### Verify block mode

Tampering alert is raised in the Microsoft 365 Defender portal

:::image type="content" source="images/tampering-sensor-portal.png" alt-text="Screenshot of tampering alert raised in the Microsoft 365 Defender portal." lightbox="images/tampering-sensor-portal.png":::


### Verify block mode and audit modes

- Using Advanced hunting, you see tampering alerts appear
- Tampering events can be found in the local device logs: `sudo grep -F '[{tamperProtection}]' /Library/Logs/Microsoft/mdatp/microsoft_defender_core.log`

![Screenshot of tamper protection log.](images/tamper-protection-log.png)


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

```console
sudo mdatp config tamper-protection enforcement-level - -value disabled
```

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

```XML
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

## Troubleshooting configuration issues

### Issue: Tamper protection is reported as disabled

If running the command `mdatp health` reports that the tamper protection is disabled, even if you enabled it and more than an hour has passed since the onboarding, then you can check if you have the right configuration by running the following command:

```console
$ sudo grep -F '[{tamperProtection}]: Feature state:' /Library/Logs/Microsoft/mdatp/microsoft_defender_core.log | tail -n 1


```

The mode must be "block" (or "audit"). If it is not, then you haven't set the tamper protection mode either through `mdatp config` command or through Intune.

