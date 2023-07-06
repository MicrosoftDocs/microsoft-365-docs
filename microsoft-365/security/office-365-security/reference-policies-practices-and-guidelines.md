---
title: Reference Policies, practices, and guidelines
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: ff3f140b-b005-445f-bfe0-7bc3f328aaf0
ms.collection: 
  - m365-security
  - tier2
description: Microsoft has developed various policies, procedures, and adopted several industry best practices to help protect our users from abusive, unwanted, or malicious email.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/22/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Reference: Policies, practices, and guidelines

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft is dedicated to helping provide the most trusted user experience on the web. Therefore, Microsoft has developed various policies, procedures, and adopted several industry best practices to help protect our users from abusive, unwanted, or malicious email. Senders attempting to send email to users should ensure they fully understand and are following the guidance in this article to help in this effort and to help avoid potential delivery issues.

If you aren't in compliance with these policies and guidelines, it may not be possible for our support team to assist you. If you're adhering to the guidelines, practices, and policies presented in this article and are still experiencing delivery issues based on your sending IP address, follow the steps to submit a delisting request. For instructions, see [Use the delist portal to remove yourself from the blocked senders list](use-the-delist-portal-to-remove-yourself-from-the-office-365-blocked-senders-lis.md).

## General Microsoft policies

Email sent to Microsoft 365 users must comply with all Microsoft policies governing email transmission and use of Microsoft 365.

- Terms of Services applicable to Microsoft 365; in particular, the prohibition against using the service to spam or distribute malware.
- [Microsoft Services Agreement](https://www.microsoft.com/servicesagreement/)

## Governmental regulations

Email sent to Microsoft 365 users must adhere to all applicable laws and regulations governing email communications in the applicable jurisdiction.

- [CAN-SPAM Act: A Compliance Guide for Business](https://www.ftc.gov/tips-advice/business-center/guidance/can-spam-act-compliance-guide-business)
- ["Remove Me" Responses and Responsibilities: Email Marketers Must Honor "Unsubscribe" Claims](https://www.lawpublish.com/ftc-emai-marketers-unsubscribe-claims.html)

## Technical guidelines

Email sent to Microsoft 365 should comply with the applicable recommendations listed in the following documents (some links are only available in English).

- [RFC 2505: Anti-Spam Recommendations for SMTP MTAs](https://www.ietf.org/rfc/rfc2505.txt)
- [RFC 2920: SMTP Service Extension for Command Pipelining](https://www.ietf.org/rfc/rfc2920.txt)

In addition, email servers connecting to Microsoft 365 must adhere to the following requirements:

- The sender is expected to comply with all technical standards for the transmission of Internet email, as published by The Internet Society's Internet Engineering Task Force (IETF), including RFC 5321, RFC 5322, and others.
- After given a numeric SMTP error response code between 500 and 599 (also known as a permanent non-delivery response or NDR), the sender must not attempt to retransmit that message to that recipient.
- After multiple non-delivery responses, the sender must cease further attempts to send email to that recipient.
- Messages must not be transmitted through insecure email relay or proxy servers.
- The mechanism for unsubscribing, either from individual lists or all lists hosted by the sender, must be clearly documented and easy for recipients to find and use.
- Connections from dynamic IP addresses might not be accepted.
- Email servers must have valid reverse DNS records.

## Reputation management

Senders, ISP's, and other service providers should actively manage the reputation of your outbound IP addresses.

## Microsoft 365 limits

Senders must adhere to Microsoft 365 limits listed in [Exchange Online Protection Limits](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-limits).

## Email delivery resources and organizations

Microsoft actively works with industry bodies and service providers in order to improve the internet and email ecosystem. These organizations have published best practice documents that we support and recommend senders adhere to. Adhering to these recommendations improves your ability to deliver email among several email service providers around the world.

- [Messaging Malware Mobile Anti-Abuse Working Group](https://www.m3aawg.org/)
- [Online Trust Alliance](https://www.internetsociety.org/ota/)
- [Email Sender & Provider Coalition](https://www.espcoalition.org/)

## Abuse and spam reporting

To report unlawful, abusive, unwanted or malicious email, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md). Sending these types of communications is a violation of Microsoft policy, and appropriate action is taken on confirmed reports.

## Law enforcement

If you're a member of law enforcement and wish to serve Microsoft Corporation with legal documentation regarding Microsoft 365, or if you have questions regarding legal documentation that you submitted to Microsoft, call +1 (425) 722-1299.
