---
title: "Anti-phishing policies"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.date:
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 5a6f2d7f-d998-4f31-b4f5-f7cbf6f38578
ms.collection:
- M365-security-compliance
ms.custom:
- seo-marvel-apr2020
description: "Admins can learn about the anti-phishing policies that are available in Exchange Online Protection (EOP) and Office 365 Advanced Threat Protection (Office 365 ATP)."
---

# Anti-phishing policies in Microsoft 365

Policies to configure anti-phishing protection settings are available in Microsoft 365 organizations with Exchange Online mailboxes, standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, and Office 365 Advanced Threat Protection (Office 365 ATP) organizations.

ATP anti-phishing policies are only available in organizations that have Office 365 ATP. For example:

- Microsoft 365 Enterprise E5, Microsoft 365 Education A5, etc.
- [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise/home)
- [Microsoft 365 Business](https://www.microsoft.com/microsoft-365/business)
- [Office 365 ATP as an add-on](https://products.office.com/exchange/advance-threat-protection)

All other organizations have anti-phishing policies.

The high-level differences between anti-phishing policies and ATP anti-phishing policies are described in the following table:

****

|Feature|Anti-phishing policies|ATP anti-phishing policies|
|---|:---:|:---:|
|Automatically created default policy|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Create custom policies|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Policy settings<sup>\*</sup>|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Impersonation settings||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Spoof settings|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Advanced phishing thresholds||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|

<sup>\*</sup> In the default policy, the policy name and description are read-only (the description is blank), and you can't specify who the policy applies to (the default policy applies to all recipients).

To configure anti-phishing policies, see the following articles:

- [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md)

- [Configure ATP anti-phishing policies in Microsoft 365](configure-atp-anti-phishing-policies.md)

The rest of this article describes the settings that are available in anti-phishing policies and ATP anti-phishing policies.

## Policy settings

The following policy settings are available in anti-phishing policies and ATP anti-phishing policies:

- **Name**: You can't rename the default anti-phishing policy, but you can name and rename custom policies that you create.

- **Description** You can't add a description to the default anti-phishing policy, but you can add and change the description for custom policies that you create.

- **Applied to**: Identifies internal recipients that the anti-phishing policy applies to. This value is required in custom policies, and not available in the default policy (the default policy applies to all recipients).

  You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

  - **Recipient is**: One or more mailboxes, mail users, or mail contacts in your organization.
  - **Recipient is a member of**: One or more groups in your organization.
  - **The recipient domain is**: One or more of the configured accepted domains in Microsoft 365.

  - **Except when**: Exceptions for the rule. The settings and behavior are exactly like the conditions:

    - **Recipient is**
    - **Recipient is a member of**
    - **The recipient domain is**

  > [!NOTE]
  > The **Applied to** setting is required in custom anti-phishing policies to identify them message **recipients** <u>that the policy applies to</u>. ATP anti-phishing policies also have [impersonation settings](#impersonation-settings-in-atp-anti-phishing-policies) where you can specify individual sender email addresses or sender domains <u>that will receive impersonation protection</u> as described later in this topic.

## Spoof settings

Spoofing is when the From address in an email message (the sender address that's show in email clients) doesn't match the domain of the email source. For more information about spoofing, see [Anti-spoofing protection in Microsoft 365](anti-spoofing-protection.md).

The following spoof settings are available in anti-phishing policies and ATP anti-phishing policies:

- **Anti-spoofing protection**: Enables or disables anti-spoofing protection. We recommend that you leave it enabled. You use the **spoof intelligence policy** to allow or block specific spoofed internal and external senders. For more information, see [Configure spoof intelligence in Microsoft 365](learn-about-spoof-intelligence.md).

  > [!NOTE]
  > Spoof settings are enabled by default in the default anti-phishing policy in EOP, the default ATP anti-phishing policy, and in new custom anti-phishing policies or ATP anti-phishing policies that you create. <br/><br/> You don't need to disable anti-spoofing protection if your MX record doesn't point to Microsoft 365; you enable Enhanced Filtering for Connectors instead. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](https://docs.microsoft.com/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

  For messages from blocked spoofed senders, you can also specify the action to take on the messages:

  - **Move message to Junk Email folder**: This is the default value. The message is delivered to the mailbox and moved to the Junk Email folder. In Exchange Online, the message is moved to the Junk Email folder if the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

  - **Quarantine the message**: Sends the message to quarantine instead of the intended recipients. For information about quarantine, see the following articles:

    - [Quarantine in Microsoft 365](quarantine-email-messages.md)
    - [Manage quarantined messages and files as an admin in Microsoft 365](manage-quarantined-messages-and-files.md)
    - [Find and release quarantined messages as a user in Microsoft 365](find-and-release-quarantined-messages-as-a-user.md)

- **Unauthenticated Sender**: See the description in the next section.

### Unauthenticated Sender

Unauthenticated sender identification is part of the [Spoof settings](#spoof-settings) that are available in anti-phishing policies and ATP anti-phishing policies as described in the previous section.

The **Unauthenticated Sender** setting enables or disables unidentified sender identification in Outlook. Specifically:

- A question mark (?) is added to the sender's photo if the message does not pass SPF or DKIM checks **and** the message does not pass DMARC or [composite authentication](email-validation-and-authentication.md#composite-authentication).

- The via tag (chris@contoso.com <u>via</u> michelle@fabrikam.com) is added if the domain in the From address (the message sender that's displayed in email clients) is different from the domain in the DKIM signature or the **MAIL FROM** address. For more information about these addresses, see [An overview of email message standards](how-office-365-validates-the-from-address.md#an-overview-of-email-message-standards)

To prevent these identifiers from being added to messages from specific senders, you have the following options:

- Allow the sender to spoof in the spoof intelligence policy. For instructions, see [Configure spoof intelligence in Microsoft 365](learn-about-spoof-intelligence.md).

- [Configure email authentication](email-validation-and-authentication.md#configure-email-authentication-for-domains-you-own) for the sender domain.
  
  - For the question mark in the sender's photo, SPF or DKIM are the most important.
  - For the via tag, confirm the domain in the DKIM signature or the **MAIL FROM** address matches (or is a subdomain of) the domain in the From address.

For more information, see [Identify suspicious messages in Outlook.com and Outlook on the web](https://support.microsoft.com/office/3d44102b-6ce3-4f7c-a359-b623bec82206)

## Exclusive settings in ATP anti-phishing policies

This section describes the policy settings that are only available in ATP anti-phishing policies.

> [!NOTE]
> By default, the ATP exclusive settings are not configured or turned on, even in the default policy. To take advantage of these features, you need to enable and configure them in the default ATP anti-phishing policy, or create and configure custom ATP anti-phishing policies.

### Impersonation settings in ATP anti-phishing policies

Impersonation is where the sender or the sender's email domain in a message looks similar to a real sender or domain:

- An example impersonation of the domain contoso.com is ćóntoso.com.
- An example impersonation of the user michelle@contoso.com is michele@contoso.com.

An impersonated domain might otherwise be considered legitimate (registered domain, configured email authentication records, etc.), except its intent is to deceive recipients.

The following impersonation settings are only available in ATP anti-phishing policies:

- **Users to protect**: Prevents the specified internal or external email addresses from being impersonated **as message senders**. For example, executives (internal senders) and board members (external senders). You can add up to 60 internal and external sender email addresses to protect from impersonation. This list of **senders** that are protected from impersonation is different from the list of **recipients** that the policy applies to.

  The default policy applies to messages sent to all recipients, while custom policies apply only to messages sent to the recipients you define in the **Applied to** setting as described in the [Policy settings](#policy-settings) section.

  By default, no sender email addresses are configured for impersonation protection in **Users to protect**. Therefore, by default, no sender email addresses are covered by impersonation protection, either in the default policy or in custom policies.

  When you add internal or external email addresses to the **Users to protect** list, messages from those **senders** are subject to impersonation protection checks. The message is checked for impersonation **if** the message is sent to a **recipient** that the policy applies to (all recipients for the default policy; **Applied to** recipients in custom policies). If impersonation is detected in the sender's email address, the impersonation protections actions for users are applied to the message (the action on the message, the impersonated users safety tip, etc.).

- **Domains to protect**: Prevents the specified domains from being impersonated **in the message sender's domain**. For example, all domains that you own ([accepted domains](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)) or specific domains (domains you own or partner domains). This list of **sender domains** that are protected from impersonation is different from the list of **recipients** that the policy applies to.

  The default policy applies to messages sent to all recipients, while custom policies apply only to messages sent to the recipients you define in the **Applied to** setting as described in the [Policy settings](#policy-settings) section.

  By default, no sender domains are configured for impersonation protection in **Domains to protect**. Therefore, by default, no sender domains are covered by impersonation protection, either in the default policy or in custom policies.

  When you add domains to the **Domains to protect** list, messages from **senders in those domains** are subject to impersonation protection checks. The message is checked for impersonation **if** the message is sent to a **recipient** that the policy applies to (all recipients for the default policy; **Applied to** recipients in custom policies). If impersonation is detected in the sender's domain, the impersonation protection actions for domains are applied to the message (the action on the message, the impersonated domains safety tip, etc.).

- **Actions for protected users or domains**: Choose the action to take on inbound messages that contain impersonation attempts against the protected users and protected domains in the policy. You can specify different actions for impersonation of protected users vs. impersonation of protected domains:

  - **Don't apply any action**

  - **Redirect message to other email addresses**: Sends the message to the specified recipients instead of the intended recipients.

  - **Move message to Junk Email folder**: The message is delivered to the mailbox and moved to the Junk Email folder. In Exchange Online, the message is moved to the Junk Email folder if the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

    - **Quarantine the message**: Sends the message to quarantine instead of the intended recipients. For information about quarantine, see the following articles:

    - [Quarantine in Microsoft 365](quarantine-email-messages.md)
    - [Manage quarantined messages and files as an admin in Microsoft 365](manage-quarantined-messages-and-files.md)
    - [Find and release quarantined messages as a user in Microsoft 365](find-and-release-quarantined-messages-as-a-user.md)

  - **Deliver the message and add other addresses to the Bcc line**: Deliver the message to the intended recipients and silently deliver the message to the specified recipients.

  - **Delete the message before it's delivered**: Silently deletes the entire message, including all attachments.

- **Safety tips**: Enables or disables the following impersonation safety tips that will appear messages that fail impersonation checks:

  - **Impersonated users**: The From address contains a protected user.
  - **Impersonated domains**: The From address contains a protected domain.
  - **Unusual characters**: The From address contains unusual character sets (for example, mathematical symbols and text or a mix of uppercase and lowercase letters) in a protected sender or domain.

- **Mailbox intelligence**: Enables or disables artificial intelligence (AI) that determines user email patterns with their frequent contacts. This setting helps the AI distinguish between legitimate and spoofed email from those contacts. Mailbox intelligence is only available for Exchange Online mailboxes.

- **Mailbox intelligence based impersonation protection**: Enables or disables enhanced impersonation results based on each user's individual sender map. This intelligence allows Microsoft 365 to customize user impersonation detection and better handle false positives. When user impersonation is detected, you can define a specific action to take on the message:

  - **Don't apply any action**
  - **Redirect message to other email addresses**
  - **Move message to Junk Email folder**
  - **Quarantine the message**
  - **Deliver the message and add other addresses to the Bcc line**
  - **Delete the message before it's delivered**

- **Trusted senders and domains**: Exceptions to the impersonation protection settings. Messages from the specified senders and sender domains are never classified as impersonation-based attacks by the policy. In other words, the action for protected senders, protected domains, or mailbox intelligence protection aren't applied to these trusted senders or sender domains. The maximum limit for these lists is approximately 1000 entries.

### Advanced phishing thresholds in ATP anti-phishing policies

The following advanced phishing thresholds are only available in ATP anti-phishing policies to control the sensitivity for applying machine learning models to messages for determining a phishing verdict:

- **1 - Standard**: This is the default value. The severity of the action that's taken on the message depends on the degree of confidence that the message is phishing (low, medium, high, or very high confidence). For example, messages that are identified as phishing with a very high degree of confidence have the most severe actions applied, while messages that are identified as phishing with a low degree of confidence have less severe actions applied.

- **2 - Aggressive**: Messages that are identified as phishing with a high degree of confidence are treated as if they were identified with a very high degree of confidence.

- **3 - More aggressive**: Messages that are identified as phishing with a medium or high degree of confidence are treated as if they were identified with a very high degree of confidence.

- **4 - Most aggressive**: Messages that are identified as phishing with a low, medium, or high degree of confidence are treated as if they were identified with a very high degree of confidence.

The chance of false positives (good messages marked as bad) increases as you increase this setting. For information about the recommended settings, see [Office ATP anti-phishing policy settings](recommended-settings-for-eop-and-office365-atp.md#office-atp-anti-phishing-policy-settings).
