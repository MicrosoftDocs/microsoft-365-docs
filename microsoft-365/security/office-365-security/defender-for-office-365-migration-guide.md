---
title: Migrate from a third-party protection service to Microsoft Defender for Office 365
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.date: 
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom: 
description: Learn the right way to migrate from a third-party protection service or device to Microsoft Defender for Office 365 protection.
ms.technology: mdo
ms.prod: m365-security
---

# Migrate from a third-party protection service to Microsoft Defender for Office 365

The purpose of this article is to give you specific and actionable steps for migrating from a third-party protection service to Microsoft Defender for Office 365. This article assumes the following facts:

- You already have Microsoft 365 mailboxes, but you're currently using a third-party protection service or device for email protection. Mail from the internet flows through the protection service before delivery into your Microsoft 365 organization, and Microsoft 365 protection is as low as possible (it's never completely off; for example, malware protection is always enforced).

- You're beyond the investigation and consideration phase for protection by Defender for Office 365. If you need to evaluate Defender for Office 365 to decide whether it's right for your organization, we recommend that you consider [Evaluation Mode](office-365-evaluation.md).

- You've already purchased Defender for Office 365 licenses.

- You need to retire your existing third-party protection service, which means you'll ultimately need to point the MX records for your email domains to Microsoft 365. When you're done, mail from the internet will flow directly into Microsoft 365 and will be protected exclusively by Defender for Office 365.

Eliminating your existing protection service in favor of Defender for Office 365 by changing your MX records is a big step that you shouldn't take lightly, nor should you rush to make the change. The guidance in this article will help you transition your protection in an orderly manner with minimal disruption to your users.

## Why use the steps in this guide?

In the IT industry, surprises are generally bad. Simply flipping your MX records to point to Microsoft 365 without any prior testing will result in many surprises. For example:

- You or your predecessors have likely spent a lot of time and effort customizing your existing protection service for optimal mail delivery (in other words, blocking what needs to be blocked, and allowing what needs to be allowed). It's almost a guaranteed certainty that not every customization in your current protection service is required in Defender for Office 365. It's also very possible that Defender for Office 365 will introduce new issues (allows or blocks) that didn't happen or weren't required in your current protection service.
- Your help desk and security personnel need to know what to do in Defender for Office 365. For example, if a user complains about a missing message, does your help desk know where or how to look for it in Defender for Office 365?

In contrast, if you follow the steps in this article for your migration, you'll get the following tangible benefits:

- Minimal disruption to users.
- You can use data from Defender for Office 365 as you report to your management on the progress and success of the migration.
- Early involvement and instruction for help desk and security personnel.

The more you familiarize yourself with how Defender for Office 365 affects your organization, the better the transition will be for users, help desk personnel, security personnel, and management.

By following the steps in this article, we'll give you a plan for gradually "turning the dial" so you can monitor and test how Defender for Office 365 affects your users and their email, and so you can react quickly to any issues that you encounter.

## Inventory your existing configuration at your existing protection service

An inventory of the settings, rules, exceptions, etc. from your existing protection service is a good idea, because you won't have access to these settings after you cancel your subscription.

**But, it's very important that you do not automatically or arbitrarily recreate all of your existing customizations in Defender for Office 365.** At best, you might introduce settings that are no longer required, relevant, or functional. Or worse, some of your previous customization might actually create security issues in Defender for Office 365.

Your testing and observation of the native capabilities and behavior of Defender for Office 365 will ultimately determine the overrides that you need. You might find it helpful to categorize your existing customizations into the following categories:

- **Connection/content filtering**: You'll likely find that you don't need most of these customizations in Defender for Office 365.
- **Business/routing**: The majority of the customizations that you need to recreate will likely fall into this category. For example, you can recreate these customizations in Microsoft 365 as mail flow rules (also known as transport rules), connectors, and exceptions to spoof intelligence.

Instead of moving these rules and policies blindly and completely into Microsoft 365, we recommend a waterfall approach that involves piloting with increasing portions of the organization and tuning based on balancing security considerations with organizational business needs.

## Identify priority accounts

If the features are available to you, using **priority accounts** and **user tags** can help to identify your important Microsoft 365 users so they stand out in reports and (for priority accounts) get differentiated protection. For more information, see [User tags in Microsoft Defender for Office 365](user-tags.md) and [Manage and monitor priority accounts](microsoft-365/admin/setup/priority-accounts).

## Check your existing protection configuration in Microsoft 365

As we stated earlier, it's impossible to completely turn off all protection features for mail that's delivered to Microsoft 365, even when you use a third-party protection service. So, it's not unusual for a Microsoft 365 organization to have at least some email protection features configured. For example:

- During an earlier trial of the service, you weren't using the third-party protection service. You might have used and configured some protection features in Microsoft 365 that are no longer required or are ignored.
- You might have made accommodations in Microsoft 365 protection for false positives (good mail marked as bad) or false negatives (bad mail allowed) that made it through your existing protection service.

Review your existing protection features in Microsoft 365 and consider removing or simplifying settings that are no longer necessary. A rule or policy setting that was required years ago could put the organization at risk and create unintentional gaps in protection.

## Simplify complex routing

If you're using any sort of complex routing (for example [Centralized Mail Transport](exchange/transport-options)), you should consider simplifying and documenting the routing. External hops, especially after Microsoft 365 has already received the message, can complicate the configuration and troubleshooting.

## Maintain or create the SCL=-1 mail flow rule

Because your inbound email is routed through another protection service that sits in front of Microsoft 365, it's very likely that you already have a mail flow rule (also known as a transport rule) in Exchange Online that sets the spam confidence level (SCL) of all incoming mail to the value -1 (bypass spam filtering). Most third-party protection services encourage this SCL=-1 mail flow rule for Microsoft 365 customers who want to use their service.

If you're using some other mechanism to override the Microsoft filtering stack (for example, an IP allow list) we recommend that you switch to using an SCL=-1 mail flow rule **as long as** all inbound internet mail into Microsoft 365 comes from the third-party protection service (no mail flows directly from the internet into Microsoft 365).

The SCL=-1 mail flow rule is important during the migration for the following reasons:

- You can use [Threat Explorer](email-security-in-microsoft-defender.md) to see which features in the Microsoft stack *would have* acted on messages without affecting the results from your existing protection service.
- You can gradually adjust who is protected by the Microsoft 365 filtering stack by configuring exceptions to the SCL=-1 mail flow rule. The exceptions will be the members of the pilot distribution groups that we recommend later in this article.

  Before or during the cutover of your MX record to Microsoft 365, you'll disable this rule to turn on the full protection of the Microsoft 365 protection stack for all recipients in your organization.

For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](https://docs.microsoft.comexchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

**Note**:

If you plan to allow internet mail to flow through your existing protection service and directly into Microsoft 365 at the same time, you need restrict the SCL=-1 mail flow rule (mail that bypasses spam filtering) to mail that's gone through the protection service. You do not want unfiltered internet mail landing in user mailboxes.

To correctly identify mail that's already been scanned by the existing protection service, you can add a condition to the SCL=-1 mail flow rule. For example:

- **Cloud-based protection services**: You can use a header and header value that's unique to your organization. Messages that have the header are not scanned. Messages that don't have the header are scanned
- **On-premises protection services or devices**: You can use source IP addresses. Messages from the source IP addresses are not scanned. Messages that aren't from the source IP addresses are scanned.

Do not rely exclusively on MX records to control whether mail gets filtered. Senders can easily ignore the MX record and send email directly to Microsoft 365.

## Move any rules that modify message contents into Microsoft 365

You need to transfer any customizations or features that modify messages in any way from your existing protection service into Microsoft 365. For example, your existing protection service adds an **External** tag to the subject or message body of messages from external senders.

If you don't disable this functionality in your existing protection service, you can expect the following negative issues:

- DKIM will break.
- Spoof intelligence will not work properly.
- You'll probably get a high number of false positives.

To recreate this functionality in Microsoft 365, you have the following options:

- The [Outlook external sender call-out feature](https://techcommunity.microsoft.com/t5/exchange-team-blog/native-external-sender-callouts-on-email-in-outlook/ba-p/2250098) coupled with [first contact safety tips](set-up-anti-phishing-policies#first-contact-safety-tip.md).
- Mail flow rules (also known as transport rules). For more information, see [Organization-wide message disclaimers, signatures, footers, or headers in Exchange Online](exchange/security-and-compliance/mail-flow-rules/disclaimers-signatures-footers-or-headers)

## Create distribution groups for pilot users in Microsoft 365

You'll use these groups to define exceptions for the SCL=-1 mail flow rule, and to identify who the various protection policies apply to:

- **A Safe Attachments pilot group**: For example, **MDOPilot\_SafeAttachments**

- **A Safe Links pilot group**: For example, **MDOPilot\_SafeLinks**

- **A pilot group for Standard anti-spam and anti-phishing policy settings**: For example, **MDOPilot\_SpamPhish\_Standard**

- **A pilot group for Strict anti-spam and anti-phishing policy settings**: For example, **MDOPilot\_SpamPhish\_Strict**

For clarity, we'll use those group names as required throughout this article.

When you're ready to begin testing, add these groups as exceptions to the SCL=-1 mail flow rule. As you create policies for the various protection features in Defender for Office 365, you'll use these groups to define who the policy applies to.

**Note**: You'll use these groups in policies that you'll manually create for migration testing (similar to, but in some cases different than, the settings of Standard and Strict [preset security policies](preset-security-policies.md)). If you want to experiment with <span class="underline">significant</span> settings that are different (less strict or more strict) than our recommended values, you should consider creating and using additional and specific distribution groups for that scenario. If you create policies with custom settings, you can use the Configuration Analyzer to see how secure they are. For instructions, see [Configuration analyzer for protection policies in EOP and Microsoft Defender for Office 365](configuration-analyzer-for-security-policies.md).

For most organizations, starting with policies that closely mimic Standard presets and then moving to more aggressive settings later – after several weeks of tuning and getting feedback - is the best approach. Enabling customized impersonation and deciding between quarantine and junk experiences may require customization.

Just make sure that your customized policies are applied before the policies that contain our recommended settings for the migration. If a user is identified in multiple policies of the same type (for example, anti-phishing), only one policy of that type is applied to the user (based on the priority value of the policy). For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## Configure user submission

The ability for users to identify false positives or false negatives from Defender for Office 365 is an important part of the migration.

You can specify an Exchange Online mailbox to receive messages that users report as malicious or not malicious. For more instructions, see [User reported message settings](user-submission.md).

You should also confirm that all users in the pilot have a supported message reporting app installed for Outlook that's compatible with user submission. These apps include:

- [The Report Message add-in](enable-the-report-message-add-in.md)
- [The Report Phishing add-in](enable-the-report-phish-add-in.md)
- Supported third party reporting tools as described [here](user-submission#third-party-reporting-tools.md).

Don't underestimate the importance of this step. Data from user submissions will give you the feedback loop that you need to make sure that there is a good, consistent end-user experience before and after the migration. This feedback helps you to make informed policy decisions, as well as provide data-backed reports to your management that the cutover process went smoothly. More than one migration has resulted in emotional speculation based on a single negative user experience instead of data that's backed by the experience of the entire organization. Furthermore, if you have been running phishing simulations, you can use feedback from your users to inform you when they see something risky that might require investigation.

If you don't want users reporting messages directly to Microsoft, you can send their submissions to a monitored mailbox where your security team can manually analyze and submit the messages instead. However, this approach does not allow the service to automatically tune and learn.

## Allow active phishing simulations

If you have any active third-party phishing simulations, you need to prevent the messages, links, and attachments from being identified as phishing. For more information, see [Configure the delivery of third-party phishing simulations to users and](configure-advanced-delivery.md) unfiltered messages to SecOps mailboxes.

## Security Response and Operations integration

In organizations with security response teams, you have a lot of work to do prior to the MX record change. Incident response needs to be well equipped to handle the following tasks:

1. Learn the new tools and integrate them into existing flows. In particular, admin management of quarantined messages is important. For instructions, [see Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md).

2. Identify risks that may have been let into the organization.

3. Tune and customize alerts for organization processes.

4. Manage the incident queue and remediate potential risks.

If your security response team collects and analyzes unfiltered messages, you can configure a SecOps mailbox to receive these unfiltered messages. For instructions, see Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy.

## Define user experiences

One of the more fundamental decisions that you need to make is how users will handle less harmful messages, such as spam, and bulk mail (also known as *gray mail*). While quarantine is the natural option for malicious and definitely risky messages, these "in-between" types of email represent a choice.

The Microsoft default for these types of messages with the Standard protection settings is to generally use the **Deliver messages to Junk Email folder** option. This result is similar to consumer offerings, where users can check their Junk Email folder regularly for anything that they need to rescue. Or, if the user intentionally signed up for a newsletter or marketing mail, they can choose to unsubscribe or block the sender for their own mailbox.

However, many enterprise users are used to little mail in the Junk Email folder and checking a quarantine for their missing messages. Quarantine brings questions of quarantine notifications and their frequency, and also permissions to view and release messages.

The one clear recommendation is: if the Defender for Office 365 experience is different than what your users are used to, you need to notify them and provide basic training. Incorporate learnings from the pilot phase and make sure users are prepared when any change occurs.

## Additional considerations before you begin

Outbound and relay mail flow is out of the scope of this article. However, you should consider that you may need to do one or more of the following steps:

- Ensure that all or your domains that send email have been setup with the proper SPF records. For more information, see Set up SPF to help prevent spoofing.

- We strongly recommend that you setup DKIM signing in Microsoft 365. For more information, see Use DKIM to validate outbound email sent from your custom domain.

- If you're not routing mail directly from Microsoft 365, you will need to change that routing by removing or changing the outbound connector.

- Relaying mail that originates on-premises via Microsoft 365 can be a complex project in itself. A handful of servers or devices that are used mostly internally and not for mass mailing is generally simple. See this guide for details. More extensive environments will need to be more thoughtful. Marketing email and messages that could be seen as spam by recipients is not allowed.

- Defender for Office 365 does not have a feature for aggregating DMARC reports. Visit the Microsoft Intelligent Security Association (MISA) catalog to view third-party vendors offering DMARC reporting for Microsoft 365.

## Configure Enhanced Filtering for Connectors

The first thing to do is configure [Enhanced Filtering for Connectors](exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) (also known as *skip listing*) on the connector that's used for mail flow from your existing protection service to Microsoft 365. You can use the [Inbound messages report](exchange/monitoring/mail-flow-reports/mfr-inbound-messages-and-outbound-messages-reports) to help identify the connector.

Enhanced Filtering for Connectors is necessary to allow Defender for Office 365 to see where internet messages actually came from. Enhanced Filtering for Connectors greatly improves the accuracy of the Microsoft filtering stack (especially [spoof intelligence](anti-spoofing-protection.md)), as well as post-breach capabilities in Threat Explorer and Automated Investigation & Response (AIR).

To correctly enable Enhanced Filtering for Connectors, you need to add the **public** IP addresses of \*\***all\*\*** third-party services and/or on-premises email system hosts that route inbound mail to Microsoft 365.

To confirm that Enhanced Filtering for Connectors is working, verify that incoming messages contain one or both of the following headers:

- X-MS-Exchange-SkipListedInternetSender

- X-MS-Exchange-ExternalOriginalInternetSender

## Begin Onboarding Security Teams

For customers with security response teams, now is the time to begin integrating Microsoft Defender for Office 365 into your response processes, including ticketing systems. This is an entire topic unto itself, but it's sometimes overlooked. Getting the security response team involved early will ensure that your organization is ready to deal with threats when you switch your MX records.

If your organization has purchased Microsoft Defender for Office 365 Plan 2, they should begin familiarizing themselves with and using features such as Threat Explorer, Advanced Hunting, and Incidents. For relevant trainings, see https://aka.ms/mdoninja.

### SIEM/SOAR

For more information about integrating with your SIEM/SOAR, see the following articles:

- [Overview of Microsoft 365 Defender APIs](microsoft-365/security/defender/api-overview)

- [Streaming API](microsoft-365/security/defender/streaming-api)

- [Advanced Hunting API](microsoft-365/security/defender/api-advanced-hunting)

- [Incidents APIs](microsoft-365/security/defender/api-incident)

If your organization does not have a security response team or existing process flows, you can use this time to familiarize yourself with basic hunting and response features in Defender for Office 365. For more information, see [Threat investigation and response](office-365-ti.md).

### RBAC roles

Permissions in Defender for Office 365 is based on role-based access control (RBAC) and is explained in Permissions in the [Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md). These are the important points to keep in mind:

- Azure AD roles give permissions to **all** workloads in Microsoft 365. For example, if you add a user to the Security Administrator in the Azure portal, they have Security Administrator permissions everywhere.

- Email & collaboration roles in the Microsoft 365 Defender portal give permissions to the Microsoft 365 Defender Portal, the Microsoft 365 compliance center, and the older Security & Compliance Center. For example, if you add a user to Security Administrator in the Microsoft 365 Defender portal, they have Security Administrator access **only** in the Microsoft 365 Defender Portal, the Microsoft 365 compliance center, and the Security & Compliance Center.

- Many features in the Microsoft 365 Defender portal are based on Exchange Online PowerShell cmdlets and therefore require role group membership in the corresponding roles (technically, role groups) in Exchange Online (in particular, for access to the corresponding Exchange Online PowerShell cmdlets).

- There are Email & collaboration roles in the Microsoft 365 Defender portal that have no equivalent to Azure AD roles, and are important for security operations (for example the Preview role and the Search and Purge role).

Typically, only a subset of security personnel will need additional rights to download messages directly from user mailboxes. This requires an additional permission that Security Reader does not have by default.

## Begin a pilot with a group of users

## Create pilot protection policies

By creating production policies, even if they aren't applied to all users, you can test post-breach features like Threat Explorer and test integrating Defender for Office 365 into your security response team's processes.

[Safe Attachments](safe-attachments.md) is the easiest Defender for Office 365 feature to enable and test before you switch your MX record. Safe Attachments has the following benefits:

- Minimal configuration.

- Extremely low chance of false positives.

- Similar behavior to anti-malware protection, which is always on and not affected by the SCL=-1 mail flow rule.

For the recommended settings, see [Recommended Safe Attachments policy settings](recommended-settings-for-eop-and-office365#safe-attachments-policy-settings.md). Note that the Standard and Strict recommendations are the same. To create the policy, see [Set up Safe Attachments policies](set-up-safe-attachments-policies.md). Be sure to use the group **MDOPilot\_SafeAttachments** as the condition of the policy (who the policy applies to).

### Safe Links

**NOTE**: We do not support wrapping or rewriting already wrapped or rewritten links. If your current protection service already wraps or rewrites links in email messages, you need to turn off this feature for your pilot users.

Create a Safe Links policy for your pilot users. Chances for false positives in Safe Links are also pretty low, but you should consider testing the feature on a smaller number of pilot users than Safe Attachments.

**NOTE**: Safe Links protection for supported Office aps is a global setting that applies to all licensed users. You can turn it on or turn it off globally, not for specific users. For more information, see [Configure Safe Links protection for Office 365 apps in the Microsoft 365 Defender portal](configure-global-settings-for-safe-links#configure-safe-links-protection-for-office-365-apps-in-the-microsoft-365-defender-portal.md).

For the recommended settings, see [Recommended Safe Links policy settings](recommended-settings-for-eop-and-office365#safe-links-settings.md). Note that the Standard and Strict recommendations are the same. To create the policy, see [Set up Safe Links policies](set-up-safe-links-policies.md). Be sure to use the group **MDOPilot\_SafeLinks** as the condition of the policy (who the policy applies to).

### Anti-spam

Create two anti-spam policies for pilot users:

- A policy that uses the Standard settings. Use the group **MDOPilot\_SpamPhish\_Standard** as the condition of the policy (who the policy applies to).

- A policy that uses the Strict settings. Use the group **MDOPilot\_SpamPhish\_Strict** as the condition of the policy (who the policy applies to). This policy should have a higher priority (lower number) than the policy with the Standard settings.

For the recommended Standard and Strict settings, see [Recommended anti-spam policy settings](recommended-settings-for-eop-and-office365#eop-anti-spam-policy-settings.md). To create the policies, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).

### Anti-phishing

Create two anti-phishing policies for pilot users:

- A policy that uses the Standard settings, with the exception of impersonation detection actions as described below. Use the group **MDOPilot\_SpamPhish\_Standard** as the condition of the policy (who the policy applies to).

- A policy that uses the Strict settings, with the exception of impersonation detection actions as described below. Use the group **MDOPilot\_SpamPhish\_Strict** as the condition of the policy (who the policy applies to). This policy should have a higher priority (lower number) than the policy with the Standard settings.

For spoof detections, the recommended Standard action is **Move message to the recipients' Junk Email folders**, and the recommended Strict action is **Quarantine the message**. Use the spoof intelligence insight to observe the results. Overrides are explained in the next section. For more information, see [Spoof intelligence insight in EOP](learn-about-spoof-intelligence.md).

For impersonation detections, ignore the recommended Standard and Strict actions. Instead, use the value **Don't apply any action** for the following settings:

- **If message is detected as an impersonated user**

- **If message is detected as impersonated domain**

- **If mailbox intelligence detects an impersonated user**

Use the impersonation insight to observe the results. For more information, see [Impersonation insight in Defender for Office 365](impersonation-insight.md).

In the next step, you'll tune spoofing protection (adjust allows and blocks) and turn on each impersonation protection action to quarantine or move the messages to the Junk email folder (based on the Standard or Strict recommendations). You can observe the results and adjust their settings as necessary.

For more information, see the following topics:

- [Anti-spoofing protection in EOP](anti-spoofing-protection.md)

- [Impersonation settings in anti-phishing policies](set-up-anti-phishing-policies#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365.md)

- [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

## (Optional) Exempt the pilot users from filtering by your existing protection service

Although this step isn't required, you should consider configuring your pilot users to bypass filtering by your existing protection service. This action allows Defender for Office 365 to handle **<span class="underline">all</span>** filtering and protection duties for the pilot users. If you don't exempt your pilot users from your existing protection service, Defender for Office 365 effectively operates only on misses from the other service (filtering messages that have already been filtered).

**NOTE**: This step is explicitly required if your current solution is providing link wrapping functionality and you wish to pilot Safe Links functionality. Double wrapping is not supported.

## Tune spoof intelligence, impersonation protection, and mailbox intelligence settings

After you've had enough time to observe the results of spoofing protection and also the results of impersonation protection in **Don't apply any action** mode, you can individually turn on each impersonation protection action in the anti-phishing policies:

- User impersonation protection: **Quarantine the message** for both Standard and Strict.

- Domain impersonation protection: **Quarantine the message** for both Standard and Strict.

- Mailbox intelligence protection: **Move message to the recipients' Junk Email folders** for Standard; **Quarantine the message** for Strict.

The longer you monitor the impersonation protection results without acting on the messages, the more data you'll have to identify allows or blocks that might be required. Consider using a delay between turning on each protection that's significant enough to allow for observation and adjustments.

**NOTE**: Frequent and continuous monitoring and tuning of these protections is important. If you suspect a false positive, investigate the cause and use overrides only as necessary and only for the detection feature that requires it.

### Spoof intelligence

Check the [Spoof intelligence insight](learn-about-spoof-intelligence.md) to see what's being allowed or blocked as spoofing, and to determine if you need to override the system verdict for spoofing. Some sources of your business-critical email might have incorrectly configured email/domain authentication records in DNS (SPF, DKIM, and DMARC) and you might be using overrides in your existing solution to mask the issue. Spoof intelligence can rescue email from domains without proper email authentication records in DNS, but the feature sometimes needs assistance in distinguishing good spoofing from bad spoofing.

Focus on the following types of message sources:

- Message sources that are outside of the ranges defined in Enhanced Filtering for Connectors

- Message sources that have the highest number of messages.

- Message sources that have the highest impact on your organization.

Spoof intelligence will eventually tune itself after you configure user submissions, so there is no need for perfection.

### Mailbox intelligence

Although mailbox intelligence has been configured to take no action on messages that were [determined to be impersonation attempts](impersonation-insight.md), it has been on and learning the email sending and receiving patterns of the pilot users. If an external user is in contact with one your pilot users, messages from that external user won't be identified as impersonation attempts by mailbox intelligence (thus reducing false positives).

When you're ready, do the following steps to allow mailbox intelligence to act on messages that are detected as impersonation attempts:

- In the anti-phishing policy with the Standard protection settings, change the value of **If mailbox intelligence detects an impersonated user** to **Move message to recipients' Junk Email folders**.

- In the anti-phishing policy with the Strict protection settings, change the value of **If mailbox intelligence detects and impersonated user** from to **Quarantine the message**.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

After you've observed the results and made any adjustments, proceed to the next section to quarantine messages detected by user impersonation.

### User impersonation

In both of your anti-phishing policies based on Standard and Strict settings, change the value of **If message is detected as an impersonated user** to **Quarantine the message**.

Check the [impersonation insight](impersonation-insight.md) to see what's being blocked as user impersonation attempts.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

After you've observed the results and made any adjustments, proceed to the next section to quarantine messages detected by domain impersonation.

### Domain impersonation

In both of your anti-phishing policies based on Standard and Strict settings, change the value of **If message is detected as an impersonated domain** to **Quarantine the message**.

Check the [impersonation insight](impersonation-insight.md) to see what's being blocked as domain impersonation attempts.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

Observe the results and make any adjustments as necessary.

### Other Overrides

If you have an old configuration from an earlier time or decided to move configuration from your existing filtering service, then now is a good time to check assumptions.

- If Microsoft 365 generates alerts when high confidence phishing messages are allowed by organizational policies. To identify these messages, you have the following options:
  - The Override report.
  - Filter in Threat Explorer to identify the messages.
  - Filter in Advanced Hunting to identify the messages.

> Report any false positives to Microsoft as early as possible through admin submissions, use the [Tenant Allow/Block List](tenant-allow-block-list.md) feature to configure safe overrides for those false positives.

- It's also a good idea to examine unnecessary overrides. In other words, look at the verdicts that Microsoft would have provided on the messages. If Microsoft rendered the correct verdict, then the need for override is greatly diminished or eliminated.

## Use user submissions to measure and adjust

As your pilot users report false positives and false negatives, the messages will appear on the [Submissions page in the Microsoft 365 Defender portal](admin-submission.md). You can report the misidentified messages to Microsoft for analysis and use the information to adjust the settings and exceptions in your pilot polices as necessary.

Use the following features to monitor and iterate on the protection settings in Defender for Office 365:

- [Quarantine](manage-quarantined-messages-and-files.md)

- [Threat Explorer](email-security-in-microsoft-defender.md)

- [Email security reports](view-email-security-reports.md)

- [Defender for Office 365 reports](view-reports-for-mdo.md)

- [Mail flow insights](exchange/monitoring/mail-flow-insights/mail-flow-insights)

- [Mail flow reports](exchange/monitoring/mail-flow-reports/mail-flow-reports)

If your organization uses a third-party service for user reports, you can integrate that data into your feedback loop.

## (Optional) Add more users to your pilot & iterate

As you find and fix issues, you can add more users to the pilot groups (and correspondingly exempt those new pilot users from scanning by your existing protection service as appropriate). The more testing that you do now, the fewer user issues that you'll need to deal with later. This "waterfall" approach allows tuning against larger portions of the organization and gives the Security teams time to adjust to the new tools and processes.

## (Optional) Bulk email decisions

It is typical that most filtering systems allow users to customize the bulk email which they receive. These settings do not easily migrate, but you may want to consider working with VIPs and their staff to migrate configuration. Today, there are some bulk messages (for example, newsletters) that Microsoft 365 believes are safe to unsubscribe to. Message from these "safe" sources are currently not marked as bulk email (the bulk complaint level or BCL is 0 or 1) and therefore are not easily removed from user mailboxes without configuring blocks for those users. For most users, simply asking them to unsubscribe or use Outlook to block the sender will suffice. However, some VIPs and other users will not find this approach agreeable. A rule similar to the one documented can be helpful when VIP users do not wish to manage this themselves.

## Switch your MX records

When you switch the MX record for your domain, it can take up to 48 hours for the changes to propagate throughout the internet. We recommend lowering the TTL value of your DNS records to enable faster response and possible rollback (if required). You can revert to the original TTL value after the switchover is complete and verified.

You can migrate all of your domains at once. Or, you can migrate less frequently used domains first, and more active domainsthen migrate the rest later.

Note: Multiple MX records for a single domain will technically work, provided that you have followed all the guidance in this document. Specifically, you should make sure that policies are applied to all users, that any transport rule that bypasses Microsoft 365 verdicts is conditioned only on mail that passes through another filtering system. However, this configuration introduces behavior that makes troubleshooting much more difficult, and therefore we do not typically recommend it.

**IMPORTANT**: Before you switch your MX records, verify that the following settings are not enabled on the inbound connector from the protection service to Microsoft 365. Typically the connector will have one or more of the following set:

- **and require that the subject name on the certificate that the partner uses to authenticate with Office 365 matches this domain name** (*RestrictDomainsToCertificate*)

- **Reject email messages if they aren't sent from within this IP address range** (*RestrictDomainsToIPAddresses*)

If either of these settings is turned on, all mail delivery to your domains will fail after you switch the MX records. You need to disable these settings before you continue.

When you're ready, do the following steps:

1. Extend the pilot policies to the entire organization. The easiest way do this is to use [preset security](preset-security-policies.md) policies and divide your users between the Standard protection profile and the Strict protection profile (make sure everyone is covered). Preset security policies are applied before any custom polices that you've created or any default policies. You can turn off your individual pilot policies without deleting them. Alternately, you can simply remove the groups from the policy scope/rule and add all of the domains instead. Note that all of the conditions need to be met.

2. Turn off the SCL=-1 mail flow rule.

3. Verify that the previous changes have taken effect, and that Defender for Office 365 is now properly enabled for all users. At this point, all of the protection features of Defender for Office 365 are now allowed to act on mail for all recipients, but that mail has already been scanned by your existing protection service. You could pause at this stage for more large-scale data recording and tuning.

4. Switch the MX record for your domains that receive the least amount of email first. If you want to pause at any point here to evaluate, you can do so. However, remember that once you turn off the SCL=-1 mail flow rule, users might have two different experiences for checking on false positives. The sooner you can provide a single, consistent experience, the happier your users and help desk teams will be when they have to troubleshoot a missing message.

5. Monitor and watch for issues that are similar to what you experienced during the pilot, but on a larger scale. The [spoof intelligence insight](learn-about-spoof-intelligence.md) and the [impersonation insight](impersonation-insight.md) are your friend here.
