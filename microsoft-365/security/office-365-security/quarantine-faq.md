---
title: Quarantined messages FAQ
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: troubleshooting
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: c440b2ac-cafa-4be5-ba4c-14278a7990ae
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can view frequently asked questions and answers about quarantined messages in Exchange Online Protection (EOP).
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Quarantined messages FAQ

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


This topic provides frequently asked questions and answers about quarantined email messages for Microsoft 365 organizations with mailboxes in Exchange Online, or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes.

For questions and answers about anti-spam protection, see [Anti-spam protection FAQ](anti-spam-protection-faq.md).

For questions and answers about anti-malware protection, see [Anti-malware protection FAQ](anti-malware-protection-faq-eop.md).

For questions and answers about anti-spoofing protection, see [Anti-spoofing protection FAQ](anti-spoofing-protection-faq.md).

## How do I manage messages that were quarantined for malware?

Only admins can manage messages that were quarantined for malware. For more information, see [Manage quarantined messages and files as an admin](manage-quarantined-messages-and-files.md).

## How do I quarantine spam?

By default, messages that are classified as spam or bulk email by spam filtering are delivered to the user's mailbox, and are moved to the Junk Email folder. But you can create and configure anti-spam policies to quarantine spam or bulk email messages instead. For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

## How do I give users access to the quarantine?

A user must have a valid account to access their own messages in quarantine. Standalone EOP requires that users are represented as mail users in EOP (manually created or created via directory synchronization). For more information about managing users in standalone EOP environments, see [Manage mail users in EOP](manage-mail-users-in-eop.md).

## What messages can end users access in quarantine?

Users can access spam, bulk email, and (as of April 2020) phishing messages where they are a recipient. End users can't access quarantined malware, high confidence phishing or messages that were quarantined because of the **Deliver the message to the hosted quarantine** action in mail flow rules (also known as transport rules). For more information about users accessing quarantined messages, see [Find and release quarantined messages as a user](find-and-release-quarantined-messages-as-a-user.md).

## How long are messages kept in the quarantine?

You configure how long spam, phishing, and bulk email messages are kept in the quarantine by using anti-spam policies. The default is 30 days, which is also the maximum. For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md)

For messages that were quarantined by the mail flow rule action **Deliver the message to the hosted quarantine**, the messages are kept in quarantine for 30 days. You can't configure this duration.

After the time period expires, the messages are deleted and are not recoverable.

## Can I release or report more than one quarantined message at a time?

In the Security & Compliance Center, you can select and release up to 100 messages at a time.

Admins can use the the [Get-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/get-quarantinemessage) and [Release-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/release-quarantinemessage) cmdlets in Exchange Online PowerShell or standalone EOP PowerShell to find and release quarantined messages in bulk, and to report false positives in bulk.

## Are wildcards supported when searching for quarantined messages? Can I search for quarantined messages for a specific domain?

Wildcards aren't supported in the Security & Compliance Center. For example, when searching for a sender, you need to specify the full email address. But, you can use wildcards in Exchange Online PowerShell or standalone EOP PowerShell.

For example, run the following command to find spam quarantined messages from all senders in the domain contoso.com:

```powershell
$CQ = Get-QuarantineMessage -Type Spam | where {$_.SenderAddress -like "*@contoso.com"}
```

Then, run the following command to release those messages to all original recipients:

```powershell
$CQ | foreach {Release-QuarantineMessage -Identity $_.Identity -ReleaseToAll}
```

After you release a message, you can't release it again.
