---
title: AccountInfo table in the advanced hunting schema
description: Learn about user account information in the AccountInfo table of the advanced hunting schema
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

# AccountInfo

**Applies to:**
- Microsoft Threat Protection

The `AccountInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about user accounts obtained from various services, including Azure Active Directory. Use this reference to construct queries that return information from this table.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `AccountObjectId` | string | Unique identifier for the account in Azure AD |
| `AccountUpn` | string | User principal name (UPN) of the account |
| `OnPremSid` | string | On-premises security identifier (SID) of the account |
| `CloudSid` | string | Cloud security identifier of the account |
| `GivenName` | string | Given name or first name of the account user |
| `Surname` | string | Surname, family name, or last name of the account user |
| `AccountDisplayName` | string | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initiation, and a last name or surname. |
| `Department` | string | Name of the department that the account user belongs to |
| `JobTitle` | string | Job title of the account user |
| `AccountName` | string | User name of the account |
| `AccountDomain` | string | Domain of the account |
| `EmailAddress` | string | SMTP address of the account |
| `SipProxyAddress` | string | Voice of over IP (VOIP) session initiation protocol (SIP) address of the account |
| `City` | string | City where the account user is located |
| `Country` | string | Country/Region where the account user is located |
| `IsAccountEnabled` | boolean | Indicates whether the account is enabled or not |

## Related topics
- [Proactively hunt for threats](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
