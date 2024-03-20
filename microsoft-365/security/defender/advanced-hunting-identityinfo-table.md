---
title: IdentityInfo table in the advanced hunting schema
description: Learn about user account information in the IdentityInfo table of the advanced hunting schema
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, AccountInfo, IdentityInfo, account
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.date: 01/16/2024
---

# IdentityInfo

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

The `IdentityInfo` table in the [advanced hunting](advanced-hunting-overview.md) schema contains information about user accounts obtained from various services, including Microsoft Entra ID. Use this reference to construct queries that return information from this table.

> [!NOTE]
> This table was renamed from `AccountInfo`. During renames, all queries saved in the portal are automatically updated. Check queries you have saved elsewhere.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `Timestamp` [*](#mdi-only) | `datetime` | The date and time that the line was written to the database. <br><br>This is used when there are multiple lines for each identity, such as when a change is detected, or if 24 hours have passed since the last database line was added. |
| `ReportId` [*](#mdi-only) | `string` | Unique identifier for the event |
| `AccountObjectId` | `string` | Unique identifier for the account in Microsoft Entra ID |
| `AccountUpn` | `string` | User principal name (UPN) of the account |
| `OnPremSid` | `string` | On-premises security identifier (SID) of the account |
| `AccountDisplayName` | `string` | Name of the account user displayed in the address book. Typically a combination of a given or first name, a middle initial, and a last name or surname. |
| `AccountName` | `string` | User name of the account |
| `AccountDomain` [*](#mdi-only) | `string` | Domain of the account |
| `Type` [*](#mdi-only) | `string` | Type of record |
| `DistinguishedName` [*](#mdi-only) | string | The user's [distinguished name](/previous-versions/windows/desktop/ldap/distinguished-names) |
| `CloudSid` | `string` | Cloud security identifier of the account |
| `GivenName` | `string` | Given name or first name of the account user |
| `Surname` | `string` | Surname, family name, or last name of the account user |
| `Department` | `string` | Name of the department that the account user belongs to |
| `JobTitle` | `string` | Job title of the account user |
| `EmailAddress` | `string` | SMTP address of the account |
| `SipProxyAddress` | `string` | Voice over IP (VOIP) session initiation protocol (SIP) address of the account |
| `Address` | `string` | Address of the account user |
| `City` | `string` | City where the account user is located |
| `Country` | `string` | Country/Region where the account user is located |
| `IsAccountEnabled` | `boolean` | Indicates whether the account is enabled or not |
| `Manager` [*](#mdi-only)  | `string` | The listed manager of the account user |
| `Phone` [*](#mdi-only)  | `string` | The listed phone number of the account user|
| `CreatedDateTime` [*](#mdi-only)  | `datetime` | Date and time when the account user was created |
| `SourceProvider` [*](#mdi-only)  | `string` |The identity's source, such as Microsoft Entra ID, Active Directory, or a [hybrid identity](/azure/active-directory/hybrid/what-is-provisioning) synchronized from Active Directory to Azure Active Directory |
| `ChangeSource` [*](#mdi-only)  | `string` |Identifies which identity provider or process triggered the addition of the new row. For example, the `System-UserPersistence` value is used for any rows added by an automated process.|
| `Tags` [*](#mdi-only)  | `dynamic` | Tags assigned to the account user by Defender for Identity |
| `AssignedRoles` [*](#mdi-only) | `dynamic` | For identities from Microsoft Entra-only, the roles assigned to the account user|
| `TenantId` | `string` | Unique identifier representing your organization's instance of Microsoft Entra ID |
| `SourceSystem` [*](#mdi-only) | `string` | The source system for the record|

<a name="mdi-only"></a>* Available only for tenants with Microsoft Defender for Identity, Microsoft Defender for Cloud Apps or Microsoft Defender for Endpoint P2 licensing.

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
