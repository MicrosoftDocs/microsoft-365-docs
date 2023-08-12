---
title: Investigate agent health issues
description: Learn about the values returned when running the mdatp health command
keywords: mdatp health, command, health, status, command, onboarding status
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
ms.date: 05/06/2021
---

# Investigate agent health issues

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

The following table provides information on the values returned when you run the `mdatp health` command and their corresponding descriptions.

|Value|Description|
|---|---|
|automatic_definition_update_enabled|True if automatic antivirus definition updates are enabled, false otherwise.|
|cloud_automatic_sample_submission_consent|Current sample submission level. Can be one of the following values: <ul><li>**None**: No suspicious samples are submitted to Microsoft.</li><li>**Safe**: Only suspicious samples that don't contain personally identifiable information (PII) are submitted automatically. This is the default value for this setting.</li><li>**All**: All suspicious samples are submitted to Microsoft.</li></ul>|
|cloud_diagnostic_enabled|True if optional diagnostic data collection is enabled, false otherwise. For more information related to Defender for Endpoint and other products and services like Microsoft Defender Antivirus and Windows, see [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/?linkid=827576).|
|cloud_enabled|True if cloud-delivered protection is enabled, false otherwise.|
|conflicting_applications|List of applications that are possibly conflicting with Microsoft Defender for Endpoint. This list includes, but isn't limited to, other security products and other applications known to cause compatibility issues.|
|definitions_status|Status of antivirus definitions.|
|definitions_updated|Date and time of last antivirus definition update.|
|definitions_updated_minutes_ago|Number of minutes since last antivirus definition update.|
|definitions_version|Antivirus definition version.|
|edr_client_version|Version of the EDR client running on the device.|
|edr_configuration_version|EDR configuration version.|
|edr_device_tags|List of tags associated with the device.|
|edr_group_ids|Group ID that the device is associated with.|
|edr_machine_id|Device identifier used in Microsoft 365 Defender.|
|engine_version|Version of the antivirus engine.|
|healthy|True if the product is healthy, false otherwise.|
|licensed|True if the device is onboarded to a tenant, false otherwise.|
|log_level|Current log level for the product.|
|machine_guid|Unique machine identifier used by the antivirus component.|
|network_protection_status|Status of the network protection component (macOS only). Can be one of the following values: <ul><li>**starting** - Network protection is starting</li><li>**failed_to_start** - Network protection couldn't be started due to an error</li><li>**started** - Network protection is currently running on the device</li><li>**restarting** - Network protection is currently restarting</li><li>**stopping** - Network protection is stopping</li><li>**stopped** - Network protection isn't running</li></ul>|
|org_id|Organization that the device is onboarded to. If the device isn't yet onboarded to any organization, this prints unavailable. For more information on onboarding, see [Onboard to Microsoft Defender for Endpoint](onboarding.md).|
|passive_mode_enabled|True if the antivirus component is set to run in passive mode, false otherwise.|
|product_expiration|Date and time when the current product version reaches end of support.|
|real_time_protection_available|True if the real-time protection component is healthy, false otherwise.|
|real_time_protection_enabled|True if real-time antivirus protection is enabled, false otherwise.|
|real_time_protection_subsystem|Subsystem used to serve real-time protection. If real-time protection isn't operating as expected, this prints unavailable.|
|release_ring|Release ring. For more information, see [Deployment rings](deployment-rings.md).|

## Component specific health

You can get more detailed health information for different Defender's features with `mdatp health --details <feature>`. For example:

```bash
mdatp health --details edr

edr_early_preview_enabled                   : "disabled"
edr_device_tags                             : []
edr_group_ids                               : ""
edr_configuration_version                   : "20.199999.main.2022.10.25.03-514032a834557bdd31ac415be6df278d9c2a4c25"
edr_machine_id                              : "a47ba049f43319ac669b6291ce73275cd445c9cd"
edr_sense_guid                              : "298a1a8c-04dd-4929-8efd-3bb14cb54b94"
edr_preferred_geo                           : "unitedstates"
```

You can run `mdatp health --help` on recent versions to list all supported `feature`s.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
