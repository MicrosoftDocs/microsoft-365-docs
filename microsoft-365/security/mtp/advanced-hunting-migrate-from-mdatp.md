---
title: Migrate advanced hunting queries from Microsoft Defender ATP
description: Learn how to adjust your Microsoft Defender ATP queries so you can use them on Microsoft Threat Protection
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, microsoft defender atp, mdatp, search, query, telemetry, custom detections, schema, kusto, microsoft 365, mapping
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
ms.custom: seo-marvel-apr2020
---

# Migrate advanced hunting queries from Microsoft Defender ATP

**Applies to:**
- Microsoft Threat Protection

Move your advanced hunting workflows from Microsoft Defender ATP to proactively hunt for threats using a broader set of data. In Microsoft Threat Protection, advanced hunting gives you access to data from other Microsoft 365 security solutions you've deployed, including:

- Microsoft Defender Advanced Threat Protection
- Office 365 Advanced Threat Protection
- Microsoft Cloud App Security
- Azure Advanced Threat Protection

>[!NOTE]
>Most Microsoft Defender ATP customers can [use Microsoft Threat Protection without additional licenses](prerequisites.md#licensing-requirements). To start transitioning your advanced hunting workflows from Microsoft Defender ATP, [turn on Microsoft Threat Protection](mtp-enable.md).

You can transition without affecting your existing Microsoft Defender ATP workflows. Saved queries remain intact, and custom detection rules in Microsoft Defender ATP continue to run and generate alerts. They will, however, be visible in Microsoft Threat Protection. 

With Microsoft Threat Protection, existing queries might return syntax errors because of schema differences.

## Schema tables in Microsoft Threat Protection only
The [Microsoft Threat Protection advanced hunting schema](advanced-hunting-schema-tables.md) provides additional tables containing data from various Microsoft 365 security solutions. The following tables are available only in Microsoft Threat Protection:

| Table name | Description |
|------------|-------------|
| [AlertEvidence](advanced-hunting-alertevidence-table.md) | Files, IP addresses, URLs, users, or devices associated with alerts |
| [AlertInfo](advanced-hunting-alertinfo-table.md) | Alerts from Microsoft Defender ATP, Office 365 ATP, Microsoft Cloud App Security, and Azure ATP, including severity information and threat categorization  |
| [AppFileEvents](advanced-hunting-appfileevents-table.md) | File-related activities in cloud apps and services |
| [EmailAttachmentInfo](advanced-hunting-emailattachmentinfo-table.md) | Information about files attached to emails |
| [EmailEvents](advanced-hunting-emailevents-table.md) | Microsoft 365 email events, including email delivery and blocking events |
| [EmailPostDeliveryEvents](advanced-hunting-emailpostdeliveryevents-table.md) | Security events that occur post-delivery, after Microsoft 365 has delivered the emails to the recipient mailbox |
| [EmailUrlInfo](advanced-hunting-emailurlinfo-table.md) | Information about URLs on emails |
| [IdentityDirectoryEvents](advanced-hunting-identitydirectoryevents-table.md) | Events involving an on-premises domain controller running Active Directory (AD). This table covers a range of identity-related events as well as system events on the domain controller. |
| [IdentityInfo](advanced-hunting-identityinfo-table.md) | Account information from various sources, including Azure Active Directory |
| [IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md) | Authentication events on Active Directory and Microsoft online services |
| [IdentityQueryEvents](advanced-hunting-identityqueryevents-table.md) | Query activities performed against Active Directory objects, such as users, groups, devices, and domains |

## Map missing device alert table
The `AlertInfo` and `AlertEvidence` tables replace the `DeviceAlertEvents` table in the Microsoft Defender ATP schema. In addition to device alerts, these two tables include data about alerts for identities, apps, and emails.

Use this comparison to check how `DeviceAlertEvents` columns map to columns in the `AlertInfo` and `AlertEvidence` tables. The `AlertEvidence` table has many other columns that aren't listed. 

| DeviceAlertEvents | AlertInfo | AlertEvidence | Description |
|-------------|-----------|-------------|-------------|
| `AlertId` | `AlertId` | `AlertId` | Unique identifier for the alert |
| `Timestamp` | `Timestamp` | `Timestamp` | Date and time when the event was recorded |
| `DeviceId` |  | `DeviceId` | Unique identifier for the machine in the service |
| `DeviceName` |  |  | Fully qualified domain name (FQDN) of the device |
| `Severity` | `Severity` |  | Indicates the potential impact (high, medium, or low) of the threat indicator or breach activity identified by the alert |
| `Category` | `Category` |  | Type of threat indicator or breach activity identified by the alert |
| `Title` | `Title` |  | Title of the alert |
| `FileName` |  |  | Name of the file that the recorded action was applied to |
| `SHA1` |  | `SHA1` | SHA-1 of the file that the recorded action was applied to |
| `RemoteUrl` |  | `RemoteUrl` | URL or fully qualified domain name (FQDN) that was being connected to |
| `RemoteIP` |  | `RemoteIP` | IP address that was being connected to |
| `AttackTechniques` | `AttackTechniques` |  | MITRE ATT&CK techniques associated with the activity that triggered the alert |
| `ReportId` |  |  | Event identifier based on a repeating counter. To identify unique events, this column must be used in conjunction with the DeviceName and Timestamp columns |
| `Table` |  |  | Table that contains the details of the event |
| | | `AdditionalFields` | Additional information about the event in JSON array format |


## Adjusting existing Microsoft Defender ATP queries

To allow your existing queries to work on Microsoft Threat Protection, apply these changes:

- Replace `DeviceAlertEvents` with `AlertInfo`.
- Join the `AlertInfo` and the `AlertEvidence` tables on `AlertId` to get equivalent data. Refer to the comparison to identify how columns generally map.
- Use `DeviceInfo` or other tables to get `DeviceName` from `DeviceId`
- Instead of using `ReportId` to check other tables for more information about the event that triggered an alert, parse the `AdditionalFields` column.

The following query uses `DeviceAlertEvents` on Microsoft Defender ATP to get the names of processes that have triggered alerts after accessing _lsass.exe_:

```kusto
DeviceAlertEvents
| where Timestamp > ago(7d) 
| where FileName == "lsass.exe"
| join DeviceEvents on ReportId
| project AlertId, Title, InitiatingProcessFileName, FileName, DeviceName
```
The following query has been adjusted to get the same information on Microsoft Threat Protection:

```kusto
<TBD>
```

## Related topics
- [Turn on Microsoft Threat Protection](advanced-hunting-query-language.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Advanced hunting in Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview)
- [Understand the schema](advanced-hunting-schema-tables.md)

