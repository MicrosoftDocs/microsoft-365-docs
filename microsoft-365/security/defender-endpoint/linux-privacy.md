---
title: Privacy for Microsoft Defender for Endpoint on Linux
description: Privacy controls, how to configure policy settings that impact privacy and information about the diagnostic data collected in Microsoft Defender for Endpoint on Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, privacy, diagnostic
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Privacy for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

Microsoft is committed to providing you with the information and controls you need to make choices about how your data is collected and used when you're using Defender for Endpoint on Linux.

This topic describes the privacy controls available within the product, how to manage these controls with policy settings and more details on the data events that are collected.

## Overview of privacy controls in Microsoft Defender for Endpoint on Linux

This section describes the privacy controls for the different types of data collected by Defender for Endpoint on Linux.

### Diagnostic data

Diagnostic data is used to keep Defender for Endpoint secure and up-to-date, detect, diagnose and fix problems, and also make product improvements.

Some diagnostic data is required, while some diagnostic data is optional. We give you the ability to choose whether to send us required or optional diagnostic data through the use of privacy controls, such as policy settings for organizations.

There are two levels of diagnostic data for Defender for Endpoint client software that you can choose from:

- **Required**: The minimum data necessary to help keep Defender for Endpoint secure, up-to-date, and performing as expected on the device it's installed on.
- **Optional**: Additional data that helps Microsoft make product improvements and provides enhanced information to help detect, diagnose, and remediate issues.

By default, only required diagnostic data is sent to Microsoft.

### Cloud delivered protection data

Cloud delivered protection is used to provide increased and faster protection with access to the latest protection data in the cloud.

Enabling the cloud-delivered protection service is optional, however it is highly recommended because it provides important protection against malware on your endpoints and across your network.

### Sample data

Sample data is used to improve the protection capabilities of the product, by sending Microsoft suspicious samples so they can be analyzed. Enabling automatic sample submission is optional.

There are three levels for controlling sample submission:

- **None**: no suspicious samples are submitted to Microsoft.
- **Safe**: only suspicious samples that do not contain personally identifiable information (PII) are submitted automatically. This is the default value for this setting.
- **All**: all suspicious samples are submitted to Microsoft.

## Manage privacy controls with policy settings

If you're an IT administrator, you might want to configure these controls at the enterprise level.

The privacy controls for the various types of data described in the preceding section are described in detail in [Set preferences for Defender for Endpoint on Linux](linux-preferences.md).

As with any new policy settings, you should carefully test them out in a limited, controlled environment to ensure the settings that you configure have the desired effect before you implement the policy settings more widely in your organization.

## Diagnostic data events

This section describes what is considered required diagnostic data and what is considered optional diagnostic data, along with a description of the events and fields that are collected.

### Data fields that are common for all events

There is some information about events that is common to all events, regardless of category or data subtype.

The following fields are considered common for all events:

|Field|Description|
|---|---|
|platform|The broad classification of the platform on which the app is running. Allows Microsoft to identify on which platforms an issue may be occurring so that it can correctly be prioritized.|
|machine_guid|Unique identifier associated with the device. Allows Microsoft to identify whether issues are impacting a select set of installs and how many users are impacted.|
|sense_guid|Unique identifier associated with the device. Allows Microsoft to identify whether issues are impacting a select set of installs and how many users are impacted.|
|org_id|Unique identifier associated with the enterprise that the device belongs to. Allows Microsoft to identify whether issues are impacting a select set of enterprises and how many enterprises are impacted.|
|hostname|Local device name (without DNS suffix). Allows Microsoft to identify whether issues are impacting a select set of installs and how many users are impacted.|
|product_guid|Unique identifier of the product. Allows Microsoft to differentiate issues impacting different flavors of the product.|
|app_version|Version of the Defender for Endpoint on Linux application. Allows Microsoft to identify which versions of the product are showing an issue so that it can correctly be prioritized.|
|sig_version|Version of security intelligence database. Allows Microsoft to identify which versions of the security intelligence are showing an issue so that it can correctly be prioritized.|
|supported_compressions|List of compression algorithms supported by the application, for example `['gzip']`. Allows Microsoft to understand what types of compressions can be used when it communicates with the application.|
|release_ring|Ring that the device is associated with (for example Insider Fast, Insider Slow, Production). Allows Microsoft to identify on which release ring an issue may be occurring so that it can correctly be prioritized.|

### Required diagnostic data

**Required diagnostic data** is the minimum data necessary to help keep Defender for Endpoint secure, up-to-date, and perform as expected on the device it's installed on.

Required diagnostic data helps to identify problems with Microsoft Defender for Endpoint that may be related to a device or software configuration. For example, it can help determine if a Defender for Endpoint feature crashes more frequently on a particular operating system version, with newly introduced features, or when certain Defender for Endpoint features are disabled. Required diagnostic data helps Microsoft detect, diagnose, and fix these problems more quickly so the impact to users or organizations is reduced.

#### Software setup and inventory data events

**Microsoft Defender for Endpoint installation / uninstallation**:

The following fields are collected:

|Field|Description|
|---|---|
|correlation_id|Unique identifier associated with the installation.|
|version|Version of the package.|
|severity|Severity of the message (for example Informational).|
|code|Code that describes the operation.|
|text|Additional information associated with the product installation.|

**Microsoft Defender for Endpoint configuration**:

The following fields are collected:

|Field|Description|
|---|---|
|antivirus_engine.enable_real_time_protection|Whether real-time protection is enabled on the device or not.|
|antivirus_engine.passive_mode|Whether passive mode is enabled on the device or not.|
|cloud_service.enabled|Whether cloud delivered protection is enabled on the device or not.|
|cloud_service.timeout|Time out when the application communicates with the Defender for Endpoint cloud.|
|cloud_service.heartbeat_interval|Interval between consecutive heartbeats sent by the product to the cloud.|
|cloud_service.service_uri|URI used to communicate with the cloud.|
|cloud_service.diagnostic_level|Diagnostic level of the device (required, optional).|
|cloud_service.automatic_sample_submission|Automatic sample submission level of the device (none, safe, all).|
|cloud_service.automatic_definition_update_enabled|Whether automatic definition update is turned on or not.|
|edr.early_preview|Whether the device should run EDR early preview features.|
|edr.group_id|Group identifier used by the detection and response component.|
|edr.tags|User-defined tags.|
|features.\[optional feature name\]|List of preview features, along with whether they are enabled or not.|

#### Product and service usage data events

**Security intelligence update report**:

The following fields are collected:

|Field|Description|
|---|---|
|from_version|Original security intelligence version.|
|to_version|New security intelligence version.|
|status|Status of the update indicating success or failure.|
|using_proxy|Whether the update was done over a proxy.|
|error|Error code if the update failed.|
|reason|Error message if the update failed.|

#### Product and service performance data events for required diagnostic data

**Kernel extension statistics**:

The following fields are collected:

|Field|Description|
|---|---|
|version|Version of Defender for Endpoint on Linux.|
|instance_id|Unique identifier generated on kernel extension startup.|
|trace_level|Trace level of the kernel extension.|
|subsystem|The underlying subsystem used for real-time protection.|
|ipc.connects|Number of connection requests received by the kernel extension.|
|ipc.rejects|Number of connection requests rejected by the kernel extension.|
|ipc.connected|Whether there is any active connection to the kernel extension.|

#### Support data

**Diagnostic logs**:

Diagnostic logs are collected only with the consent of the user as part of the feedback submission feature. The following files are collected as part of the support logs:

- All files under */var/log/microsoft/mdatp*
- Subset of files under */etc/opt/microsoft/mdatp* that are created and used by Defender for Endpoint on Linux
- Product installation and uninstallation logs under */var/log/microsoft_mdatp_\*.log*

### Optional diagnostic data

**Optional diagnostic data** is additional data that helps Microsoft make product improvements and provides enhanced information to help detect, diagnose, and fix issues.

If you choose to send us optional diagnostic data, required diagnostic data is also included.

Examples of optional diagnostic data include data Microsoft collects about product configuration (for example number of exclusions set on the device) and product performance (aggregate measures about the performance of components of the product).

#### Software setup and inventory data events for optional diagnostic data

**Microsoft Defender for Endpoint configuration**:

The following fields are collected:

|Field|Description|
|---|---|
|connection_retry_timeout|Connection retry time-out when communication with the cloud.|
|file_hash_cache_maximum|Size of the product cache.|
|crash_upload_daily_limit|Limit of crash logs uploaded daily.|
|antivirus_engine.exclusions[].is_directory|Whether the exclusion from scanning is a directory or not.|
|antivirus_engine.exclusions[].path|Path that was excluded from scanning.|
|antivirus_engine.exclusions[].extension|Extension excluded from scanning.|
|antivirus_engine.exclusions[].name|Name of the file excluded from scanning.|
|antivirus_engine.scan_cache_maximum|Size of the product cache.|
|antivirus_engine.maximum_scan_threads|Maximum number of threads used for scanning.|
|antivirus_engine.threat_restoration_exclusion_time|Time out before a file restored from the quarantine can be detected again.|
|antivirus_engine.threat_type_settings|Configuration for how different threat types are handled by the product.|
|filesystem_scanner.full_scan_directory|Full scan directory.|
|filesystem_scanner.quick_scan_directories|List of directories used in quick scan.|
|edr.latency_mode|Latency mode used by the detection and response component.|
|edr.proxy_address|Proxy address used by the detection and response component.|

**Microsoft Auto-Update configuration**:

The following fields are collected:

|Field|Description|
|---|---|
|how_to_check|Determines how product updates are checked (for example automatic or manual).|
|channel_name|Update channel associated with the device.|
|manifest_server|Server used for downloading updates.|
|update_cache|Location of the cache used to store updates.|

### Product and service usage

#### Diagnostic log upload started report

The following fields are collected:

|Field|Description|
|---|---|
|sha256|SHA256 identifier of the support log.|
|size|Size of the support log.|
|original_path|Path to the support log (always under */var/opt/microsoft/mdatp/wdavdiag/*).|
|format|Format of the support log.|

#### Diagnostic log upload completed report

The following fields are collected:

|Field|Description|
|---|---|
|request_id|Correlation ID for the support log upload request.|
|sha256|SHA256 identifier of the support log.|
|blob_sas_uri|URI used by the application to upload the support log.|

#### Product and service performance data events for product service and usage

**Unexpected application exit (crash)**:

Unexpected application exits and the state of the application when that happens.

**Kernel extension statistics**:

The following fields are collected:

|Field|Description|
|---|---|
|pkt_ack_timeout|The following properties are aggregated numerical values, representing count of events that happened since kernel extension startup.|
|pkt_ack_conn_timeout||
|ipc.ack_pkts||
|ipc.nack_pkts||
|ipc.send.ack_no_conn||
|ipc.send.nack_no_conn||
|ipc.send.ack_no_qsq||
|ipc.send.nack_no_qsq||
|ipc.ack.no_space||
|ipc.ack.timeout||
|ipc.ack.ackd_fast||
|ipc.ack.ackd||
|ipc.recv.bad_pkt_len||
|ipc.recv.bad_reply_len||
|ipc.recv.no_waiter||
|ipc.recv.copy_failed||
|ipc.kauth.vnode.mask||
|ipc.kauth.vnode.read||
|ipc.kauth.vnode.write||
|ipc.kauth.vnode.exec||
|ipc.kauth.vnode.del||
|ipc.kauth.vnode.read_attr||
|ipc.kauth.vnode.write_attr||
|ipc.kauth.vnode.read_ex_attr||
|ipc.kauth.vnode.write_ex_attr||
|ipc.kauth.vnode.read_sec||
|ipc.kauth.vnode.write_sec||
|ipc.kauth.vnode.take_own||
|ipc.kauth.vnode.link||
|ipc.kauth.vnode.create||
|ipc.kauth.vnode.move||
|ipc.kauth.vnode.mount||
|ipc.kauth.vnode.denied||
|ipc.kauth.vnode.ackd_before_deadline||
|ipc.kauth.vnode.missed_deadline||
|ipc.kauth.file_op.mask||
|ipc.kauth_file_op.open||
|ipc.kauth.file_op.close||
|ipc.kauth.file_op.close_modified||
|ipc.kauth.file_op.move||
|ipc.kauth.file_op.link||
|ipc.kauth.file_op.exec||
|ipc.kauth.file_op.remove||
|ipc.kauth.file_op.unmount||
|ipc.kauth.file_op.fork||
|ipc.kauth.file_op.create||

## Resources

- [Privacy at Microsoft](https://privacy.microsoft.com/)
