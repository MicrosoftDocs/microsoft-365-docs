---
title: Migrate advanced hunting queries from Microsoft Defender for Endpoint
description: Learn how to adjust your Microsoft Defender for Endpoint queries so you can use them in Microsoft 365 Defender
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, Microsoft Defender for Endpoint, search, query, telemetry, custom detections, schema, kusto, mapping
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
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
  - tier2
ms.topic: conceptual
ms.custom: seo-marvel-apr2020
ms.date: 02/17/2021
---

# Migrate advanced hunting queries from Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Move your advanced hunting workflows from Microsoft Defender for Endpoint to proactively hunt for threats using a broader set of data. In Microsoft 365 Defender, you get access to data from other Microsoft 365 security solutions, including:

- Microsoft Defender for Endpoint
- Microsoft Defender for Office 365
- Microsoft Defender for Cloud Apps
- Microsoft Defender for Identity

> [!NOTE]
> Most Microsoft Defender for Endpoint customers can [use Microsoft 365 Defender without additional licenses](prerequisites.md#licensing-requirements). To start transitioning your advanced hunting workflows from Defender for Endpoint, [turn on Microsoft 365 Defender](m365d-enable.md).

You can transition without affecting your existing Defender for Endpoint workflows. Saved queries remain intact, and custom detection rules continue to run and generate alerts. They will, however, be visible in Microsoft 365 Defender.

## Schema tables in Microsoft 365 Defender only

The [Microsoft 365 Defender advanced hunting schema](advanced-hunting-schema-tables.md) provides additional tables containing data from various Microsoft 365 security solutions. The following tables are available only in Microsoft 365 Defender:

| Table name | Description |
|------------|-------------|
| [AlertEvidence](advanced-hunting-alertevidence-table.md) | Files, IP addresses, URLs, users, or devices associated with alerts |
| [AlertInfo](advanced-hunting-alertinfo-table.md) | Alerts from Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Cloud Apps, and Microsoft Defender for Identity, including severity information and threat categories  |
| [EmailAttachmentInfo](advanced-hunting-emailattachmentinfo-table.md) | Information about files attached to emails |
| [EmailEvents](advanced-hunting-emailevents-table.md) | Microsoft 365 email events, including email delivery and blocking events |
| [EmailPostDeliveryEvents](advanced-hunting-emailpostdeliveryevents-table.md) | Security events that occur post-delivery, after Microsoft 365 has delivered the emails to the recipient mailbox |
| [EmailUrlInfo](advanced-hunting-emailurlinfo-table.md) | Information about URLs on emails |
| [IdentityDirectoryEvents](advanced-hunting-identitydirectoryevents-table.md) | Events involving an on-premises domain controller running Active Directory (AD). This table covers a range of identity-related events and system events on the domain controller. |
| [IdentityInfo](advanced-hunting-identityinfo-table.md) | Account information from various sources, including Azure Active Directory |
| [IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md) | Authentication events on Active Directory and Microsoft online services |
| [IdentityQueryEvents](advanced-hunting-identityqueryevents-table.md) | Queries for Active Directory objects, such as users, groups, devices, and domains |

> [!IMPORTANT]
> Queries and custom detections which use schema tables that are only available in Microsoft 365 Defender can only be viewed in Microsoft 365 Defender.

## Map DeviceAlertEvents table

The `AlertInfo` and `AlertEvidence` tables replace the `DeviceAlertEvents` table in the Microsoft Defender for Endpoint schema. In addition to data about device alerts, these two tables include data about alerts for identities, apps, and emails.

Use the following table to check how `DeviceAlertEvents` columns map to columns in the `AlertInfo` and `AlertEvidence` tables.

> [!TIP]
> In addition to the columns in the following table, the `AlertEvidence` table includes many other columns that provide a more holistic picture of alerts from various sources. [See all AlertEvidence columns](advanced-hunting-alertevidence-table.md)

| DeviceAlertEvents column | Where to find the same data in Microsoft 365 Defender |
|-------------|-----------|-------------|-------------|
| `AlertId` | `AlertInfo` and  `AlertEvidence` tables |
| `Timestamp` | `AlertInfo` and  `AlertEvidence` tables |
| `DeviceId` | `AlertEvidence` table |
| `DeviceName` | `AlertEvidence` table |
| `Severity` | `AlertInfo` table |
| `Category` | `AlertInfo` table |
| `Title` | `AlertInfo` table |
| `FileName` | `AlertEvidence` table |
| `SHA1` | `AlertEvidence` table |
| `RemoteUrl` | `AlertEvidence` table |
| `RemoteIP` | `AlertEvidence` table |
| `AttackTechniques` | `AlertInfo` table |
| `ReportId` | This column is typically used in Microsoft Defender for Endpoint to locate related records in other tables. In Microsoft 365 Defender, you can get related data directly from the `AlertEvidence` table. |
| `Table` | This column is typically used in Microsoft Defender for Endpoint for additional event information in other tables. In Microsoft 365 Defender, you can get related data directly from the `AlertEvidence` table. |

## Adjust existing Microsoft Defender for Endpoint queries

Microsoft Defender for Endpoint queries will work as-is unless they reference the `DeviceAlertEvents` table. To use these queries in Microsoft 365 Defender, apply these changes:

- Replace `DeviceAlertEvents` with `AlertInfo`.
- Join the `AlertInfo` and the `AlertEvidence` tables on `AlertId` to get equivalent data.

### Original query

The following query uses `DeviceAlertEvents` in Microsoft Defender for Endpoint to get the alerts that involve _powershell.exe_:

```kusto
DeviceAlertEvents
| where Timestamp > ago(7d)
| where AttackTechniques has "PowerShell (T1086)" and FileName == "powershell.exe"
```

### Modified query

The following query has been adjusted for use in Microsoft 365 Defender. Instead of checking the file name directly from `DeviceAlertEvents`, it joins `AlertEvidence` and checks for the file name in that table.

```kusto
AlertInfo
| where Timestamp > ago(7d)
| where AttackTechniques has "PowerShell (T1086)"
| join AlertEvidence on AlertId
| where FileName == "powershell.exe"
```

## Migrate custom detection rules

When Microsoft Defender for Endpoint rules are edited on Microsoft 365 Defender, they continue to function as before if the resulting query looks at device tables only.

For example, alerts generated by custom detection rules that query only device tables will continue to be delivered to your SIEM and generate email notifications, depending on how you've configured these in Microsoft Defender for Endpoint. Any existing suppression rules in Defender for Endpoint will also continue to apply.

Once you edit a Defender for Endpoint rule so that it queries identity and email tables, which are only available in Microsoft 365 Defender, the rule is automatically moved to Microsoft 365 Defender.

Alerts generated by the migrated rule:

- Are no longer visible in the Defender for Endpoint portal (Microsoft Defender Security Center)
- Stop being delivered to your SIEM or generate email notifications. To work around this change, configure notifications through Microsoft 365 Defender to get the alerts. You can use the [Microsoft 365 Defender API](api-incident.md) to receive notifications for customer detection alerts or related incidents.
- Won't be suppressed by Microsoft Defender for Endpoint suppression rules. To prevent alerts from being generated for certain users, devices, or mailboxes, modify the corresponding queries to exclude those entities explicitly.

If you edit a rule this way, you will be prompted for confirmation before such changes are applied.

New alerts generated by custom detection rules in Microsoft 365 Defender are displayed in an alert page that provides the following information:

- Alert title and description
- Impacted assets
- Actions taken in response to the alert
- Query results that triggered the alert
- Information on the custom detection rule

> [!div class="mx-imgBorder"]
> :::image type="content" source="../../media/new-alert-page.png" alt-text="An example of an alert page that displays new alerts generated by custom detection rules in Microsoft 365 Defender portal" lightbox="../../media/new-alert-page.png":::

## Write queries without DeviceAlertEvents

In the Microsoft 365 Defender schema, the `AlertInfo` and `AlertEvidence` tables are provided to accommodate the diverse set of information that accompany alerts from various sources.

To get the same alert information that you used to get from the `DeviceAlertEvents` table in the Microsoft Defender for Endpoint schema, filter the `AlertInfo` table by `ServiceSource` and then join each unique ID with the `AlertEvidence` table, which provides detailed event and entity information.

See the sample query below:

```kusto
AlertInfo
| where Timestamp > ago(7d)
| where ServiceSource == "Microsoft Defender for Endpoint"
| join AlertEvidence on AlertId
```

This query yields many more columns than `DeviceAlertEvents` in the Microsoft Defender for Endpoint schema. To keep results manageable, use `project` to get only the columns you are interested in. The example below projects columns you might be interested in when the investigation detected PowerShell activity:

```kusto
AlertInfo
| where Timestamp > ago(7d)
| where ServiceSource == "Microsoft Defender for Endpoint"
    and AttackTechniques has "powershell"
| join AlertEvidence on AlertId
| project Timestamp, Title, AlertId, DeviceName, FileName, ProcessCommandLine
```

If you'd like to filter for specific entities involved in the alerts, you can do so by specifying the entity type in `EntityType` and the value you would like to filter for. The following example looks for a specific IP address:

```kusto
AlertInfo
| where Title == "Insert_your_alert_title"
| join AlertEvidence on AlertId
| where EntityType == "Ip" and RemoteIP == "192.88.99.01"
```

## See also

- [Turn on Microsoft 365 Defender](advanced-hunting-query-language.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Advanced hunting in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
