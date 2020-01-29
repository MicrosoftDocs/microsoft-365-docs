---
title: "Advanced spam filtering options"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
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

# Advanced spam filtering options

> [!NOTE]
> The Advanced Spam filter settings of the Anti-spam policy are currently being deprecated. Our recommended settings for these are to turn them **OFF**. The functions that were available in the Advanced Spam filter is being incorporated into other parts of the filtering stack.

Advanced spam filtering  options give administrators the ability to inspect various content attributes of a message. The presence of these attributes in a message either increases the spam score of the message (thereby increasing the potential for it to be identified as spam) or marks the message as spam. The ASF options target specific message properties, such as HTML tags and URL redirection, which are commonly found in spam messages.
  
Enabling ASF options is an aggressive approach to spam filtering, and any messages that are filtered by these options cannot be reported as false positives. These messages can be identified through periodic end-user spam notifications and salvaged from the spam quarantine. They can also be identified via the X-header text that's specific to each ASF option and which appear in the Internet header of messages where an ASF option has been matched. For more information, see [Anti-spam message headers](anti-spam-message-headers.md).
  
ASF options can be set on, off, or to test mode when you edit your content filter policies. For more information, see [Configure your spam filter policies](configure-your-spam-filter-policies.md). Test mode is not available for the **NDR backscatter**, **SPF record: hard fail**, **Conditional Sender ID filtering: hard fail**, and **Bulk mail** options. 
  
The following table describes each advanced spam filtering option.
  
||||
|:-----|:-----|:-----|
|**Advanced Spam Filtering Option** <br/> |**Description** <br/> |**X-header text** <br/> |
|**Increase Spam Score Section** <br/> |When enabled, these options set the spam confidence level (SCL) of a matched message to 5 or 6, which is considered suspected spam. The action performed on the message will match the **Spam** setting in your content filter policy.  <br/> ||
|Image links to remote sites  <br/> |When this setting is enabled, any message with HTML content that has an IMG tag that links remotely (for example, using http) will receive an increased spam score.  <br/> |X-CustomSpam: Image links to remote sites  <br/> |
|Numeric IP address in URL  <br/> |When this setting is enabled, any message that has numeric-based URLs (most often in the form of an IP address) will receive an increased spam score.  <br/> |X-CustomSpam: Numeric IP in URL  <br/> |
|URL redirect to other port  <br/> |When this setting is enabled, any message that contains a hyperlink that redirects the user to ports other than port 80 (regular HTTP protocol port), 8080 (HTTP alternate port), or 443 (HTTPS port) will receive an increased spam score.  <br/> |X-CustomSpam: URL redirect to other port  <br/> |
|URL to .biz or .info websites  <br/> |When this setting is enabled, any message that contains a .biz or .info extension in the body of a message will receive an increased spam score.  <br/> |X-CustomSpam: URL to .biz or .info websites  <br/> |
|**Mark as Spam Section** <br/> |When enabled, these options set the spam confidence level (SCL) of a matched message to 9, which is considered certain spam. The action performed on the message will match the **High confidence spam** setting in your content filter policy.  <br/> ||
|Empty messages  <br/> |When this setting is enabled, any message in which the body and subject line are both empty, and which also has no attachment, will be marked as spam.  <br/> |X-CustomSpam: Empty Message  <br/> |
|JavaScript or VBScript in HTML  <br/> |When this setting is enabled, any message that uses JavaScript or Visual Basic Script Edition in HTML will be marked as spam. Both of these scripting languages are used within an HTML message to automatically cause a specific action to occur. The browser will parse and process the script along with the rest of the document.  <br/> |X-CustomSpam: Javascript or VBscript tags in HTML  <br/> |
|Frame or IFrame tags in HTML  <br/> |When this setting is enabled, any message that contains the \<Frame\> or \<IFrame\> HTML tag will be marked as spam. These tags are used on websites or in HTML messages to format the page for displaying text or graphics.  <br/> |X-CustomSpam: IFRAME or FRAME in HTML  <br/> |
|Object tags in HTML  <br/> |When this setting is enabled, any message that contains the \<Object\> HTML tag will be marked as spam. This HTML tag allows plug-ins or applications to run in an HTML window.  <br/> |X-CustomSpam: Object tag in html  <br/> |
|Embed tags in HTML  <br/> |When this setting is enabled, any message that contains the \<Embed\> HTML tag will be marked as spam. This HTML tag allows different kinds of documents of varying data types to be embedded into an HTML document. Examples include sounds, movies, or pictures.  <br/> |X-CustomSpam: Embed tag in html  <br/> |
|Form tags in HTML  <br/> |When this setting is enabled, any message that contains the \<Form\> HTML tag will be marked as spam. This HTML tag is used to create website forms. Email advertisements often include this tag to solicit information from the recipient.  <br/> |X-CustomSpam: Form tag in html  <br/> |
|Web bugs in HTML  <br/> |When this setting is enabled, any message that contains a Web bug will be marked as spam. A Web bug is a graphic that is designed to determine whether a Web page or email message has been read. Web bugs are often invisible to the recipient because they are typically added to a message as a graphic that is as small as one pixel by one pixel. Legitimate newsletters may also use this technique, although many consider this an invasion of privacy.  <br/> |X-CustomSpam: Web bug  <br/> |
|Apply sensitive word list  <br/> |When this setting is enabled, any message that contains a word from the sensitive word list will be marked as spam. Using the sensitive word list allows easy blocking of words that are associated with potentially offensive messages. Some of these words are case sensitive. As an administrator, you cannot edit this list. Filtering against the sensitive word list is applied to both the subject and message body of a message.  <br/> |X-CustomSpam: Sensitive word in subject/body  <br/> |
|SPF record: hard fail|When this setting is enabled, messages that fail an SPF check (meaning they were sent from an IP address not specified in the SPF record) will be marked as spam. Turning this setting on is recommended for organizations who are concerned about receiving phishing messages.  <br/> <br/> Test mode is not available for this option.  <br/> |X-CustomSpam: SPF Record Fail  <br/> |
|Conditional Sender ID filtering: hard fail  <br/> |When this setting is enabled, any message that hard fails a conditional Sender ID check is marked as spam. This option combines an SPF check with a Sender ID check to help protect against message headers that contain forged senders.  <br/> <br/> Test mode is not available for this option.  <br/> |X-CustomSpam: SPF From Record Fail  <br/> |
|NDR backscatter  <br/> |If you're using EOP to protect on-premises mailboxes, when this setting is enabled, all legitimate non-delivery report (NDR) messages are delivered to the original sender, and all backscatter (illegitimate NDR) messages will be marked as spam. If you don't enable this setting, then all NDRs still go through spam filtering. In this case, most legitimate messages will get delivered to the original sender while some, but not all, backscatter messages will get marked as spam. However, backscatter messages that aren't marked as spam won't go to the original sender because it will go to the spoofed sender. <br/> <br/> If you're using the service to protect Exchange Online cloud-hosted mailboxes, you don't need to configure this setting.  <br/><br/> For both scenarios (on-premises and cloud-hosted mailboxes), it's also not necessary to enable this setting for outbound mail sent through the service, as NDRs that are legitimate bounce messages will be automatically detected and delivered to the original sender. >  Test mode is not available for this option.           <br/><br/>TIP: For more information about backscatter messages and EOP, see [Backscatter messages and EOP](backscatter-messages-and-eop.md).           |X-CustomSpam: Backscatter NDR  <br/> |
|Bulk mail|Advanced-spam filtering of bulk email has been retired and replaced with the bulk and email threshold settings. Check out [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md) and [Configure your spam filter policies](configure-your-spam-filter-policies.md) for more information and how to configure the settings.|X-CustomSpam: Bulk Mail | Bulk Mail  <br/> |
|
