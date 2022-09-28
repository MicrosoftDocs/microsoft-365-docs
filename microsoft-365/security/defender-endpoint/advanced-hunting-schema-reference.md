---
title: Advanced hunting schema reference
description: Learn about the tables in the advanced hunting schema to understand the data you can run threat hunting queries on.
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, microsoft defender atp, microsoft defender for endpoint, wdatp search, query, telemetry, schema reference, kusto, table, data
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security
ms.topic: article
ms.date: 01/14/2020
ms.subservice: mde
search.appverid: met150
---

# Understand the advanced hunting schema in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-advancedhuntingref-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

The [advanced hunting](advanced-hunting-overview.md) schema is made up of multiple tables that provide either event information or information about devices and other entities. To effectively build queries that span multiple tables, you need to understand the tables and the columns in the advanced hunting schema.

## Get schema information in the Defender for Cloud

While constructing queries, use the built-in schema reference to quickly get the following information about each table in the schema:

- **Tables description**: Type of data contained in the table and the source of that data.
- **Columns**: All the columns in the table.
- **Action types**: Possible values in the `ActionType` column representing the event types supported by the table. These values are provided only for tables that contain event information.
- **Sample query**: Example queries that feature how the table can be utilized.

### Access the schema reference

To quickly access the schema reference, select the **View reference** action next to the table name in the schema representation. You can also select **Schema reference** to search for a table.

:::image type="content" source="images/ah-reference.png" alt-text="The Advanced hunting page" lightbox="images/ah-reference.png":::

## Learn the schema tables

The following reference lists all the tables in the advanced hunting schema. Each table name links to a page describing the column names for that table.

Table and column names are also listed within the Microsoft 365 Defender portal, in the schema representation on the advanced hunting screen.

<br>

****

|Table name|Description|
|---|---|
|**[DeviceAlertEvents](advanced-hunting-devicealertevents-table.md)**|Alerts on Microsoft 365 Defender |
|**[DeviceInfo](advanced-hunting-deviceinfo-table.md)**|Device information, including OS information|
|**[DeviceNetworkInfo](advanced-hunting-devicenetworkinfo-table.md)**|Network properties of devices, including adapters, IP and MAC addresses, as well as connected networks and domains|
|**[DeviceProcessEvents](advanced-hunting-deviceprocessevents-table.md)**|Process creation and related events|
|**[DeviceNetworkEvents](advanced-hunting-devicenetworkevents-table.md)**|Network connection and related events|
|**[DeviceFileEvents](advanced-hunting-devicefileevents-table.md)**|File creation, modification, and other file system events|
|**[DeviceRegistryEvents](advanced-hunting-deviceregistryevents-table.md)**|Creation and modification of registry entries|
|**[DeviceLogonEvents](advanced-hunting-devicelogonevents-table.md)**|Sign-ins and other authentication events|
|**[DeviceImageLoadEvents](advanced-hunting-deviceimageloadevents-table.md)**|DLL loading events|
|**[DeviceEvents](advanced-hunting-deviceevents-table.md)**|Multiple event types, including events triggered by security controls such as Microsoft Defender Antivirus and exploit protection|
|**[DeviceFileCertificateInfo](advanced-hunting-devicefilecertificateinfo-table.md)**|Certificate information of signed files obtained from certificate verification events on endpoints|
|**[DeviceTvmSoftwareInventory](advanced-hunting-devicetvmsoftwareinventory-table.md)**|Inventory of software installed on devices, including their version information and end-of-support status|
|**[DeviceTvmSoftwareVulnerabilities](advanced-hunting-devicetvmsoftwarevulnerabilities-table.md)**|Software vulnerabilities found on devices and the list of available security updates that address each vulnerability|
|**[DeviceTvmSoftwareVulnerabilitiesKB](advanced-hunting-devicetvmsoftwarevulnerabilitieskb-table.md)**|Knowledge base of publicly disclosed vulnerabilities, including whether exploit code is publicly available|
|**[DeviceTvmSecureConfigurationAssessment](advanced-hunting-devicetvmsecureconfigurationassessment-table.md)**|Microsoft Defender Vulnerability Management assessment events, indicating the status of various security configurations on devices|
|**[DeviceTvmSecureConfigurationAssessmentKB](advanced-hunting-devicetvmsecureconfigurationassessmentkb-table.md)**|Knowledge base of various security configurations used by Defender Vulnerability Management to assess devices; includes mappings to various standards and benchmarks|
|

> [!TIP]
> Use [advanced hunting at Microsoft 365 Defender](/microsoft-365/security/defender/advanced-hunting-overview) to hunt for threats using data from Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Cloud Apps, and Microsoft Defender for Identity. [Turn on Microsoft 365 Defender](/microsoft-365/security/defender/m365d-enable).

Learn more about how to move your advanced hunting workflows from Microsoft Defender for Endpoint to Microsoft 365 Defender in [Migrate advanced hunting queries from Microsoft Defender for Endpoint](/microsoft-365/security/defender/advanced-hunting-migrate-from-mde).

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Custom detections overview](overview-custom-detections.md)
- [Advanced hunting data schema changes](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/advanced-hunting-data-schema-changes/ba-p/1043914)
