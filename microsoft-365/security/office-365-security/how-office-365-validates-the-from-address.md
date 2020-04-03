---
title: "How Office 365 validates the From address to prevent phishing"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyp
manager: dansimp
ms.date: 10/11/2017
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
description: "To help prevent phishing, Office 365 and Outlook.com now require RFC compliance for From: addresses."
---

# How Office 365 validates the From address to prevent phishing

Office 365 and Outlook.com email accounts receive an increasingly large number of phishing attacks. One technique attackers use is to send messages that have values for the From: address that are not compliant with [RFC 5322](https://tools.ietf.org/html/rfc5322). The From: address is also called the 5322.From address. To help prevent this type of phishing, Office 365 and Outlook.com require messages received by the service to include an RFC-compliant From: address as described in this article.

> [!NOTE]
> The information in this article requires you to have a basic understanding of the general format of email addresses. For more information, see [RFC 5322](https://tools.ietf.org/html/rfc5322) (particularly sections 3.2.3, 3.4, and 3.4.1), [RFC 5321](https://tools.ietf.org/html/rfc5321), as well as [RFC 3696](https://tools.ietf.org/html/rfc3696). This article is about policy enforcement for the 5322.From address. This article is not about the 5321.MailFrom address.

Unfortunately, there are still some legacy email servers on the Internet that continue to send "legitimate" email messages that have a missing or malformed From: address. If you regularly receive email from organizations that use these legacy systems, encourage those organizations to update their mail servers to comply with modern security standards.

Microsoft will start rolling out enforcement of the policies described in this article on November 9, 2017.

## How Office 365 enforces the use of a valid From: address to prevent phishing attacks

Office 365 is making changes to the way it enforces the use of the From: address in messages it receives in order to better protect you from phishing attacks. In this article:

- [All messages must include a valid From: address](how-office-365-validates-the-from-address.md#MustIncludeFromAddress)

- [Format of the From: address if you don't include a display name](how-office-365-validates-the-from-address.md#FormatNoDisplayName)

- [Format of the From: address if you include a display name](how-office-365-validates-the-from-address.md#FormatDisplayName)

- [Additional examples of valid and invalid From: addresses](how-office-365-validates-the-from-address.md#Examples)

- [Suppress auto-replies to your custom domain without breaking the From: policy](how-office-365-validates-the-from-address.md#SuppressAutoReply)

- [Overriding the Office 365 From: address enforcement policy](how-office-365-validates-the-from-address.md#Override)

- [Other ways to prevent and protect against cybercrimes in Office 365](how-office-365-validates-the-from-address.md#OtherProtection)

Sending on behalf of another user is not affected by this change, for more details, read Terry Zink's blog "[What do we mean when we refer to the 'sender' of an email?](https://blogs.msdn.microsoft.com/tzink/2017/06/22/what-do-we-mean-when-we-refer-to-the-sender-of-an-email/)".

### All messages must include a valid From: address
<a name="MustIncludeFromAddress"> </a>

Some automated messages don't include a From: address when they are sent. In the past, when Office 365 or Outlook.com received a message without a From: address, the service added the following default From: address to the message in order to make it deliverable:

```
From: <>
```

Starting November 9, 2017, Office 365 will be rolling out changes to its datacenters and mail servers which will enforce a new rule where messages without a From: address will no longer be accepted by Office 365 or Outlook.com. Instead, all messages received by Office 365 must already contain a valid From: address. Otherwise, the message will be sent to either the Junk Email or Deleted Items folders in Outlook.com and Office 365.

### Syntax overview: Valid format for the From: address for Office 365
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
From: "Office 365" <sender@contoso.com> (Sent by a process)
```

### Format of the From: address if you include a display name
<a name="FormatDisplayName"> </a>

For From: addresses that include a value for the display name, the following rules apply:

- If the sender address includes a display name, and the display name includes a comma, then the display name must be enclosed within quotation marks. For example:

    The following example is valid:

  ```
  From: "Sender, Example" <sender.example@contoso.com>
  ```

    The following example is not valid:

  ```
  From: Sender, Example <sender.example@contoso.com>
  ```

    Not enclosing the display name in quotation marks if that display name includes a comma is invalid according to RFC 5322.

    As a best practice, put quote marks around the display name regardless of whether or not there is a comma within the display name.

- If the sender address includes a display name, then the email address must be enclosed within angle brackets.

    As a best practice, Microsoft strongly recommends that you insert a space between the display name and the email address.

### Additional examples of valid and invalid From: addresses
<a name="Examples"> </a>

- Valid:

  ```
  From: "Office 365" <sender@contoso.com>
  ```

- Invalid. The email address is not enclosed with angle brackets:

  ```
  From: Office 365 sender@contoso.com
  ```

- Valid, but not recommended. The display name is not in quotes. As a best practice, always put quotation marks around the display name:

  ```
  From: Office 365 <sender@contoso.com>
  ```

- Invalid. Everything is enclosed within quotation marks, not just the display name:

  ```
  From: "Office 365 <sender@contoso.com>"
  ```

- Invalid. There are no angle brackets around the email address:

  ```
  From: "Office 365 <sender@contoso.com>" sender@contoso.com
  ```

- Invalid. There is no space between the display name and left angle bracket:

  ```
  From: Office 365<sender@contoso.com>
  ```

- Invalid. There is no space between the closing quotation mark around the display name and the left angle bracket.

  ```
  From: "Office 365"<sender@contoso.com>
  ```

### Suppress auto-replies to your custom domain without breaking the From: policy
<a name="SuppressAutoReply"> </a>

With the new From: policy enforcement, you can no longer use From: \<\> to suppress auto-replies. Instead, you need to set up a null MX record for your custom domain.

The mail exchanger (MX) record is a resource record in DNS that identifies the mail server that receives mail for your domain. Auto-replies (and all replies) are naturally suppressed because there is no published address to which the responding server can send messages.

When you set up a null MX record for your custom domain:

- Choose a domain from which to send messages that doesn't accept (receive) email. For example, if your primary domain is contoso.com, you might choose noreply.contoso.com.

- Set up the null MX record for your domain. A null MX record consists of a single dot, for example:

  ```
  noreply.contoso.com IN MX .
  ```

For more information about publishing a null MX, see [RFC 7505](https://tools.ietf.org/html/rfc7505).

### Overriding the Office 365 From: address enforcement policy
<a name="Override"> </a>

Once roll out of the new policy is complete, you can only bypass this policy for inbound mail you receive from Office 365 by using one of the following methods:

- IP allow lists

- Exchange Online mail flow rules

Microsoft strongly recommends against overriding the enforcement of the From: policy. Overriding this policy can increase your organization's risk of exposure to spam, phishing, and other cybercrimes.

You cannot override this policy for outbound mail you send in Office 365. In addition, Outlook.com will not allow overrides of any kind, even through support.

### Other ways to prevent and protect against cybercrimes in Office 365
<a name="OtherProtection"> </a>

For more information on how you can strengthen your organization against cybercrimes like phishing, spamming, data breaches, and other threats, see [Security best practices for Office 365](https://docs.microsoft.com/office365/admin/security-and-compliance/secure-your-business-data).

## Related Topics

[Backscatter messages and EOP](backscatter-messages-and-eop.md)
