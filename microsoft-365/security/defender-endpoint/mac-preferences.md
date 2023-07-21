---
title: Set preferences for Microsoft Defender for Endpoint on Mac
description: Configure Microsoft Defender for Endpoint on Mac in enterprise organizations.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, management, preferences, enterprise, intune, jamf, macos,  big sur, monterey, ventura, mde for mac
ms.service: microsoft-365-security
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
ms.date: 06/22/2023
---

# Set preferences for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!IMPORTANT]
> This article contains instructions for how to set preferences for Microsoft Defender for Endpoint on macOS in enterprise organizations. To configure Microsoft Defender for Endpoint on macOS using the command-line interface, see [Resources](mac-resources.md#configuring-from-the-command-line).

## Summary

In enterprise organizations, Microsoft Defender for Endpoint on macOS can be managed through a configuration profile that is deployed by using one of several management tools. Preferences that are managed by your security operations team take precedence over preferences that are set locally on the device. Changing the preferences that are set through the configuration profile requires escalated privileges and isn't available for users without administrative permissions.

This article describes the structure of the configuration profile, includes a recommended profile that you can use to get started, and provides instructions on how to deploy the profile.

## Configuration profile structure

The configuration profile is a *.plist* file that consists of entries identified by a key (which denotes the name of the preference), followed by a value, which depends on the nature of the preference. Values can either be simple (such as a numerical value) or complex, such as a nested list of preferences.

> [!CAUTION]
> The layout of the configuration profile depends on the management console that you are using. The following sections contain examples of configuration profiles for JAMF and Intune.

The top level of the configuration profile includes product-wide preferences and entries for subareas of Microsoft Defender for Endpoint, which are explained in more detail in the next sections.

### Antivirus engine preferences

The *antivirusEngine* section of the configuration profile is used to manage the preferences of the antivirus component of Microsoft Defender for Endpoint.

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|antivirusEngine|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|

#### Enforcement level for antivirus engine

Specifies the enforcement preference of antivirus engine. There are three values for setting enforcement level:

- Real-time (`real_time`): Real-time protection (scan files as they're accessed) is enabled.
- On-demand (`on_demand`): Files are scanned only on demand. In this:
  - Real-time protection is turned off.
- Passive (`passive`): Runs the antivirus engine in passive mode. In this:
  - Real-time protection is turned off.
  - On-demand scanning is turned on.
  - Automatic threat remediation is turned off.
  - Security intelligence updates are turned on.
  - Status menu icon is hidden.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|enforcementLevel|
|**Data type**|String|
|**Possible values**|real_time (default) <p> on_demand <p> passive|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.10.72 or higher.|
|||

#### Configure file hash computation feature

Enables or disables file hash computation feature. When this feature is enabled, Defender for Endpoint computes hashes for files it scans to enable better matching against the indicator rules. On macOS, only the script and Mach-O (32 and 64 bit) files are considered for this hash computation (from engine version 1.1.20000.2 or higher). Note that enabling this feature might impact device performance. For more details, please refer to: [Create indicators for files](indicator-file.md).

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|enableFileHashComputation|
|**Data type**|Boolean|
|**Possible values**|false (default) <p> true|
|**Comments**|Available in Defender for Endpoint version 101.86.81 or higher.|

#### Run a scan after definitions are updated

Specifies whether to start a process scan after new security intelligence updates are downloaded on the device. Enabling this setting triggers an antivirus scan on the running processes of the device.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|scanAfterDefinitionUpdate|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.41.10 or higher.|
|||

#### Scan archives (on-demand antivirus scans only)

Specifies whether to scan archives during on-demand antivirus scans.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|scanArchives|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.41.10 or higher.|
|||

#### Degree of parallelism for on-demand scans

Specifies the degree of parallelism for on-demand scans. This corresponds to the number of threads used to perform the scan and impacts the CPU usage, as well as the duration of the on-demand scan.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|maximumOnDemandScanThreads|
|**Data type**|Integer|
|**Possible values**|2 (default). Allowed values are integers between 1 and 64.|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.41.10 or higher.|
|||

#### Exclusion merge policy

Specify the merge policy for exclusions. This can be a combination of administrator-defined and user-defined exclusions (`merge`), or only administrator-defined exclusions (`admin_only`). This setting can be used to restrict local users from defining their own exclusions.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|exclusionsMergePolicy|
|**Data type**|String|
|**Possible values**|merge (default) <p> admin_only|
|**Comments**|Available in Microsoft Defender for Endpoint version 100.83.73 or higher.|
|||

#### Scan exclusions

Specify entities excluded from being scanned. Exclusions can be specified by full paths, extensions, or file names.
(Exclusions are specified as an array of items, administrator can specify as many elements as necessary, in any order.)

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|exclusions|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|
|||

##### Type of exclusion

Specify content excluded from being scanned by type.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|$type|
|**Data type**|String|
|**Possible values**|excludedPath <p> excludedFileExtension <p> excludedFileName|
|||

##### Path to excluded content

Specify content excluded from being scanned by full file path.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|path|
|**Data type**|String|
|**Possible values**|valid paths|
|**Comments**|Applicable only if *$type* is *excludedPath*|
|||

## Supported exclusion types

The following table shows the exclusion types supported by Defender for Endpoint on Mac.

<br>

****

|Exclusion|Definition|Examples|
|---|---|---|
|File extension|All files with the extension, anywhere on the device|`.test`|
|File|A specific file identified by the full path|`/var/log/test.log` <p> `/var/log/*.log` <p> `/var/log/install.?.log`|
|Folder|All files under the specified folder (recursively)|`/var/log/` <p> `/var/*/`|
|Process|A specific process (specified either by the full path or file name) and all files opened by it|`/bin/cat` <p> `cat` <p> `c?t`|
||||

> [!IMPORTANT]
> The paths above must be hard links, not symbolic links, in order to be successfully excluded. You can check if a path is a symbolic link by running `file <path-name>`.

File, folder, and process exclusions support the following wildcards:

<br>

****

|Wildcard|Description|Example|Matches|Doesn't match|
|---|---|---|---|---|
|\*|Matches any number of any characters including none (note that when this wildcard is used inside a path it will substitute only one folder)|`/var/\*/\*.log`|`/var/log/system.log`|`/var/log/nested/system.log`|
|?|Matches any single character|`file?.log`|`file1.log` <p> `file2.log`|`file123.log`|
||||||

### Path type (file / directory)

Indicate if the *path* property refers to a file or directory.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|isDirectory|
|**Data type**|Boolean|
|**Possible values**|false (default) <p> true|
|**Comments**|Applicable only if *$type* is *excludedPath*|
|||

### File extension excluded from the scan

Specify content excluded from being scanned by file extension.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|extension|
|**Data type**|String|
|**Possible values**|valid file extensions|
|**Comments**|Applicable only if *$type* is *excludedFileExtension*|
|||

### Process excluded from the scan

Specify a process for which all file activity is excluded from scanning. The process can be specified either by its name (for example, `cat`) or full path (for example, `/bin/cat`).

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|name|
|**Data type**|String|
|**Possible values**|any string|
|**Comments**|Applicable only if *$type* is *excludedFileName*|
|||

#### Allowed threats

Specify threats by name that aren't blocked by Defender for Endpoint on Mac. These threats will be allowed to run.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|allowedThreats|
|**Data type**|Array of strings|
|||

#### Disallowed threat actions

Restricts the actions that the local user of a device can take when threats are detected. The actions included in this list aren't displayed in the user interface.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|disallowedThreatActions|
|**Data type**|Array of strings|
|**Possible values**|allow (restricts users from allowing threats) <p> restore (restricts users from restoring threats from the quarantine)|
|**Comments**|Available in Microsoft Defender for Endpoint version 100.83.73 or higher.|
|||

#### Threat type settings

Specify how certain threat types are handled by Microsoft Defender for Endpoint on macOS.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|threatTypeSettings|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|
|||

##### Threat type

Specify threat types.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|key|
|**Data type**|String|
|**Possible values**|potentially_unwanted_application <p> archive_bomb|
|||

##### Action to take

Specify what action to take when a threat of the type specified in the preceding section is detected. Choose from the following options:

- **Audit**: your device isn't protected against this type of threat, but an entry about the threat is logged.
- **Block**: your device is protected against this type of threat and you're notified in the user interface and the security console.
- **Off**: your device isn't protected against this type of threat and nothing is logged.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|value|
|**Data type**|String|
|**Possible values**|audit (default) <p> block <p> off|
|||

#### Threat type settings merge policy

Specify the merge policy for threat type settings. This can be a combination of administrator-defined and user-defined settings (`merge`) or only administrator-defined settings (`admin_only`). This setting can be used to restrict local users from defining their own settings for different threat types.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|threatTypeSettingsMergePolicy|
|**Data type**|String|
|**Possible values**|merge (default) <p> admin_only|
|**Comments**|Available in Microsoft Defender for Endpoint version 100.83.73 or higher.|
|||

#### Antivirus scan history retention (in days)

Specify the number of days that results are retained in the scan history on the device. Old scan results are removed from the history. Old quarantined files that are also removed from the disk.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|scanResultsRetentionDays|
|**Data type**|String|
|**Possible values**|90 (default). Allowed values are from 1 day to 180 days.|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.07.23 or higher.|
|||

#### Maximum number of items in the antivirus scan history

Specify the maximum number of entries to keep in the scan history. Entries include all on-demand scans performed in the past and all antivirus detections.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|scanHistoryMaximumItems|
|**Data type**|String|
|**Possible values**|10000 (default). Allowed values are from 5000 items to 15000 items.|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.07.23 or higher.|
|||

### Cloud-delivered protection preferences

Configure the cloud-driven protection features of Microsoft Defender for Endpoint on macOS.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|cloudService|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|
|||

#### Enable / disable cloud-delivered protection

Specify whether to enable cloud-delivered protection the device or not. To improve the security of your services, we recommend keeping this feature turned on.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|enabled|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|||

#### Diagnostic collection level

Diagnostic data is used to keep Microsoft Defender for Endpoint secure and up-to-date, detect, diagnose and fix problems, and also make product improvements. This setting determines the level of diagnostics sent by Microsoft Defender for Endpoint to Microsoft.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|diagnosticLevel|
|**Data type**|String|
|**Possible values**|optional (default) <p> required|
|||

#### Configure cloud block level

This setting determines how aggressive Defender for Endpoint will be in blocking and scanning suspicious files. If this setting is on, Defender for Endpoint will be more aggressive when identifying suspicious files to block and scan; otherwise, it will be less aggressive and therefore block and scan with less frequency. There are five values for setting cloud block level:

- Normal (`normal`): The default blocking level.
- Moderate (`moderate`): Delivers verdict only for high confidence detections.
- High (`high`): Aggressively blocks unknown files while optimizing for performance (greater chance of blocking non-harmful files).
- High Plus (`high_plus`): Aggressively blocks unknown files and applies additional protection measures (might impact client device performance).
- Zero Tolerance (`zero_tolerance`): Blocks all unknown programs.

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|cloudBlockLevel|
|**Data type**|String|
|**Possible values**|normal (default) <p> moderate <p> high <p> high_plus <p> zero_tolerance|
|**Comments**|Available in Defender for Endpoint version 101.56.62 or higher.|

#### Enable / disable automatic sample submissions

Determines whether suspicious samples (that are likely to contain threats) are sent to Microsoft. You're prompted if the submitted file is likely to contain personal information.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|automaticSampleSubmission|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|||

#### Enable / disable automatic security intelligence updates

Determines whether security intelligence updates are installed automatically:

<br>

****

|Section|Value|
|---|---|
|**Key**|automaticDefinitionUpdateEnabled|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|||

### User interface preferences

Manage the preferences for the user interface of Microsoft Defender for Endpoint on macOS.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|userInterface|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|
|||

#### Show / hide status menu icon

Specify whether to show or hide the status menu icon in the top-right corner of the screen.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|hideStatusMenuIcon|
|**Data type**|Boolean|
|**Possible values**|false (default) <p> true|
|||

#### Show / hide option to send feedback

Specify whether users can submit feedback to Microsoft by going to `Help` > `Send Feedback`.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|userInitiatedFeedback|
|**Data type**|String|
|**Possible values**|enabled (default) <p> disabled|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.19.61 or higher.|
|||



#### Control sign-in to consumer version of Microsoft Defender

Specify whether users can sign into the consumer version of Microsoft Defender.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|consumerExperience|
|**Data type**|String|
|**Possible values**|enabled (default) <p> disabled|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.60.18 or higher.|
|||


### Endpoint detection and response preferences

Manage the preferences of the endpoint detection and response (EDR) component of Microsoft Defender for Endpoint on macOS.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|edr|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|
|||

#### Device tags

Specify a tag name and its value.

- The GROUP tag, tags the device with the specified value. The tag is reflected in the portal under the device page and can be used for filtering and grouping devices.

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|tags|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|
|||

##### Type of tag

Specifies the type of tag

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|key|
|**Data type**|String|
|**Possible values**|`GROUP`|
|||

##### Value of tag

Specifies the value of tag

<br>

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|value|
|**Data type**|String|
|**Possible values**|any string|
|||

> [!IMPORTANT]
>
> - Only one value per tag type can be set.
> - Type of tags are unique, and should not be repeated in the same configuration profile.

### Tamper Protection

Manage the preferences of the Tamper Protection component of Microsoft Defender for Endpoint on macOS.

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|tamperProtection|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|
|||

#### Enforcement level

If Tamper Protection is enabled and if it is in the strict mode

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|enforcementLevel|
|**Data type**|String|
|**Comments**|One of 'disabled', 'audit', or 'block'|
|||

Possible values:

- disabled - Tamper Protection is turned off, no prevention of attacks or reporting to the Cloud
- audit - Tamper Protection reports tampering attempts to the Cloud only, but does not block them
- block - Tamper Protection both blocks and reports attacks to the Cloud

#### Exclusions

Defines processes that are allowed altering Microsoft Defender's asset, without being considering tampering.
Either path, or teamId, or signingId, or their combination must be provided.
Args can be provided additionally, to specify allowed process more precisely.

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|exclusions|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|
|||

##### Path

Exact path of the process executable.

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|path|
|**Data type**|String|
|**Comments**| In case of a shell script it will be the exact path to the interpreter binary, e.g. `/bin/zsh`. No wildcards allowed. |
|||

##### Team Id

Apple's "Team Id" of the vendor.

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|teamId|
|**Data type**|String|
|**Comments**| For example, `UBF8T346G9` for Microsoft |
|||

##### Signing Id

Apple's "Signing Id" of the package.

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|signingId|
|**Data type**|String|
|**Comments**| For example, `com.apple.ruby` for Ruby interpreter |
|||

##### Process arguments

Used in combination with other parameters to identify the process.

****

|Section|Value|
|---|---|
|**Domain**|`com.microsoft.wdav`|
|**Key**|signingId|
|**Data type**|Array of strings|
|**Comments**| If specified, process argument must match those arguments exactly, case-sensitive |
|||

## Recommended configuration profile

To get started, we recommend the following configuration for your enterprise to take advantage of all protection features that Microsoft Defender for Endpoint provides.

The following configuration profile (or, in case of JAMF, a property list that could be uploaded into the custom settings configuration profile) will:

- Enable real-time protection (RTP)
- Specify how the following threat types are handled:
  - **Potentially unwanted applications (PUA)** are blocked
  - **Archive bombs** (file with a high compression rate) are audited to Microsoft Defender for Endpoint logs
- Enable automatic security intelligence updates
- Enable cloud-delivered protection
- Enable automatic sample submission

### Property list for JAMF recommended configuration profile

```XML
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>antivirusEngine</key>
    <dict>
        <key>enforcementLevel</key>
        <string>real_time</string>
        <key>threatTypeSettings</key>
        <array>
            <dict>
                <key>key</key>
                <string>potentially_unwanted_application</string>
                <key>value</key>
                <string>block</string>
            </dict>
            <dict>
                <key>key</key>
                <string>archive_bomb</string>
                <key>value</key>
                <string>audit</string>
            </dict>
        </array>
    </dict>
    <key>cloudService</key>
    <dict>
        <key>enabled</key>
        <true/>
        <key>automaticSampleSubmission</key>
        <true/>
        <key>automaticDefinitionUpdateEnabled</key>
        <true/>
    </dict>
    <key>tamperProtection</key>
    <dict>
        <key>enforcementLevel</key>
        <string>block</key>
    </dict>
</dict>
</plist>
```

### Intune recommended profile

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
                <key>antivirusEngine</key>
                <dict>
                    <key>enforcementLevel</key>
                    <string>real_time</string>
                    <key>threatTypeSettings</key>
                    <array>
                        <dict>
                            <key>key</key>
                            <string>potentially_unwanted_application</string>
                            <key>value</key>
                            <string>block</string>
                        </dict>
                        <dict>
                            <key>key</key>
                            <string>archive_bomb</string>
                            <key>value</key>
                            <string>audit</string>
                        </dict>
                    </array>
                </dict>
                <key>cloudService</key>
                <dict>
                    <key>enabled</key>
                    <true/>
                    <key>automaticSampleSubmission</key>
                    <true/>
                    <key>automaticDefinitionUpdateEnabled</key>
                    <true/>
                </dict>
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

## Full configuration profile example

The following templates contain entries for all settings described in this document and can be used for more advanced scenarios where you want more control over Microsoft Defender for Endpoint on macOS.

### Property list for JAMF full configuration profile

```XML
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>antivirusEngine</key>
    <dict>
        <key>enforcementLevel</key>
        <string>real_time</string>
        <key>scanAfterDefinitionUpdate</key>
        <true/>
        <key>scanArchives</key>
        <true/>
        <key>maximumOnDemandScanThreads</key>
        <integer>2</integer>
        <key>exclusions</key>
        <array>
            <dict>
                <key>$type</key>
                <string>excludedPath</string>
                <key>isDirectory</key>
                <false/>
                <key>path</key>
                <string>/var/log/system.log</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedPath</string>
                <key>isDirectory</key>
                <true/>
                <key>path</key>
                <string>/home</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedPath</string>
                <key>isDirectory</key>
                <true/>
                <key>path</key>
                <string>/Users/*/git</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedFileExtension</string>
                <key>extension</key>
                <string>pdf</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedFileName</string>
                <key>name</key>
                <string>cat</string>
            </dict>
        </array>
        <key>exclusionsMergePolicy</key>
        <string>merge</string>
        <key>allowedThreats</key>
        <array>
            <string>EICAR-Test-File (not a virus)</string>
        </array>
        <key>disallowedThreatActions</key>
        <array>
            <string>allow</string>
            <string>restore</string>
        </array>
        <key>threatTypeSettings</key>
        <array>
            <dict>
                <key>key</key>
                <string>potentially_unwanted_application</string>
                <key>value</key>
                <string>block</string>
            </dict>
            <dict>
                <key>key</key>
                <string>archive_bomb</string>
                <key>value</key>
                <string>audit</string>
            </dict>
        </array>
        <key>threatTypeSettingsMergePolicy</key>
        <string>merge</string>
    </dict>
    <key>cloudService</key>
    <dict>
        <key>enabled</key>
        <true/>
        <key>diagnosticLevel</key>
        <string>optional</string>
        <key>automaticSampleSubmission</key>
        <true/>
        <key>automaticDefinitionUpdateEnabled</key>
        <true/>
        <key>cloudBlockLevel</key>
        <string>normal</string>
    </dict>
    <key>edr</key>
    <dict>
        <key>tags</key>
        <array>
            <dict>
                <key>key</key>
                <string>GROUP</string>
                <key>value</key>
                <string>ExampleTag</string>
            </dict>
        </array>
    </dict>
    <key>tamperProtection</key>
    <dict>
        <key>enforcementLevel</key>
        <string>block</key>
        <key>exclusions</key>
        <array>
        <dict>
            <key>path</key>
            <string>/bin/zsh</string>
            <key>teamId</key>
            <string/>
            <key>signingId</key>
            <string>com.apple.zsh</string>
            <key>args</key>
            <array>
            <string>/usr/local/bin/test.sh</string>
            </array>
        </dict>
        <dict>
            <key>path</key>
            <string>/usr/local/jamf/bin/jamf</string>
            <key>teamId</key>
            <string>483DWKW443</string>
            <key>signingId</key>
            <string>com.jamfsoftware.jamf</string>
        </dict>
        </array>            
    </dict>
    <key>userInterface</key>
    <dict>
        <key>hideStatusMenuIcon</key>
        <false/>
        <key>userInitiatedFeedback</key>
        <string>enabled</string>
    </dict>
</dict>
</plist>
```

### Intune full profile

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
        <string>C4E6A782-0C8D-44AB-A025-EB893987A295</string>
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
                <string>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295</string>
                <key>PayloadDisplayName</key>
                <string>Microsoft Defender for Endpoint configuration settings</string>
                <key>PayloadDescription</key>
                <string/>
                <key>PayloadVersion</key>
                <integer>1</integer>
                <key>PayloadEnabled</key>
                <true/>
                <key>antivirusEngine</key>
                <dict>
                    <key>enforcementLevel</key>
                    <string>real_time</string>
                    <key>scanAfterDefinitionUpdate</key>
                    <true/>
                    <key>scanArchives</key>
                    <true/>
                    <key>maximumOnDemandScanThreads</key>
                    <integer>1</integer>
                    <key>exclusions</key>
                    <array>
                        <dict>
                            <key>$type</key>
                            <string>excludedPath</string>
                            <key>isDirectory</key>
                            <false/>
                            <key>path</key>
                            <string>/var/log/system.log</string>
                        </dict>
                        <dict>
                            <key>$type</key>
                            <string>excludedPath</string>
                            <key>isDirectory</key>
                            <true/>
                            <key>path</key>
                            <string>/home</string>
                        </dict>
                        <dict>
                            <key>$type</key>
                            <string>excludedPath</string>
                            <key>isDirectory</key>
                            <true/>
                            <key>path</key>
                            <string>/Users/*/git</string>
                        </dict>
                        <dict>
                            <key>$type</key>
                            <string>excludedFileExtension</string>
                            <key>extension</key>
                            <string>pdf</string>
                        </dict>
                        <dict>
                            <key>$type</key>
                            <string>excludedFileName</string>
                            <key>name</key>
                            <string>cat</string>
                        </dict>
                    </array>
                    <key>exclusionsMergePolicy</key>
                    <string>merge</string>
                    <key>allowedThreats</key>
                    <array>
                        <string>EICAR-Test-File (not a virus)</string>
                    </array>
                    <key>disallowedThreatActions</key>
                    <array>
                        <string>allow</string>
                        <string>restore</string>
                    </array>
                    <key>threatTypeSettings</key>
                    <array>
                        <dict>
                            <key>key</key>
                            <string>potentially_unwanted_application</string>
                            <key>value</key>
                            <string>block</string>
                        </dict>
                        <dict>
                            <key>key</key>
                            <string>archive_bomb</string>
                            <key>value</key>
                            <string>audit</string>
                        </dict>
                    </array>
                    <key>threatTypeSettingsMergePolicy</key>
                    <string>merge</string>
                </dict>
                <key>cloudService</key>
                <dict>
                    <key>enabled</key>
                    <true/>
                    <key>diagnosticLevel</key>
                    <string>optional</string>
                    <key>automaticSampleSubmission</key>
                    <true/>
                    <key>automaticDefinitionUpdateEnabled</key>
                    <true/>
                    <key>cloudBlockLevel</key>
                    <string>normal</string>
                </dict>
                <key>edr</key>
                <dict>
                    <key>tags</key>
                    <array>
                        <dict>
                            <key>key</key>
                            <string>GROUP</string>
                            <key>value</key>
                            <string>ExampleTag</string>
                        </dict>
                    </array>
                </dict>
                <key>tamperProtection</key>
                <dict>
                    <key>enforcementLevel</key>
                    <string>block</key>
                    <key>exclusions</key>
                    <array>
                    <dict>
                        <key>path</key>
                        <string>/bin/zsh</string>
                        <key>teamId</key>
                        <string/>
                        <key>signingId</key>
                        <string>com.apple.zsh</string>
                        <key>args</key>
                        <array>
                        <string>/usr/local/bin/test.sh</string>
                        </array>
                    </dict>
                    <dict>
                        <key>path</key>
                        <string>/Library/Intune/Microsoft Intune Agent.app/Contents/MacOS/IntuneMdmDaemon</string>
                        <key>teamId</key>
                        <string>UBF8T346G9</string>
                        <key>signingId</key>
                        <string>IntuneMdmDaemon</string>
                    </dict>
                    </array>            
                </dict>
                <key>userInterface</key>
                <dict>
                    <key>hideStatusMenuIcon</key>
                    <false/>
                    <key>userInitiatedFeedback</key>
                    <string>enabled</string>
                </dict>
            </dict>
        </array>
    </dict>
</plist>
```

## Property list validation

The property list must be a valid *.plist* file. This can be checked by executing:

```bash
plutil -lint com.microsoft.wdav.plist
```

```Output
com.microsoft.wdav.plist: OK
```

If the file is well-formed, the above command outputs `OK` and returns an exit code of `0`. Otherwise, an error that describes the issue is displayed and the command returns an exit code of `1`.

## Configuration profile deployment

Once you've built the configuration profile for your enterprise, you can deploy it through the management console that your enterprise is using. The following sections provide instructions on how to deploy this profile using JAMF and Intune.

### JAMF deployment

From the JAMF console, open **Computers** \> **Configuration Profiles**, navigate to the configuration profile you'd like to use, then select **Custom Settings**. Create an entry with `com.microsoft.wdav` as the preference domain and upload the *.plist* produced earlier.

> [!CAUTION]
> You must enter the correct preference domain (`com.microsoft.wdav`); otherwise, the preferences will not be recognized by Microsoft Defender for Endpoint.

### Intune deployment

1. Open **Manage** \> **Device configuration**. Select **Manage** \> **Profiles** \> **Create Profile**.

2. Choose a name for the profile. Change **Platform=macOS** to **Profile type=Custom**. Select Configure.

3. Save the .plist produced earlier as `com.microsoft.wdav.xml`.

4. Enter `com.microsoft.wdav` as the **custom configuration profile name**.

5. Open the configuration profile and upload the `com.microsoft.wdav.xml` file. (This file was created in step 3.)

6. Select **OK**.

7. Select **Manage** \> **Assignments**. In the **Include** tab, select **Assign to All Users & All devices**.

> [!CAUTION]
> You must enter the correct custom configuration profile name; otherwise, these preferences will not be recognized by Microsoft Defender for Endpoint.

## Resources

- [Configuration Profile Reference (Apple developer documentation)](https://developer.apple.com/business/documentation/Configuration-Profile-Reference.pdf)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
