---
title: "ASF options in Office 365"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 07/09/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: b286f853-b484-4af0-b01f-281fffd85e7a
ms.collection:
- M365-security-compliance
description: "Advanced spam filtering  options give administrators the ability to inspect various content attributes of a message. The presence of these attributes in a message either increases the spam score of the message (thereby increasing the potential for it to be identified as spam) or marks the message as spam. The ASF options target specific message properties, such as HTML tags and URL redirection, which are commonly found in spam messages."
---

# Advanced Spam Filtering options in Office 365

> [!NOTE]
> The ASF options that are currently available in anti-spam policies are in the process of deprecated. We recommend that you turn off all ASF settings in any of your anti-spam policies. The functionality of the available ASF settings is being incorporated into other parts of the filtering stack.

The Advanced Spam Filtering (ASF) options in anti-spam policies (also known as content filter policies) give admins the ability to increase the spam score of messages (thereby increasing the chance that the messages will be identified as spam) or mark messages as spam based on specific message properties. ASF targets these message properties (for example, HTML tags and URL redirects) because they're commonly found in spam messages.

Enabling the ASF options is an aggressive approach to spam filtering. You can't report messages that are filtered by ASF as false positives. You can identify messages that were filtered by ASF by:

- Periodic end-user spam notifications.

- The presence of filtered messages in the spam quarantine.

- The specific X-header fields that are added to messages. For more information, see [Anti-spam message headers](anti-spam-message-headers.md).

ASF options can be set on, off, or to test mode when you edit your content filter policies. For more information, see [Configure your spam filter policies](configure-your-spam-filter-policies.md). Test mode is not available for the **NDR backscatter**, **SPF record: hard fail**, **Conditional Sender ID filtering: hard fail**, and **Bulk mail** options.

The following sections and tables describes the ASF options that are available in anti-spam policies in the Office 365 Security & Compliance Center, and in Exchange Online PowerShell or standalone Exchange Online Protection PowerShell ([New-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/new-hostedcontentfilterpolicy) and [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-hostedcontentfilterpolicy)).

## Increase spam score options

These options set the spam confidence level (SCL) of detected messages to 5 or 6, which corresponds to the **Spam** filter verdict in anti-spam policies.

||||
|:-----|:-----|:-----|
|**Option**|**Description**|**X-header**|
|**Image links to remote sites** <br/><br/> *IncreaseScoreWithImageLinks*|HTML messages that contain IMG tag links to remote sites (for example, using http).|`X-CustomSpam: Image links to remote sites`|
|**Numeric IP address in URL** <br/><br/> *IncreaseScoreWithNumericIps*|Messages that contain numeric-based URLs (typically, IP addresses).|`X-CustomSpam: Numeric IP in URL`|
|**URL redirect to other port** <br/><br/> *IncreaseScoreWithRedirectToOtherPort*|Message that contain hyperlinks that redirect to TCP ports other than 80 (HTTP), 8080 (alternate HTTP), or 443 (HTTPS).|`X-CustomSpam: URL redirect to other port`|
|**URL to .biz or .info websites** <br/><br/> *IncreaseScoreWithBizOrInfoUrls*|Messages that contain .biz or .info links in the body of the message.|`X-CustomSpam: URL to .biz or .info websites`|
|

## Mark as spam options

These options set the SCL of detected messages to 9, which corresponds to the **High confidence spam** filter verdict in anti-spam policies.

||||
|:-----|:-----|:-----|
|**Option**|**Description**|**X-header**|
|**Empty messages**|When this setting is enabled, any message in which the body and subject line are both empty, and which also has no attachment, will be marked as spam.|X-CustomSpam: Empty Message|
|**JavaScript or VBScript in HTML**|When this setting is enabled, any message that uses JavaScript or Visual Basic Script Edition in HTML will be marked as spam. Both of these scripting languages are used within an HTML message to automatically cause a specific action to occur. The browser will parse and process the script along with the rest of the document.|X-CustomSpam: Javascript or VBscript tags in HTML|
|*Frame or IFrame tags in HTML**|When this setting is enabled, any message that contains the \<Frame\> or \<IFrame\> HTML tag will be marked as spam. These tags are used on websites or in HTML messages to format the page for displaying text or graphics.|X-CustomSpam: IFRAME or FRAME in HTML|
|**Object tags in HTML**|When this setting is enabled, any message that contains the \<Object\> HTML tag will be marked as spam. This HTML tag allows plug-ins or applications to run in an HTML window.|X-CustomSpam: Object tag in html|
|**Embed tags in HTML**|When this setting is enabled, any message that contains the \<Embed\> HTML tag will be marked as spam. This HTML tag allows different kinds of documents of varying data types to be embedded into an HTML document. Examples include sounds, movies, or pictures.|X-CustomSpam: Embed tag in html|
|**Form tags in HTML**|When this setting is enabled, any message that contains the \<Form\> HTML tag will be marked as spam. This HTML tag is used to create website forms. Email advertisements often include this tag to solicit information from the recipient.|X-CustomSpam: Form tag in html|
|**Web bugs in HTML**|When this setting is enabled, any message that contains a Web bug will be marked as spam. A Web bug is a graphic that is designed to determine whether a Web page or email message has been read. Web bugs are often invisible to the recipient because they are typically added to a message as a graphic that is as small as one pixel by one pixel. Legitimate newsletters may also use this technique, although many consider this an invasion of privacy.|X-CustomSpam: Web bug|
|**Apply sensitive word list**|When this setting is enabled, any message that contains a word from the sensitive word list will be marked as spam. Using the sensitive word list allows easy blocking of words that are associated with potentially offensive messages. Some of these words are case sensitive. As an administrator, you cannot edit this list. Filtering against the sensitive word list is applied to both the subject and message body of a message.|X-CustomSpam: Sensitive word in subject/body|
|**SPF record: hard fail**|When this setting is enabled, messages that fail an SPF check (meaning they were sent from an IP address not specified in the SPF record) will be marked as spam. Turning this setting on is recommended for organizations who are concerned about receiving phishing messages.  <br/> <br/> Test mode is not available for this option.|X-CustomSpam: SPF Record Fail|
|**Conditional Sender ID filtering: hard fail**|When this setting is enabled, any message that hard fails a conditional Sender ID check is marked as spam. This option combines an SPF check with a Sender ID check to help protect against message headers that contain forged senders.  <br/> <br/> Test mode is not available for this option.|X-CustomSpam: SPF From Record Fail|
|**NDR backscatter**|If you're using standalone Exchange Online Protection (EOP) to protect on-premises mailboxes, legitimate non-delivery reports (also known as NDRs or bounce messages) for undeliverable messages you sent are delivered to the original senders, and all _backscatter_ messages (useless NDRs for messages you didn't send) will be marked as spam. <br/><br/> If you don't enable this option, all NDRs still go through spam filtering. Most legitimate NDRs are delivered to the original message sender while some, but not all, backscatter messages will get marked as spam. However, backscatter messages that aren't marked as spam can't go to the original sender, because the sender is (by defnition) spoofed, so the backscatter messages go to the spoofed sender. <br/> <br/> If you're using the service to protect Exchange Online cloud-hosted mailboxes, you don't need to configure this setting.  <br/><br/> For both scenarios (on-premises and cloud-hosted mailboxes), it's also not necessary to enable this setting for outbound mail sent through the service, as NDRs that are legitimate bounce messages will be automatically detected and delivered to the original sender. >  Test mode is not available for this option. <br/><br/>TIP: For more information about backscatter messages and EOP, see [Backscatter messages and EOP](backscatter-messages-and-eop.md).|X-CustomSpam: Backscatter NDR|
|

## Bulk email options

The bulk email options that were once available in ASF have been replaced with the **Bulk email** spam filter verdict actions (*BulkSpamAction*) and **Select the threshold** for bulk email (*BulkThreshold*). For more information, see the following topics:

- [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md)

- [Bulk Complaint Level values](bulk-complaint-level-values.md)

- [Configure spam filter policies in EOP](configure-your-spam-filter-policies.md).

The X-header that was added to bulk messages by ASF was `X-CustomSpam: Bulk Mail`.
