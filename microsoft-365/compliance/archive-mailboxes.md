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
- M365-security-compliance
- tier2
description: "Learn about archive mailboxes to provide extra mailbox storage."
---

# Learn about archive mailboxes

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Mailbox archiving in Microsoft Purview is sometimes also called *In-Place Archiving* and provides users with extra mailbox storage space. After you turn on archive mailboxes, a user's current mailbox becomes their *primary mailbox* and an additional mailbox is created, called the *archive mailbox*. Both mailboxes are considered a user's mailbox for compliance features such as Content search from the Microsoft Purview compliance portal, Microsoft 365 retention, and Litigation Hold.

Users can access and store messages in their archive mailboxes by using Outlook and Outlook on the web. Users can also move or copy messages between their primary mailbox and their archive mailbox. They can also recover deleted items from the Recoverable Items folder in their archive mailbox by using the Recover Deleted Items tool.

## Managing archive mailboxes with messaging records management (MRM)

Messages can also be moved to the archive mailbox by the [default Exchange retention policy](/exchange/security-and-compliance/messaging-records-management/default-retention-policy) from messaging records management (MRM). This default policy is automatically assigned to every mailbox and does the following:

  - Moves items that are two years or older from a user's primary mailbox to their archive mailbox.

  - Moves items that are 14 days or older from the Recoverable Items folder in the user's primary mailbox to the Recoverable Items folder in their archive mailbox.

You can customize your organization's MRM policy with [retention tags](/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies). For an example configuration, see [Set up an archive and deletion policy for mailboxes in your organization](set-up-an-archive-and-deletion-policy-for-mailboxes.md).

> [!NOTE]
> MRM, like Microsoft 365 retention policies and retention labels, can also automatically delete emails after a specified period. As an older technology than Microsoft 365 retention, MRM continues to work side-by-side with retention policies and retention labels from Microsoft Purview. For more information, see [Use retention policies and retention labels instead of older features](retention.md#use-retention-policies-and-retention-labels-instead-of-older-features).

## Auto-expanding archiving 

After a user's archive mailbox is enabled, up to 100 GB of additional storage is available. If users need more storage space, enable auto-expanding archiving to provide up to 1.5 TB of additional storage in archive mailboxes. For more information, see [Learn about auto-expanding archiving](autoexpanding-archiving.md).

## Next steps

See [Enable archive mailboxes in Microsoft 365](enable-archive-mailboxes.md).
