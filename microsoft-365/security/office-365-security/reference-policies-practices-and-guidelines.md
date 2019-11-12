---
title: "Reference Policies, practices, and guidelines"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 12/09/2016
audience: ITPro
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: ff3f140b-b005-445f-bfe0-7bc3f328aaf0
ms.collection:
- M365-security-compliance
description: "Microsoft has developed various policies, procedures, and adopted several industry best practices to help protect our users from abusive, unwanted, or malicious email."
---

# Reference: Policies, practices, and guidelines

Microsoft is dedicated to helping provide the most trusted user experience on the web. Therefore, Microsoft has developed various policies, procedures, and adopted several industry best practices to help protect our users from abusive, unwanted, or malicious email. Senders attempting to send email to Office 365 users should ensure they fully understand and are following the guidance in this article to help in this effort and to help avoid potential delivery issues.

If you are not in compliance with these policies and guidelines, it may not be possible for our support team to assist you. If you are adhering to the guidelines, practices, and policies presented in this article and are still experiencing delivery issues based on your sending IP address, please follow the steps to submit a delisting request. For instructions, see [Use the delist portal to remove yourself from the Office 365 blocked senders list](use-the-delist-portal-to-remove-yourself-from-the-office-365-blocked-senders-lis.md).

## General Microsoft policies

Email sent to Office 365 users must comply with all Microsoft policies governing email transmission and use of Office 365.

- Terms of Services applicable to Office 365; in particular, the prohibition against using the service to spam or distribute malware

- [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement/)

## Governmental regulations

Email sent to Office 365 users must adhere to all applicable laws and regulations governing email communications in the applicable jurisdiction.

- [CAN-SPAM Act: A Compliance Guide for Business](https://www.ftc.gov/tips-advice/business-center/guidance/can-spam-act-compliance-guide-business)

- ["Remove Me" Responses and Responsibilities: Email Marketers Must Honor "Unsubscribe" Claims](https://www.lawpublish.com/ftc-emai-marketers-unsubscribe-claims.mdl)

## Technical guidelines

Email sent to Office 365 should comply with the applicable recommendations listed in the documents below (some links are only available in English).

- [RFC 2505: Anti-Spam Recommendations for SMTP MTAs](https://www.ietf.org/rfc/rfc2505.txt)

- [RFC 2920: SMTP Service Extension for Command Pipelining](https://www.ietf.org/rfc/rfc2920.txt)

In addition, email servers connecting to Office 365 must adhere to the following requirements:

- Sender is expected to comply with all technical standards for the transmission of Internet email, as published by The Internet Society's Internet Engineering Task Force (IETF), including RFC 5321, RFC 5322, and others.

- After given a numeric SMTP error response code between 500 and 599 (also known as a permanent non-delivery response or NDR), the sender must not attempt to retransmit that message to that recipient.

- After multiple non-delivery responses, the sender must cease further attempts to send email to that recipient.

- Messages must not be transmitted through insecure email relay or proxy servers.

- The mechanism for unsubscribing, either from individual lists or all lists hosted by the sender, must be clearly documented and easy for recipients to find and use.

- Connections from dynamic IP space may not be accepted.

- Email servers must have valid reverse DNS records.

## Reputation management

Senders, ISP's, and other service providers should actively manage the reputation of your outbound IP addresses.

## Office 365 limits

Senders must adhere to Office 365 limits listed in [Exchange Online Protection Limits](https://technet.microsoft.com/library/exchange-online-protection-limits.aspx).

## Email delivery resources and organizations

Microsoft actively works with industry bodies and service providers in order to improve the internet and email ecosystem. These organizations have published best practice documents that we support and recommend senders adhere to. This improves your ability to deliver email among several email service providers around the world.

- [Messaging Malware Mobile Anti-Abuse Working Group](https://www.m3aawg.org/)

- [Online Trust Alliance](https://www.otalliance.org/resources)

- [Email Sender &amp; Provider Coalition](https://www.espcoalition.org/)

## Abuse and spam reporting

To report unlawful, abusive, unwanted or malicious email, please [Report junk email and phishing scams in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md). Sending these types of communications is a violation of Microsoft policy and appropriate action will be taken on confirmed reports.

## Law enforcement

If you are a member of law enforcement and wish to serve Microsoft Corporation with legal documentation regarding Office 365, or if you have questions regarding legal documentation you have submitted to Microsoft, please call (1) (425) 722-1299.
