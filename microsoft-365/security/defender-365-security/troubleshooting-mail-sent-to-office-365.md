---
title: Troubleshooting mail sent to Microsoft 365
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: troubleshooting

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: f4caa4e1-e414-4b21-8822-31c08064c059
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: This article provides troubleshooting information for issues with sending email to inboxes in Microsoft 365 & best practices for bulk mailing to Microsoft 365 customers.
ms.technology: mdo
ms.prod: m365-security
---

# Troubleshooting mail sent to Microsoft 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)

This article provides troubleshooting information for senders who are experiencing issues when trying to send email to inboxes in Microsoft 365 and best practices for bulk mailing to customers.

## Are you managing your IP and domain's sending reputation?

EOP filtering technologies are designed to provide anti-spam protection for Microsoft 365 as well as other Microsoft products like Exchange Server. We also leverage SPF, DKIM, and DMARC; email authentication technologies that help address the problem of spoofing and phishing by verifying that the domain sending the email is authorized to do so. EOP filtering is influenced by a number of factors related to the sending IP, domain, authentication, list accuracy, complaint rates, content and more. Of these, one of the principal factors in driving down a sender's reputation and their ability to deliver email is their junk email complaint rate.

## Are you sending email from new IP addresses?

IP addresses not previously used to send email typically don't have any reputation built up in our systems. As a result, emails from new IPs are more likely to experience delivery issues. Once the IP has built a reputation for not sending spam, EOP will typically allow for a better email delivery experience.

New IPs that are added for domains that are authenticated under existing SPF records typically experience the added benefit of inheriting some of the domain's sending reputation. If your domain has a good sending reputation new IPs may experience a faster ramp up time. A new IP can expect to be fully ramped within a couple of weeks or sooner depending on volume, list accuracy, and junk email complaint rates.

## Confirm that your DNS is set up correctly

For instructions about how to create and maintain DNS records, including the MX record required for mail routing, you will need to contact your DNS hosting provider.

## Ensure that you do not advertise yourself as a non-routable IP

We may not accept email from senders who fail a reverse-DNS lookup. In some cases, legitimate senders advertise themselves incorrectly as a non-internet routable IP when attempting to open a connection to EOP. IP addresses that are reserved for private (non-routable) networking include:

- 192.168.0.0/16 (or 192.168.0.0 - 192.168.255.255)
- 10.0.0.0/8 (or 10.0.0.0 - 10.255.255.255)
- 172.16.0.0/11 (or 172.16.0.0 - 172.31.255.255)

## You received a non-delivery report (NDR) when sending email to a user in Office 365

Some delivery issues are the result of the sender's IP address being blocked by Microsoft or because the user account is identified as banned sender due to previous spam activity. If you believe that you have received the NDR in error, first follow any instructions in the NDR message to resolve the issue.

For more information about the error you received, see the list of error codes in [Email non-delivery reports in Exchange Online](https://docs.microsoft.com/exchange/mail-flow-best-practices/non-delivery-reports-in-exchange-online/non-delivery-reports-in-exchange-online).

 For example, if you receive the following NDR, it indicates that the sending IP address was blocked by Microsoft:

 `550 5.7.606-649 Access denied, banned sending IP [x.x.x.x]; To request removal from this list please visit https://sender.office.com/ and follow the directions.`

To request removal from this list, you can [Use the delist portal to remove yourself from the blocked senders list](use-the-delist-portal-to-remove-yourself-from-the-office-365-blocked-senders-lis.md).

## My email landed in the recipient's Junk Email folder

If a message was incorrectly identified as spam by EOP, you can work with the recipient to submit this false positive message to the Microsoft Spam Analysis Team, who will evaluate and analyze the message. For more information, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Traffic from my IP address is throttled by EOP

If you receive an NDR from EOP that indicates that your IP address is being throttled by EOP, for example:

 `host xxxx.outlook.com [x.x.x.x]: 451 4.7.550 Access denied, please try again later`

You received the NDR because suspicious activity has been detected from the IP address and it has been temporarily restricted while it is being further evaluated. If the suspicion is cleared through evaluation, this restriction will be lifted shortly.

## I can't receive email from senders in Microsoft 365

 In order to receive messages from our users, make sure your network allows connections from the IP addresses that EOP uses in our datacenters. For more information, see [Exchange Online Protection IP addresses](../../enterprise/urls-and-ip-address-ranges.md).

## Best practices for bulk emailing to Microsoft 365 users

If you often conduct bulk email campaigns to Microsoft 365 users and want to ensure that your emails arrive in a safe and timely manner, follow the tips in this section.

### Ensure that the From name reflects who is sending the message

The Subject should be a brief summary of what the message is about, and the message body should clearly and succinctly indicate what the offering, service, or product is about. For example:

Correct:

> From: marketing@shoppershandbag.com <br> Subject: Updated catalog for the Christmas season!

Incorrect:

> From: someone@outlook.com <br> Subject: Catalogs

The easier you make it for people to know who you are and what you are doing, the less difficulty you will have delivering through most spam filters.

### Always include an unsubscribe option in campaign emails

Marketing emails, especially newsletters, should always include a way of unsubscribing from future emails. For example:

 `This email was sent to example@contoso.com by sender@fabrikam.com.`

 `Update Profile/Email Address | Instant removal with SafeUnsubscribe&trade; | Privacy Policy`

Some senders include this option by requiring recipients to send an email to a certain alias with "Unsubscribe" in the subject. This is not preferable to the one-click example above. If you do choose to require recipients to send a mail, ensure that when they click the link, all the required fields are pre-populated.

### Use the double opt-in option for marketing email or newsletter registration

This industry best practice is recommended if your company requires or encourages users to register their contact information in order to access your product or services. Some companies make it a practice to automatically sign up their users for marketing emails or e-newsletters during the registration process, but this is considered a questionable marketing practice in the world of email filtering.

During the registration process, if the "Yes, please send me your newsletter" or "Yes, please send me special offers" checkbox is selected by default, users who do not pay close attention may unintentionally sign up for marketing email or newsletters that they do not want to receive.

 We recommend the double opt-in option instead, which means that the checkbox for marketing emails or newsletters is unchecked by default. Additionally, once the registration form has been submitted, a verification email is sent to the user with a URL that allows them to confirm their decision to receive marketing emails.

 This helps ensure that only those users who want to receive marketing email are signed up for the emails, subsequently clearing the sending company of any questionable email marketing practices.

### Ensure that email message content is transparent and traceable

Just as important as the way the emails are sent is the content they contain. When creating email content, use the following best practices to ensure that your emails will not be flagged by email filtering services:

- When the email message requests that recipients add the sender to the address book, it should clearly state that such action is not a guarantee of delivery.

- Redirects included in the body of the message should be similar and consistent, and not multiple and varied. A redirect in this context is anything that points away from the message, such as links and documents. If you have a lot of advertising or Unsubscribe links or Update the Profile links, they should all point to the same domain. For example:

  Correct (all domains are the same):

  `unsubscribe.bulkmailer.com`

  `profile.bulkmailer.com`

  `options.bulkmailer.com`

  Incorrect (all domains are different):

  `unsubscribe.bulkmailer.com`

  `profile.excite.com`

  `options.yahoo.com`

- Avoid content with large images and attachments, or messages that are solely composed of an image.

- Your public privacy or P3P settings should clearly state the presence of tracking pixels (web bugs or beacons).

### Remove incorrect email aliases from your databases

Any email alias in your database that creates a bounce-back is unnecessary and puts your outbound emails at risk for further scrutiny by email filtering services. Ensure that your email database is up-to-date.
