---
title: "Quarantine FAQ"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date:
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: c440b2ac-cafa-4be5-ba4c-14278a7990ae
ms.collection:
- M365-security-compliance
description: "This topic provides frequently asked questions and answers about the hosted quarantine."
---

# Quarantine in Office 365 FAQ

This topic provides frequently asked questions and answers about quarantine for Office 365 customers with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) customers without Exchange Online mailboxes.

## Q: How do I manage messages that were quarantined for malware?

Only admins can use the Security & Compliance Center to manage messages that were quarantined for malware. For more information, see [Manage quarantined messages and files as an admin in Office 365].

## Q: How do I quarantine spam?

A. By default, spam or bulk messages are delivered to the user's mailbox, and are moved to the Junk Email folder. But you can configure anti-spam policies to quarantine spam or bulk messages instead. For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

## Q: How do I give users access to the quarantine?

A. In order to access the end user spam quarantine, end users must have a valid Office 365 user ID and password. EOP customers protecting on-premises mailboxes must be valid email users created via directory synchronization or the EAC. For more information about managing users, EOP admins can refer to [Manage mail users in EOP](manage-mail-users-in-eop.md). For EOP standalone customers, we recommend using directory synchronization and enabling Directory Based Edge Blocking; for more information, see [Use Directory Based Edge Blocking to Reject Messages Sent to Invalid Recipients](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-directory-based-edge-blocking).

## Q: What messages can end users access in quarantine?

A. End users can access their own spam, and bulk mail. End users can't access their own malware, phish, or messages that were quarantined because of the **Move message to hosted quarantine** action in mail flow rules (also known as transport rules). For instructions, see [Find and release quarantined messages as a user in Office 365](find-and-release-quarantined-messages-as-a-user.md). 

## Q: How long are messages kept in the quarantine?

A. You configure how long spam, phishing an bulk email messages are kept in the quarantine in anti-spam policies. The default is 30 days, which is also the maximum. For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md)

For messages that were quarantined by the mail flow rule action **Deliver the message to the hosted quarantine**, the value is controlled by the default anti-spam policy, which you can modify, and which is also 30 days by default.

After this period of time passes, the messages are deleted and are not retrievable.

## Q: Can I release or report more than one quarantined message at a time?

A. Yes, you can select and release up to 100 messages at a time in the Security & Compliance Center. Also, admins can use the the [Get-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-quarantinemessage) and [Release-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/release-quarantinemessage) cmdlets in Exchange Online PowerShell or standalone Exchange Online Protection PowerShell to identify and release quarantined messages, and to report false positives.

## Q: Are wildcards supported when searching for quarantined messages? Can I search for quarantined messages for a specific domain?

A. Wildcards aren't supported in the Security & Compliance Center. For example, when searching for a sender, you need to specify the full email address. But, you can use wildcards in Exchange Online PowerShell or Exchange Online Protection PowerShell.

For example, run the following command to find quarantined messages from all senders in the domain contoso.com:

```powershell
$CQ = Get-QuarantineMessage | ? {$_.Senderaddress -like "*@contoso.com"}
```

Then, run the following command to release those messages to all original recipients:

```powershell
$CQ | foreach {Release-QuarantineMessage -Identity $CQ.Identity -ReleaseToAll}
```

After you release a message, you can't release it again.
