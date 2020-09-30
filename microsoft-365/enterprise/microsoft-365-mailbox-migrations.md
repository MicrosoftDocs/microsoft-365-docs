---
title: "Microsoft 365 mailbox migrations"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: This article contains a brief summary about Microsoft 365 Mailbox Migrations and a list of the cmdlets used for migrations.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 mailbox migrations

With an Exchange-based hybrid deployment, customers can choose to either move on-premises Exchange mailboxes to an [Exchange Online](https://docs.microsoft.com/Exchange/exchange-online) organization or move Exchange Online mailboxes to an [Exchange on-premises](https://docs.microsoft.com/Exchange/exchange-server) organization. Migration batches are used when moving mailboxes between on-premises and Exchange Online organizations.

Customers can review statistics and other information about mailbox migrations with the following cmdlets:

- [Get-MoveRequestStatistics](https://docs.microsoft.com/powershell/module/exchange/get-moverequeststatistics): Provides default statistics for a user mailbox, which includes the status, mailbox size, archive mailbox size, and percentage complete.
- [Get-Mailbox](https://docs.microsoft.com/powershell/module/exchange/mailboxes/Get-Mailbox
): Provides a summary list of mailbox objects and attributes in the organization.
- [Get-Recipient](https://docs.microsoft.com/powershell/module/exchange/get-recipient): Provides a list of existing mail-enabled objects such as mailboxes, mail users, contacts, and distribution groups.
- [Get-MoveRequest](https://docs.microsoft.com/powershell/module/exchange/get-moverequest): Provides a detailed status of an ongoing mailbox migration.
- [Get-MigrationUser](https://docs.microsoft.com/powershell/module/exchange/get-migrationuser): Provides information about the mailbox move and migration users.
- [Get-MigrationBatch](https://docs.microsoft.com/powershell/module/exchange/get-migrationbatch): Provides information on the status of current migration batch.
- [Get-MigrationUserStatistics](https://docs.microsoft.com/powershell/module/exchange/get-migrationuserstatistics): Provides detailed information about the migration status for a specific user.
- [Get-MailboxStatistics](https://docs.microsoft.com/powershell/module/exchange/get-mailboxstatistics): Provides information about mailboxes, such as size, the number of messages, and the last accessed time.

For more information about cmdlets, see [Move and Migration cmdlets in Exchange Online](https://docs.microsoft.com/powershell/exchange/exchange-online-powershell).
