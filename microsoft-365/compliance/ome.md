---
title: "Message Encryption"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.date: 02/07/2020
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
ms.assetid: f87cb016-7876-4317-ae3c-9169b311ff8a
ms.custom:
- seo-marvel-apr2020
description: Learn how to send and receive encrypted email messages between people inside and outside your organization.
---

# Message Encryption

People often use email to exchange sensitive information, such as financial data, legal contracts, confidential product information, sales reports and projections, patient health information, or customer and employee information. As a result, mailboxes can become repositories for large amounts of potentially sensitive information and information leakage can become a serious threat to your organization.

With Office 365 Message Encryption, your organization can send and receive encrypted email messages between people inside and outside your organization. Office 365 Message Encryption works with Outlook.com, Yahoo!, Gmail, and other email services. Email message encryption helps ensure that only intended recipients can view message content.

## How Office 365 Message Encryption works

The rest of this article applies to the new OME capabilities.

Office 365 Message Encryption is an online service that's built on Microsoft Azure Rights Management (Azure RMS) which is part of Azure Information Protection. This service includes encryption, identity, and authorization policies to help secure your email. You can encrypt messages by using rights management templates, the [Do Not Forward option](/information-protection/deploy-use/configure-usage-rights#do-not-forward-option-for-emails), and the [encrypt-only option](/information-protection/deploy-use/configure-usage-rights#encrypt-only-option-for-emails).

Users can then encrypt email messages and various attachments by using these options. For a full list of supported attachment types, see ["File types covered by IRM policies when they are attached to messages" in Introduction to IRM for email messages](https://support.office.com/article/bb643d33-4a3f-4ac7-9770-fd50d95f58dc#FileTypesforIRM).

As an administrator, you can also define mail flow rules to apply this protection. For example, you can create a rule that requires the encryption of all messages addressed to a specific recipient, or that contains specific words in the subject line, and also specify that recipients can't copy or print the contents of the message.

Unlike the previous version of OME, the new capabilities provide a unified sender experience whether you're sending mail inside your organization or to recipients outside of Microsoft 365. In addition, recipients who receive a protected email message sent to a Microsoft 365 account in Outlook 2016 or Outlook on the web, don't have to take any other action to view the message. It works seamlessly. Recipients using other email clients and email service providers also have an improved experience. For information, see [Learn about protected messages in Office 365](https://support.office.com/article/Learn-about-protected-messages-in-Office-365-2baf3ac7-12db-40a4-8af7-1852204b4b67) and [How do I open a protected message](https://support.office.com/article/How-do-I-open-a-protected-message-1157a286-8ecc-4b1e-ac43-2a608fbf3098).

For a detailed list of the differences between the previous version of OME and the new OME capabilities, see [Compare versions of OME](ome-version-comparison.md).

When someone sends an email message that matches an encryption mail flow rule, the message is encrypted before it's sent. All Microsoft 365 end users that use Outlook clients to read mail receive native, first-class reading experiences for encrypted and rights-protected mail even if they're not in the same organization as the sender. Supported Outlook clients include Outlook desktop, Outlook Mac, Outlook mobile on iOS and Android, and Outlook on the web (formerly known as Outlook Web App).

Recipients of encrypted messages who receive encrypted or rights-protected mail sent to their Outlook.com, Gmail, and Yahoo accounts receive a wrapper mail that directs them to the OME Portal where they can easily authenticate using a Microsoft account, Gmail, or Yahoo credentials.

End users that read encrypted or rights-protected mail on clients other than Outlook also use the OME portal to view encrypted and rights-protected messages that they receive.

If the sender of the protected mail is in GCC High and the recipient is outside of GCC High, including commercial users, Outlook.com users, and users of other email providers such as Gmail, the recipient receives a wrapper mail. The wrapper mail directs the recipient to the OME Portal where the recipient is able to read and reply to the message. Otherwise, if the sender and recipient are both in the GCC High environment, even if they're not in the same organization, then recipients that use Outlook clients to read mail receive native, first-class reading experiences for encrypted and rights-protected mail. For more information about the different experience in GCC High, see [Compare versions of OME](ome-version-comparison.md).

For more information about size limits for messages and attachments that you can encrypt using OME, see [Exchange Online Limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits).

## How Office 365 Advanced Message Encryption works on top of OME

Office 365 Advanced Message Encryption lets you create multiple branding templates so you can fine-tune control over recipient mail and create custom branding experiences to support a diverse organizational structure.

Advanced Message Encryption in Microsoft 365 helps you meet compliance obligations that require more flexible control over external recipient's access to encrypted emails. With Advanced Message Encryption in Office 365, as an administrator, you can control sensitive emails shared outside the organization with automatic policies that detect sensitive information types (for example, PII, Financial or Health IDs) or keywords to enhance protection by expiring access through a secure web portal to encrypted emails. As an admin you can further control encrypted emails accessed through a Microsoft 365 web portal by revoking access to an email anytime.

Message revocation and expiration only work for emails that your users send to recipients outside your organization. In addition, the recipients must access the email through the web portal. To ensure the recipient uses the portal to receive email, you set up a custom branding template that applies the wrapper. Then, you apply the branding template in a mail flow rule. For more information about Advanced Message Encryption, see [Office 365 Advanced Message Encryption](ome-advanced-message-encryption.md).

## Defining rules for Office 365 Message Encryption

One way to enable the new capabilities for Office 365 Message Encryption is for Exchange Online and Exchange Online Protection administrators to define mail flow rules. These rules determine under what conditions email messages should be encrypted. When an encryption action is set for a rule, any messages that match the rule conditions are encrypted before they're sent.

Mail flow rules are flexible, letting you combine conditions so you can meet specific security requirements in a single rule. For example, you can create a rule to encrypt all messages that contain specified keywords and are addressed to external recipients. The new capabilities for Office 365 Message Encryption also encrypt replies from recipients of encrypted email.

For more information about how to create mail flow rules to take advantage of the new OME capabilities, see [Define Rules for Office 365 Message Encryption](define-mail-flow-rules-to-encrypt-email.md).

## Get started with the new OME capabilities

If you're ready to get started using the new OME capabilities within your organization, see [Set up new Office 365 Message Encryption capabilities](set-up-new-message-encryption-capabilities.md).

## Sending, viewing, and replying to encrypted email messages

With Office 365 Message Encryption, users can send encrypted email from Outlook and Outlook on the web. Additionally, admins can set up mail flow rules in Microsoft 365 to automatically encrypt emails based on keyword matching or other conditions.

Recipients of encrypted messages who are in organizations will be able to read those messages seamlessly in any version Outlook, including Outlook for PC, Outlook for Mac, Outlook on the web, Outlook for iOS, and Outlook for Android. Users that receive encrypted messages on other email clients can view the messages in the OME portal.

For detailed guidance about how to send and view encrypted messages, take a look at these articles.

|Read this article...|If you are...|
|:-----|:-----|
|[Learn about protected messages in Office 365](https://support.office.com/article/2baf3ac7-12db-40a4-8af7-1852204b4b67.aspx)|An end user that wants to learn more about how encrypted messages work and what options are available to you.|
|[How do I open a protected message?](https://support.office.com/article/1157a286-8ecc-4b1e-ac43-2a608fbf3098.aspx)|An end user that wants to read a protected message that was sent to you. This article includes information about reading messages in several versions of Outlook and from different email accounts, including those accounts outside of Microsoft 365 such as gmail and Yahoo! accounts.|
|[Send, view, and reply to encrypted messages in Outlook](https://support.microsoft.com/office/send-view-and-reply-to-encrypted-messages-in-outlook-for-pc-eaa43495-9bbb-4fca-922a-df90dee51980)|An end user that wants to send, view, or reply to an encrypted message from Outlook. Even if you're not a member of an organization, you still receive notification of encrypted messages sent to you in Outlook. Use this article for instructions on how to view and reply to encrypted messages sent from Office 365.|
|[Send a digitally signed or encrypted message](https://support.microsoft.com/office/send-a-digitally-signed-or-encrypted-message-a18ecf7f-a7ac-4edd-b02e-687b05eff547)|An end user that wants to send, view, or reply to encrypted messages using Outlook for Mac. This article also covers using encryption methods other than OME, such as S/MIME.|
|[View encrypted messages on your Android device](https://support.office.com/article/83d60f17-2305-407a-a762-7d518401fdeb)|An end user who has received a message encrypted with Office 365 Message Encryption on your Android device, you can use the free OME Viewer app to view the message and send an encrypted reply. This article explains how.|
|[View encrypted messages on your iPhone or iPad](https://support.microsoft.com/office/view-protected-messages-on-your-iphone-or-ipad-4d631321-0d26-4bcc-a483-d294dd0b1caf)|An end user who has received a message encrypted with Office 365 Message Encryption on your iPhone or iPad, you can use the free OME Viewer app to view the message and send an encrypted reply. This article explains how.|
||