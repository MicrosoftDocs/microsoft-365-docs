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

# Quarantine FAQ

This topic provides frequently asked questions and answers about the hosted quarantine. Answers are applicable for Microsoft Exchange Online and Exchange Online Protection customers.

 **Q. How do I manage malware-quarantined messages in quarantine?**

You need to use the Security & Compliance Center in order to view and work with messages that were sent to quarantine because they contain malware. For more information, see [Quarantine email messages in Office 365](quarantine-email-messages.md).

 **Q. How do I configure the service to send spam-quarantined messages to the quarantine?**

A. By default, content-filtered messages are sent to the recipients Junk Email folder. However, admins can configure content filter policies to send spam-quarantined messages to the quarantine instead. For more information about the different actions that can be performed on content-filtered messages, see [Configure your spam filter policies](configure-your-spam-filter-policies.md).

 **Q. Does the service have administrator and end user management of spam-quarantined messages?**

A. As an admin, you can search for and view details about all quarantined email messages in the Security and Compliance Center (SCC). After locating the message, you can release it to specific users and optionally report it as a false positive (not junk) to the Microsoft Spam Analysis Team. For more information, see [Manage quarantined messages and files as an admin in Office 365](manage-quarantined-messages-and-files.md).

As an end user, you can manage your own spam-quarantined messages via:

- The spam quarantine user interface. For more information, see [Find and release quarantined messages as a user in Office 365](find-and-release-quarantined-messages-as-a-user.md).

 **Q. How do I grant access to quarantine for my end users?**

A. In order to access the end user spam quarantine, end users must have a valid Office 365 user ID and password. EOP customers protecting on-premises mailboxes must be valid email users created via directory synchronization or the EAC. For more information about managing users, EOP admins can refer to [Manage mail users in EOP](manage-mail-users-in-eop.md). For EOP standalone customers, we recommend using directory synchronization and enabling Directory Based Edge Blocking; for more information, see [Use Directory Based Edge Blocking to Reject Messages Sent to Invalid Recipients](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-directory-based-edge-blocking).

 **Q. What messages can end users access in quarantine?**

A. End users can access their own phish, spam, and bulk mail. End users can't access their own malware, high confidence phish, or messages that matched a mail flow rule (also known as a transport rule); these are only available in the admin quarantine. 

 **Q. For how long are messages kept in the quarantine?**

A. By default, spam-quarantined messages are kept in the quarantine for 30 days, while quarantined messages that matched a mail flow rule are kept in the quarantine for up to 30 days based on the retention period set in your default content filter policy. After this period of time the messages are deleted and are not retrievable. The retention period for quarantined messages that matched a mail flow rule is not configurable. However, the retention period for spam-quarantined messages can be lowered via the **Retain spam for (days)** setting in your content filter policies. For more information, see [Configure your spam filter policies](configure-your-spam-filter-policies.md).

 **Q. Can I release or report more than one quarantined message at a time?**

A. Yes, up to 100 messages can be released at one time in the Quarantine portal. In addition, admins can create a remote Windows PowerShell script to accomplish this task. Use the [Get-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-quarantinemessage) cmdlet to search for messages, and the [Release-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/release-quarantinemessage) cmdlet to release them.

 **Q. Are wildcards supported when searching for quarantined messages? Can I search for quarantined messages for a specific domain?**

A. Wildcards are not supported when specifying search criteria in the Exchange admin center. For example, when searching for a sender, you must specify the full email address.

Using remote Windows PowerShell, admins can specify the [Get-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-quarantinemessage) cmdlet to search for quarantined messages for a specific domain (for example, contoso.com):

```powershell
Get-QuarantineMessage | ? {$_.Senderaddress -like "*@contoso.com"}
```

The results can be passed to the [Release-QuarantineMessage](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/release-quarantinemessage) cmdlet. Include the -ReleaseToAll parameter to release the message to all recipients. Once a message is released, it can't be released again.

```powershell
Get-QuarantineMessage | ? {$_.Senderaddress -like "*@contoso.com"}
```
