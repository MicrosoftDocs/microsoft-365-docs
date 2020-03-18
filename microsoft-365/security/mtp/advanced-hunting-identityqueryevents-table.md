---
title: IdentityQueryEvents table in the advanced hunting schema
description: Learn about Active Directory query events in the IdentityQueryEvents table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, IdentityQueryEvents, Azure AD, Active Directory, Azure ATP, identities, LDAP queries
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

# IdentityQueryEvents

**Applies to:**
- Microsoft Threat Protection

The `IdentityQueryEvents` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about queries performed against Active Directory objects, such as users, groups, devices, and domains. Use this reference to construct queries that return information from this table.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` | datetime | Date and time when the event was recorded |
| `ActionType` | string | Type of activity that triggered the event |
| `Application` | string | Application that performed the recorded action |
| `Query` | string | Type of the query: QueryGroup, QueryUser, or EnumerateUsers |
| `QueryObject` | string | Name of the user, group, device, domain, or any other entity type being queried |
| `Protocol` | string | Protocol used during the communication |
| `AccountName` | string | User name of the account |
| `AccountDomain` | string | Domain of the account |
| `AccountUpn` | string | User principal name (UPN) of the account |
| `AccountSid` | string | Security Identifier (SID) of the account |
| `AccountObjectId` | string | Unique identifier for the account in Azure AD |
| `AccountDisplayName` | string | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initiation, and a last name or surname. |
| `DeviceName` | string | Fully qualified domain name (FQDN) of the endpoint |
| `IPAddress` | string | IP address assigned to the endpoint and used during related network communications |
| `Location` | string | City, country, or other geographic location associated with the event |

## Related topics
- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
