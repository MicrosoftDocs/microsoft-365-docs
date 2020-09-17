---
title: "DLP policy conditions and exceptions (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: ""
---

# DLP policy conditions and exceptions (preview)

Conditions and exceptions in DLP policies identify sensitive items rule is applied to or not applied to. For example, if the policy blocks sharing of an item policy  to only apply to items that contain specific words Collectively, the conditions and exceptions in DLP policies are  are also known as predicates, because for every condition, there’s a corresponding exception that uses the exact same settings and syntax. The only difference is conditions specify the items to include, while exceptions specify items to exclude.

Most conditions and exceptions have one property that requires one or more values. For example, if the DLP policy is being applied to Exchange emails, the **The sender is** condition requires the sender of the message. Some conditions have two properties. For example, the **A message header includes any of these words** condition requires one property to specify the message header field, and a second property to specify the text to look for in the header field. Some conditions or exceptions don’t have any properties. For example, the **Any attachment has executable content** condition simply looks for attachments in messages that have executable content.

## Conditions and exceptions for DLP policies

The tables in the following sections describe the conditions and exceptions that are available in DLP. The property types are described in the Property types section.


The tables in the following sections describe the conditions and exceptions that are available in mail flow rules in Exchange Online. The property types are described in the [Property types](#property-types) section.

[Foo_Senders](#senders)

[Foo_Recipients](#recipients)

[Foo_Message subject or body](#message-subject-or-body)

[Foo_attachments](#attachments)

[Foo_Any recipients](#any-recipients)

[Foo_Message sensitive information types, To and Cc values, size, and character sets](#message-sensitive-information-types-to-and-cc-values-size-and-character-sets)

[Foo_Sender and recipient](#sender-and-recipient)

[Foo_Message properties](#message-properties)

[Foo_Message headers](#message-headers)

 

### Senders

For conditions and exceptions that examine the sender's address, you can specify where rule looks for the sender's address.

In the EAC, in the **Properties of this rule** section, click **Match sender address in message**. Note that you might need to click **More options** to see this setting. In Exchange Online PowerShell, the parameter is _SenderAddressLocation_. The available values are:

- **Header**: Only examine senders in the message headers (for example, the **From**, **Sender**, or **Reply-To** fields). This is the default value.

- **Envelope**: Only examine senders from the message envelope (the **MAIL FROM** value that was used in the SMTP transmission, which is typically stored in the **Return-Path** field). Note that message envelope searching is only available for the following conditions (and the corresponding exceptions):

  - **The sender is**(_From_)

  - **The sender is a member of**(_FromMemberOf_)

  - **The sender address includes**(_FromAddressContainsWords_)

  - **The sender address matches**(_FromAddressMatchesPatterns_)

  - **The sender's domain is**(_SenderDomainIs_)

- **Header or envelope** ( `HeaderOrEnvelope`) Examine senders in the message header and the message envelope.


|**Condition or exception in DLP**  |**Condition and exception parameters in Microsoft 365 PowerShell** |**Property type**  |**Description**|
|---------|---------|---------|---------|
|FOO_**The sender is** <br/><br/> **The sender** \> **is this person**  |FOO_   _From_ <br/> _ExceptIfFrom_      |FOO_    `Addresses`     |FOO_     Messages that are sent by the specified mailboxes, mail users, mail contacts, or Microsoft 365 groups in the organization. <br/><br/> For more information about using Microsoft 365 groups with this condition, see the Addresses entry in the [Property types](#property-types) section.    |
|Row2     |         |         |         |
|Row3     |         |         |         |
|Row4     |         |         |         |
|Row5     |         |         |         |
|Row6     |         |         |         |
|Row7     |         |         |         |
|Row8     |         |         |         |
|Row9     |         |         |         |
|Row10     |         |         |         |
|Row11     |         |         |         |


### Recipients

## For more information

## See also

