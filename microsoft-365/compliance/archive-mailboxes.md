---
title: "Learn about archive mailboxes for Microsoft Purview"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.ArchivingHelp'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- Strat_O365_IP
- M365-security-compliance
description: "Learn about archive mailboxes to provide additional mailbox storage."
---

# Learn about archive mailboxes

[!include[Purview banner](../includes/purview-rebrand-banner.md)]

Mailbox archiving in Microsoft 365 (also called *In-Place Archiving*) provides users with additional mailbox storage space. After you turn on archive mailboxes, a user's current mailbox becomes their *primary mailbox* and an additional mailbox is created, called the *archive mailbox*. Both mailboxes are considered a user's mailbox for compliance features such as Content search from the Microsoft Purview compliance portal, Microsoft 365 retention, and Litigation Hold.

Users can access and store messages in their archive mailboxes by using Outlook and Outlook on the web. Users can also move or copy messages between their primary mailbox and their archive mailbox. They can also recover deleted items from the Recoverable Items folder in their archive mailbox by using the Recover Deleted Items tool.

## Managing archive mailboxes with Messaging Records Management (MRM)

Messages can also be moved to the archive mailbox by the [default Exchange retention policy](/exchange/security-and-compliance/messaging-records-management/default-retention-policy) from Messaging Records Management (MRM). This default policy is automatically assigned to every mailbox and does the following:

  - Moves items that are two years or older from a user's primary mailbox to their archive mailbox.

  - Moves items that are 14 days or older from the Recoverable Items folder in the user's primary mailbox to the Recoverable Items folder in their archive mailbox.

You can customize your organization's MRM policy with [retention tags](/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies). For an example configuration, see [Set up an archive and deletion policy for mailboxes in your organization](set-up-an-archive-and-deletion-policy-for-mailboxes.md).

> [!NOTE]
> MRM, like Microsoft 365 retention policies and retention labels, can also automatically delete emails after a specified period. As an older technology than Microsoft 365 retention, MRM continues to work side-by-side with retention policies and retention labels from Microsoft Purview. For more information, see [Use retention policies and retention labels instead of older features](retention.md#use-retention-policies-and-retention-labels-instead-of-older-features).

## Auto-expanding archiving 

After a user's archive mailbox is enabled, up to 100 GB of additional storage is available. If users need more storage space, enable auto-expanding archiving to provide up to 1.5 TB of additional storage in archive mailboxes. For more information, see [Learn about auto-expanding archiving](autoexpanding-archiving.md).

## Licensing

For a list of Outlook licenses that support archive mailboxes, see the references to In-Place Archiving in [Outlook license requirements for Exchange features](https://support.microsoft.com/office/46b6b7c5-c3ca-43e5-8424-1e2807917c99).

## Next steps

See [Enable archive mailboxes in the Microsoft Purview compliance portal](enable-archive-mailboxes.md).
