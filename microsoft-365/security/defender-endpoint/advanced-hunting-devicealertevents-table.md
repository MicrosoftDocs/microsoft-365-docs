---
title: DeviceAlertEvents table in the advanced hunting schema
description: Learn about alert generation events in the DeviceAlertEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, microsoft defender atp, microsoft defender for endpoint, wdatp search, query, telemetry, schema reference, kusto, table, column, data type, description, DeviceAlertEvents, alert, severity, category
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: maccruz
author: schmurky
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 01/22/2020
ms.technology: mde
---

# DeviceAlertEvents

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)



> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

The `DeviceAlertEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about alerts in Microsoft Defender Security Center. Use this reference to construct queries that return information from the table.

For information on other tables in the advanced hunting schema, see [the advanced hunting schema reference](advanced-hunting-schema-reference.md).

|Column name|Data type|Description|
|---|---|---|
|`AlertId`|string|Unique identifier for the alert|
|`Timestamp`|datetime|Date and time when the event was recorded|
|`DeviceId`|string|Unique identifier for the device in the service|
|`DeviceName`|string|Fully qualified domain name (FQDN) of the device|
|`Severity`|string|Indicates the potential impact (high, medium, or low) of the threat indicator or breach activity identified by the alert|
|`Category`|string|Type of threat indicator or breach activity identified by the alert|
|`Title`|string|Title of the alert|
|`FileName`|string|Name of the file that the recorded action was applied to|
|`SHA1`|string|SHA-1 of the file that the recorded action was applied to|
|`RemoteUrl`|string|URL or fully qualified domain name (FQDN) that was being connected to|
|`RemoteIP`|string|IP address that was being connected to|
|`AttackTechniques`|string|MITRE ATT&CK techniques associated with the activity that triggered the alert|
|`ReportId`|long|Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the `DeviceName` and `Timestamp` columns|
|`Table`|string|Table that contains the details of the event|

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
