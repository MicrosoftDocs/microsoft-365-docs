---
title: "Fighting junk email"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 12/9/2016
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 5fd7d05b-96db-456f-81d6-1ac0e5bff530
ms.collection:
- M365-security-compliance
description: "Microsoft's email safety roadmap involves an unmatched cross-product approach. Exchange Online Protection (EOP) anti-spam and anti-phishing filtering technology is being applied across Microsoft's email platforms to provide users with the latest anti-spam and anti-phishing tools and innovations throughout the network. The goal for EOP is to offer a comprehensive and usable email service that helps detect and protect users from junk email, fraudulent email threats (phishing), and malware."
---

# Fighting junk email

Microsoft's email safety roadmap involves an unmatched cross-product approach. Exchange Online Protection (EOP) anti-spam and anti-phishing filtering technology is being applied across Microsoft's email platforms to provide users with the latest anti-spam and anti-phishing tools and innovations throughout the network. The goal for EOP is to offer a comprehensive and usable email service that helps detect and protect users from junk email, fraudulent email threats (phishing), and malware.

## The challenge

Email has become an important communication tool not only for consumers but also for marketers, support staff, sales organizations, and businesses of all sizes. As email use has grown, so has email abuse. Unmonitored junk email can clog inboxes and networks, impact user satisfaction, and hamper the effectiveness of legitimate email communications. That's why Microsoft continues to invest in anti-spam technologies. Simply put, it starts by containing and filtering junk email.

## Our efforts

EOP offers a number of steps to minimize the negative impact junk email has on our users' email experience.

### Exchange Online Protection technology

To help reduce junk email, EOP includes junk email protection using proprietary EOP filtering technologies which screen email to identify and separate junk email from legitimate email. The EOP content filter learns from known spam and phishing threats and user feedback from our consumer platform, Outlook.com. These types of data help train EOP technologies to recognize legitimate email and junk email and are key inputs into sender reputation. Ongoing feedback from EOP users in the junk email classification program helps ensure that the EOP technologies are continually trained and improved.

#### How does EOP work?

When an external user sends an email message to an EOP user, EOP filtering technologies evaluate the content of the message and assigns a rating to the message based on the probability that the message is junk email. This rating is stored as a message property called a Spam Confidence Level (SCL) within the message itself. The SCL rating stays with the message as it is sent to other anti-spam protection layers within EOP.

Rules inside EOP are set to handle email messages with various SCL ratings. If a message has an SCL rating higher than a certain threshold, it is considered spam. The message will be quarantined or delivered to the user's junk mail folder depending on how the system administrator configures the spam delivery option.

#### EOP filters

In addition to spam filtering technologies, EOP also gives the system administrator the ability to set filter levels to further customize the delivery of email to their user accounts. Administrators can easily add a sender or domain name to the Safe Senders and Domains List so that the email from that sender or domain is never treated as junk regardless of the content of the message. For information, see [Safe sender and blocked sender lists in Exchange Online](safe-sender-and-blocked-sender-lists-faq.md).

### Phishing protection

Phishing (pronounced "fishing") is a form of identity theft and one of the fastest growing threats on the Internet. You can often identify a phishing message when it requests personal or financial information or includes a link to a website that requests such information. EOP offers phishing protection as part of the proprietary EOP filtering technologies. EOP filtering technologies analyze email to help detect fraudulent links or spoofed domains to help protect users from these types of online scams.

#### How does phishing protection work?

Often a phishing email will be sent containing a link, once clicked the link redirects users to a fraudulent web site that appears valid (like your financial institution or online service). This phishing site usually prompts users to enter personal information like user names, passwords, and social security numbers. Any information you enter on the phishing site helps the phisher steal your identity. By using well-known trusted brand names and logos, phishers are able to appear legitimate. Phishing filter technology offered in EOP checks for potential phishing characteristics in email. If found, the email is moved to the Junk folder.

Microsoft is focusing its anti-phishing technology efforts on two fronts: first by helping to prevent phishing email messages from reaching our users and second by helping to eliminate the possibility of users being deceived by spoofed emails and web sites.

> [!TIP]
> Internet Explorer version 7 and above will block or warn users when they visit known or potential phishing sites so that they aren't tricked into providing personal information.[Make sure that you have the latest version of Internet Explorer](https://www.microsoft.com/windows/ie/default.mspx).

#### Authentication

Domain spoofing is a way of imitating a legitimate email address to make fraudulent email look legitimate. Spoofing is used by malicious individuals or organizations in phishing scams to lure people into divulging sensitive personal information. Disclosure of such information can lead to identify theft and other types of fraud.

EOP uses Sender Protection Framework (SPF), DomainKeys Identified Mail (DKIM), and Domain-based Message Authentication, Reporting, and Conformance (DMARC), and other implicit authentications to verify that messages came from the domain they claim to come from. We recommend that all senders use SPF and DKIM to protect their recipients from junk email and phishing scams. We recommend senders consider publishing a DMARC to reject or quarantine mail sent from unauthorized senders.

- To learn more about SPF, see [RFC 7208](https://tools.ietf.org/html/rfc7208) and [Sender Policy Framework](https://www.openspf.org/).

- To learn more about DKIM, see [RFC 6376](https://tools.ietf.org/html/rfc6376) and [DKIM.org](https://dkim.org/).

- To learn more about DMARC, see [DMARC.org](https://dmarc.org/).

### Legislation

At Microsoft, we believe that the development of new technologies and self-regulation requires the support of effective government policy and legal frameworks. The worldwide spam proliferation has spurred numerous legislative bodies to regulate commercial email. Many countries/regions now have spam-fighting laws in place. The United States has both federal and state laws governing spam, and this complementary approach is helping to curtail spam while enabling legitimate e-commerce to prosper. The CAN-SPAM Act expands the tools available for curbing fraudulent and deceptive email messages.
