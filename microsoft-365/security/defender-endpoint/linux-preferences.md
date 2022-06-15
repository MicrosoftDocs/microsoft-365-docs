---
title: Set preferences for Microsoft Defender for Endpoint on Linux
ms.reviewer:
description: Describes how to configure Microsoft Defender for Endpoint on Linux in enterprises.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, installation, deploy, uninstallation, puppet, ansible, linux, redhat, ubuntu, debian, sles, suse, centos
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Set preferences for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

> [!IMPORTANT]
> This topic contains instructions for how to set preferences for Defender for Endpoint on Linux in enterprise environments. If you are interested in configuring the product on a device from the command-line, see [Resources](linux-resources.md#configure-from-the-command-line).

In enterprise environments, Defender for Endpoint on Linux can be managed through a configuration profile. This profile is deployed from the management tool of your choice. Preferences managed by the enterprise take precedence over the ones set locally on the device. In other words, users in your enterprise are not able to change preferences that are set through this configuration profile. If exclusions were added through the managed configuration profile, they can only be removed through the managed configuration profile. The command line works for exclusions that were added locally.

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

- Real-time (`real_time`): Real-time protection (scan files as they are accessed) is enabled.
- On-demand (`on_demand`): Files are scanned only on demand. In this:
  - Real-time protection is turned off.
- Passive (`passive`): Runs the antivirus engine in passive mode. In this:
  - Real-time protection is turned off.
  - On-demand scanning is turned on.
  - Automatic threat remediation is turned off.
  - Security intelligence updates are turned on.

|Description|Value|
|---|---|
|**Key**|enforcementLevel|
|**Data type**|String|
|**Possible values**|real_time (default) <p> on_demand <p> passive|
|**Comments**|Available in Defender for Endpoint version 101.10.72 or higher.|

#### Enable/disable behavior-monitoring 

Determines whether behavior monitoring and blocking capability is enabled on the device or not. To improve effectiveness of security protection, we recommend keeping this feature turned on.

<br>

****

|Description|Value|
|---|---|
|**Key**|behaviorMonitoring|
|**Data type**|String|
|**Possible values**|disabled (default) <p> enabled|
|**Comments**|Available in Defender for Endpoint version 101.45.00 or higher.|
  
#### Run a scan after definitions are updated

Specifies whether to start a process scan after new security intelligence updates are downloaded on the device. Enabling this setting will trigger an antivirus scan on the running processes of the device.

|Description|Value|
|---|---|
|**Key**|scanAfterDefinitionUpdate|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|**Comments**|Available in Defender for Endpoint version 101.45.00 or higher.|

#### Scan archives (on-demand antivirus scans only)

Specifies whether to scan archives during on-demand antivirus scans.

|Description|Value|
|---|---|
|**Key**|scanArchives|
|**Data type**|Boolean|
|**Possible values**|true (default) <p> false|
|**Comments**|Available in Microsoft Defender for Endpoint version 101.45.00 or higher.|

#### Degree of parallelism for on-demand scans

Specifies the degree of parallelism for on-demand scans. This corresponds to the number of threads used to perform the scan and impacts the CPU usage, as well as the duration of the on-demand scan.

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

#### Allowed threats

List of threats (identified by their name) that are not blocked by the product and are instead allowed to run.

|Description|Value|
|---|---|
|**Key**|allowedThreats|
|**Data type**|Array of strings|

#### Disallowed threat actions

Restricts the actions that the local user of a device can take when threats are detected. The actions included in this list are not displayed in the user interface.

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

- **Audit**: The device is not protected against this type of threat, but an entry about the threat is logged.
- **Block**: The device is protected against this type of threat and you are notified in the security console.
- **Off**: The device is not protected against this type of threat and nothing is logged.

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

### Cloud-delivered protection preferences

The *cloudService* entry in the configuration profile is used to configure the cloud-driven protection feature of the product.

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

Diagnostic data is used to keep Defender for Endpoint secure and up-to-date, detect, diagnose and fix problems, and also make product improvements. This setting determines the level of diagnostics sent by the product to Microsoft.

|Description|Value|
|---|---|
|**Key**|diagnosticLevel|
|**Data type**|String|
|**Possible values**|optional <p> required (default)|
|
  
#### Enable / disable automatic sample submissions

Determines whether suspicious samples (that are likely to contain threats) are sent to Microsoft. There are three levels for controlling sample submission:

- **None**: no suspicious samples are submitted to Microsoft.
- **Safe**: only suspicious samples that do not contain personally identifiable information (PII) are submitted automatically. This is the default value for this setting.
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
- Enable behavior-monitoring

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

### Full profile

```JSON
{
   "antivirusEngine":{
      "enforcementLevel":"real_time",
      "scanAfterDefinitionUpdate":true,
      "scanArchives":true,
      "maximumOnDemandScanThreads":2,
      "exclusionsMergePolicy":"merge",
      "exclusions":[
         {
            "$type":"excludedPath",
            "isDirectory":false,
            "path":"/var/log/system.log"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/run"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/home/*/git"
         },
         {
            "$type":"excludedFileExtension",
            "extension":".pdf"
         },
         {
            "$type":"excludedFileName",
            "name":"cat"
         }
      ],
      "allowedThreats":[
         "<EXAMPLE DO NOT USE>EICAR-Test-File (not a virus)"
      ],
      "disallowedThreatActions":[
         "allow",
         "restore"
      ],
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

  > [!NOTE]
  > Don't forget to add the comma after the closing curly bracket at the end of the `cloudService` block. Also, make sure that there are two closing curly brackets after adding Tag or Group ID block (please see the above example). At the moment, the only supported key name for tags is `GROUP`. 
  
## Configuration profile validation

The configuration profile must be a valid JSON-formatted file. There are a number of tools that can be used to verify this. For example, if you have `python` installed on your device:

```bash
python -m json.tool mdatp_managed.json
```

If the JSON is well-formed, the above command outputs it back to the Terminal and returns an exit code of `0`. Otherwise, an error that describes the issue is displayed and the command returns an exit code of `1`.

## Verifying that the mdatp_managed.json file is working as expected

To verify that your /etc/opt/microsoft/mdatp/managed/mdatp_managed.json is working properly, you should see "[managed]" next to these settings:

- cloud_enabled
- cloud_automatic_sample_submission_consent
- passive_mode_enabled
- real_time_protection_enabled
- automatic_definition_update_enabled

> [!NOTE]
> For the mdatp_managed.json to take effect, no restart of the `mdatp` deamon is required.

## Configuration profile deployment

Once you've built the configuration profile for your enterprise, you can deploy it through the management tool that your enterprise is using. Defender for Endpoint on Linux reads the managed configuration from the */etc/opt/microsoft/mdatp/managed/mdatp_managed.json* file.
