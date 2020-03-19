---
title: "Manage safe sender lists for bulk mailers"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 11/17/2014
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: d48db4a3-9fbe-45e2-bbaa-1017ffdf96f8
ms.collection:
- M365-security-compliance
description: "If you want to use safe sender lists, you should know that Exchange Online Protection (EOP) and Outlook handle processing differently. The service respects safe senders and domains by inspecting the RFC 5321.MailFrom address and the RFC 5322.From address, while Outlook adds the RFC 5322.From address to a user's safe sender list. (Note: The service inspects both the 5321.MailFrom address and 5322.From address for blocked senders and domains.)"
---

# Manage safe sender lists for bulk mailers

If you want to use safe sender lists, you should know that Exchange Online Protection (EOP) and Outlook handle processing differently. The Office 365 service respects safe senders and domains by inspecting the `RFC 5321.MailFrom` address and the `RFC 5322.From` address, while Outlook adds the `RFC 5322.From` address to a user's safe sender list. (Note: The service inspects both the `5321.MailFrom` address and `5322.From` address for blocked senders and domains.)

The `SMTP MAIL FROM` address, otherwise known as the `RFC 5321.MailFrom address`, is the email address that's used to perform SPF checks, and if the mail can't be delivered, the path to which the bounced message is delivered. It's this email address that is placed into the `Return-Path` in the message headers by default, though it's possible for the sender to designate a different `Return-Path` address.

The `From:` address in the message headers, otherwise known as the `RFC 5322.From` address, is the email address that is displayed in the mail client such as Outlook.

Much of the time, the `5321.MailFrom` and `5322.From` addresses are the same. This is typical for person-to-person communication. However, when email is sent on behalf of someone else, the addresses are frequently different. This usually happens most often for bulk email messages.

For example, suppose that Blue Yonder Airlines has hired Margie's Travel to send out its email advertising. You then get a message in your inbox from sender blueyonder@news.blueyonderairlines.com. In this example:

- The `5321.MailFrom` address is blueyonder.airlines@margiestravel.com.

- The `5322.From` address is blueyonder@news.blueyonderairlines.com, which is what you'll see in Outlook.

To prevent this message from being filtered, you can:

- **As a user**: Add the `RFC 5322.From` address as a Safe Sender in Outlook.

- **As an admin**: Set up a [mail flow rule](anti-spam-protection.md#beyond-the-basics-more-ways-to-prevent-spam) (also known as a transport rule).
