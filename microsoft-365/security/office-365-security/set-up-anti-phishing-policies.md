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
description: "Learn about the basic anti-phishing policy in Exchange Online Protection (EOP) and the advanced ATP anti-phishing policies in Office 365 Advanced Threat Protection."
---

# Anti-phishing policies in Office 365

Policies to configure anti-phishing protection settings are available in Office 365 organizations with Exchange Online mailboxes, standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, and Office 365 Advanced Threat Protection (ATP) organizations.

ATP anti-phishing policies are only available in organizations that have Office 365 ATP. For example:

> [!NOTE]
> ATP anti-phishing is only available in Advanced Threat Protection (ATP). ATP is included in subscriptions, such as [Microsoft 365 Enterprise](https://www.microsoft.com/microsoft-365/enterprise/home), [Microsoft 365 Business Premium](https://www.microsoft.com/microsoft-365/business), Office 365 Enterprise E5, Office 365 Education A5, etc. If your organization has a Microsoft 365 subscription that does not include Office 365 ATP, you can potentially purchase ATP as an add-on. For more information, see [Office 365 Advanced Threat Protection plans and pricing](https://products.office.com/exchange/advance-threat-protection) and the [Office 365 Advanced Threat Protection Service Description](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description). Make sure your organization is using the latest version of Microsoft 365 Apps for enterprise on Windows to take full advantage of ATP anti-phishing protection.

Spoofing is when the From address in an email message (the sender address that's show in email clients) doesn't match the domain of the email source. For more information about spoofing, see [Anti-spoofing protection in Office 365](anti-spoofing-protection.md).

The following spoof settings are available in anti-phishing policies and ATP anti-phishing policies:

- **Anti-spoofing protection**: Enables or disables anti-spoofing protection. We recommend that you leave it enabled. You use the **spoof intelligence policy** to allow or block specific spoofed internal and external senders. For more information, see [Configure spoof intelligence in Office 365](learn-about-spoof-intelligence.md).

  > [!NOTE]
  > Spoof settings are enabled by default in the default anti-phishing policy in EOP, the default ATP anti-phishing policy, and in new custom ATP anti-phishing policies that you create. <br/><br/> You don't need to disable anti-spoofing protection if your MX record doesn't point to Office 365; you enable Enhanced Filtering for Connectors instead. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](https://docs.microsoft.com/Exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).

  For messages from blocked spoofed senders, you can also specify the action to take on the messages:

  - **Move message to Junk Email folder**: This is the default value. The message is delivered to the mailbox and moved to the Junk Email folder. In Exchange Online, the message is moved to the Junk Email folder if the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md).

  - **Quarantine the message**: Sends the message to quarantine instead of the intended recipients. For information about quarantine, see the following topics:

    - [Quarantine in Office 365](quarantine-email-messages.md)
    - [Manage quarantined messages and files as an admin in Office 365](manage-quarantined-messages-and-files.md)
    - [Find and release quarantined messages as a user in Office 365](find-and-release-quarantined-messages-as-a-user.md)

  |Role|Where/how assigned|
  |---------|---------|
  |global administrator|The person who signs up to buy Microsoft 365 is a global admin by default. (See [About Microsoft 365 admin roles](https://docs.microsoft.com/office365/admin/add-users/about-admin-roles) to learn more.)|
  |Security Administrator|Azure Active Directory admin center ([https://aad.portal.azure.com](https://aad.portal.azure.com))|
  |Exchange Online Organization Management|Exchange admin center ([https://outlook.office365.com/ecp](https://outlook.office365.com/ecp)) <br>or <br>  PowerShell cmdlets (See [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell))|

  To learn more about roles and permissions, see [Permissions in the Security &amp; Compliance Center](permissions-in-the-security-and-compliance-center.md).

- You will probably set up multiple anti-phishing policies for your organization. Microsoft 365 enforces these policies in the order they're listed on the **Anti-phishing page** and **ATP anti-phishing** pages in the Security &amp; Compliance Center. Once you've reviewed your [policy options](#learn-about-atp-anti-phishing-policy-options), take some time to determine how many policies you'll need and the priority for each.

- **Name**: You can't rename the default anti-phishing policy, but you can name and rename custom policies that you create.

- Allow up to 30 minutes for your new or updated policy to spread to all Microsoft 365 datacenters.

- **Applied to**: Identifies internal recipients that the ATP anti-phishing policy applies to. This value is required in custom policies, and not available in the default policy (the default policy applies to all recipients).

Each organization in Microsoft 365 has a default anti-phishing policy that applies to all users. You can create multiple custom anti-phishing policies that you can scope to specific users, groups, or domains within your organization. The custom policies you create take precedence over the default policy. You add, edit, and delete anti-phishing policies in the Security &amp; Compliance Center.

  - **Recipient is**: One or more mailboxes, mail users, or mail contacts in your organization.
  - **Recipient is a member of**: One or more groups in your organization.
  - **The recipient domain is**: One or more of the configured accepted domains in Office 365.

2. In the Security &amp; Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy**.

    - **Recipient is**
    - **Recipient is a member of**
    - **The recipient domain is**

### Impersonation settings in ATP anti-phishing policies

Impersonation is where the sender or the sender's email domain in a message looks very similar to a real sender or domain:

- An example impersonation of the domain contoso.com is ćóntoso.com.

- An example impersonation of the user michelle@contoso.com is michele@contoso.com.

An impersonated domain might otherwise be considered legitimate (registered domain, configured email authentication records, etc.), except its intent is to deceive recipients.

The following impersonation settings are only available in ATP anti-phishing policies:

- **Users to protect**: Prevents the specified internal or external users from being impersonated. For example, executives (internal) and board members (external). You can add up to 60 internal and external addresses. This list of protected users is different from the list of recipients that the policy applies to in the **Applied to** setting.

|**This setting**|**Does this**|**Use when you want to:**|
|:-----|:-----|:-----|
|**Add users to protect**|Defines which email addresses will be protected by the policy. You can add up to 60 internal and external addresses that you want to protect from impersonation.|When you want to ensure that mail from outside your organization isn't an impersonation of one of the users on the list of users you are protecting. Examples of users you might want to protect are high-level executives, business owners, external board members, and so on.  <br/> This list of protected users is different from the list of people to which the policy applies, or rather, for which the policy is enforced. You define the applies to list in the **Applied to** section of the policy options.  <br/> For example, if you add `Mary Smith <marys@contoso.com>` as a user to protect, then apply the policy to the group "All Users". This would ensure that a mail that appeared to impersonate "Mary Smith" sent to a user in the "All Users" group would be acted on by the policy.|
|**Add domains to protect**|Allows you to choose which domains you want to protect from impersonation. You can specify that the policy includes all of your custom domains, a comma-separated list of domains, or a combination of the two. If you choose **Automatically include domains that I own**, and you later add a domain to your organization, this anti-phishing policy will be in place for the new domain.|Whenever you want to ensure that mail from outside your organization isn't an impersonation of one of the domains defined in your list of verified domains or that of a partner domain.|
|**Choose actions**|Choose the action to take when Microsoft 365 detects an impersonation attempt against the users and domains you added to the policy. You can choose different actions for users and domains in the same anti-phishing policy. These actions apply to any incoming email that has been identified by Microsoft 365 as impersonating a user account or domain that is under the protection of this anti-phishing policy.  <br/> **Quarantine message** Email will be sent to quarantine. When you choose this option, the email is not sent to the original recipient.  <br/> **Redirect message to another email address** Email will be sent to the email address you specify. You can specify multiple email addresses. When you choose this option, the email is not sent to the original recipient.  <br/> **Move message to the recipients' Junk email folder** Email will be sent to the recipients' Junk email folder. When you choose this option, the email is still sent to the original recipient but is not placed in the recipient's inbox.  <br/> **Deliver the message and add other addresses to the Bcc line** Email will be delivered to the original recipient. In addition, the users you identify will be added to the bcc line of the message before it's delivered. When you choose this option, the email is still sent to the original recipient's inbox.  <br/> **Don't apply any action** Email will be delivered to the original recipient's inbox. No other action will be taken on the email message.  <br/> **Turn on phishing protection tips** Enables anti-phishing safety tips in email.|When you want to take an action on messages that Microsoft 365 has determined to be an impersonation of a user or domain as defined in the policy.|
|**Enable mailbox intelligence**|Enables or disables mailbox intelligence for this policy. You can only enable mailbox intelligence for cloud-based accounts, that is, accounts whose mailbox is hosted entirely in Office 365.| This feature uses machine learning to determine a user's email patterns with their contacts. With this information, the AI can better distinguish between genuine and phishing emails.|
|**Enable mailbox intelligence based impersonation protection**|Enables or disables mailbox intelligence for impersonation protection for this policy. The important aspect here is the control of the impersonation for a given mailbox.|When you want to enhance impersonation results for users based on each user's individual sender map. This intelligence allows Microsoft 365 to customize user impersonation detection and better handle false positives. When user impersonation is detected, based on mailbox intelligence, you can define what action to take on the message.|
|**Add trusted senders and domains**|Defines email addresses and domains that will not be considered impersonation by this policy. Messages from the sender email addresses and domains you add as trusted senders and domains won't ever be classified as an impersonation-based attack. As a result, the actions and settings in this policy won't be applied to messages from these senders and domains.  <br/><br/>The maximum limit for these lists is approximately 1000 entries.|When users interact with domains or users that trigger impersonation but are considered to be safe. For example, if a partner has the same/similar display name or domain name as a user defined on the list.|
|**Applied to**|Defines the recipients whose incoming email messages will be subject to the rules of the policy. You can create conditions and exceptions for the recipients associated with the policy.  <br/> For example, you can create a global policy for your organization by applying the rule to all recipients in your domain.  <br/> You can also create exception rules, such as a rule that does not scan email messages for a specific group of recipients.|Each policy must be associated with a set of users, for example, users in a particular group or domain.|
|**Advanced phishing thresholds**|Defines the level of settings for how phishing messages are handled.  <br/> **Standard**: Email suspected to be phish is handled in the standard way.  <br/> **Aggressive**: The system handles emails suspected to be phish with a high degree of confidence, the same way as those suspected with a very high degree of confidence.  <br/> **More aggressive**: The system handles emails suspected to be phish with a medium or high degree of confidence, the same way as those suspected with a very high degree of confidence.  <br/> **Most aggressive**: The system handles emails suspected to be phish with a low, medium, or high degree of confidence, the same way as those suspected with a very high degree of confidence.|When you want to be more aggressive in the treatment of potentially phishing messages within Office 365. For example, messages with a very high probability of being phish will have the most aggressive actions taken on them while messages with a low probability have less aggressive actions taken on them. This setting also impacts other parts of the filtering system that combine signals. This doesn't necessarily mean different actions are implemented.  Essentially you set the probability of mail being phish, to determine the (same) designated action. The chance of moving good messages increases as the level of settings increases.|

- **Domains to protect**: Prevent the specified domains from being impersonated. For example, all domains that you own ([accepted domains](https://docs.microsoft.com/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains)) or specific domains (domains you own or partner domains). This list of protected domains is different from the list of domains that the policy applies to in the **Applied to** setting.

  For example, you specify tailspintoys.com as a protected domain in a policy that applies to members of the group named Executives. Inbound messages sent to members of the Executives group where the where tailspintoys.com is impersonated will be acted on by the policy (the action you configure for impersonated domains).

|**This setting**|**Does this**|**Use when you want to:**|
|:-----|:-----|:-----|
|**Applied to**|Defines the recipients whose incoming email messages will be subject to the rules of the policy. You can create conditions and exceptions for the recipients associated with the policy.  <br/> For example, you can create a global policy for your organization by applying the rule to all recipients in your domain.  <br/> You can also create exception rules, such as a rule that does not scan email messages for a specific group of recipients.|Each policy must be associated with a set of users, for example, users in a particular group or domain.|
|**Choose actions**|Choose the action to take when Microsoft 365 detects an intra-org or external-org spoofing attempt against your users. These actions apply to any incoming email that has been identified by Microsoft 365 as a spoofing attempt for users that are under the protection of this anti-phishing policy.  <br/> **Quarantine message** Email will be sent to quarantine. When you choose this option, the email is not sent to the original recipient.  <br/> **Move message to the recipients' Junk email folder** Email will be sent to the recipients' Junk email folder. When you choose this option, the email is still sent to the original recipient but is not placed in the recipient's inbox.  <br/> **Don't apply any action** Email will be delivered to the original recipient's inbox. No other action will be taken on the email message.|When you want to take an action on messages that Microsoft 365 has determined to be a spoofing attempt of internal or external domains as defined in the policy.|

  - **Don't apply any action**

  - **Redirect message to other email addresses**: Sends the message to the specified recipients instead of the intended recipients.

  - **Move message to Junk Email folder**: The message is delivered to the mailbox and moved to the Junk Email folder. In Exchange Online, the message is moved to the Junk Email folder if the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md).

    - **Quarantine the message**: Sends the message to quarantine instead of the intended recipients. For information about quarantine, see the following topics:

    - [Quarantine in Office 365](quarantine-email-messages.md)
    - [Manage quarantined messages and files as an admin in Office 365](manage-quarantined-messages-and-files.md)
    - [Find and release quarantined messages as a user in Office 365](find-and-release-quarantined-messages-as-a-user.md)

  - **Deliver the message and add other addresses to the Bcc line**: Deliver the message to the intended recipients and silently deliver the message to the specified recipients.

  - **Delete the message before it's delivered**: Silently deletes the entire message, including all attachments.

- **Safety tips**: Enables or disables the following impersonation safety tips that will appear messages that fail impersonation checks:

  - **Impersonated users**: The From address contains a protected user.
  - **Impersonated domains**: The From address contains a protected domain.
  - **Unusual characters**: The From address contains unusual character sets (for example, mathematical symbols and text or a mix of uppercase and lowercase letters) in a protected sender or domain.

- **Mailbox intelligence**: Enables or disables artificial intelligence (AI) that determines user email patterns with their frequent contacts. This setting helps the AI distinguish between legitimate and spoofed email from those contacts. Mailbox intelligence is only available for Exchange Online mailboxes.

- **Mailbox intelligence based impersonation protection**: Enables or disables enhanced impersonation results based on each user's individual sender map. This intelligence allows Office 365 to customize user impersonation detection and better handle false positives. When user impersonation is detected, you can define a specific action to take on the message:

  - **Don't apply any action**
  - **Redirect message to other email addresses**
  - **Move message to Junk Email folder**
  - **Quarantine the message**
  - **Deliver the message and add other addresses to the Bcc line**
  - **Delete the message before it's delivered**

- **Trusted senders and domains**: Exceptions to the impersonation protection settings. Messages from the specified senders and sender domains are never classified as impersonation-based attacks by the policy. In other words, the action for protected senders, protected domains, or mailbox intelligence protection aren't applied to these trusted senders or sender domains. The maximum limit for these lists is approximately 1000 entries.

### Advanced phishing thresholds in ATP anti-phishing policies

5. On the page that appears, choose **Delete policy**. Allow up to 30 minutes for your changes to spread to all Microsoft 365 datacenters.

- **1 - Standard**: This is the default value. The severity of the action that's taken on the message depends on the degree of confidence that the message is phishing (low, medium, high, or very high confidence). For example, messages that are identified as phishing with a very high degree of confidence have the most severe actions applied, while messages that are identified as phishing with a low degree of confidence have less severe actions applied.

- **2 - Aggressive**: Messages that are identified as phishing with a high degree of confidence are treated as if they were identified with a very high degree of confidence.

- **3 - More aggressive**: Messages that are identified as phishing with a medium or high degree of confidence are treated as if they were identified with a very high degree of confidence.

- **4 - Most aggressive**: Messages that are identified as phishing with a low, medium, or high degree of confidence are treated as if they were identified with a very high degree of confidence.

The chance of false positives (good messages marked as bad) increases as you increase this setting. For information about the recommended settings, see [Office ATP anti-phishing policy settings](recommended-settings-for-eop-and-office365-atp.md#office-atp-anti-phishing-policy-settings).
