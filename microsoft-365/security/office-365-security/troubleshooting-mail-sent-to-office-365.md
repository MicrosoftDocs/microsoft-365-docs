---
title: "Troubleshooting mail sent to Office 365"
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
ms.assetid: f4caa4e1-e414-4b21-8822-31c08064c059
ms.collection:
- M365-security-compliance
description: "This article provides troubleshooting information for senders who are experiencing issues when trying to send email to inboxes in Office 365 and best practices for bulk mailing to Office 365 customers."
---

# Troubleshooting mail sent to Office 365

This article provides troubleshooting information for senders who are experiencing issues when trying to send email to inboxes in Office 365 and best practices for bulk mailing to Office 365 customers.

## Troubleshooting common problems with mail delivery to Office 365

Choose from one of these commonly encountered issues.

- [Are you managing your IP and domain's sending reputation?](#are-you-managing-your-ip-and-domains-sending-reputation)

- [Are you sending email from new IP addresses?](#are-you-sending-email-from-new-ip-addresses)

- [Confirm that your DNS is set up correctly](#confirm-that-your-dns-is-set-up-correctly)

- [Ensure that you do not advertise yourself as a non-routable IP](#ensure-that-you-do-not-advertise-yourself-as-a-non-routable-ip)

- [You received a non-delivery report (NDR) when sending email to a user in Office 365](#you-received-a-non-delivery-report-ndr-when-sending-email-to-a-user-in-office-365)

- [My email landed in the recipient's junk folder in EOP](#my-email-landed-in-the-recipients-junk-folder-in-eop)

- [Traffic from my IP address is throttled by EOP](#traffic-from-my-ip-address-is-throttled-by-eop)

### Are you managing your IP and domain's sending reputation?

EOP filtering technologies are designed to provide anti-spam protections for Microsoft Office 365 as well as other Microsoft products like Exchange Server, Microsoft Office Outlook, and Windows Live Mail. We also leverage SPF, DKIM, and DMARC; email authentication technologies that help address the problem of spoofing and phishing by verifying that the domain sending the email is authorized to do so. EOP filtering is influenced by a number of factors related to the sending IP, domain, authentication, list accuracy, complaint rates, content and more. Of these, one of the principal factors in driving down a sender's reputation and their ability to deliver email is their junk email complaint rate.

### Are you sending email from new IP addresses?

IP addresses not previously used to send email typically don't have any reputation built up in our systems. As a result, emails from new IPs are more likely to experience delivery issues. Once the IP has built a reputation for not sending spam, EOP will typically allow for a better email delivery experience.

New IPs that are added for domains that are authenticated under existing SPF records typically experience the added benefit of inheriting some of the domain's sending reputation. If your domain has a good sending reputation new IPs may experience a faster ramp up time. A new IP can expect to be fully ramped within a couple of weeks or sooner depending on volume, list accuracy, and junk email complaint rates.

### Confirm that your DNS is set up correctly

For instructions about how to create and maintain DNS records, including the MX record required for mail routing, you will need to contact your DNS hosting provider.

### Ensure that you do not advertise yourself as a non-routable IP

We may not accept email from senders who fail a reverse-DNS lookup. In some cases, legitimate senders advertise themselves incorrectly as a non-internet routable IP when attempting to open a connection to EOP. IP addresses that are reserved for private (non-routable) networking include:

- 192.168.0.0/16 (or 192.168.0.0 - 192.168.255.255)

- 10.0.0.0/8 (or 10.0.0.0 - 10.255.255.255)

- 172.16.0.0/11 (or 172.16.0.0 - 172.31.255.255)

### You received a non-delivery report (NDR) when sending email to a user in Office 365

Some delivery issues are the result of the sender's IP address being blocked by Microsoft or because the user account is identified as banned sender due to previous spam activity. If you believe that you have received the NDR in error, first follow any instructions in the NDR message to resolve the issue.

For more information about the error you received, see the complete list of SMTP error codes in [DSNs and NDRs in On-Premises Exchange 2013 and Office 365](https://technet.microsoft.com/library/8e91de84-76fa-49b2-898c-c5eface76560.aspx).

 For example, if you receive the following NDR, it indicates that the sending IP address was blocked by Microsoft.

 `550 5.7.606-649 Access denied, banned sending IP [x.x.x.x]; To request removal from this list please visit https://sender.office.com/ and follow the directions.`

To request removal from this list, you can [Use the delist portal to remove yourself from the Office 365 blocked senders list](use-the-delist-portal-to-remove-yourself-from-the-office-365-blocked-senders-lis.md).

### My email landed in the recipient's junk folder in EOP

If a message was incorrectly identified as spam by EOP, you can work with the recipient to submit this false positive message to the Microsoft Spam Analysis Team, who will evaluate and analyze the message. Depending on the results of the analysis, the service-wide spam content filter rules may be adjusted to allow the message through. You use email to submit messages to Microsoft that should not be classified as spam. When doing so, be sure to use the steps in the following procedure.

### To use email to submit false positive messages to the Microsoft Spam Analysis Team

1. Save the message you want to submit as non-spam.

2. Create a new, blank message and attach the non-spam message to it.

    You can attach multiple non-spam messages if needed.

3. Copy and paste the original message subject line into the new message subject line.

    > [!IMPORTANT]
    > Leave the body of the new message empty.

4. Send your new message to [not_junk@office365.microsoft.com](mailto:not_junk@office365.microsoft.com).

### Traffic from my IP address is throttled by EOP

If you receive an NDR from EOP that indicates that your IP address is being throttled by EOP, for example:

 `host xxxx.outlook.com [x.x.x.x]: 451 4.7.550 Access denied, please try again later`

You received the NDR because suspicious activity has been detected from the IP address and it has been temporarily restricted while it is being further evaluated. If the suspicion is cleared through evaluation, this restriction will be lifted shortly.

### I can't receive email from senders in Office 365

 In order to receive messages from our users, make sure your network allows connections from the IP addresses that EOP uses in our datacenters. For more information, see [Exchange Online Protection IP addresses](https://docs.microsoft.com/office365/enterprise/urls-and-ip-address-ranges).

## Best practices for bulk emailing to Office 365 users

If you often conduct bulk email campaigns to Office 365 users and want to ensure that your emails arrive in a safe and timely manner, follow the tips in this section.

### Ensure that the From: name reflects who is sending the message

The Subject should be a brief summary of what the message is about, and the message body should clearly and succinctly indicate what the offering, service, or product is about. For example:

Correct:

> From: marketing@shoppershandbag.com <br/> Subject: Updated catalog for the Christmas season!

Incorrect:

> From: someone@outlook.com <br/> Subject: Catalogs

The easier you make it for people to know who you are and what you are doing, the less difficulty you will have delivering through most spam filters.

### Always include an unsubscribe option in campaign emails

Marketing emails, especially newsletters, should always include a way of unsubscribing from future emails. For example:

 `This email was sent to example@contoso.com by sender@fabrikam.com.`

 `Update Profile/Email Address | Instant removal with SafeUnsubscribe™ | Privacy Policy`

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

  Correct:

  `unsubscribe.bulkmailer.com`

  `profile.bulkmailer.com`

  `options.bulkmailer.com`

  Incorrect:

  `unsubscribe.bulkmailer.com`

  `profiles.excite.com`

  `options.yahoo.com`

- Avoid content with large images and attachments, or messages that are solely composed of an image.

- Your public privacy or P3P settings should clearly state the presence of tracking pixels (web bugs or beacons).

### Remove incorrect email aliases from your databases

Any email alias in your database that creates a bounce-back is unnecessary and puts your outbound emails at risk for further scrutiny by email filtering services. Ensure that your email database is up-to-date.
