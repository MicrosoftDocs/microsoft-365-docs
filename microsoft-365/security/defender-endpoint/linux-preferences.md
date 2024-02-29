---
title: Set preferences for Microsoft Defender for Endpoint on Linux
ms.reviewer:
description: Describes how to configure Microsoft Defender for Endpoint on Linux in enterprises.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
ms.date: 07/07/2023
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-linux
ms.topic: conceptual
ms.subservice: linux
search.appverid: met150
---

# Set preferences for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

> [!IMPORTANT]
> This topic contains instructions for how to set preferences for Defender for Endpoint on Linux in enterprise environments. If you are interested in configuring the product on a device from the command-line, see [Resources](linux-resources.md#configure-from-the-command-line).

In enterprise environments, Defender for Endpoint on Linux can be managed through a configuration profile. This profile is deployed from the management tool of your choice. Preferences managed by the enterprise take precedence over the ones set locally on the device. In other words, users in your enterprise aren't able to change preferences that are set through this configuration profile. If exclusions were added through the managed configuration profile, they can only be removed through the managed configuration profile. The command line works for exclusions that were added locally.

This article describes the structure of this profile (including a recommended profile that you can use to get started) and instructions on how to deploy the profile.

## Configuration profile structure

The configuration profile is a .json file that consists of entries identified by a key (which denotes the name of the preference), followed by a value, which depends on the nature of the preference. Values can be simple, such as a numerical value, or complex, such as a nested list of preferences.

Typically, you would use a configuration management tool to push a file with the name ```mdatp_managed.json``` at the location ```/etc/opt/microsoft/mdatp/managed/```.

The top level of the configuration profile includes product-wide preferences and entries for subareas of the product, which are explained in more detail in the next sections.

### Antivirus engine preferences

The *antivirusEngine* section of the configuration profile is used to manage the preferences of the antivirus component of the product.

|Description|Value|
|---|---|
|**Key**|antivirusEngine|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|

#### Enforcement level for antivirus engine

Specifies the enforcement preference of antivirus engine. There are three values for setting enforcement level:

- Real-time (`real_time`): Real-time protection (scan files as they're modified) is enabled.
- On-demand (`on_demand`): Files are scanned only on demand. In this:
  - Real-time protection is turned off.
- [Passive (`passive`)](microsoft-defender-antivirus-compatibility.md#passive-mode-or-edr-block-mode): Runs the antivirus engine in passive mode. In this:
  - Real-time protection is turned off: Threats are not remediated by Microsoft Defender Antivirus.
  - On-demand scanning is turned on: Still use the scan capabilities on the endpoint.
  - Automatic threat remediation is turned off: No files will be moved and security admin is expected to take required action.
  - Security intelligence updates are turned on: Alerts will be available on security admins tenant.

|Description|Value|
|---|---|
|**Key**|enforcementLevel|
|**Data type**|String|
|**Possible values**|real_time <p> on_demand <p> passive (default)|
|**Comments**|Available in Defender for Endpoint version 101.10.72 or higher. Default is changed from real_time to passive for Endpoint version 101.23062.0001 or higher.|

#### Enable/disable behavior-monitoring 

Determines whether behavior monitoring and blocking capability is enabled on the device or not. 
> [!NOTE]
> This feature is applicable only when Real-Time Protection feature is enabled.

****
|Description|Value|
|---|---|
|**Key**|behaviorMonitoring|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.45.00 or higher.|

#### Run a scan after definitions are updated

Specifies whether to start a process scan after new security intelligence updates are downloaded on the device. Enabling this setting triggers an antivirus scan on the running processes of the device.

|Description|Value|
|---|---|
|**Key**|scanAfterDefinitionUpdate|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|**Comments**|Available in Defender for Endpoint version 101.45.00 or higher.|

#### Scan archives (on-demand antivirus scans only)

Specifies whether to scan archives during on-demand antivirus scans.
> [!NOTE]
> Archive files are never scanned during real time protection. When the files in an archive are extracted, they are scanned. The *scanArchives* option can be used to force the scan of archives only during on-demand scan.

|Description|Value|
|---|---|
|**Key**|scanArchives|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.45.00 or higher.|

#### Degree of parallelism for on-demand scans

Specifies the degree of parallelism for on-demand scans. This corresponds to the number of threads used to perform the scan and impacts the CPU usage, and the duration of the on-demand scan.

|Description|Value|
|---|---|
|**Key**|maximumOnDemandScanThreads|
|**Data type**|Integer|
|**Possible values**|2 (default). Allowed values are integers between 1 and 64.|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.45.00 or higher.|

#### Exclusion merge policy

Specifies the merge policy for exclusions. It can be a combination of administrator-defined and user-defined exclusions (`merge`) or only administrator-defined exclusions (`admin_only`). This setting can be used to restrict local users from defining their own exclusions.

|Description|Value|
|---|---|
|**Key**|exclusionsMergePolicy|
|**Data type**|String|
|**Possible values**|merge (default) <p> admin_only|
|**Comments**|Available in Defender for Endpoint version 100.83.73 or higher.|

#### Scan exclusions

Entities that have been excluded from the scan. Exclusions can be specified by full paths, extensions, or file names.
(Exclusions are specified as an array of items, administrator can specify as many elements as necessary, in any order.)

|Description|Value|
|---|---|
|**Key**|exclusions|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|

##### Type of exclusion

Specifies the type of content excluded from the scan.

|Description|Value|
|---|---|
|**Key**|$type|
|**Data type**|String|
|**Possible values**|excludedPath <p> excludedFileExtension <p> excludedFileName|

##### Path to excluded content

Used to exclude content from the scan by full file path.

|Description|Value|
|---|---|
|**Key**|path|
|**Data type**|String|
|**Possible values**|valid paths|
|**Comments**|Applicable only if *$type* is *excludedPath*|

##### Path type (file / directory)

Indicates if the *path* property refers to a file or directory.

|Description|Value|
|---|---|
|**Key**|isDirectory|
|**Data type**|Boolean|
|**Possible values**|false (default) <p> true|
|**Comments**|Applicable only if *$type* is *excludedPath*|

##### File extension excluded from the scan

Used to exclude content from the scan by file extension.

|Description|Value|
|---|---|
|**Key**|extension|
|**Data type**|String|
|**Possible values**|valid file extensions|
|**Comments**|Applicable only if *$type* is *excludedFileExtension*|

##### Process excluded from the scan*

Specifies a process for which all file activity is excluded from scanning. The process can be specified either by its name (for example, `cat`) or full path (for example, `/bin/cat`).

|Description|Value|
|---|---|
|**Key**|name|
|**Data type**|String|
|**Possible values**|any string|
|**Comments**|Applicable only if *$type* is *excludedFileName*|

#### Muting Non Exec mounts 
 
Specifies the behavior of RTP on mount point marked as noexec. There are two values for setting are:

- Unmuted (`unmute`): The default value, all mount points are scanned as part of RTP.
- Muted (`mute`): Mount points marked as noexec aren't scanned as part of RTP, these mount point can be created for:
  - Database files on Database servers for keeping data base files.
  - File server can keep data files mountpoints with noexec option.
  - Back up can keep data files mountpoints with noexec option.

|Description|Value|
|---|---|
|**Key**|nonExecMountPolicy|
|**Data type**|String|
|**Possible values**|unmute (default) <p> mute|
|**Comments**|Available in Defender for Endpoint version 101.85.27 or higher.|

#### Unmonitor Filesystems

Configure filesystems to be unmonitored/excluded from Real Time Protection(RTP). The filesystems configured are validated against Microsoft Defender's list of permitted filesystems. Only post successful validation, will the filesystem be allowed to be unmonitored. These configured unmonitored filesystems will still be scanned by Quick, Full, and custom scans.

|Description|Value|
|---|---|
|**Key**|unmonitoredFilesystems|
|**Data type**|Array of strings|
|**Comments**|Configured filesystem will be unmonitored only if it is present in Microsoft's list of permitted unmonitored filesystems.|

By default, NFS and Fuse are unmonitored from RTP, Quick, and Full scans. However, they can still be scanned by a custom scan. For example, to remove NFS from the list of unmonitored filesystems list, update the managed config file as shown below. This will automatically add NFS to the list of monitored filesystems for RTP.

```JSON
{
   "antivirusEngine":{
      "unmonitoredFilesystems": ["Fuse"]
  }
}
```
To remove both NFS and Fuse from unmonitored list of filesystems, do the following

```JSON
{
   "antivirusEngine":{
      "unmonitoredFilesystems": []
  }
}
```


>[!NOTE]
> Below is the default list of monitored filesystems for RTP -
>
>**[btrfs, ecryptfs, ext2, ext3, ext4, fuseblk, jfs, overlay, ramfs, reiserfs, tmpfs, vfat, xfs]**
>
>If any monitored filesystem needs to be added to the list of unmonitored filesystems,then it needs to be evaluated and enabled by Microsoft via cloud config. Following which customers can update managed_mdatp.json to unmonitor that filesystem.



#### Configure file hash computation feature

Enables or disables file hash computation feature. When this feature is enabled, Defender for Endpoint computes hashes for files it scans. Note that enabling this feature might impact device performance. For more details, please refer to: [Create indicators for files](indicator-file.md).

|Description|Value|
|---|---|
|**Key**|enableFileHashComputation|
|**Data type**|Boolean|
|**Possible values**|false (default) <p> true|
|**Comments**|Available in Defender for Endpoint version 101.85.27 or higher.|
#### Allowed threats

List of threats (identified by their name) that aren't blocked by the product and are instead allowed to run.

|Description|Value|
|---|---|
|**Key**|allowedThreats|
|**Data type**|Array of strings|

#### Disallowed threat actions

Restricts the actions that the local user of a device can take when threats are detected. The actions included in this list aren't displayed in the user interface.

|Description|Value|
|---|---|
|**Key**|disallowedThreatActions|
|**Data type**|Array of strings|
|**Possible values**|allow (restricts users from allowing threats) <p> restore (restricts users from restoring threats from the quarantine)|
|**Comments**|Available in Defender for Endpoint version 100.83.73 or higher.|

#### Threat type settings

The *threatTypeSettings* preference in the antivirus engine is used to control how certain threat types are handled by the product.

|Description|Value|
|---|---|
|**Key**|threatTypeSettings|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|

##### Threat type

Type of threat for which the behavior is configured.

|Description|Value|
|---|---|
|**Key**|key|
|**Data type**|String|
|**Possible values**|potentially_unwanted_application <p> archive_bomb|

##### Action to take

Action to take when coming across a threat of the type specified in the preceding section. Can be:

- **Audit**: The device isn't protected against this type of threat, but an entry about the threat is logged.
- **Block**: The device is protected against this type of threat and you're notified in the security console.
- **Off**: The device isn't protected against this type of threat and nothing is logged.

|Description|Value|
|---|---|
|**Key**|value|
|**Data type**|String|
|**Possible values**|audit (default) <p> block <p> off|

#### Threat type settings merge policy

Specifies the merge policy for threat type settings. This can be a combination of administrator-defined and user-defined settings (`merge`) or only administrator-defined settings (`admin_only`). This setting can be used to restrict local users from defining their own settings for different threat types.

|Description|Value|
|---|---|
|**Key**|threatTypeSettingsMergePolicy|
|**Data type**|String|
|**Possible values**|merge (default) <p> admin_only|
|**Comments**|Available in Defender for Endpoint version 100.83.73 or higher.|

#### Antivirus scan history retention (in days)

Specify the number of days that results are retained in the scan history on the device. Old scan results are removed from the history. Old quarantined files that are also removed from the disk.

|Description|Value|
|---|---|
|**Key**|scanResultsRetentionDays|
|**Data type**|String|
|**Possible values**|90 (default). Allowed values are from 1 day to 180 days.|
|**Comments**|Available in Defender for Endpoint version 101.04.76 or higher.|

#### Maximum number of items in the antivirus scan history

Specify the maximum number of entries to keep in the scan history. Entries include all on-demand scans performed in the past and all antivirus detections.

|Description|Value|
|---|---|
|**Key**|scanHistoryMaximumItems|
|**Data type**|String|
|**Possible values**|10000 (default). Allowed values are from 5000 items to 15000 items.|
|**Comments**|Available in Defender for Endpoint version 101.04.76 or higher.|

#### Advanced scan options

The following settings can be configured to enable certain advanced scanning features. 

>[!NOTE]
>Enabling these features might impact device performance. As such, it is recommended to keep the defaults.

##### Configure scanning of file modify permissions events
When this feature is enabled, Defender for Endpoint will scan files when their permissions have been changed to set the execute bit(s).

>[!NOTE]
>This feature is applicable only when the `enableFilePermissionEvents` feature is enabled. For more information, see [Advanced optional features](linux-preferences.md#configure-monitoring-of-file-modify-permissions-events) section below for details.

|Description|Value|
|---|---|
|**Key**|scanFileModifyPermissions|
|**Data type**|Boolean|
|**Possible values**|false (default) <p> true|
|**Comments**|Available in Defender for Endpoint version 101.23062.0010 or higher.|

##### Configure scanning of file modify ownership events
When this feature is enabled, Defender for Endpoint will scan files for which ownership has changed. 

>[!NOTE]
>This feature is applicable only when the `enableFileOwnershipEvents` feature is enabled. For more information, see [Advanced optional features](linux-preferences.md#configure-monitoring-of-file-modify-ownership-events) section below for details.

|Description|Value|
|---|---|
|**Key**|scanFileModifyOwnership|
|**Data type**|Boolean|
|**Possible values**|false (default) <p> true|
|**Comments**|Available in Defender for Endpoint version 101.23062.0010 or higher.|

##### Configure scanning of raw socket events
When this feature is enabled, Defender for Endpoint will scan network socket events such as creation of raw sockets / packet sockets, or setting socket option. 

>[!NOTE]
>This feature is applicable only when Behavior Monitoring is enabled.

>[!NOTE]
>This feature is applicable only when the `enableRawSocketEvent` feature is enabled. For more information, see [Advanced optional features](linux-preferences.md#configure-monitoring-of-raw-socket-events) section below for details.

|Description|Value|
|---|---|
|**Key**|scanNetworkSocketEvent|
|**Data type**|Boolean|
|**Possible values**|false (default) <p> true|
|**Comments**|Available in Defender for Endpoint version 101.23062.0010 or higher.|


### Cloud-delivered protection preferences

The *cloudService* entry in the configuration profile is used to configure the cloud-driven protection feature of the product.

> [!NOTE]
> Cloud-delivered protection is applicable with any Enforcement level settings (real_time, on_demand, passive).

|Description|Value|
|---|---|
|**Key**|cloudService|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|

#### Enable / disable cloud delivered protection

Determines whether cloud-delivered protection is enabled on the device or not. To improve the security of your services, we recommend keeping this feature turned on.

|Description|Value|
|---|---|
|**Key**|enabled|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|

#### Diagnostic collection level

Diagnostic data is used to keep Defender for Endpoint secure and up to date, detect, diagnose and fix problems, and also make product improvements. This setting determines the level of diagnostics sent by the product to Microsoft.

|Description|Value|
|---|---|
|**Key**|diagnosticLevel|
|**Data type**|String|
|**Possible values**|optional <p> required (default)|

#### Configure cloud block level

This setting determines how aggressive Defender for Endpoint is in blocking and scanning suspicious files. If this setting is on, Defender for Endpoint is more aggressive when identifying suspicious files to block and scan; otherwise, it is less aggressive and therefore blocks and scans with less frequency. 

There are five values for setting cloud block level:

- Normal (`normal`): The default blocking level.
- Moderate (`moderate`): Delivers verdict only for high confidence detections.
- High (`high`): Aggressively blocks unknown files while optimizing for performance (greater chance of blocking non-harmful files).
- High Plus (`high_plus`): Aggressively blocks unknown files and applies additional protection measures (might impact client device performance).
- Zero Tolerance (`zero_tolerance`): Blocks all unknown programs.

|Description|Value|
|---|---|
|**Key**|cloudBlockLevel|
|**Data type**|String|
|**Possible values**|normal (default) <p> moderate <p> high <p> high_plus <p> zero_tolerance|
|**Comments**|Available in Defender for Endpoint version 101.56.62 or higher.|
#### Enable / disable automatic sample submissions

Determines whether suspicious samples (that are likely to contain threats) are sent to Microsoft. There are three levels for controlling sample submission:

- **None**: no suspicious samples are submitted to Microsoft.
- **Safe**: only suspicious samples that don't contain personally identifiable information (PII) are submitted automatically. This is the default value for this setting.
- **All**: all suspicious samples are submitted to Microsoft.

|Description|Value|
|---|---|
|**Key**|automaticSampleSubmissionConsent|
|**Data type**|String|
|**Possible values**|none <p> safe (default) <p> all|

#### Enable / disable automatic security intelligence updates

Determines whether security intelligence updates are installed automatically:

|Description|Value|
|---|---|
|**Key**|automaticDefinitionUpdateEnabled|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|


### Advanced optional features

The following settings can be configured to enable certain advanced features.

>[!NOTE]
>Enabling these features might impact device performance. It is recommended to keep the defaults.

|Description|Value|
|---|---|
|**Key**|features|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|

#### Module load feature

Determines whether module load events (file open events on shared libraries) are monitored.

>[!NOTE]
>This feature is applicable only when Behavior Monitoring is enabled.

|Description|Value|
|---|---|
|**Key**|moduleLoad|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.68.80 or higher.|

#### Supplementary sensor configurations

The following settings can be used to configure certain advanced supplementary sensor features.

|Description|Value|
|---|---|
|**Key**|supplementarySensorConfigurations|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|

##### Configure monitoring of file modify permissions events
Determines whether file modify permissions events (`chmod`) are monitored. 

>[!NOTE]
>When this feature is enabled, Defender for Endpoint will monitor changes to the execute bits of files, but not scan these events. For more information, see [Advanced scanning features](linux-preferences.md#configure-scanning-of-file-modify-permissions-events) section for more details.

|Description|Value|
|---|---|
|**Key**|enableFilePermissionEvents|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.23062.0010 or higher.|

##### Configure monitoring of file modify ownership events
Determines whether file modify ownership events (chown) are monitored.

>[!NOTE]
>When this feature is enabled, Defender for Endpoint will monitor changes to the ownership of files, but not scan these events. For more information, see [Advanced scanning features](linux-preferences.md#configure-scanning-of-file-modify-ownership-events) section for more details.

|Description|Value|
|---|---|
|**Key**|enableFileOwnershipEvents|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.23062.0010 or higher.|

##### Configure monitoring of raw socket events
Determines whether network socket events involving creation of raw sockets / packet sockets, or setting socket option, are monitored.

>[!NOTE]
>This feature is applicable only when Behavior Monitoring is enabled.

>[!NOTE]
>When this feature is enabled, Defender for Endpoint will monitor these network socket events, but not scan these events. For more information, see [Advanced scanning features](linux-preferences.md#configure-scanning-of-raw-socket-events) section above for more details.

|Description|Value|
|---|---|
|**Key**|enableRawSocketEvent|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.23062.0010 or higher.|

##### Configure monitoring of boot loader events
Determines whether boot loader events are monitored and scanned.

>[!NOTE]
>This feature is applicable only when Behavior Monitoring is enabled.

|Description|Value|
|---|---|
|**Key**|enableBootLoaderCalls|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.68.80 or higher.|

##### Configure monitoring of ptrace events
Determines whether ptrace events are monitored and scanned.

>[!NOTE]
>This feature is applicable only when Behavior Monitoring is enabled.

|Description|Value|
|---|---|
|**Key**|enableProcessCalls|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.68.80 or higher.|

##### Configure monitoring of pseudofs events
Determines whether pseudofs events are monitored and scanned.
> [!NOTE]
> This feature is applicable only when Behavior Monitoring is enabled.

|Description|Value|
|---|---|
|**Key**|enablePseudofsCalls|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.68.80 or higher.|

##### Configure monitoring of module load events using eBPF
Determines whether module load events are monitored using eBPF and scanned.

>[!NOTE]
>This feature is applicable only when Behavior Monitoring is enabled.

|Description|Value|
|---|---|
|**Key**|enableEbpfModuleLoadEvents|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.68.80 or higher.|

#### Report AV Suspicious Events to EDR

Determines whether suspicious events from Antivirus are reported to EDR.

|Description|Value|
|---|---|
|**Key**|sendLowfiEvents|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.23062.0010 or higher.|

### Network protection configurations

The following settings can be used to configure advanced Network Protection inspection features to control what traffic gets inspected by Network Protection.

>[!NOTE]
>For these to be effective, Network Protection has to be turned on. For more information, see [Turn on network protection for Linux](network-protection-linux.md).

|Description|Value|
|---|---|
|**Key**|networkProtection|
|**Data type**|Dictionary (nested preference)|
|**Comments**|See the following sections for a description of the dictionary contents.|

#### Configure ICMP inspection
Determines whether ICMP events are monitored and scanned.

>[!NOTE]
>This feature is applicable only when Behavior Monitoring is enabled.

|Description|Value|
|---|---|
|**Key**|disableIcmpInspection|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|**Comments**|Available in Defender for Endpoint version 101.23062.0010 or higher.|

## Recommended configuration profile

To get started, we recommend the following configuration profile for your enterprise to take advantage of all protection features that Defender for Endpoint provides.

The following configuration profile will:

- Enable real-time protection (RTP)
- Specify how the following threat types are handled:
  - **Potentially unwanted applications (PUA)** are blocked
  - **Archive bombs** (file with a high compression rate) are audited to the product logs
- Enable automatic security intelligence updates
- Enable cloud-delivered protection
- Enable automatic sample submission at `safe` level

### Sample profile

```JSON
{
   "antivirusEngine":{
      "enforcementLevel":"real_time",
      "threatTypeSettings":[
         {
            "key":"potentially_unwanted_application",
            "value":"block"
         },
         {
            "key":"archive_bomb",
            "value":"audit"
         }
      ]
   },
   "cloudService":{
      "automaticDefinitionUpdateEnabled":true,
      "automaticSampleSubmissionConsent":"safe",
      "enabled":true,
      "proxy": "<EXAMPLE DO NOT USE> http://proxy.server:port/"
   }
}
```

## Full configuration profile example

The following configuration profile contains entries for all settings described in this document and can be used for more advanced scenarios where you want more control over the product.
  
>[!NOTE]
>It is not possible to control all Microsoft Defender for Endpoint communication with only a proxy setting in this JSON.

### Full profile

```JSON
{
   "antivirusEngine":{
      "enforcementLevel":"real_time",
      "behaviorMonitoring": "enabled",
      "scanAfterDefinitionUpdate":true,
      "scanArchives":true,
      "scanHistoryMaximumItems": 10000,
      "scanResultsRetentionDays": 90,
      "maximumOnDemandScanThreads":2,
      "exclusionsMergePolicy":"merge",
      "exclusions":[
         {
            "$type":"excludedPath",
            "isDirectory":false,
            "path":"/var/log/system.log<EXAMPLE DO NOT USE>"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/run<EXAMPLE DO NOT USE>"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/home/*/git<EXAMPLE DO NOT USE>"
         },
         {
            "$type":"excludedFileExtension",
            "extension":".pdf<EXAMPLE DO NOT USE>"
         },
         {
            "$type":"excludedFileName",
            "name":"cat<EXAMPLE DO NOT USE>"
         }
      ],
      "allowedThreats":[
         "<EXAMPLE DO NOT USE>EICAR-Test-File (not a virus)"
      ],
      "disallowedThreatActions":[
         "allow",
         "restore"
      ],
      "nonExecMountPolicy":"unmute",
      "unmonitoredFilesystems": ["nfs,fuse"],
      "threatTypeSettingsMergePolicy":"merge",
      "threatTypeSettings":[
         {
            "key":"potentially_unwanted_application",
            "value":"block"
         },
         {
            "key":"archive_bomb",
            "value":"audit"
         }
      ]
   },
   "cloudService":{
      "enabled":true,
      "diagnosticLevel":"optional",
      "automaticSampleSubmissionConsent":"safe",
      "automaticDefinitionUpdateEnabled":true,
      "proxy": "<EXAMPLE DO NOT USE> http://proxy.server:port/"
   }
}
```

## Add tag or group ID to the configuration profile

When you run the `mdatp health` command for the first time, the value for the tag and group ID will be blank. To add tag or group ID to the `mdatp_managed.json` file, follow the below steps:
  
1. Open the configuration profile from the path `/etc/opt/microsoft/mdatp/managed/mdatp_managed.json`.
  2. Go down to the bottom of the file, where the `cloudService` block is located.
  3. Add the required tag or group ID as following example at the end of the closing curly bracket for the `cloudService`.

```JSON
  },
  "cloudService": {
    "enabled": true,
    "diagnosticLevel": "optional",
    "automaticSampleSubmissionConsent": "safe",
    "automaticDefinitionUpdateEnabled": true,
    "proxy": "http://proxy.server:port/"
},
"edr": {
  "groupIds":"GroupIdExample",
  "tags": [
            {
            "key": "GROUP",
            "value": "Tag"
            }
          ]
      }
}
```

  >[!NOTE]
  >Add the comma after the closing curly bracket at the end of the `cloudService` block. Also, make sure that there are two closing curly brackets after adding Tag or Group ID block (please see the above example). At the moment, the only supported key name for tags is `GROUP`.
 
