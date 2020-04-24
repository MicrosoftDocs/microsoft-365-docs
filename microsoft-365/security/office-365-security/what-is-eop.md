---
title: "What is EOP"
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
ms.reviewer: andypunt
manager: dansimp
ms.date: 02/25/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.custom: TN2DMC
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 393b0050-7c7e-49e6-a03d-b1e09fe4de9e
description: "This introductory document will help you understand Exchange Online Protection (EOP) and some important terminology. This is applicable for customers who are protecting Exchange Online cloud-hosted mailboxes and EOP standalone customers who are protecting on-premises mailboxes such as Exchange Server 2016."
---

# What is Exchange Online Protection (EOP)

Exchange Online Protection (EOP) is a cloud-based email filtering service that helps protect your organization against spam and malware. If you have mailboxes in Microsoft 365, they are automatically protected by EOP since it is part of the service. This includes organizations that have mailboxes in both Microsoft 365 and on-premise, which is commonly known as a hybrid scenario. EOP standalone is also available for customers who do not have mailboxes in the cloud but want to protect their on-premises mailboxes.

EOP attempts to filter out junk, keeping your Inbox clear of content that users don't want to see. Normally, junk mail is delivered to the Junk Email folder. Some users like to check to make sure the filtering is doing what they want so the Junk Email folder is an easy way for users to check on their own.  

> [!TIP]
> It is a good thing when junk or otherwise bad email goes into the Junk Email folder automatically. The service will do what is necessary based on what the default or the custom admin settings state. In other words, users should not worry about seeing a lot of spam mail in the Junk Email folder. If admins prefer to move all junk out of sight, then the Quarantine should be configured. For more details, see the [Quarantine email messages](quarantine-email-messages.md) article.

## Important terms

**Inbound**: Messages that are coming into Microsoft 365.

**Outbound**: Messages that are going out of Microsoft 365.

**Internal**: Messages that are from someone inside the organization to someone inside the organization. This includes customers who are in hybrid scenarios and one mailbox could be on-premises and the other mailbox is in the cloud.

**False Negative (FN)**: Spam and other junk that incorrectly gets sent into the inbox.

**False Positive (FP)**: Legitimate messages that incorrectly get marked as spam and put into the Junk Email folder or Quarantine.

**Spam, also known as unsolicited e-mail**: This comes in the form of commercial advertising, chain letters, political mailings, etc. This is email that users do not sign up for and from spammers who are trying to solicit products or attempting to commit fraud.

**Phish**: Phishing is a special type of spam that is intended to trick you into giving up personal information for the purpose of committing identity theft or fraud. This type of message usually contains a malicious link or attachment, but not always.

**Spoof**: Spoofing is when spammers forge the FROM header so that messages appear to have originated from someone or somewhere other than the actual source. This can be spam but most commonly used to phish users.

**Impersonation**: This type of spam is also a way to forge the sender address, but it is done by modifying part of the name or domain so that it looks like the real source. For example, Bi11@micr0s0ft.com, where the "l" in Bill was actually the number eleven and the "o" in Microsoft was replaced with the number zero.

**Bulk**: Bulk mail is usually solicited by users, although sometimes indirectly when companies sell information to other companies. It is common that users intentionally sign up for bulk mail (i.e. newletters) but forget later on and think it is spam. Bulk mail becomes spam when bulk mailers send more than users sign up and complaint levels get too high.
