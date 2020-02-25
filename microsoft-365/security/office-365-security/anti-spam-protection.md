---
title: "Anti-spam protection"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 6a601501-a6a8-4559-b2e7-56b59c96a586
ms.collection:
- M365-security-compliance
description: "Learn about the anti-spam settings and filters that will help you prevent spam in Exchange Online and Office 365. Getting too much spam in Office 365? You can customize your spam filters and anti-spam settings."
---

# Anti-spam protection in Office 365

If you're an Office 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, your email messages are automatically protected against spam (unwanted bulk email) by EOP.

The anti-spam settings in your organization are a balancing act between blocking unwanted messages and allowing legitimate messages. If you configure the anti-spam features too aggressively, you'll likely block too many legitimate messages (false positives). If you configure the anti-spam features too loosely, you likely allow too much spam into your organization, and could open yourself to other types of attack (for example, phishing).

> [!NOTE]
> This topic is intended for Office 365 admins. For end-user topics, see [Overview of the Junk Email Filter](https://support.office.com/article/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089) and [Learn about junk email and phishing](https://support.office.com/article/86c1d76f-4d5a-4967-9647-35665dc17c31).

## Anti-spam technologies in EOP

The anti-spam settings in EOP are made of the following technologies:

- **Connection filtering**: Identifies good and bad email source servers early in the inbound email transmission process via the IP Allow List, IP Block List, and the *safe list* (a dynamic but non-editable list of trusted senders maintained by Microsoft). Learn more at [Configure connection filtering in Office 365](configure-the-connection-filter-policy.md).

  > [!NOTE]
  > Spoof intelligence uses connection filtering to create allow and block lists of senders who are spoofing your email domain. For more information, see [Learn more about spoof intelligence in Office 365](learn-about-spoof-intelligence.md).

- **Spam filtering (content filtering)**: Office 365 checks for message characteristics consistent with spam by using spam filtering. You can change what actions to take on messages identified as spam, and choose whether to filter messages written in specific languages, or sent from specific countries or regions. You can also turn on advanced spam filtering options if you want to pursue an aggressive approach to spam filtering. Additionally, you can configure end-user spam notifications to inform users when messages intended for them were sent to the quarantine instead. (Sending messages to the quarantine is one of the configurable actions.) From these notifications, end users can release false positives and report them to Microsoft for analysis. For more information, see [Configure your spam filter policies](configure-your-spam-filter-policies.md). In order to help prevent spam in Office 365, use spam filtering, if you're concerned about too much spam in Office 365, use connection filtering to help prevent spam. To configure your anti-spam settings, see [Configure the anti-spam policies](configure-the-anti-spam-policies.md).

 **Outbound spam filtering**: Office 365 also checks to make sure that your users don't send spam. For instance, a user's computer may get infected with malware that causes it to send spam messages, so we build protection against that called *outbound filtering*. You can't turn off outbound filtering, but you can configure the settings described in [Configure the outbound spam policy](configure-the-outbound-spam-policy.md). If you're concerned about too much spam in Office 365, use outbound filtering to help prevent spam in Exchange Online.

 **Spoof intelligence**:

> [!NOTE]
> For EOP standalone customers: By default, the EOP spam filters send spam-detected messages to each recipients' Junk Email folder. However, in order to ensure that the **Move message to Junk Email folder** action will work with on-premises mailboxes, you must configure two Exchange mail flow rules (also known as transport rules) on your on-premises servers to detect spam headers added by EOP. For details, see [Ensure that spam is routed to each user's Junk Email folder](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md).

### Spam filter policies in the Office 365 Security & Compliance Center vs Exchange Online PowerShell or Exchange Online Protection PowerShell

The basic elements of a spam filter policy in EOP are:

- **The spam filter policy**: Specifies the recipient notification, sender and admin notification, ZAP, and the Common Attachment Types Filter settings.

- **The spam filter rule**: Specifies the priority and recipient filters (who the policy applies to) for a spam filter policy.

The difference between these two elements isn't obvious when you manage spam filter polices in the Security & Compliance Center:

- When you create an spam filter policy in the Security & Compliance Center, you're actually creating a spam filter rule and the associated spam filter policy at the same time using the same name for both.

- When you modify a spam filter policy in the Security & Compliance Center, settings related to the name, priority, enabled or disabled, and recipient filters modify the spam filter rule. Other settings (recipient notification, sender and admin notification, ZAP, and the Common Attachment Types Filter) modify the associated spam filter policy.

- When you remove an spam filter policy from the Security & Compliance Center, the spam filter rule and the associated spam filter policy are removed.

In Exchange Online PowerShell or Exchange Online Protection PowerShell, the difference between spam filter policies and spam filter rules is apparent. You manage spam filter policies by using the **\*-HostedContentFilterPolicy** cmdlets, and you manage spam filter rules by using the **\*-HostedContentFilterRule** cmdlets.

- In PowerShell, you create the spam filter policy first, then you create the spam filter rule that identifies the policy that the rule applies to.

- In PowerShell, you modify the settings in the spam filter policy and the spam filter rule separately.

- When you remove a spam filter policy from PowerShell, the corresponding spam filter rule isn't automatically removed, and vice versa.

### Default spam filter policy

Every organization has a built-in spam filter policy named Default that has these properties:

- The spam filter policy named Default is applied to all recipients in the organization, even though there's no spam filter rule (recipient filters) associated with the policy.

- The policy named Default has the custom priority value **Lowest** that you can't modify (the policy is always applied last). Any custom spam filter policies that you create always have a higher priority than the policy named Default.

- The policy named Default is the default policy (the **IsDefault** property has the value `True`), and you can't delete the default policy.

To increase the effectiveness of spam filtering, you can create custom spam filter policies with stricter settings that are applied to specific users or groups of users



## Extra information if you receive too much spam in Office 365

The following video provides an overview of configuring spam filtering in EOP.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/608be94c-d763-4c47-af94-99e7cb277713?autoplay=false]

For more details, see the [Configure your spam filter policies](configure-your-spam-filter-policies.md) topic.

## Beyond the basics: More ways to prevent spam in Office 365

- **Mail flow rules**: If you want to go beyond built-in spam filtering and create custom rules that are based on your business policies, _[mail flow rules](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)_ (also known as _transport rules_) are another filter that helps you prevent spam in Office 365. For example, you can use mail flow rules to set the spam confidence level (SCL) value for messages that match specific conditions, as described in [Use mail flow rules to set the spam confidence level (SCL) in messages](use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages.md).

- **Email authentication**: Techniques that use the Domain Name System (DNS) to add verifiable information to email messages about the sender of an email message are called email authentication. More advanced Office 365 admins can make use of these email authentication methods:

  - **Sender Policy Framework (SPF)**: SPF validates the origin of email messages by verifying the IP address of the sender against the alleged owner of the sending domain. For a quick introduction to SPF and to get it configured quickly, see [Set up SPF in Office 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md). For a more in-depth understanding of how Office 365 uses SPF, or for troubleshooting or non-standard deployments such as hybrid deployments, start with [How Office 365 uses Sender Policy Framework (SPF) to prevent spoofing](how-office-365-uses-spf-to-prevent-spoofing.md).

  - **DomainKeys Identified Mail (DKIM)**: DKIM lets you attach a digital signature to email messages in the message header of emails you send. Email systems that receive email from your domain use this digital signature to determine if incoming email that they receive is legitimate. For information about DKIM and Office 365, see [Use DKIM to validate outbound email sent from your custom domain in Office 365](use-dkim-to-validate-outbound-email.md).

  - **Domain-based Message Authentication, Reporting, and Conformance (DMARC)**: DMARC helps receiving mail systems determine what to do with messages that fail SPF or DKIM checks and provides another level of trust for your email partners. For information on setting up DMARC, see [Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md).

If you're concerned about spam, phishing, and spoofing in Office 365, use SPF, DKIM, and DMARC together to help prevent spam and unwanted spoofing.

- **End-user managed settings**: If you're looking for information about how end users can manage their own spam settings, check out [Overview of the Junk Email Filter](https://support.office.com/article/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089) (for Microsoft Outlook users) or [Learn about junk email and phishing](https://support.microsoft.com/article/86c1d76f-4d5a-4967-9647-35665dc17c31) (for Outlook on the web users). If you're using EOP to protect on-premises mailboxes, be sure to use directory synchronization to ensure that these settings are synced to the service. For more information about setting up directory synchronization, see "Use directory synchronization to manage mail users" in [Manage mail users in EOP](manage-mail-users-in-eop.md).

## For more information

[Blog: Why does spam and phishing get through Office 365?](https://blogs.msdn.microsoft.com/tzink/2014/09/12/why-does-spam-and-phishing-get-through-office-365-and-what-can-be-done-about-it/)

[Anti-spam protection FAQ](anti-spam-protection-faq.md)

[Prevent false positive email marked as spam with a safelist or other techniques](prevent-email-from-being-marked-as-spam.md)

[How to set up Office 365 spam filtering to help block junk messages](reduce-spam-email.md)

[What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md)

[Anti-spam message headers](anti-spam-message-headers.md)

[Backscatter messages and EOP](backscatter-messages-and-eop.md)

## More resources

[Get help from the Office 365 community forums](https://techcommunity.microsoft.com/t5/Office-365/ct-p/Office365)

[Admins: Sign in and create a service request](https://portal.office.com/AdminPortal/Home?ref=support)

[AContact support for business products - Admin Help](https://docs.microsoft.com/Office365/Admin/contact-support-for-business-products)
