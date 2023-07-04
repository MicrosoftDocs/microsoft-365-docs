---
title: "Learn about archive mailboxes for Microsoft Purview"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 07/04/2023
audience: Admin
ms.topic: article
f1_keywords:
- 'ms.o365.cc.ArchivingHelp'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- purview-compliance
- tier2
description: "Learn about archive mailboxes to provide extra mailbox storage for users."
---

# Learn about archive mailboxes

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

Use this article if you're an Exchange or compliance administrator and want to learn about mailbox archives that provide more storage space for users' online mailbox data. Additional mailbox storage might be needed to support your organization's message retention, eDiscovery, and hold requirements.

> [!NOTE]
> Mailbox users can learn more about their archive mailbox storage by using the following article: [Manage email storage with online archive mailboxes](https://support.microsoft.com/office/manage-email-storage-with-online-archive-mailboxes-1cae7d17-7813-4fe8-8ca2-9a5494e9a721)

After you turn on archive mailboxes, sometimes also known as *In-Place Archiving*, a user's current mailbox becomes their *primary mailbox* and an additional and associated mailbox is created, called the *archive mailbox*. 

Both mailboxes are considered a user's mailbox for compliance features such as Content search from the Microsoft Purview compliance portal, Microsoft 365 retention, and Litigation Hold.

Users can access and store messages in their archive mailboxes by using Outlook and Outlook on the web. Users can also move or copy messages between their primary mailbox and their archive mailbox. They can also recover deleted items from the Recoverable Items folder in their archive mailbox by using the Recover Deleted Items tool.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Managing archive mailboxes with messaging records management (MRM)

Messages can also be moved automatically to the archive mailbox by the [default Exchange retention policy](/exchange/security-and-compliance/messaging-records-management/default-retention-policy) from the [messaging records management (MRM) feature](/exchange/security-and-compliance/messaging-records-management/messaging-records-management). This default policy is automatically assigned to every mailbox and does the following:

  - Moves items that are two years or older from a user's primary mailbox to their archive mailbox.

  - Moves items that are 14 days or older from the Recoverable Items folder in the user's primary mailbox to the Recoverable Items folder in their archive mailbox.

You can customize your organization's Exchange MRM policy with [retention tags](/exchange/security-and-compliance/messaging-records-management/retention-tags-and-policies). For an example configuration, see [Customize an archive and deletion policy for mailboxes in your organization](set-up-an-archive-and-deletion-policy-for-mailboxes.md).

> [!NOTE]
> MRM, like Microsoft 365 retention policies and retention labels, can also automatically delete emails after a specified period. As an older technology than Microsoft 365 retention, MRM continues to work side-by-side with retention policies and retention labels from Microsoft Purview. For more information, see [Use retention policies and retention labels instead of older features](retention.md#use-retention-policies-and-retention-labels-instead-of-older-features).

## Auto-expanding archiving 

After a user's archive mailbox is enabled, up to 100 GB of extra storage becomes available. If users need more storage space than this 100 GB, enable auto-expanding archiving to provide up to 1.5 TB of additional storage in archive mailboxes. For more information, see [Learn about auto-expanding archiving](autoexpanding-archiving.md).

## Next steps

See [Enable archive mailboxes in Microsoft 365](enable-archive-mailboxes.md).
