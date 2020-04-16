---
title: "How Microsoft 365 validates the From address to prevent phishing"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- OWC150
- MET150
ms.assetid: eef8408b-54d3-4d7d-9cf7-ad2af10b2e0e
ms.collection:
- M365-security-compliance
description: "To help prevent phishing, Microsoft 365 and Outlook.com now require RFC compliance for From: addresses."
---

# How Microsoft 365 validates the From address to prevent phishing

Microsoft 365 and Outlook.com email accounts receive an increasingly large number of phishing attacks. One technique phishers use is to send messages that have values for the From: address that are not compliant with [RFC 5322](https://tools.ietf.org/html/rfc5322). The From: address is also called the 5322.From address. To help prevent this type of phishing, Microsoft 365 and Outlook.com require messages received by the service to include an RFC-compliant From: address as described in this article.

**Notes**:

- If you regularly receive email from organizations that have malformed From addresses as described in this topic, encourage these organizations to update their email servers to comply with modern security standards.

- The related Sender field (used by Send on Behalf and mailing lists) isn't affected by these requirements. For more information, see the following blog post: [What do we mean when we refer to the 'sender' of an email?](https://blogs.msdn.microsoft.com/tzink/2017/06/22/what-do-we-mean-when-we-refer-to-the-sender-of-an-email/).

## How Microsoft 365 enforces the use of a valid From: address to prevent phishing attacks

Microsoft 365 is making changes to the way it enforces the use of the From: address in messages it receives in order to better protect you from phishing attacks. In this article:

- The `5321.MailFrom` address (also known as the **MAIL FROM** address, P1 sender, or envelope sender) is the email address that's used in the SMTP transmission of the message. This email address is typically recorded in the **Return-Path** header field in the message header (although it's possible for the sender to designate a different **Return-Path** email address).

- The `5322.From` (also known as the From address or P2 sender) is the email address in the **From** header field, and is the sender's email address that's displayed in email clients. The From address is the focus of the requirements in this topic.

The From address is defined in detail across several RFCs (for example, RFC 5322 sections 3.2.3, 3.4, and 3.4.1, and [RFC 3696](https://tools.ietf.org/html/rfc3696)). There are many variations on addressing and what's considered valid or invalid. To keep it simple, we recommend the following format and definitions:

`From: "Display Name" <EmailAddress>`

- **Display Name**: An optional phrase that describes the owner of the email address.

- [Overriding the Microsoft 365 From: address enforcement policy](how-office-365-validates-the-from-address.md#Override)

- [Other ways to prevent and protect against cybercrimes in Microsoft 365](how-office-365-validates-the-from-address.md#OtherProtection)

  - **local-part**: A string that identifies the mailbox associated with the address. This value is unique within the domain. Often, the mailbox owner's username or GUID is used.
  - **domain**: The fully qualified domain name (FQDN) of the email server that hosts the mailbox identified by the local-part of the email address.

  These are some additional considerations for the EmailAddress value:

Some automated messages don't include a From: address when they are sent. In the past, when Microsoft 365 or Outlook.com received a message without a From: address, the service added the following default From: address to the message in order to make it deliverable:

```
From: <>
```

Starting November 9, 2017, Microsoft 365 will be rolling out changes to its datacenters and mail servers which will enforce a new rule where messages without a From: address will no longer be accepted by Microsoft 365 or Outlook.com. Instead, all messages received by Microsoft 365 must already contain a valid From: address. Otherwise, the message will be sent to either the Junk Email or Deleted Items folders in Outlook.com and Microsoft 365.

### Syntax overview: Valid format for the From: address for Microsoft 365
<a name="SyntaxOverviewFromAddress"> </a>

The format for the value of the From: address is defined in detail across several RFCs. There are many variations on addressing and what may be considered valid or invalid. To keep it simple, Microsoft recommends that you use the following format and definitions:

```
From: "displayname " <emailaddress >
```

Where:

- (Optional)  *displayname*  is a phrase that describes the owner of the email address. For example, this might be a more user-friendly name to describe the sender than the name of the mailbox. Using a display name is optional. However, if you choose to use a display name, Microsoft recommends that you always enclose it within quotation marks as shown.

- (Required)  *emailaddress*  is made up of:

  ```
  local-part @domain
  ```

    Where:

  - (Required)  *local-part*  is a string that identifies the mailbox associated with the address. This is unique within the domain. Often, the mailbox owner's username or GUID is used as the value for the local-part.

  - (Required)  *domain*  is the fully-qualified domain name (FQDN) of the mail server that hosts the mailbox identified by the local-part of the email address.

### Format of the From: address if you don't include a display name
<a name="FormatNoDisplayName"> </a>

A properly formatted From: address that does not include a display name includes only a single email address with or without angle brackets. Microsoft recommends that you do not separate the angle brackets with spaces. In addition, don't include anything after the email address.

The following examples are valid:

```
From: sender@contoso.com
```

```
From: <sender@contoso.com>
```

The following example is valid but not recommended because it contains spaces between the angle brackets and the email address:

```
From: < sender@contoso.com >
```

The following example is invalid because it contains text after the email address:

```
From: "Microsoft 365" <sender@contoso.com> (Sent by a process)
```

### Format of the From: address if you include a display name
<a name="FormatDisplayName"> </a>

For From: addresses that include a value for the display name, the following rules apply:

- If the sender address includes a display name, and the display name includes a comma, then the display name must be enclosed within quotation marks. For example:

The following From email addresses are valid:

- `From: sender@contoso.com`

- `From: <sender@contoso.com>`

- `From: < sender@contoso.com >` (Not recommended because there are spaces between the angle brackets and the email address.)

- `From: "Sender, Example" <sender.example@contoso.com>`

- `From: "Office 365" <sender@contoso.com>`

- `From: Office 365 <sender@contoso.com>` (Not recommended because the display name is not enclosed in double quotation marks.)

The following From email addresses are invalid:

- **No From address**: Some automated messages don't include a From address. In the past, when Office 365 or Outlook.com received a message without a From address, the service added the following default From: address to make the message deliverable:

  `From: <>`

  ```
  From: "Microsoft 365" <sender@contoso.com>
  ```

- `From: Office 365 sender@contoso.com` (The display name is present, but the email address is not enclosed in angle brackets.)

  ```
  From: Microsoft 365 sender@contoso.com
  ```

- `From: Sender, Example <sender.example@contoso.com>` (The display name contains a comma, but is not enclosed in double quotation marks.)

  ```
  From: Microsoft 365 <sender@contoso.com>
  ```

- `From: "Office 365 <sender@contoso.com>" sender@contoso.com` (The display name is present, but the email address is not enclosed in angle brackets.)

  ```
  From: "Microsoft 365 <sender@contoso.com>"
  ```

- `From: "Office 365"<sender@contoso.com>` (No space between the closing double quotation mark and the left angle bracket.)

  ```
  From: "Microsoft 365 <sender@contoso.com>" sender@contoso.com
  ```

You can't use the value `From: <>` to suppress auto-replies. Instead, you need to set up a null MX record for your custom domain. Auto-replies (and all replies) are naturally suppressed because there is no published address that the responding server can send messages to.

  ```
  From: Microsoft 365<sender@contoso.com>
  ```

- The null MX record for this domain consists of a single period.

  ```
  From: "Microsoft 365"<sender@contoso.com>
  ```

```text
noreply.contoso.com IN MX .
```

For more information about setting up MX records, see [Create DNS records at any DNS hosting provider for Office 365](../../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md).

For more information about publishing a null MX, see [RFC 7505](https://tools.ietf.org/html/rfc7505).

### Overriding the Microsoft 365 From: address enforcement policy
<a name="Override"> </a>

Once roll out of the new policy is complete, you can only bypass this policy for inbound mail you receive from Microsoft 365 by using one of the following methods:

- IP allow lists

- Exchange Online mail flow rules

Microsoft strongly recommends against overriding the enforcement of the From: policy. Overriding this policy can increase your organization's risk of exposure to spam, phishing, and other cybercrimes.

You cannot override this policy for outbound mail you send in Microsoft 365. In addition, Outlook.com will not allow overrides of any kind, even through support.

### Other ways to prevent and protect against cybercrimes in Microsoft 365
<a name="OtherProtection"> </a>

For more information on how you can strengthen your organization against cybercrimes like phishing, spamming, data breaches, and other threats, see [Security best practices for Microsoft 365](https://docs.microsoft.com/office365/admin/security-and-compliance/secure-your-business-data).

## Other ways to prevent and protect against cybercrimes in Office 365

For more information on how you can strengthen your organization against phishing, spam, data breaches, and other threats, see [Top 10 ways to secure Office 365 and Microsoft 365 Business plans](../../admin/security-and-compliance/secure-your-business-data.md).
