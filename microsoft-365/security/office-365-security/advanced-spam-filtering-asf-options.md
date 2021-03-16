---
title: ASF settings in EOP
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: conceptual
localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: b286f853-b484-4af0-b01f-281fffd85e7a
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the Advanced Spam Filter (ASF) settings that are available in anti-spam policies in Exchange Online Protection (EOP).
ms.technology: mdo
ms.prod: m365-security
---

# Advanced Spam Filter (ASF) settings in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

> [!NOTE]
> ASF settings that are currently available in anti-spam policies are in the process of being deprecated. We recommend that you don't use these settings in anti-spam policies. The functionality of these ASF settings is being incorporated into other parts of the filtering stack. For more information, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

In all Microsoft 365 organizations, the Advanced Spam Filter (ASF) settings in anti-spam policies in EOP allow admins to mark messages as spam based on specific message properties. ASF specifically targets these properties because they're commonly found in spam. Depending on the property, ASF detections will either mark the message as **Spam** or **High confidence spam**.

> [!NOTE]
> Enabling one or more of the ASF settings is an aggressive approach to spam filtering. You can't report messages that are filtered by ASF as false positives. You can identify messages that were filtered by ASF by:
>
> - Periodic end-user spam quarantine notifications.
>
> - The presence of filtered messages in quarantine.
>
> - The specific `X-CustomSpam:` X-header fields that are added to messages as described in this article.

The following sections describe the ASF settings and options that are available in anti-spam policies in the Security & Compliance Center, and in Exchange Online PowerShell or standalone EOP PowerShell ([New-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/new-hostedcontentfilterpolicy) and [Set-HostedContentFilterPolicy](https://docs.microsoft.com/powershell/module/exchange/set-hostedcontentfilterpolicy)). For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

## Enable, disable, or test ASF settings

For each ASF setting, the following options are available in anti-spam policies:

- **On**: ASF adds the corresponding X-header field to the message, and either marks the message as **Spam** (SCL 5 or 6 for [Increase spam score settings](#increase-spam-score-settings)) or **High confidence spam** (SCL 9 for [Mark as spam settings](#mark-as-spam-settings)).

- **Off**: The ASF setting is disabled. This is the default value, and we recommend that you don't change it.

- **Test**: ASF adds the corresponding X-header field to the message. What happens to the message is determined by the **Test mode options** (*TestModeAction*) value:

  - **None**: Message delivery is unaffected by the ASF detection. The message is still subject to other types of filtering and rules in EOP.

  - **Add default X-header text (*AddXHeader*)**: The X-header value `X-CustomSpam: This message was filtered by the custom spam filter option` is added to the message. You can use this value in Inbox rules or mail flow rules (also known as transport rules) to affect the delivery of the message.

  - **Send Bcc message (*BccMessage*)**: The specified email addresses (the *TestModeBccToRecipients* parameter value in PowerShell) are added to the Bcc field of the message, and the message is delivered to the additional Bcc recipients. In the Security & Compliance Center, you separate multiple email addresses by semicolons (;). In PowerShell, you separate multiple email addresses by commas.

  **Notes**:

  - Test mode is not available for the following ASF settings:

    - **Conditional Sender ID filtering: hard fail** (*MarkAsSpamFromAddressAuthFail*)
    - **NDR backscatter**(*MarkAsSpamNdrBackscatter*)
    - **SPF record: hard fail** (*MarkAsSpamSpfRecordHardFail*)

  - The same test mode action is applied to *all* ASF settings that are set to **Test**. You can't configure different test mode actions for different ASF settings.

## Increase spam score settings

The following ASF settings set the spam confidence level (SCL) of detected messages to 5 or 6, which corresponds to the **Spam** filter verdict and the corresponding action in anti-spam policies.

****

|Anti-spam policy setting|Description|X-header added|
|---|---|---|
|**Image links to remote sites** <p> *IncreaseScoreWithImageLinks*|Messages that contain `<Img>` HTML tag links to remote sites (for example, using http) are marked as spam.|`X-CustomSpam: Image links to remote sites`|
|**URL redirect to other port** <p> *IncreaseScoreWithRedirectToOtherPort*|Message that contain hyperlinks that redirect to TCP ports other than 80 (HTTP), 8080 (alternate HTTP), or 443 (HTTPS) are marked as spam.|`X-CustomSpam: URL redirect to other port`|
|**Numeric IP address in URL** <p> *IncreaseScoreWithNumericIps*|Messages that contain numeric-based URLs (typically, IP addresses) are marked as spam.|`X-CustomSpam: Numeric IP in URL`|
|**URL to .biz or .info websites** <p> *IncreaseScoreWithBizOrInfoUrls*|Messages that contain `.biz` or `.info` links in the body of the message are marked as spam.|`X-CustomSpam: URL to .biz or .info websites`|
|

## Mark as spam settings

The following ASF settings set the SCL of detected messages to 9, which corresponds to the **High confidence spam** filter verdict and the corresponding action in anti-spam policies.

****

|Anti-spam policy setting|Description|X-header added|
|---|---|---|
|**Empty messages** <p> *MarkAsSpamEmptyMessages*|Messages with no subject, no content in the message body, and no attachments are marked as high confidence spam.|`X-CustomSpam: Empty Message`|
|**JavaScript or VBScript in HTML** <p> *MarkAsSpamJavaScriptInHtml*|Messages that use JavaScript or Visual Basic Script Edition in HTML are marked as high confidence spam. <p> These scripting languages are used in email messages to cause specific actions to automatically occur.|`X-CustomSpam: Javascript or VBscript tags in HTML`|
|**Frame or IFrame tags in HTML** <p> *MarkAsSpamFramesInHtml*|Messages that contain `<frame>` or `<iframe>` HTML tags are marked as high confidence spam. <p> These tags are used in email messages to format the page for displaying text or graphics.|`X-CustomSpam: IFRAME or FRAME in HTML`|
|**Object tags in HTML** <p> *MarkAsSpamObjectTagsInHtml*|Messages that contain `<object>` HTML tags are marked as high confidence spam. <p> This tag allows plug-ins or applications to run in an HTML window.|`X-CustomSpam: Object tag in html`|
|**Embed tags in HTML** <p> *MarkAsSpamEmbedTagsInHtml*|Message that contain `<embed>` HTML tags are marked as high confidence spam. <p> This tag allows the embedding of different kinds of documents in an HTML document (for example, sounds, videos, or pictures).|`X-CustomSpam: Embed tag in html`|
|**Form tags in HTML** <p> *MarkAsSpamFormTagsInHtml*|Messages that contain `<form>` HTML tags are marked as high confidence spam. <p> This tag is used to create website forms. Email advertisements often include this tag to solicit information from the recipient.|`X-CustomSpam: Form tag in html`|
|**Web bugs in HTML** <p> *MarkAsSpamWebBugsInHtml*|A *web bug* (also known as a *web beacon*) is a graphic element (often as small as one pixel by one pixel) that's used in email messages to determine whether the message was read by the recipient. <p> Messages that contain web bugs are marked as high confidence spam. <p> Legitimate newsletters might use web bugs, although many consider this an invasion of privacy. |`X-CustomSpam: Web bug`|
|**Apply sensitive word list** <p> *MarkAsSpamSensitiveWordList*|Microsoft maintains a dynamic but non-editable list of words that are associated with potentially offensive messages. <p> Messages that contain words from the sensitive word list in the subject or message body are marked as high confidence spam.|`X-CustomSpam: Sensitive word in subject/body`|
|**SPF record: hard fail** <p> *MarkAsSpamSpfRecordHardFail*|Messages sent from an IP address that isn't specified in the SPF Sender Policy Framework (SPF) record in DNS for the source email domain are marked as high confidence spam. <p> Test mode is not available for this setting.|`X-CustomSpam: SPF Record Fail`|
|**Conditional Sender ID filtering: hard fail** <p> *MarkAsSpamFromAddressAuthFail*|Messages that hard fail a conditional Sender ID check are marked as spam. <p> This setting combines an SPF check with a Sender ID check to help protect against message headers that contain forged senders. <p> Test mode is not available for this setting.|`X-CustomSpam: SPF From Record Fail`|
|**NDR backscatter** <p> *MarkAsSpamNdrBackscatter*|*Backscatter* is useless non-delivery reports (also known as NDRs or bounce messages) caused by forged senders in email messages. For more information, see [Backscatter messages and EOP](backscatter-messages-and-eop.md). <p> You don't need to configure this setting in the following environments, because legitimate NDRs are delivered, and backscatter is marked as spam: <ul><li>Microsoft 365 organizations with Exchange Online mailboxes.</li><li>On-premises email organizations where you route *outbound* email through EOP.</li></ul> <p> In standalone EOP environments that protect inbound email to on-premises mailboxes, turning this setting on or off has the following result: <ul><li> **On**: Legitimate NDRs are delivered, and backscatter is marked as spam.</li><li>**Off**: Legitimate NDRs and backscatter go through normal spam filtering. Most legitimate NDRs will be delivered to the original message sender. Some, but not all, backscatter are marked as high confidence spam. By definition, backscatter can only be delivered to the spoofed sender, not to the original sender.</li></ul> <p> Test mode is not available for this setting.|`X-CustomSpam: Backscatter NDR`|
|
