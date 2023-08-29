---
title: ASF settings in EOP
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
ms.assetid: b286f853-b484-4af0-b01f-281fffd85e7a
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the Advanced Spam Filter (ASF) settings that are available in anti-spam policies in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/09/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Advanced Spam Filter (ASF) settings in EOP

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, Advanced Spam Filter (ASF) settings in anti-spam policies allow admins to mark messages as spam based on specific message properties. ASF specifically targets these properties because they're commonly found in spam. Depending on the property, ASF detections mark the message as **Spam** or **High confidence spam**.

> [!NOTE]
> Enabling one or more of the ASF settings is an aggressive approach to spam filtering. You can't report messages that are filtered by ASF as false positives to Microsoft. You can identify messages that were filtered by ASF by:
>
> - Periodic quarantine notifications from spam and high confidence spam filter verdicts.
> - The presence of filtered messages in quarantine.
> - The specific `X-CustomSpam:` X-header fields that are added to messages as described in this article.
>
> ASF adds `X-CustomSpam:` X-header fields to messages _after_ the messages have been processed by Exchange mail flow rules (also known as transport rules), so you can't use mail flow rules to identify and act on messages that were filtered by ASF. You can use [Inbox rules](https://support.microsoft.com/office/8400435c-f14e-4272-9004-1548bb1848f2) in mailboxes to affect the delivery of the message.

The following sections describe the ASF settings and options that are available in anti-spam policies in the Microsoft 365 Defender portal, and in Exchange Online PowerShell or standalone EOP PowerShell ([New-HostedContentFilterPolicy](/powershell/module/exchange/new-hostedcontentfilterpolicy) and [Set-HostedContentFilterPolicy](/powershell/module/exchange/set-hostedcontentfilterpolicy)). For more information, see [Configure anti-spam policies in EOP](anti-spam-policies-configure.md).

## Enable, disable, or test ASF settings

For each ASF setting, the following options are available in anti-spam policies:

- **On**: ASF adds the corresponding X-header field to the message, and marks the message as **Spam** (SCL 5 or 6 for [Increase spam score settings](#increase-spam-score-settings)) or **High confidence spam** (SCL 9 for [Mark as spam settings](#mark-as-spam-settings)).
- **Off**: The ASF setting is disabled. This is the default value.
- **Test**: ASF adds the corresponding X-header field to the message. What happens to the message is determined by the **Test mode** (_TestModeAction_) value:
  - **None**: Message delivery is unaffected by the ASF detection. The message is still subject to other types of filtering and rules in EOP and Defender for Office 365.
  - **Add default X-header text (_AddXHeader_)**: The X-header value `X-CustomSpam: This message was filtered by the custom spam filter option` is added to the message. You can use this value in Inbox rules (not mail flow rules) to affect the delivery of the message.
  - **Send Bcc message (_BccMessage_)**: The specified email addresses (the _TestModeBccToRecipients_ parameter value in PowerShell) are added to the Bcc field of the message, and the message is delivered to the additional Bcc recipients. In the Microsoft 365 Defender portal, you separate multiple email addresses by semicolons (;). In PowerShell, you separate multiple email addresses by commas.

  - Test mode isn't available for the following ASF settings:
    - **Conditional Sender ID filtering: hard fail** (_MarkAsSpamFromAddressAuthFail_)
    - **NDR backscatter**(_MarkAsSpamNdrBackscatter_)
    - **SPF record: hard fail** (_MarkAsSpamSpfRecordHardFail_)
  - The same test mode action is applied to _all_ ASF settings that are set to **Test**. You can't configure different test mode actions for different ASF settings.

## Increase spam score settings

The following **Increase spam score** ASF settings result in an increase in spam score and therefore a higher chance of getting marked as spam with a spam confidence level (SCL) of 5 or 6, which corresponds to a **Spam** filter verdict and the corresponding action in anti-spam policies. Not every message that matches the following ASF conditions is marked as spam.

|Anti-spam policy setting|Description|X-header added|
|---|---|---|
|**Image links to remote websites** (_IncreaseScoreWithImageLinks_)|Messages that contain `<Img>` HTML tag links to remote sites (for example, using http) are marked as spam.|`X-CustomSpam: Image links to remote sites`|
|**Numeric IP address in URL** (_IncreaseScoreWithNumericIps_)|Messages that contain numeric-based URLs (typically, IP addresses) are marked as spam.|`X-CustomSpam: Numeric IP in URL`|
|**URL redirect to other port** (_IncreaseScoreWithRedirectToOtherPort_)|Messages that contain hyperlinks that redirect to TCP ports other than 80 (HTTP), 8080 (alternate HTTP), or 443 (HTTPS) are marked as spam.|`X-CustomSpam: URL redirect to other port`|
|**Links to .biz or .info websites** (_IncreaseScoreWithBizOrInfoUrls_)|Messages that contain `.biz` or `.info` links in the body of the message are marked as spam.|`X-CustomSpam: URL to .biz or .info websites`|

## Mark as spam settings

The following **Mark as spam** ASF settings set the SCL of detected messages to 9, which corresponds to a **High confidence spam** filter verdict and the corresponding action in anti-spam policies.

|Anti-spam policy setting|Description|X-header added|
|---|---|---|
|**Empty messages** (_MarkAsSpamEmptyMessages_)|Messages with no subject, no content in the message body, and no attachments are marked as high confidence spam.|`X-CustomSpam: Empty Message`|
|**Embedded tags in HTML** (_MarkAsSpamEmbedTagsInHtml_)|Messages that contain `<embed>` HTML tags are marked as high confidence spam. <br><br> This tag allows the embedding of different kinds of documents in an HTML document (for example, sounds, videos, or pictures).|`X-CustomSpam: Embed tag in html`|
|**JavaScript or VBScript in HTML** (_MarkAsSpamJavaScriptInHtml_)|Messages that use JavaScript or Visual Basic Script Edition in HTML are marked as high confidence spam. <br><br> These scripting languages are used in email messages to cause specific actions to automatically occur.|`X-CustomSpam: Javascript or VBscript tags in HTML`|
|**Form tags in HTML** (MarkAsSpamFormTagsInHtml_)|Messages that contain `<form>` HTML tags are marked as high confidence spam. <br><br> This tag is used to create website forms. Email advertisements often include this tag to solicit information from the recipient.|`X-CustomSpam: Form tag in html`|
|**Frame or iframe tags in HTML** (MarkAsSpamFramesInHtml_)|Messages that contain `<frame>` or `<iframe>` HTML tags are marked as high confidence spam. <br><br> These tags are used in email messages to format the page for displaying text or graphics.|`X-CustomSpam: IFRAME or FRAME in HTML`|
|**Web bugs in HTML** (MarkAsSpamWebBugsInHtml_)|A _web bug_ (also known as a _web beacon_) is a graphic element (often as small as one pixel by one pixel) that's used in email messages to determine whether the recipient read the message. <br><br> Messages that contain web bugs are marked as high confidence spam. <br><br> Legitimate newsletters might use web bugs, although many consider this an invasion of privacy. |`X-CustomSpam: Web bug`|
|**Object tags in HTML** (MarkAsSpamObjectTagsInHtml_)|Messages that contain `<object>` HTML tags are marked as high confidence spam. <br><br> This tag allows plug-ins or applications to run in an HTML window.|`X-CustomSpam: Object tag in html`|
|**Sensitive words** (MarkAsSpamSensitiveWordList_)|Microsoft maintains a dynamic but non-editable list of words that are associated with potentially offensive messages. <br><br> Messages that contain words from the sensitive word list in the subject or message body are marked as high confidence spam.|`X-CustomSpam: Sensitive word in subject/body`|
|**SPF record: hard fail** (MarkAsSpamSpfRecordHardFail_)|Messages sent from an IP address that isn't specified in the SPF Sender Policy Framework (SPF) record in DNS for the source email domain are marked as high confidence spam. <br><br> Test mode isn't available for this setting.|`X-CustomSpam: SPF Record Fail`|

The following **Mark as spam** ASF settings set the SCL of detected messages to 6, which corresponds to a **Spam** filter verdict and the corresponding action in anti-spam policies.

|Anti-spam policy setting|Description|X-header added|
|---|---|---|
|**Sender ID filtering hard fail** (MarkAsSpamFromAddressAuthFail_)|Messages that hard fail a conditional Sender ID check are marked as spam. <br><br> This setting combines an SPF check with a Sender ID check to help protect against message headers that contain forged senders. <br><br> Test mode isn't available for this setting.|`X-CustomSpam: SPF From Record Fail`|
|**Backscatter** (MarkAsSpamNdrBackscatter_)|_Backscatter_ is useless non-delivery reports (also known as NDRs or bounce messages) caused by forged senders in email messages. For more information, see [Backscatter messages and EOP](anti-spam-backscatter-about.md). <br><br> You don't need to configure this setting in the following environments, because legitimate NDRs are delivered and backscatter is marked as spam: <ul><li>Microsoft 365 organizations with Exchange Online mailboxes.</li><li>On-premises email organizations where you route _outbound_ email through EOP.</li></ul> <br><br> In standalone EOP environments that protect inbound email to on-premises mailboxes, turning this setting on or off has the following result: <ul><li> **On**: Legitimate NDRs are delivered, and backscatter is marked as spam.</li><li>**Off**: Legitimate NDRs and backscatter go through normal spam filtering. Most legitimate NDRs are delivered to the original message sender. Some, but not all backscatter is marked as spam. By definition, backscatter can be delivered only to the spoofed sender, not to the original sender.</li></ul> <br><br> Test mode isn't available for this setting.|`X-CustomSpam: Backscatter NDR`|
