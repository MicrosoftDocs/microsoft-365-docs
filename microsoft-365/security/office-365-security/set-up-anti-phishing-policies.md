---
title: Anti-phishing policies
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.date: 

ms.localizationpriority: medium
ms.assetid: 5a6f2d7f-d998-4f31-b4f5-f7cbf6f38578
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the anti-phishing policies that are available in Exchange Online Protection (EOP) and Microsoft Defender for Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Anti-phishing policies in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Policies to configure anti-phishing protection settings are available in Microsoft 365 organizations with Exchange Online mailboxes, standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, and Microsoft Defender for Office 365 organizations.

Examples of Microsoft Defender for Office 365 organizations include:

- Microsoft 365 Enterprise E5, Microsoft 365 Education A5, etc.
- [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise/home)
- [Microsoft 365 Business](https://www.microsoft.com/microsoft-365/business)
- [Microsoft Defender for Office 365 as an add-on](https://products.office.com/exchange/advance-threat-protection)

The high-level differences between anti-phishing policies in EOP and anti-phishing policies in Defender for Office 365 are described in the following table:

|Feature|Anti-phishing policies in EOP|Anti-phishing policies in Defender for Office 365|
|---|:---:|:---:|
|Automatically created default policy|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|Create custom policies|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|Common policy settings<sup>\*</sup>|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|Spoof settings|![Check mark.](../../media/checkmark.png)|![Check mark.](../../media/checkmark.png)|
|First contact safety tip|![Check mark.](../../media/checkmark.png)|![Check mark](../../media/checkmark.png)|
|Impersonation settings||![Check mark](../../media/checkmark.png)|
|Advanced phishing thresholds||![Check mark](../../media/checkmark.png)|

<sup>\*</sup> In the default policy, the policy name, and description are read-only (the description is blank), and you can't specify who the policy applies to (the default policy applies to all recipients).

To configure anti-phishing policies, see the following articles:

- [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md)
- [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-mdo-anti-phishing-policies.md)

The rest of this article describes the settings that are available in anti-phishing policies in EOP and Defender for Office 365.

## Common policy settings

The following policy settings are available in anti-phishing policies in EOP and Defender for Office 365:

- **Name**: You can't rename the default anti-phishing policy. After you create a custom anti-phishing policy, you can't rename the policy in the Microsoft 365 Defender portal.

- **Description** You can't add a description to the default anti-phishing policy, but you can add and change the description for custom policies that you create.

- **Users, groups, and domains**: Identifies internal recipients that the anti-phishing policy applies to. This value is required in custom policies, and not available in the default policy (the default policy applies to all recipients).

  You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

  - **Users**: One or more mailboxes, mail users, or mail contacts in your organization.
  - **Groups**: One or more groups in your organization.
  - **Domains**: One or more of the configured [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in Microsoft 365.

  - **Exclude these users, groups, and domains**: Exceptions for the policy. The settings and behavior are exactly like the conditions:
    - **Users**
    - **Groups**
    - **Domains**

  > [!NOTE]
  > At least one selection in the **Users, groups, and domains** settings is required in custom anti-phishing policies to identify the message **recipients** <u>that the policy applies to</u>. Anti-phishing policies in Defender for Office 365 also have [impersonation settings](#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) where you can specify individual sender email addresses or sender domains <u>that will receive impersonation protection</u> as described later in this article.
  >
  > Multiple different types of conditions or exceptions are not additive; they're inclusive. The policy is applied _only_ to those recipients that match _all_ of the specified recipient filters. For example, you configure a recipient filter condition in the policy with the following values:
  >
  > - Users: romain@contoso.com
  > - Groups: Executives
  >
  > The policy is applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy is not applied to him.
  >
  > Likewise, if you use the same recipient filter as an exception to the policy, the policy is not applied to romain@contoso.com _only_ if he's also a member of the Executives group. If he's not a member of the group, then the policy still applies to him.

## Spoof settings

Spoofing is when the From address in an email message (the sender address that's shown in email clients) doesn't match the domain of the email source. For more information about spoofing, see [Anti-spoofing protection in Microsoft 365](anti-spoofing-protection.md).

The following spoof settings are available in anti-phishing policies in EOP and Defender for Office 365:

- **Enable spoof intelligence**: Turns spoof intelligence on or off. We recommend that you leave it turned on.

  When spoof intelligence is enabled, the **spoof intelligence insight** shows spoofed senders that were automatically detected and allowed or blocked by spoof intelligence. You can manually override the spoof intelligence verdict to allow or block the detected spoofed senders from within the insight. But when you do, the spoofed sender disappears from the spoof intelligence insight, and is now visible only on the **Spoofed senders** tab in the Tenant Allow/Block List. You can also manually create allow or block entries for spoofed senders in the Tenant Allow/Block List. For more information, see the following articles:

  - [Spoof intelligence insight in EOP](learn-about-spoof-intelligence.md)
  - [Manage the Tenant Allow/Block List in EOP](manage-tenant-allow-block-list.md)

  > [!NOTE]
  >
  > - Anti-spoofing protection is enabled by default in the default anti-phishing policy and in any new custom anti-phishing policies that you create.
  > - You don't need to disable anti-spoofing protection if your MX record doesn't point to Microsoft 365; you enable Enhanced Filtering for Connectors instead. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).
  > - Disabling anti-spoofing protection only disables _implicit_ spoofing protection from [composite authentication](email-validation-and-authentication.md#composite-authentication) checks. If the sender fails _explicit_ [DMARC](use-dmarc-to-validate-email.md) checks where the policy is set to quarantine or reject, the message is still quarantined or rejected.

- **Unauthenticated sender indicators**: Available in the **Safety tips & indicators** section only when spoof intelligence is turned on. See the details in the next section.
- **Actions**: For messages from blocked spoofed senders (automatically blocked by spoof intelligence or manually blocked in the Tenant Allow/Block list), you can also specify the action to take on the messages:
  - **Move messages to the recipients' Junk Email folders**: This is the default value. The message is delivered to the mailbox and moved to the Junk Email folder. For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).
  - **Quarantine the message**: Sends the message to quarantine instead of the intended recipients. For information about quarantine, see the following articles:
    - [Quarantine in Microsoft 365](quarantine-email-messages.md)
    - [Manage quarantined messages and files as an admin in Microsoft 365](manage-quarantined-messages-and-files.md)
    - [Find and release quarantined messages as a user in Microsoft 365](find-and-release-quarantined-messages-as-a-user.md)

    If you select **Quarantine the message**, you can also select the quarantine policy that applies to messages that were quarantined by spoof intelligence protection. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Quarantine policies](quarantine-policies.md).

### Unauthenticated sender indicators

Unauthenticated sender indicators are part of the [Spoof settings](#spoof-settings) that are available in the **Safety tips & indicators** section in anti-phishing policies in both EOP and Defender for Office 365. The following settings are available only when spoof intelligence is turned on:

- **Show (?) for unauthenticated senders for spoof**: Adds a question mark to the sender's photo in the From box if the message does not pass SPF or DKIM checks **and** the message does not pass DMARC or [composite authentication](email-validation-and-authentication.md#composite-authentication). When this setting is turned off, the question mark isn't added to the sender's photo.

- **Show "via" tag**: Adds the via tag (chris@contoso.com <u>via</u> fabrikam.com) in the From box if the domain in the From address (the message sender that's displayed in email clients) is different from the domain in the DKIM signature or the **MAIL FROM** address. For more information about these addresses, see [An overview of email message standards](how-office-365-validates-the-from-address.md#an-overview-of-email-message-standards).

To prevent the question mark or via tag from being added to messages from specific senders, you have the following options:

- Allow the spoofed sender in the [spoof intelligence insight](learn-about-spoof-intelligence.md) or manually in the [Tenant Allow/Block List](manage-tenant-allow-block-list.md). Allowing the spoofed sender will prevent the via tag from appearing in messages from the sender, even if the **Show "via" tag** setting is turned on in the policy.
- [Configure email authentication](email-validation-and-authentication.md#configure-email-authentication-for-domains-you-own) for the sender domain.
  - For the question mark in the sender's photo, SPF or DKIM are the most important.
  - For the via tag, confirm the domain in the DKIM signature or the **MAIL FROM** address matches (or is a subdomain of) the domain in the From address.

For more information, see [Identify suspicious messages in Outlook.com and Outlook on the web](https://support.microsoft.com/office/3d44102b-6ce3-4f7c-a359-b623bec82206)

## First contact safety tip

The **Show first contact safety tip** settings is available in EOP and Defender for Office 365 organizations, and has no dependency on spoof intelligence or impersonation protection settings. The safety tip is shown to recipients in the following scenarios:

- The first time they get a message from a sender
- They don't often get messages from the sender.

:::image type="content" source="../../media/safety-tip-first-contact-one-recipient.png" alt-text="The First contact safety tip for messages with one recipient" lightbox="../../media/safety-tip-first-contact-one-recipient.png":::

:::image type="content" source="../../media/safety-tip-first-contact-multiple-recipients.png" alt-text="The First contact safety tip for messages with with multiple recipients" lightbox="../../media/safety-tip-first-contact-multiple-recipients.png":::

This capability adds an extra layer of security protection against potential impersonation attacks, so we recommend that you turn it on.

The first contact safety tip also replaces the need to create mail flow rules (also known as transport rules) that add the header named **X-MS-Exchange-EnableFirstContactSafetyTip** with the value **Enable** to messages (although this capability is still available).

> [!NOTE]
> If the message has multiple recipients, whether the tip is shown and to whom is based on a majority model. If the majority of recipients have never or don't often receive messages from the sender, then the affected recipients will receive the **Some people who received this message...** tip. If you're concerned that this behavior exposes the communication habits of one recipient to another, you should not enable the first contact safety tip and continue to use mail flow rules instead.

## Exclusive settings in anti-phishing policies in Microsoft Defender for Office 365

This section describes the policy settings that are only available in anti-phishing policies in Defender for Office 365.

> [!NOTE]
> The default anti-phishing policy in Defender for Office 365 provides [spoof protection](set-up-anti-phishing-policies.md#spoof-settings) and mailbox intelligence for all recipients. However, the other available [impersonation protection](#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365) features and [advanced settings](set-up-anti-phishing-policies.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365) are not configured or enabled in the default policy. To enable all protection features, modify the default anti-phishing policy or create additional anti-phishing policies.

### Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365

Impersonation is where the sender or the sender's email domain in a message looks similar to a real sender or domain:

- An example impersonation of the domain contoso.com is ćóntoso.com.
- User impersonation is the combination of the user's display name and email address. For example, Valeria Barrios (vbarrios@contoso.com) might be impersonated as Valeria Barrios, but with a completely different email address.

> [!NOTE]
> Impersonation protection looks for domains that are similar. For example, if your domain is contoso.com, we check for different top-level domains (.com, .biz, etc.) as impersonation attempts, but also domains that are even somewhat similar. For example, contosososo.com or contoabcdef.com might be seen as impersonation attempts of contoso.com.

An impersonated domain might otherwise be considered legitimate (registered domain, configured email authentication records, etc.), except its intent is to deceive recipients.

The following impersonation settings are only available in anti-phishing policies in Defender for Office 365:

- **Enable users to protect**: Prevents the specified internal or external email addresses from being impersonated **as message senders**. For example, you receive an email message from the Vice President of your company asking you to send her some internal company information. Would you do it? Many people would send the reply without thinking.

  You can use protected users to add internal and external sender email addresses to protect from impersonation. This list of **senders** that are protected from user impersonation is different from the list of **recipients** that the policy applies to (all recipients for the default policy; specific recipients as configured in the **Users, groups, and domains** setting in the [Common policy settings](#common-policy-settings) section).

  > [!NOTE]
  >
  > - In each anti-phishing policy, you can specify a maximum of 350 protected users (sender email addresses). You can't specify the same protected user in multiple policies. So, regardless of how many policies apply to a recipient, the maximum number of protected users (sender email addresses) for each individual recipient is 350. For more information about policy priority and how policy processing stops after the first policy is applied, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).
  > - User impersonation protection does not work if the sender and recipient have previously communicated via email. If the sender and recipient have never communicated via email, the message will be identified as an impersonation attempt.

  By default, no sender email addresses are configured for impersonation protection in **Users to protect**. Therefore, by default, no sender email addresses are covered by impersonation protection, either in the default policy or in custom policies.

  When you add internal or external email addresses to the **Users to protect** list, messages from those **senders** are subject to impersonation protection checks. The message is checked for impersonation **if** the message is sent to a **recipient** that the policy applies to (all recipients for the default policy; **Users, groups, and domains** recipients in custom policies). If impersonation is detected in the sender's email address, the impersonation protections actions for users are applied to the message (what to do with the message, whether to show impersonated users safety tips, etc.).

- **Enable domains to protect**: Prevents the specified domains from being impersonated **in the message sender's domain**. For example, all domains that you own ([accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)) or specific custom domains (domains you own or partner domains). This list of **sender domains** that are protected from impersonation is different from the list of **recipients** that the policy applies to (all recipients for the default policy; specific recipients as configured in the **Users, groups, and domains** setting in the [Common policy settings](#common-policy-settings) section).

  > [!NOTE]
  > You can specify a maximum of 50 custom domains in each anti-phishing policy.

  By default, no sender domains are configured for impersonation protection in **Enable domains to protect**. Therefore, by default, no sender domains are covered by impersonation protection, either in the default policy or in custom policies.

  When you add domains to the **Enable domains to protect** list, messages from **senders in those domains** are subject to impersonation protection checks. The message is checked for impersonation **if** the message is sent to a **recipient** that the policy applies to (all recipients for the default policy; **Users, groups, and domains** recipients in custom policies). If impersonation is detected in the sender's domain, the impersonation protection actions for domains are applied to the message (what to do with the message, whether to show impersonated users safety tips, etc.).

- **Actions**: Choose the action to take on inbound messages that contain impersonation attempts against the protected users and protected domains in the policy. You can specify different actions for impersonation of protected users vs. impersonation of protected domains:
  - **Don't apply any action**
  - **Redirect message to other email addresses**: Sends the message to the specified recipients instead of the intended recipients.
  - **Move messages to the recipients' Junk Email folders**: The message is delivered to the mailbox and moved to the Junk Email folder. For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).
  - **Quarantine the message**: Sends the message to quarantine instead of the intended recipients. For information about quarantine, see the following articles:
    - [Quarantine in Microsoft 365](quarantine-email-messages.md)
    - [Manage quarantined messages and files as an admin in Microsoft 365](manage-quarantined-messages-and-files.md)
    - [Find and release quarantined messages as a user in Microsoft 365](find-and-release-quarantined-messages-as-a-user.md)

    If you select **Quarantine the message**, you can also select the quarantine policy that applies to messages that are quarantined by user impersonation or domain impersonation protection. Quarantine policies define what users are able to do to quarantined messages. For more information, see [Quarantine policies](quarantine-policies.md).

  - **Deliver the message and add other addresses to the Bcc line**: Deliver the message to the intended recipients and silently deliver the message to the specified recipients.
  - **Delete the message before it's delivered**: Silently deletes the entire message, including all attachments.

- **Impersonation safety tips**: Turn on or turn off the following impersonation safety tips that will appear messages that fail impersonation checks:
  - **Show tip for impersonated users**: The From address contains an **Enable users to protect** user. Available only if **Enable users to protect** is turned on and configured.
  - **Show tip for impersonated domains**: The From address contains an **Enable domains to protect** domain. Available only if **Enable domains to protect** is turned on and configured.
  - **Show tip for unusual characters**: The From address contains unusual character sets (for example, mathematical symbols and text or a mix of uppercase and lowercase letters) in an **Enable users to protect** sender or an **Enable domains to protect** sender domain.  Available only if **Enable users to protect** _or_ **Enable domains to protect** is turned on and configured.

- **Enable mailbox intelligence**: Enables or disables artificial intelligence (AI) that determines user email patterns with their frequent contacts. This setting helps the AI distinguish between messages from legitimate and impersonated senders.

  For example, Gabriela Laureano (glaureano@contoso.com) is the CEO of your company, so you add her as a protected sender in the **Enable users to protect** settings of the policy. But, some of the recipients that the policy applies to communicate regularly with a vendor who is also named Gabriela Laureano (glaureano@fabrikam.com). Because those recipients have a communication history with glaureano@fabrikam.com, mailbox intelligence will not identify messages from glaureano@fabrikam.com as an impersonation attempt of glaureano@contoso.com for those recipients.

  To use frequent contacts that were learned by mailbox intelligence (and lack thereof) to help protect users from impersonation attacks, you can turn on **Enable intelligence impersonation protection** after you turn on **Enable mailbox intelligence**.

- **Enable intelligence impersonation protection**: Turn on this setting to specify the action to take on messages for impersonation detections from mailbox intelligence results:
  - **Don't apply any action**: Note that this value has the same result as turning on **Mailbox intelligence** but turning off **Enable intelligence impersonation protection**.
  - **Redirect message to other email addresses**
  - **Move message to the recipients' Junk Email folders**
  - **Quarantine the message**: If you select this action, you can also select the quarantine policy that applies to messages that are quarantined by mailbox intelligence protection. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Quarantine policies](quarantine-policies.md).
  - **Deliver the message and add other addresses to the Bcc line**
  - **Delete the message before it's delivered**

- **Add trusted senders and domains**: Exceptions to the impersonation protection settings. Messages from the specified senders and sender domains are never classified as impersonation-based attacks by the policy. In other words, the action for protected senders, protected domains, or mailbox intelligence protection aren't applied to these trusted senders or sender domains. The maximum limit for these lists is 1024 entries.

  > [!NOTE]
  > If Microsoft 365 system messages from the following senders are identified as impersonation attempts, you can add the senders to the trusted senders list:
  >
  > - `⁠noreply@email.teams.microsoft.com`
  > - `noreply@emeaemail.teams.microsoft.com`
  > - `no-reply@sharepointonline.com`

### Advanced phishing thresholds in anti-phishing policies in Microsoft Defender for Office 365

The following advanced phishing thresholds are only available in anti-phishing policies in Defender for Office 365. These thresholds control the sensitivity for applying machine learning models to messages to determine a phishing verdict:

- **1 - Standard**: This is the default value. The severity of the action that's taken on the message depends on the degree of confidence that the message is phishing (low, medium, high, or very high confidence). For example, messages that are identified as phishing with a very high degree of confidence have the most severe actions applied, while messages that are identified as phishing with a low degree of confidence have less severe actions applied.
- **2 - Aggressive**: Messages that are identified as phishing with a high degree of confidence are treated as if they were identified with a very high degree of confidence.
- **3 - More aggressive**: Messages that are identified as phishing with a medium or high degree of confidence are treated as if they were identified with a very high degree of confidence.
- **4 - Most aggressive**: Messages that are identified as phishing with a low, medium, or high degree of confidence are treated as if they were identified with a very high degree of confidence.

The chance of false positives (good messages marked as bad) increases as you increase this setting. For information about the recommended settings, see [anti-phishing policy in Microsoft Defender for Office 365 settings](recommended-settings-for-eop-and-office365.md#anti-phishing-policy-settings-in-microsoft-defender-for-office-365).
