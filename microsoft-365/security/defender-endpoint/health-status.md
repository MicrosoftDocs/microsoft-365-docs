---
title: Investigate agent health issues
description: Learn about the values returned when running the mdatp health command
keywords: mdatp health, command, health, status, command, onboarding status
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Investigate agent health issues

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


The following table provides information on the values returned when you run the `mdatp health` command and their corresponding descriptions.

| Value | Description |
|-|-|
| automatic_definition_update_enabled | True if automatic   antivirus definition updates are enabled, false otherwise. |
|  cloud_automatic_sample_submission_consent | Current   sample submission level. Can be one of the following values:     <br><br>  - **None**: No suspicious samples are submitted to Microsoft.  <br> <br>     - **Safe**: Only suspicious samples that do not contain personally identifiable   information (PII) are submitted automatically. This is the default value for   this setting.    <br> <br>   - **All**: All suspicious samples are submitted to Microsoft.   |
| cloud_diagnostic_enabled | True if optional   diagnostic data collection is enabled, false otherwise. For more information   related to Defender for Endpoint and other products and services like   Microsoft Defender Antivirus and Windows 10, see [Microsoft Privacy   Statement](https://go.microsoft.com/fwlink/?linkid=827576). |
| cloud_enabled | True if cloud-delivered protection is enabled, false otherwise. |
| conflicting_applications | List of applications that are possibly   conflicting with Microsoft Defender for Endpoint. This list includes, but is   not limited to, other security products and other applications known to cause   compatibility issues. |
| definitions_status | Status of   antivirus definitions. |
| definitions_updated | Date and time of last antivirus definition   update. |
| definitions_updated_minutes_ago | Number of minutes   since last antivirus definition update. |
| definitions_version | Antivirus definition version. |
| edr_client_version | Version of the EDR client running on the device. |
| edr_configuration_version | EDR configuration   version. |
| edr_device_tags | List of tags associated with the device. |
| edr_group_ids | Group ID that the device is associated   with. |
| edr_machine_id | Device identifier   used in Microsoft Defender Security Center. |
| engine_version | Version of the antivirus engine. |
| healthy | True if the product is healthy, false otherwise. |
| licensed | True if the device is   onboarded to a tenant, false otherwise. |
| log_level | Current log level   for the product. |
| machine_guid | Unique machine identifier used by the   antivirus component. |
| network_protection_status                 | Status of the   network protection component (macOS only). Can be one of the following values:       <br> <br>- **starting** - Network protection is starting  <br> <br>     - **failed_to_start** - Network protection couldn't be started due to an   error   <br> <br>    - **started** - Network protection is currently running on the device     <br> <br>  - **restarting** - Network protection is currently restarting   <br> <br>    - **stopping** - Network protection is stopping     <br> <br>  - **stopped** - Network protection is not running |
| org_id | Organization that the device is onboarded   to. If the device is not yet onboarded to any organization, this prints unavailable. For more information on   onboarding, see [Onboard to Microsoft Defender for Endpoint](onboarding.md). |
| passive_mode_enabled | True if the antivirus component is set to run in passive mode, false otherwise. |
| product_expiration | Date and time when the current product   version reaches end of support. |
| real_time_protection_available | True if the real-time protection component is healthy, false otherwise. |
| real_time_protection_enabled | True if real-time   antivirus protection is enabled, false otherwise. |
| real_time_protection_subsystem | Subsystem used to   serve real-time protection. If real-time protection is not operating as   expected, this prints unavailable. |
| release_ring | Release ring. For more information, see   [Deployment rings](deployment-rings.md). |