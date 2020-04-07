---
title: "Anti-phishing policies"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.date:
ms.service: O365-seccomp
localization_priority: Normal
ms.assetid: 5a6f2d7f-d998-4f31-b4f5-f7cbf6f38578
ms.collection:
- M365-security-compliance
description: "Learn about"
---

# Anti-phishing policies in Office 365

Anti-phishing policies are available in Office 365 organizations with Exchange Online mailboxes, standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, and Office 365 Advanced Threat Protection (ATP) organizations.

ATP anti-phishing polices are only available in organizations that have ATP. For example:

- Office 365 Enterprise E5, Office 365 Education A5, etc.
- [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise/home)
- [Microsoft 365 Business](https://www.microsoft.com/microsoft-365/business)
- [ATP as an add-on](https://products.office.com/exchange/advance-threat-protection)

If you don't have any of these subscriptions, you have EOP anti-phishing policies. The high-level differences between EOP and ATP anti-phishing policies are described in the following table:

|||||
|---|:---:|:---:|:---:|
|**Feature**|**EOP anti-phishing policies**|**ATP anti-phishing policies**|
|Automatically-created default policy|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Create custom policies||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Impersonation settings||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Spoof settings|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|Advanced phishing thresholds||![Check mark](../../media/f3b4c351-17d9-42d9-8540-e48e01779b31.png)|
|

To configure anti-phishing policies, see the following topics:

- [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md)

- [Configure ATP anti-phishing policies in Office 365](configure-atp-anti-phishing-policies.md)

The rest of this topic describes the settings that are available in EOP and ATP anti-phishing policies.

## Spoof settings

The following spoof settings are available in EOP and ATP anti-phishing policies:

- **Anti-spoofing protection**: Enable or disable anti-spoofing protection. You use the **spoof intelligence policy** to allow or block specific spoofed internal and external senders, and to specify the action for spoofed messages from unidentified senders (deliver to Junk Email or quarantine). For more information, see [Learn more about spoof intelligence](learn-about-spoof-intelligence.md).

- **Unauthenticated Sender**: Enable or disable the Unauthenticated Sender feature. This feature that adds a question mark (?) in the sender's photo if the sender fails email authentication checks. For more information, see [Identify suspicious messages in Outlook.com and Outlook on the web](https://support.office.com/article/3d44102b-6ce3-4f7c-a359-b623bec82206).

## Impersonation settings in ATP anti-phishing policies

The following impersonation settings are only available in ATP anti-phishing policies:

- **Users to protect**: Prevents the specified internal or external users from being used in the From address in spoofed messages. For example, executives (internal) and board members (external). You can add up to 60 internal and external addresses. This list of protected users is different from the list of recipients that the policy applies to (the **Applied to** setting).

  For example, you specify Felipe Apodaca (felipea@contoso.com) as a protected user in a policy that applies to the group named Executives. Inbound messages sent to members of the Executives group where the where Felipe Apodaca is spoofed in the From address will be be acted on by the policy.

- **Domains to protect**: Prevent the specified domains from being used in the From address in spoofed messages from external senders. For example, all domains that you own ([accepted domains](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)) or specific domains (domain you own or partner domains). This list of protected domains is different from the list of domains that the policy applies to (the **Applied to** setting).

  For example, you specify tailspintoys.com as a protected domain in a policy that applies to the group named Executives. Inbound messages sent to members of the Executives group where the where tailspintoys.com is spoofed in the From address will be be acted on by the policy.

- **Actions for protected users or domains**: Specifies what to do with spoofed messages that contain a protected user or domain in the From address (you can specify different actions for protected users vs. protected domains):

  - **Don't apply any action**

  - **Redirect message to other email addresses**: Sends the message to the specified recipients instead of the intended recipients.

  - **Move message to Junk Email folder**: The message is delivered to the mailbox and moved to the Junk Email folder. In Exchange Online, the message is moved to the Junk Email folder if the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md).

    - **Quarantine the message**: Sends the message to quarantine instead of the intended recipients. For information about quarantine, see the following topics:

    - [Quarantine in Office 365](quarantine-email-messages.md)
    - [Manage quarantined messages and files as an admin in Office 365](manage-quarantined-messages-and-files.md)
    - [Find and release quarantined messages as a user in Office 365](find-and-release-quarantined-messages-as-a-user.md)

  - **Deliver the message and add other addresses to the Bcc line**: Deliver the message to the intended recipients and silently deliver the message to the specified recipients.

  - **Delete the message before it's delivered**: Silently deletes the entire message, including all attachments.

- **Safety tips**: Enables or disables the following impersonation safety tips that will appear in the delivered email messages:

  - **Impersonated users**: The From address contains a protected users.
  - **Impersonated domains**: The From address contains a protected domains.
  - **Unusual characters**: The From address contains unusual character sets (for example, mathematical symbols and text or a mix of uppercase and lowercase letters).

- **Mailbox intelligence**: Enables or disables artificial intelligence (AI) that determines user email patterns with their frequent contacts. This setting helps the AI distinguish between legitimate and spoofed email from those contacts. Mailbox intelligence is only available for Exchange Online mailboxes.

- **Mailbox intelligence based impersonation protection**: Enables or disables enhanced impersonation results based on each user's individual sender map. This intelligence allows Office 365 to customize user impersonation detection and better handle false positives. When user impersonation is detected, you can define the action to take on the message (the same actions that are available on protected user and domain impersonation):

  - **Don't apply any action**
  - **Redirect message to other email addresses**
  - **Move message to Junk Email folder**
  - **Quarantine the message**
  - **Deliver the message and add other addresses to the Bcc line**
  - **Delete the message before it's delivered**

- **Trusted senders and domains**: Exceptions to the policy. Messages that contain the specified email addresses and domains in the From address are never classified as impersonation-based attacks by the policy (in other words, the actions specified by the policy aren't applied to messages from those trusted senders or domains). The maximum limit for these lists is approximately 1000 entries.

- **Applied to**: Only available in custom anti-phishing policies (the default anti-phishing policy automatically applies to everyone). Identifies the internal recipients that the policy applies to. This value is required in custom policies.

    You can only use a condition or exception once, but you can specify multiple values for the condition or exception. Multiple values of the same condition or exception use OR logic (for example, _\<recipient1\>_ or _\<recipient2\>_). Different conditions or exceptions use AND logic (for example, _\<recipient1\>_ and _\<member of group 1\>_).

  - **Recipient is**: One or more mailboxes, mail users, or mail contacts in your organization.
  - **Recipient is a member of**: One or more groups in your organization.
  - **The recipient domain is**: One or more of the configured accepted domains in Office 365.

  - **Except when**: Exceptions for the rule. The settings and behavior are exactly like the conditions:

    - **Recipient is**
    - **Recipient is a member of**
    - **The recipient domain is**

## Advanced phishing thresholds in ATP anti-phishing policies

The following advanced phishing thresholds are only available in ATP anti-phishing policies to specify how to treat detected phishing messages:

- **1 - Standard**: This is the default value. The severity of the action taken on the message depends on the degree of confidence that the message is phishing (low, medium, high, or very high confidence). For example, messages that are identified as phishing with a very high degree of confidence have the most severe actions applied, while messages that are identified as phishing with a low degree of confidence have less severe actions applied.

- **2 - Aggressive**: Messages that are identified as phishing with a high degree of confidence are treated as if they were identified with a very high degree of confidence.

- **3 - More aggressive**: Messages that are identified as phishing with a medium or high degree of confidence are treated as if they were identified with a very high degree of confidence.

**4 - Most aggressive**: Messages that are identified as phishing with a low, medium, or high degree of confidence are treated as if they were identified with a very high degree of confidence.

The chance of false positives (good messages marked as bad) increases as you increase this setting. For information about the recommended standard and strict settings, see [Office ATP anti-phishing policy settings](recommended-settings-for-eop-and-office365-atp.md#office-atp-anti-phishing-policy-settings).
