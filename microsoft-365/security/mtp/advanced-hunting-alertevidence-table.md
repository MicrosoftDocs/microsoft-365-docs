---
title: AlertEvidence table in the advanced hunting schema
description: Learn about file, network address, user, or device information associated with generated alerts in the AlertEvidence table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, AlertInfo, alert, entities, evidence, file, IP address, device, machine, user, account
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# AlertEvidence

**Applies to:**
- Microsoft Threat Protection

The `AlertEvidence` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about various entities — files, IP addresses, URLs, users, or devices — associated with alerts from Microsoft Defender ATP, Office 365 ATP, Microsoft Cloud App Security, and Azure ATP. Use this reference to construct queries that return information from this table.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `AlertId` | string | Unique identifier for the alert |
| `EntityType` | string | Type of object, such as a file, a process, a device, or a user |
| `EvidenceRole` | string | How the entity is involved in an alert, indicating whether it is impacted or is merely related |
| `SHA1` | string | SHA-1 of the file that the recorded action was applied to |
| `SHA256` | string | SHA-256 of the file that the recorded action was applied to. This field is usually not populated—use the SHA1 column when available. |
| `RemoteIP` | string | IP address that was being connected to |
| `RemoteUrl` | string | URL or fully qualified domain name (FQDN) that was being connected to |
| `AccountName` | string | User name of the account |
| `AccountDomain` | string | Domain of the account |
| `AccountSid` | string | Security Identifier (SID) of the account |
| `AccountObjectId` | string | Unique identifier for the account in Azure AD |
| `DeviceId` | string | Unique identifier for the machine in the service |
| `ThreatFamily` | string | Malware family that the suspicious or malicious file or process has been classified under |
| `EvidenceDirection` | string | Indicates whether the entity is the source or the destination of a network connection |
| `AdditionalFields` | string | Additional information about the event in JSON array format |

## Related topics
- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
