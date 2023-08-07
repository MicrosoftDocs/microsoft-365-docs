---
title: Use DMARC Reports to protect against spoofing and phishing in Microsoft Office 365
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.date: 06/15/2023
ms.localizationpriority: high
search.appverid:
  - MET150
ms.assetid: 4a05898c-b8e4-4eab-bd70-ee912e349737
ms.collection:
  - m365-security
  - tier1
description: Read your DMARC Reports. If you set the rua tag while configuring, DMARC Reports are sent daily to the email addresses specified, which help admins and SecOps fight spoofing and phishing emails. Domain-based Message Authentication, Reporting, and Conformance (DMARC) validate messages sent from your organization, and generate reporting that highlights DMARC effectiveness.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Use DMARC Reports to validate email in Microsoft Office 365

> [!NOTE]
> If you haven't set up DMARC, the directions are [here](email-authentication-dmarc-configure.md). For an overview of email authentication including SPF, DKIM and DMARC in Microsoft Office 365, see this [topic](email-authentication-about.md).

Domain-based Message Authentication, Reporting, and Conformance (**DMARC**) helps protect against spoofing and phishing, and prevents benign messages from being marked as spam.

**DMARC Reporting** makes you aware of DMARC email authentication decisions at recipient mail server.

## Office 365 DMARC reporting

In Office 365, the DMARC reports are sent to all sender domain owners that have a valid rua address defined in their DMARC record (independent of your platform or configuration).

The only exception is where the MX record for the recipient domain doesn't directly point to Office 365. In that case no DMARC Report is sent to the sender domain owner rua address.

**Example:**

**Mailbox A** > recipient *domain contoso.com*

**Mailbox A MX record** > points to Office 365 at *contoso-com.mail.protection.outlook.com*

**Mailbox A report result** > automatically sent an aggregated DMARC report to all email sender domain owners with a valid rua address in their DMARC record.

But if the contoso.com domain's MX record points to a *different email security solution* that sits in front of Office 365, then *no DMARC aggregate reports are sent to any sender domain's rua address* (configured in their DMARC record). This is because information about the sending infrastructure is likely affected by the complex mail flow routing.

## What DMARC Reports do for you

It's recommended that admins set up and regularly review DMARC Reporting in their domain.

Admins should regularly read and monitor the daily DMARC reports sent in email. The reports outline what messages from the domain pass one of email authentication methods **Sender Policy Framework (SPF)**, or **DomainKeys Identified Mail (DKIM)**, and the verdict of **DMARC** authentication.

**DMARC Reports outline:**

- The servers or services sending email from your domain.
- The servers or services that pass or fail DMARC authentication.
    - Note that email must also pass one of SPF or DKIM to pass DMARC.
- The actions that DMARC takes on a server that gets unauthenticated mail from your domain. The options are:
    - None
    - Quarantine
    - Reject

DMARC reports let you know who is sending mail on your domain, and can alert you to potential spammers. Another advantage is that once most messages pass DMARC, admins can change enforcement by creating a stricter DMARC policy. This makes the environment increasingly unfriendly to spoofing and phishing.

Reviewing DMARC reports can verify that messages are sent by authorized servers, and determine whether they pass authentication checks. Over time, this will allow admins to fine tune their response, choosing from amongst reject, quarantine, or no response (none).

## Reading your DMARC Reports

When DMARC is turned on, reports are sent daily to the email address or addresses specified in your DMARC record (reports using the rua tag in the DMARC record contain the email information).

Every server that gets mail from your domain also sends back an XML DMARC report, including whether messages coming out of your domain pass or fail DMARC. You'll also see:

- Any results for SPF, DKIM, and DMARC email authentication.
- How many messages came from each IP address that day.

## Interpreting your DMARC data

> [!IMPORTANT]
> The numbers of DMARC emails varies in the same way the amount of email your domain sends does. For example, there may be lulls during holidays, and peaks during an organization's events. This can add up to a lot of reporting, so it's best to dedicate a group and mailbox to the practice of getting and analyzing these reports.

DMARC Reports can be difficult to read and interpret. Using a third-party service that specializes in DMARC, from receiving and storing this data, to analyzing and even aggregating reports, may be the answer.

Ultimately the value of your DMARC investment, how effectively it's working, and whether or not it's meeting goals comes down to analyzing the data. If your DMARC Reports are handled by a 3rd party have a discussion about your key DMARC objectives.

## More information

[**SPF**](email-authentication-spf-configure.md) SPF helps *validate* outbound email sent from your custom domain (is coming from who it says it is).

[**DKIM**](email-authentication-dkim-configure.md) email authentication's goal is to prove the contents of the mail haven't been tampered with.

[**DMARC**](email-authentication-dmarc-configure.md) email authentication's goal is to make sure that SPF and DKIM information matches the From address.

[**Use trusted ARC Senders for legitimate mailflows**](use-arc-exceptions-to-mark-trusted-arc-senders.md)