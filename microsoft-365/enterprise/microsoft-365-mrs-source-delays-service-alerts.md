---
title: "MRS service alerts"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 08/09/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection:
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
f1.keywords:
- NOCSH
description: "Use mailbox migration service advisories to monitor delays in mailbox migration requests in your organization."
---

# Service advisories for MRS source delays in Exchange Online monitoring

Mailbox Replication Service (MRS) source delay service advisories inform you of storage limitations or high processor utilization issues on the tenant side (migration source) that might be delaying mailbox migrations in your Microsoft 365 organization. These service advisories also include links to Microsoft resources to help you resolve these issues.

These service advisories are displayed in the Microsoft 365 admin center. To view these service advisories, go to **Health** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842900" target="_blank">**Service health**</a> > **Exchange Online** and then click the **Active issues** tab.

## What do these service advisories indicate?

This service advisory informs you of potential delays to mailbox migrations in your organization. This includes cross-forest migrations, onboarding migrations, and offboarding  migrations. The service advisory contains a table with information about the current migrations in your organization. Here's an example of the table with information about migration delays.

| BatchGuid | ExchangeGuid | RequestGuid | DelayReason |QueuedHours | DelayInHours | SourceServer | RemoteDatabaseName |
|:---------|:---------|:---------|:---------|:---------|:---------|:---------|:---------|
|12345678-1234-1234-1234-1234567891011|246c21f7-ca3c-4bba-ab5d-23456558c52a|3d7fab16-7d8e-4c81-a849-e0795054292a|DiskLatency|35.2|27.3|RD1GBL01EXCH003|GBL01EDAG001-db002|
|87654321-4321-4321-4321-1101987654321|21e9a608-78c3-44ef-a4dd-d5e7222aae82|9974aeb4-2aa4-4a2c-aeb6-d94d78cc25c9|DiskLatency|0.4|0.9|RD1GBL01EXCH010|GBL01EDAG010-db003|

The following list describes each column in the previous example.

- **BatchGuid**: Unique GUID for the migration job.

- **ExchangeGuid**: The globally unique identifier (GUID) of the user mailbox that's being migrated.

- **RequestGuid**: The GUID of the migration request.

- **DelayReason**: The reason for the delayed migration.

- **QueueHours**: The duration the migration has been queued and waiting.

- **DelayInHours**: The duration the migration has been delayed.

- **SourceServer**: The on-premises server the migration originates from.

- **RemoteDatabaseName**: The database name the migration originates from.

## More information

For more information about MRS and mailbox migrations, see the following articles:

- [Mailbox moves in Exchange](/exchange/recipients/mailbox-moves)

- [Microsoft 365 and Office 365 migration performance and best practices](/exchange/mailbox-migration/office-365-migration-best-practices)

- [Mailbox migration performance analysis](https://techcommunity.microsoft.com/t5/exchange-team-blog/mailbox-migration-performance-analysis/ba-p/587134)

- [Troubleshooting slow migrations](https://techcommunity.microsoft.com/t5/exchange-team-blog/troubleshooting-slow-migrations/ba-p/1795706)

- [Ways to migrate multiple email accounts to Microsoft 365](/exchange/mailbox-migration/mailbox-migration)
