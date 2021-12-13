---
title: "MRS service alerts"
ms.author: markjjo
author: markjjo
manager: scotv
ms.date: 
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
search.appveyor:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- NOCSH
description: "Use mailbox migration service alerts to monitor delays in mailbox migration requests in your organization."
---

# Service alerts for MRS source delays in Exchange Online monitoring

Mailbox Replication Service (MRS) source delay service alerts inform you of storage limitations or high processor utilization issues on the tenant side (migration source) that might be delaying mailbox migrations in your Microsoft 365 organization. These service alerts also includes links to Microsoft resources to help you resolve these issues.

These service alerts are displayed in the Microsoft 365 admin center. To view these service alerts, go to **Health** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842900" target="_blank">**Service health**</a> > **Exchange Online** and then click the **Active issues** tab.

## What do these service alerts indicate?

This service alert informs you of potential delays to mailbox migrations in your organization. This includes cross-forest migrations, onboarding migrations, and offboarding  migrations. The service alert contains a table that provides you with information about the current migrations in your organization.

The following list describes in each column in the previous table.

- **BatchName**: Unique name for the migration job.
- **ExchangeGuid**: The globally unique identifier (GUID) of the user mailbox that's being migrated.
- **RequestGuid**: The GUID of the migration request.
- **DelayReason**: The reason for the delayed migration.
- **QueueHours**: The duration the migration has been queued and waiting.
- **DelayInHours**: THe duration the migration has been delayed.
- **SourceServer**: The on-premises server the migration originates from.
- **RemoteDatabaseName**: The database name the migration originates from.

## More information

For more information about MRS and mailbox migrations, see the following articles:

- [Mailbox moves in Exchange](/exchange/recipients/mailbox-moves)

- [Microsoft 365 and Office 365 migration performance and best practices](/exchange/mailbox-migration/office-365-migration-best-practices)

- [Mailbox migration performance analysis](https://techcommunity.microsoft.com/t5/exchange-team-blog/mailbox-migration-performance-analysis/ba-p/587134)

- [Troubleshooting slow migrations](https://techcommunity.microsoft.com/t5/exchange-team-blog/troubleshooting-slow-migrations/ba-p/1795706)

- [Ways to migrate multiple email accounts to Microsoft 365](/exchange/mailbox-migration/mailbox-migration)
