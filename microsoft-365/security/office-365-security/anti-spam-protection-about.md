---
title: Anti-spam protection
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: overview
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 6a601501-a6a8-4559-b2e7-56b59c96a586
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the anti-spam settings and filters that help prevent spam in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 9/25/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Anti-spam protection in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

> [!NOTE]
> This topic is intended for admins. For end-user topics, see [Overview of the Junk Email Filter](https://support.microsoft.com/office/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089) and [Learn about junk email and phishing](https://support.microsoft.com/office/86c1d76f-4d5a-4967-9647-35665dc17c31).

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, email messages are automatically protected against spam (junk email) by EOP.

To help reduce junk email, EOP includes junk email protection that uses proprietary spam filtering (also known as _content filtering_) technologies to identify and separate junk email from legitimate email. EOP spam filtering learns from known spam and phishing threats and user feedback from our consumer platform, Outlook.com. Ongoing feedback from [admins](submissions-admin.md) and [users](submissions-outlook-report-messages.md) helps ensure that the EOP technologies are continually trained and improved.

EOP uses the following spam filtering verdicts to classify messages:

- **Spam**: The message received a [spam-confidence level (SCL)](anti-spam-spam-confidence-level-scl-about.md) of 5 or 6.
- **High confidence spam**: The message received an SCL of 7, 8, or 9.
- **Phishing**
- **High confidence phishing**: As part of [secure by default](secure-by-default.md), messages that are identified as high confidence phishing are always quarantined, and users can't release their own quarantined messages, regardless of any available settings that admins configure.
- **Bulk**: The message source met or exceeded the configured [bulk complaint level (BCL)](anti-spam-protection-about.md#bulk-complaint-threshold-bcl-in-anti-spam-policies) threshold.
  
In the default anti-spam policy and in custom anti-spam policies, you can configure the actions to take based on these verdicts. In the Standard and Strict [preset security policies](preset-security-policies.md), the actions are already configured and unmodifiable. [Quarantine policies](quarantine-policies.md#anatomy-of-a-quarantine-policy) determine what users are allowed to do to quarantined messages, and whether they receive notifications for their quarantined messages. For more information, see [Configure anti-spam policies in Microsoft 365](anti-spam-policies-configure.md).

  > [!TIP]
  > If you disagree with the spam filtering verdict, you can report the message to Microsoft as a false positive (good mail marked as bad) or a false negative (bad email allowed). For more information, see [How do I report a suspicious email or file to Microsoft?](submissions-report-messages-files-to-microsoft.md).
  >
  > You can't completely turn off spam filtering in Microsoft 365, but you can use Exchange mail flow rules (also known as transport rules) to bypass most spam filtering on incoming messages (for example, if you route email through a third-party protection service or device before delivery to Microsoft 365). For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).
  > - High confidence phishing messages are still filtered. Other features in EOP aren't affected (for example, messages are always scanned for malware).
  > - If you need to bypass spam filtering for SecOps mailboxes or phishing simulations, don't use mail flow rules. For more information, see [Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes](skip-filtering-phishing-simulations-sec-ops-mailboxes.md).
  >
  > In hybrid environments where EOP protects on-premises Exchange mailboxes, you need to configure two mail flow rules (also known as transport rules) in your on-premises Exchange organization to recognize the EOP spam headers that are added to messages. For details, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).

## Anti-spam policies

Anti-spam policies control the configurable settings for spam detections. The important settings in anti-spam policies are described in the following subsections.

### Recipient filters in anti-spam policies

In [custom anti-spam policies](anti-spam-policies-configure.md) and in the Standard and Strict [preset security policies](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users), you can specify recipient conditions and exceptions that determine who the policy applies to. You can use the following properties for conditions and exceptions:

- **Users**
- **Groups**
- **Domains**

You can only use a condition or exception once, but the condition or exception can contain multiple values. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

> [!IMPORTANT]
> Multiple different types of conditions or exceptions aren't additive; they're inclusive. The policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
>
> - Users: romain@contoso.com
> - Groups: Executives
>
> The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
>
> Likewise, if you use the same recipient filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

### Bulk complaint threshold (BCL) in anti-spam policies

EOP assigns a bulk complaint level (BCL) value to inbound messages from bulk senders. Messages from bulk senders are also known as _bulk mail_ or _gray mail_.

Bulk senders vary in their sending patterns, content creation, and recipient acquisition practices. Good bulk senders send desired messages with relevant content to their subscribers. These messages generate few complaints from recipients. Other bulk senders send unsolicited messages that closely resemble spam and generate many complaints from recipients. Microsoft uses both internal and third party sources to identify bulk mail senders and determine the appropriate BCL value for those senders.

The BCL value is added to the message in an X-header and is similar to the [spam confidence level (SCL)](anti-spam-spam-confidence-level-scl-about.md) that's used to identify messages as spam. A higher BCL value indicates a bulk message is more likely to exhibit undesirable spam-like behavior. For more information, see [What's the difference between junk email and bulk email?](anti-spam-spam-vs-bulk-about.md)

The BCL thresholds are described in the following table:

|BCL|Description|
|:---:|---|
|0|The message isn't from a bulk sender.|
|1, 2, 3|The message is from a bulk sender that generates few complaints.|
|4, 5, 6, 7|The message is from a bulk sender that generates a mixed number of complaints.|
|8, 9|The message is from a bulk sender that generates a high number of complaints.|

For the default BCL thresholds that are used in the default anti-spam policy and in the Standard and Strict preset security policies, see the **Bulk email threshold** entry in [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

> [!TIP]
> By default, the PowerShell only setting _MarkAsSpamBulkMail_ is `On` in anti-spam policies in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). This setting dramatically affects the results of a **Bulk compliant level (BCL) met or exceeded** filtering verdict:
> - **_MarkAsSpamBulkMail_ is On**: A BCL that's greater than or equal to the threshold value is converted to an SCL 6 that corresponds to a filtering verdict of **Spam**, and the action for the **Bulk compliant level (BCL) met or exceeded** filtering verdict is taken on the message.
> - **_MarkAsSpamBulkMail_ is Off**: The message is stamped with the BCL, but _no action_ is taken for a **Bulk compliant level (BCL) met or exceeded** filtering verdict. In effect, the BCL threshold and **Bulk compliant level (BCL) met or exceeded** filtering verdict action are irrelevant.

### Spam properties in anti-spam policies

The **Test mode** settings, the **Increase spam score** settings, and most of the **Mark as spam** settings are part of Advanced Spam Filtering (ASF) in anti-spam policies.

These settings aren't configured in the default anti-spam policy by default, or in the Standard or Strict [preset security policies](preset-security-policies.md).

For complete information about ASF settings, see [Advanced Spam Filter (ASF) settings in EOP](anti-spam-policies-asf-settings-about.md).

The other settings that are available in this category are:

- **Contains specific languages**: Messages in the specified languages are automatically identified as spam.
- **From these countries***: Messages from the specified countries are automatically identified as spam.

These settings aren't configured in the default anti-spam policy by default, or in the Standard or Strict [preset security policies](preset-security-policies.md).

### Actions in anti-spam policies

- In custom anti-spam policies and the default anti-spam policy, the available actions for spam filtering verdicts are described in the following table.
  - A check mark ( ✔ ) indicates the action is available (not all actions are available for all verdicts).
  - An asterisk ( <sup>\*</sup> ) after the check mark indicates the default action for the spam filtering verdict.

  |Action|Spam|High<br>confidence<br>spam|Phishing|High<br>confidence<br>phishing|Bulk|
  |---|:---:|:---:|:---:|:---:|:---:|
  |**Move message to Junk Email folder**: The message is delivered to the mailbox and moved to the Junk Email folder.¹|✔<sup>\*</sup>|✔<sup>\*</sup>|✔|²|✔<sup>\*</sup>|
  |**Add X-header**: Adds an X-header to the message header and delivers the message to the mailbox. <br/><br/> You enter the X-header field name (not the value) in the available **Add this X-header text** box. <br/><br/> For **Spam** and **High confidence spam** verdicts, the message is moved to the Junk Email folder.¹ ³|✔|✔|✔||✔|
  |**Prepend subject line with text**: Adds text to the beginning of the message's subject line. The message is delivered to the mailbox and moved to the Junk email folder.¹ ³ <br/><br/> You enter the text in the available **Prefix subject line with this text** box.|✔|✔|✔||✔|
  |**Redirect message to email address**: Sends the message to other recipients instead of the intended recipients. <br/><br/> You specify the recipients in the **Redirect to this email address** box.|✔|✔|✔|✔|✔|
  |**Delete message**: Silently deletes the entire message, including all attachments.|✔|✔|✔||✔|
  |**Quarantine message**: Sends the message to quarantine instead of the intended recipients. <br/><br/> You select or use the default _quarantine policy_ for the spam filtering verdict in the **Select quarantine policy** box that appears.⁴ Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy). <br/><br/> You specify how long the messages are held in quarantine in the available **Retain spam in quarantine for this many days** box.|✔|✔|✔<sup>\*</sup>|✔<sup>\*</sup> ⁵|✔|
  |**No action**|||||✔|

  ¹ EOP uses its own mail flow delivery agent to route messages to the Junk Email folder instead of using the junk email rule in the mailbox. The _Enabled_ parameter on the **Set-MailboxJunkEmailConfiguration** cmdlet in Exchange Online PowerShell has effect on mail flow in cloud mailboxes. For more information, see [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md).

  ² For **High confidence phishing**, the **Move message to Junk Email folder** action is effectively deprecated. Although you might be able to select the **Move message to Junk Email folder** action, high confidence phishing messages are always quarantined (equivalent to selecting **Quarantine message**).

  ³ You can this use value as a condition in mail flow rules to filter or route the message.

  ⁴ If the spam filtering verdict quarantines messages by default (**Quarantine message** is already selected when you get to the page), the default quarantine policy name is shown in the **Select quarantine policy** box. If you _change_ the action of a spam filtering verdict to **Quarantine message**, the **Select quarantine policy** box is blank by default. A blank value means the default quarantine policy for that verdict is used. When you later view or edit the anti-spam policy settings, the quarantine policy name is shown. For more information about the quarantine policies that are used by default for spam filter verdicts, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

  ⁵ Users can't release their own messages that were quarantined as high confidence phishing, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined high-confidence phishing messages.

- **Intra-Organizational messages to take action on**: Controls whether spam filtering and the corresponding verdict actions are applied to internal messages (messages sent between users within the organization). The action that's configured in the policy for the specified spam filter verdicts is taken on messages sent between internal users. The available values are:
  - **Default**: This is the default value. This value is the same as selecting **High confidence phishing messages**.
  
    > [!NOTE]
    > Currently, in U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD), the value **Default** is the same as selecting **None**.

  - **None**
  - **High confidence phishing messages**
  - **Phishing and high confidence phishing messages**
  - **All phishing and high confidence spam messages**
  - **All phishing and spam messages**

  For the default values that are used in the default anti-spam policy and in the Standard and Strict preset security policies, see the **Intra-Organizational messages to take action on** entry in [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

- **Retain spam in quarantine for this many days**: Specifies how long to keep the message in quarantine if you selected **Quarantine message** as the action for a spam filtering verdict. After the time period expires, the message is deleted, and isn't recoverable. A valid value is from 1 to 30 days.

  For the default values that are used in the default anti-spam policy and in the Standard and Strict preset security policies, see the **Retain spam in quarantine for this many days** entry in [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

  > [!TIP]
  > This setting also controls how long messages that were quarantined by **anti-phishing** policies are retained. For more information, see [Quarantine retention](quarantine-about.md#quarantine-retention).

#### Zero-hour auto purge (ZAP) in anti-spam policies

ZAP for phishing and ZAP for spam is able to act on messages _after_ they're delivered to Exchange Online mailboxes. By default, ZAP for phishing and ZAP for spam are turned on, and we recommend that you leave them on. For more information, see:

- [Zero-hour auto purge (ZAP) for phishing](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-phishing)
- [Zero-hour auto purge (ZAP) for high confidence phishing](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-high-confidence-phishing)
- [Zero-hour auto purge (ZAP) for spam](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-spam)

#### Quarantine policies in anti-spam policies

If the verdict in the anti-spam policy is configured to quarantines messages, quarantine policies define what users are able to do to those quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

### Allow and block list in anti-spam policies

Anti-spam policies contain the following lists to allow or block specific senders or domains:

- The allowed senders list
- The allowed domains list
- The blocked senders list
- The blocked domains list



### Priority of anti-spam policies

If they're [turned on](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users), the Standard and Strict preset security policies are applied before any custom anti-spam policies or the default policy (Strict is always first). If you create multiple anti-spam policies, you can specify the order that they're applied. No two custom policies can have the same priority, and policy processing stops after the first policy is applied (the highest priority policy for that recipient).

For more information about the order of precedence and how multiple policies are evaluated, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md) and [Order of precedence for preset security policies and other policies](preset-security-policies.md#order-of-precedence-for-preset-security-policies-and-other-policies).

## Default anti-spam policy

Every organization has a built-in anti-spam policy named Default that has the following properties:

- The policy is the default policy (the **IsDefault** property has the value `True`), and you can't delete the default policy.
- The policy is automatically applied to all recipients in the organization, and you can't turn it off.
- The policy is always applied last (the **Priority** value is **Lowest** and you can't change it).




## Anti-spam technologies in EOP

The anti-spam settings in EOP are made of the following technologies:

- **Connection filtering**: Identifies good and bad email source servers early in the inbound email connection via the IP Allow List, IP Block List, and the *safe list* (a dynamic but non-editable list of trusted senders maintained by Microsoft). You configure these settings in the connection filter policy. Learn more at [Configure connection filtering](connection-filter-policies-configure.md).

- **Spam filtering (content filtering)**: EOP uses the following spam filtering verdicts to classify messages:
  - **Spam**
  - **High confidence spam**
  - **Phishing**
  - **High confidence phishing**
  - **Bulk**, because the message source met or exceeded the [bulk complaint level (BCL)](#bulk-complaint-threshold-bcl-in-anti-spam-policies) threshold.
  
  You can configure the actions to take based on these verdicts. [Quarantine policies](quarantine-policies.md#anatomy-of-a-quarantine-policy) determine what users are allowed to do to quarantined messages, and whether they receive notifications for their quarantined messages. For more information, see [Configure anti-spam policies in Microsoft 365](anti-spam-policies-configure.md).

  > [!NOTE]
  > By default, messages that are marked as **Spam** are delivered and moved to the recipient's Junk Email folder. However, in hybrid environments where EOP protects on-premises Exchange mailboxes, you need to configure two mail flow rules (also known as transport rules) in your on-premises Exchange organization to recognize the EOP spam headers that are added to messages. For details, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).

- **Outbound spam filtering**: EOP also checks to make sure that your users don't send spam, either in outbound message content or by exceeding outbound message limits. For more information, see [Configure outbound spam filtering in Microsoft 365](outbound-spam-policies-configure.md).

- **Spoof intelligence**: For more information, see [Anti-spoofing protection in EOP](anti-phishing-protection-spoofing-about.md).

## Manage errors in spam filtering

It's possible that good messages can be identified as spam (also known as false positives), or that spam can be delivered to the Inbox (also known as false negatives). You can use the suggestions in the following sections to find out what happened and help prevent it from happening in the future.

Here are some best practices that apply to either scenario:

- Always report misclassified messages to Microsoft. For more information, see [Report messages and files to Microsoft](submissions-report-messages-files-to-microsoft.md).

- **Examine the anti-spam message headers**: These values tell you why a message was marked as spam, or why it skipped spam filtering. For more information, see [Anti-spam message headers](message-headers-eop-mdo.md).

- **Point your MX record to Microsoft 365**: In order for EOP to provide the best protection, we always recommend that you have email delivered to Microsoft 365 first. For instructions, see [Create DNS records at any DNS hosting provider for Microsoft 365](../../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md).

  If the MX record points to some other location (for example, a third-party anti-spam solution or appliance), it's difficult for EOP to provide accurate spam filtering. In this scenario, you need to configure Enhanced Filtering for connectors (also known as _skip listing_). For instructions, see [Enhanced Filtering for Connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

- **Use email authentication**: If you own an email domain, you can use DNS to help ensure that messages from senders in that domain are legitimate. To help prevent spam and unwanted spoofing in EOP, use all of the following email authentication methods:

  - **SPF**: Verifies the source IP address of the message against the owner of the sending domain. For a quick introduction to SPF and to get it configured quickly, see [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md). For a more in-depth understanding of how Microsoft 365 uses SPF, or for troubleshooting or nonstandard deployments such as hybrid deployments, start with [How Microsoft 365 uses Sender Policy Framework (SPF) to prevent spoofing](email-authentication-anti-spoofing.md).

  - **DKIM**: Adds a digital signature to the message header of messages sent from your domain. For information, see [Use DKIM to validate outbound email sent from your custom domain in Microsoft 365](email-authentication-dkim-configure.md).

  - **DMARC**: Helps destination email systems determine what to do with messages that fail SPF or DKIM checks, and provides another level of trust for your email partners. For more information, see [Use DMARC to validate email in Microsoft 365](email-authentication-dmarc-configure.md).

- **Verify your bulk email settings**: The bulk complaint level (BCL) threshold that you configure in anti-spam policies determines whether bulk email (also known as _gray mail_) is marked as spam. The PowerShell-only setting _MarkAsSpamBulkMail_ that's on by default also contributes to the results. For more information, see [Configure anti-spam policies in Microsoft 365](anti-spam-policies-configure.md).

### Prevent the delivery of spam to the Inbox

For steps to help prevent false negatives, see [How to handle malicious emails that are delivered to recipients (False Negatives), using Microsoft Defender for Office 365](step-by-step-guides/how-to-handle-false-negatives-in-microsoft-defender-for-office-365.md).

You can also use the following suggestions to help prevent false negatives:

- **Verify your organization settings**: Watch out for settings that allow messages to skip spam filtering (for example, if you add your own domain to the allowed domains list in anti-spam policies). For our recommended settings, see [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md) and [Create safe sender lists](create-safe-sender-lists-in-office-365.md).

- **Use the available blocked sender lists**: For information, see [Create blocked sender lists](create-block-sender-lists-in-office-365.md).

- **Unsubscribe from bulk email** If the message was something that the user signed up for (newsletters, product announcements, etc.) and contains an unsubscribe link from a reputable source, consider asking them to unsubscribe.

- **Standalone EOP: create mail flow rules in on-premises Exchange for EOP spam filtering verdicts**: In hybrid environments where EOP protects on-premises Exchange mailboxes, you need to configure mail flow rules (also known as transport rules) in on-premises Exchange. These mail flow rules translate the EOP spam filtering verdict so the junk email rule in the mailbox can move the message to the Junk Email folder. For details, see [Configure EOP to deliver spam to the Junk Email folder in hybrid environments](/exchange/standalone-eop/configure-eop-spam-protection-hybrid).

### Prevent good email from being identified as spam

For steps to help prevent false positives, see [How to handle Legitimate emails getting blocked (False Positive), using Microsoft Defender for Office 365](step-by-step-guides/how-to-handle-false-positives-in-microsoft-defender-for-office-365.md).

You can also use the following suggestions to help prevent false positives:

- **Verify the user's Outlook Junk Email Filter settings**:
  - **Verify the Outlook Junk Email Filter is disabled**: When the Outlook Junk Email Filter is set to the default value **No automatic filtering**, Outlook doesn't attempt to classify messages as spam.  When it's set to **Low** or **High**, the Outlook Junk Email Filter uses its own SmartScreen filter technology to identify and move spam to the Junk Email folder, so you could get false positives. Microsoft stopped producing spam definition updates for the SmartScreen filters in Exchange and Outlook in November 2016. The existing SmartScreen spam definitions were left in place, but their effectiveness is likely degraded.
  - **Verify the Outlook 'Safe Lists Only' setting is disabled**: When this setting is enabled, only messages from senders in the user's Safe Senders list or Safe Recipients list are delivered to the Inbox. Email from everyone else is automatically moved to the Junk Email folder.

  For more information about these settings, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

- **Use the available safe sender lists**: For information, see [Create safe sender lists](create-safe-sender-lists-in-office-365.md).

- **Verify users are within the sending and receiving limits** as described in [Receiving and sending limits](/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#receiving-and-sending-limits) in the Exchange Online service description.

- **Standalone EOP: use directory synchronization**: If you use standalone EOP to help protect your on-premises Exchange organization, you should sync user settings with the service by using directory synchronization. This configuration ensures that your users' Safe Senders lists are respected by EOP. For more information, see [Use directory synchronization to manage mail users](/exchange/standalone-eop/manage-mail-users-in-eop#synchronize-directories-with-azure-active-directory-connect-aad-connect).

## Anti-spam legislation

At Microsoft, we believe that the development of new technologies and self-regulation requires the support of effective government policy and legal frameworks. The worldwide spam proliferation has spurred numerous legislative bodies to regulate commercial email. Many countries/regions now have spam-fighting laws in place. The United States has both federal and state laws governing spam, and this complementary approach is helping to curtail spam while enabling legitimate e-commerce to prosper. The CAN-SPAM Act expands the tools available for curbing fraudulent and deceptive email messages.
