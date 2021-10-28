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

This article provides specific and actionable steps for migrating from a third-party protection service to Microsoft Defender for Office 365. This article assumes the following facts:

- You already have Microsoft 365 mailboxes, but you're currently using a third-party protection service or device for email protection. Mail from the internet flows through the protection service before delivery into your Microsoft 365 organization, and Microsoft 365 protection is as low as possible (it's never completely off; for example, malware protection is always enforced).

- You're beyond the investigation and consideration phase for protection by Defender for Office 365. If you need to evaluate Defender for Office 365 to decide whether it's right for your organization, we recommend that you consider [Evaluation Mode](office-365-evaluation.md).

- You've already purchased Defender for Office 365 licenses.

- You need to retire your existing third-party protection service, which means you'll ultimately need to point the MX records for your email domains to Microsoft 365. When you're done, mail from the internet will flow directly into Microsoft 365 and will be protected exclusively by Defender for Office 365.

Eliminating your existing protection service in favor of Defender for Office 365 is a big step that you shouldn't take lightly, nor should you rush to make the change. The guidance in this article will help you transition your protection in an orderly manner with minimal disruption to your users.

## Why use the steps in this guide?

In the IT industry, surprises are generally bad. Simply flipping your MX records to point to Microsoft 365 without prior and thoughtful testing will result in many surprises. For example:

- You or your predecessors have likely spent a lot of time and effort customizing your existing protection service for optimal mail delivery (in other words, blocking what needs to be blocked, and allowing what needs to be allowed). It's almost a guaranteed certainty that not every customization in your current protection service is required in Defender for Office 365. It's also very possible that Defender for Office 365 will introduce new issues (allows or blocks) that didn't happen or weren't required in your current protection service.
- Your help desk and security personnel need to know what to do in Defender for Office 365. For example, if a user complains about a missing message, does your help desk know where or how to look for it? They're likely verify familiar with the tools in your existing protection service, but what about the tools in Defender for Office 365?

In contrast, if you follow the steps in this article, you'll get the following tangible benefits for your migration:

- Minimal disruption to users.
- Objective data from Defender for Office 365 that you can use as you report on the progress and success of the migration to management.
- Early involvement and instruction for help desk and security personnel.

The more you familiarize yourself with how Defender for Office 365 will affect your organization, the better the transition will be for users, help desk personnel, security personnel, and management.

This article gives you a plan for gradually "turning the dial" so you can monitor and test how Defender for Office 365 affects your users and their email so you can react quickly to any issues that you encounter.

## Prerequisites

You'll want to inventory the settings at your existing protection service first. Otherwise, you can do the steps in this section in any order. Just do them or consider them before you actually start making changes.

### Inventory the settings at your existing protection service

A complete inventory of settings, rules, exceptions, etc. from your existing protection service is a good idea, because you likely won't have access to the information after you cancel your subscription.

**But, it's very important that you do not automatically or arbitrarily recreate all of your existing customizations in Defender for Office 365.** At best, you might introduce settings that are no longer required, relevant, or functional. At worse, some of your previous customizations might actually create security issues in Defender for Office 365.

Your testing and observation of the native capabilities and behavior of Defender for Office 365 will ultimately determine the overrides and settings that you need. You might find it helpful to categorize the settings from your existing protection service into the following categories:

- **Connection or content filtering**: You'll likely find that you don't need most of these customizations in Defender for Office 365.
- **Business routing**: The majority of the customizations that you need to recreate will likely fall into this category. For example, you can recreate these settings in Microsoft 365 as Exchange mail flow rules (also known as transport rules), connectors, and exceptions to spoof intelligence.

Instead of moving old settings blindly into Microsoft 365, we recommend a waterfall approach that involves a pilot phase with ever-increasing user membership, and observation-based tuning based on balancing security considerations with organizational business needs.

### Check your existing protection configuration in Microsoft 365

As we stated earlier, it's impossible to completely turn off all protection features for mail that's delivered into Microsoft 365, even when you use a third-party protection service. So, it's not unusual for a Microsoft 365 organization to have at least some email protection features configured. For example:

- In the past, you weren't using the third-party protection service with Microsoft 365. You might have used and configured some protection features in Microsoft 365 that are currently being ignored. But those settings might take effect as you "turn the dial" to enable the protection features in Microsoft 365.
- You might have accommodations in Microsoft 365 protection for false positives (good mail marked as bad) or false negatives (bad mail allowed) that made it through your existing protection service.

Review your existing protection features in Microsoft 365 and consider removing or simplifying settings that are no longer required. A rule or policy setting that was required years ago could put the organization at risk and create unintentional gaps in protection.

### Mail routing considerations

- If you're using any sort of complex routing (for example [Centralized Mail Transport](/exchange/transport-options)), you should consider simplifying your routing and thoroughly documenting it. External hops, especially after Microsoft 365 has already received the message, can complicate configuration and troubleshooting.

- Outbound and relay mail flow is out of the scope for this article. However, be aware that you might need to do one or more of the following steps:
  - Verify that all of the domains that you use to send email have the proper SPF records. For more information, see [Set up SPF to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md).
  - We strongly recommend that you setup DKIM signing in Microsoft 365. For more information, see [Use DKIM to validate outbound email](use-dkim-to-validate-outbound-email.md).
  - If you're not routing mail directly from Microsoft 365, you need to change that routing by removing or changing the outbound connector.

- Using Microsoft 365 to relay email from your on-premises email servers can be a complex project in itself. A simple example is a small number of apps or devices that send most of their messages to internal recipients and aren't used for mass mailings. See [this guide](/exchange/mail-flow-best-practices/how-to-set-up-a-multifunction-device-or-application-to-send-email-using-microsoft-365-or-office-365) for details. More extensive environments will need to be more thoughtful. Marketing email and messages that could be seen as spam by recipients are not allowed.

<!--- Is this OK here now? Is there better place to put it? --->
- Defender for Office 365 does not have a feature for aggregating DMARC reports. Visit the [Microsoft Intelligent Security Association (MISA) catalog](https://www.microsoft.com/misapartnercatalog) to view third-party vendors that offer DMARC reporting for Microsoft 365.

### Move features that modify messages into Microsoft 365

You need to transfer any customizations or features that modify messages in any way into Microsoft 365. For example, your existing protection service adds an **External** tag to the subject or message body of messages from external senders.

If you don't disable this functionality in your existing protection service, you can expect the following negative results in Microsoft 365:

- DKIM will break.
- [Spoof intelligence](anti-spoofing-protection.md) will not work properly.
- You'll probably get a high number of false positives (good mail marked as bad).

To recreate this functionality in Microsoft 365, you have the following options:

- The [Outlook external sender call-out feature](https://techcommunity.microsoft.com/t5/exchange-team-blog/native-external-sender-callouts-on-email-in-outlook/ba-p/2250098), together with [first contact safety tips](set-up-anti-phishing-policies.md#first-contact-safety-tip).
- Mail flow rules (also known as transport rules). For more information, see [Organization-wide message disclaimers, signatures, footers, or headers in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/disclaimers-signatures-footers-or-headers).

### Account for any active phishing simulations

If you have active third-party phishing simulations, you need to prevent the messages, links, and attachments from being identified as phishing by Defender for Office 365. For more information, see [Configure third-party phishing simulations in the advanced delivery policy](configure-advanced-delivery.md#use-the-microsoft-365-defender-portal-to-configure-third-party-phishing-simulations-in-the-advanced-delivery-policy).

### Define spam and bulk user experiences

- **Quarantine vs. deliver to Junk Email folder**: The natural and recommended response for malicious and definitely risky messages is to quarantine the messages. But, how do you want your users to handle less harmful messages, such as spam, and bulk mail (also known as *gray mail*). Should these types of messages be delivered to user Junk Email folders?

  With our Standard security settings, we generally deliver these less risky types of messages to the Junk Email folder. This behavior is similar to many consumer email offerings, where users can check their Junk Email folder for missing messages, and they can rescue those messages themselves. Or, if the user intentionally signed up for a newsletter or marketing mail, they can choose to unsubscribe or block the sender for their own mailbox.

  However, many enterprise users are used to little (if any) mail in their Junk Email folder. Instead, these enterprise users are used to checking a quarantine for their missing messages. Quarantine introduces issues of quarantine notifications, notification frequency, and the permissions that are required to view and release messages.

  Ultimately, it's your decision if you want to prevent delivery of email to the Junk Email folder in favor of delivery to quarantine. But, one thing is certain: if the experience in Defender for Office 365 is different than what your users are used to, you need to notify them and provide basic training. Incorporate learnings from the pilot and make sure that users are prepared for any new behavior for email delivery.

- **Wanted bulk mail vs. unwanted bulk mail**: Many protection systems allow users to allow or block bulk email for themselves. These settings do not easily migrate to Microsoft 365, so you should consider working with VIPs and their staff to recreate their existing configurations in Microsoft 365.

  Today, Microsoft 365 considers some bulk mail (for example, newsletters) as safe based on the message source. Mail from these "safe" sources is currently not marked as bulk (the bulk complaint level or BCL is 0 or 1), so it's difficult to globally block mail from these sources. For most users, the solution is to ask them to individually unsubscribe from these bulk messages or use Outlook to block the sender. But, some users will not like blocking or unsubscribing from bulk messages themselves.

  <!--- What does this sentence mean? --->
  A rule similar to the one documented can be helpful when VIP users do not wish to manage this themselves.

### Identify and designate priority accounts

If the feature is available to you, **priority accounts** and **user tags** can help to identify your important Microsoft 365 users so they stand out in reports. For more information, see [User tags in Microsoft Defender for Office 365](user-tags.md) and [Manage and monitor priority accounts](/microsoft-365/admin/setup/priority-accounts).

## Step 1: Create distribution groups for pilot users

Distribution groups are required in Microsoft 365 for the following aspects of your migration:

- **Exceptions for the SCL=-1 mail flow rule**: You want pilot users to get the full effect of Defender for Office 365 protection, so you need their incoming messages to be scanned by Defender for Office 365. You do this by defining your pilot users in the appropriate distribution groups in Microsoft 365, and configuring these groups as exceptions to the SCL=-1 mail flow rule.

  As we described [later in this article](#step-7-optional-exempt-pilot-users-from-filtering-by-your-existing-protection-service), you should consider exempting these same pilot users from scanning by your existing protection service. Eliminating the possibility of filtering by your existing protection service and relying exclusively on Defender for Office 365 is the best and closest representation of what's going to happen after your migration is complete.

- **Testing of specific Defender for Office 365 protection features**: Even for the pilot users, you don't want to turn on everything at once. Using a staged approach for the protection features that are in effect for your pilot users will make troubleshooting and adjusting much easier. With this approach in mind, we recommend the following distribution groups:
  - **A Safe Attachments pilot group**: For example, **MDOPilot\_SafeAttachments**
  - **A Safe Links pilot group**: For example, **MDOPilot\_SafeLinks**
  - **A pilot group for Standard anti-spam and anti-phishing policy settings**: For example, **MDOPilot\_SpamPhish\_Standard**
  - **A pilot group for Strict anti-spam and anti-phishing policy settings**: For example, **MDOPilot\_SpamPhish\_Strict**

For clarity, we'll use these specific group names throughout this article, but you're free to use your own naming convention.

When you're ready to begin testing, add these groups as exceptions to [the SCL=-1 mail flow rule](#step-3-maintain-or-create-the-scl-1-mail-flow-rule). As you create policies for the various protection features in Defender for Office 365, you'll use these groups as conditions that define who the policy applies to.

**Notes**:

- The terms Standard and Strict come from our [recommended security settings](recommended-settings-for-eop-and-office365.md), which are also used in [preset security policies](preset-security-policies.md). Ideally, we would tell you to define your pilot users in the Standard and Strict preset security policies, but we can't do that. Why? Because you can't customize the settings in preset security policies (in particular, actions that are taken on messages, or adjustment of impersonation protection settings). During your migration testing, you'll want to see what Defender for Office 365 would do to messages, verify that's what you want to happen, and possibly adjust the policy configurations to allow or prevent those results.

  So, instead of using preset security policies, you're going to manually create custom policies with settings that are very similar to, but in some cases are different than, the settings of Standard and Strict preset security policies.

- If you want to experiment with settings that **significantly** differ from our Standard or Strict recommended values, you should consider creating and using additional and specific distribution groups for the pilot users in those scenarios. You can use the Configuration Analyzer to see how secure your settings are. For instructions, see [Configuration analyzer for protection policies in EOP and Microsoft Defender for Office 365](configuration-analyzer-for-security-policies.md).

  For most organizations, the best approach is to start with policies that closely align with our recommended Standard settings. After as much observation and feedback as you're able to do in your available time frame, you can move to more aggressive settings later. Impersonation protection and delivery to the Junk Email folder vs. delivery to quarantine might require customization.

  If you use customized policies, just make sure that they're applied _before_ the policies that contain our recommended settings for the migration. If a user is identified in multiple policies of the same type (for example, anti-phishing), only one policy of that type is applied to the user (based on the priority value of the policy). For more information, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).

## Step 2: Configure user submission for user message reporting

The ability for users to identify false positives or false negatives from Defender for Office 365 is an important part of the migration.

You can specify an Exchange Online mailbox to receive messages that users report as malicious or not malicious. For more instructions, see [User reported message settings](user-submission.md). This mailbox can receive copies of messages that your users submitted to Microsoft, or the mailbox can intercept messages without reporting them to Microsoft (you're security team can manually analyze and submit the messages). However, this interception approach does not allow the service to automatically tune and learn.

You should also confirm that all users in the pilot have a supported message reporting app installed in Outlook that's compatible with user submission. These apps include:

- [The Report Message add-in](enable-the-report-message-add-in.md)
- [The Report Phishing add-in](enable-the-report-phish-add-in.md)
- Supported third party reporting tools as described [here](user-submission.md#third-party-reporting-tools).

Don't underestimate the importance of this step. Data from user submissions will give you the feedback loop that you need to verify a good, consistent end-user experience before and after the migration. This feedback helps you to make informed policy configuration decisions, as well as provide data-backed reports to your management that the migration went smoothly.

Instead of relying on data that's backed by the experience of the entire organization, more than one migration has resulted in emotional speculation based on a single negative user experience. Furthermore, if you've been running phishing simulations, you can use feedback from your users to inform you when they see something risky that might require investigation.

## Step 3: Maintain or create the SCL=-1 mail flow rule

Because your inbound email is routed through another protection service that sits in front of Microsoft 365, it's very likely that you already have a mail flow rule (also known as a transport rule) in Exchange Online that sets the spam confidence level (SCL) of all incoming mail to the value -1 (bypass spam filtering). Most third-party protection services encourage this SCL=-1 mail flow rule for Microsoft 365 customers who want to use their services.

If you're using some other mechanism to override the Microsoft filtering stack (for example, an IP allow list) we recommend that you switch to using an SCL=-1 mail flow rule **as long as** all inbound internet mail into Microsoft 365 comes from the third-party protection service (no mail flows directly from the internet into Microsoft 365).

The SCL=-1 mail flow rule is important during the migration for the following reasons:

- You can use [Threat Explorer](email-security-in-microsoft-defender.md) to see which features in the Microsoft stack *would have* acted on messages without affecting the results from your existing protection service.
- You can gradually adjust who is protected by the Microsoft 365 filtering stack by configuring exceptions to the SCL=-1 mail flow rule. The exceptions will be the members of the pilot distribution groups that we recommend later in this article.

  Before or during the cutover of your MX record to Microsoft 365, you'll disable this rule to turn on the full protection of the Microsoft 365 protection stack for all recipients in your organization.

For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](https://docs.microsoft.comexchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

**Notes**:

- If you plan to allow internet mail to flow through your existing protection service **and** directly into Microsoft 365 at the same time, you need restrict the SCL=-1 mail flow rule (mail that bypasses spam filtering) to mail that's gone through your existing protection service only. You do not want unfiltered internet mail landing in user mailboxes in Microsoft 365.

  To correctly identify mail that's already been scanned by your existing protection service, you can add a condition to the SCL=-1 mail flow rule. For example:

  - **For cloud-based protection services**: You can use a header and header value that's unique to your organization. Messages that have the header are not scanned by Microsoft 365. Messages without the header are scanned by Microsoft 365
  - **For on-premises protection services or devices**: You can use source IP addresses. Messages from the source IP addresses are not scanned by Microsoft 365. Messages that aren't from the source IP addresses are scanned by Microsoft 365.

- Do not rely exclusively on MX records to control whether mail gets filtered. Senders can easily ignore the MX record and send email directly into Microsoft 365.

## Step 4: Configure Enhanced Filtering for Connectors

The first thing to do is configure [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) (also known as *skip listing*) on the connector that's used for mail flow from your existing protection service into Microsoft 365. You can use the [Inbound messages report](/exchange/monitoring/mail-flow-reports/mfr-inbound-messages-and-outbound-messages-reports) to help identify the connector.

Enhanced Filtering for Connectors is required by Defender for Office 365 to see where internet messages actually came from. Enhanced Filtering for Connectors greatly improves the accuracy of the Microsoft filtering stack (especially [spoof intelligence](anti-spoofing-protection.md)), as well as post-breach capabilities in [Threat Explorer](threat-explorer.md) and [Automated Investigation & Response (AIR)](automated-investigation-response-office.md).

To correctly enable Enhanced Filtering for Connectors, you need to add the **public** IP addresses of \*\***all\*\*** third-party services and/or on-premises email system hosts that route inbound mail to Microsoft 365.

To confirm that Enhanced Filtering for Connectors is working, verify that incoming messages contain one or both of the following headers:

- `X-MS-Exchange-SkipListedInternetSender`
- `X-MS-Exchange-ExternalOriginalInternetSender`

## Step 5: Begin onboarding Security Teams

If your organization has a security response team, now is the time to begin integrating Microsoft Defender for Office 365 into your response processes, including ticketing systems. This is an entire topic unto itself, but it's sometimes overlooked. Getting the security response team involved early will ensure that your organization is ready to deal with threats when you switch your MX records. Incident response needs to be well equipped to handle the following tasks:

- Learn the new tools and integrate them into existing flows. For example:
  - Admin management of quarantined messages is important. For instructions, see [Manage quarantined messages and files as an admin](manage-quarantined-messages-and-files.md).
  - Message trace allows you to see what happened to messages as they enter or leave Microsoft 365. For more information, see [Message trace in the modern Exchange admin center in Exchange Online](/exchange/monitoring/trace-an-email-message/message-trace-modern-eac).
- Identify risks that may have been let into the organization.
- Tune and customize [alerts](../../compliance/alert-policies.md) for organizational processes.
- Manage the incident queue and remediate potential risks.

If your organization has purchased Microsoft Defender for Office 365 Plan 2, they should begin familiarizing themselves with and using features such as Threat Explorer, Advanced Hunting, and Incidents. For relevant trainings, see <https://aka.ms/mdoninja>.

If your security response team collects and analyzes unfiltered messages, you can configure a SecOps mailbox to receive these unfiltered messages. For instructions, see [Configure SecOps mailboxes in the advanced delivery policy](configure-advanced-delivery.md#use-the-microsoft-365-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy).

### SIEM/SOAR

For more information about integrating with your SIEM/SOAR, see the following articles:

- [Overview of Microsoft 365 Defender APIs](/microsoft-365/security/defender/api-overview)
- [Streaming API](/microsoft-365/security/defender/streaming-api)
- [Advanced Hunting API](/microsoft-365/security/defender/api-advanced-hunting)
- [Incidents APIs](/microsoft-365/security/defender/api-incident)

If your organization does not have a security response team or existing process flows, you can use this time to familiarize yourself with basic hunting and response features in Defender for Office 365. For more information, see [Threat investigation and response](office-365-ti.md).

### RBAC roles

Permissions in Defender for Office 365 is based on role-based access control (RBAC) and is explained in Permissions in the [Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md). These are the important points to keep in mind:

- Azure AD roles give permissions to **all** workloads in Microsoft 365. For example, if you add a user to the Security Administrator in the Azure portal, they have Security Administrator permissions everywhere.
- Email & collaboration roles in the Microsoft 365 Defender portal give permissions to the Microsoft 365 Defender Portal, the Microsoft 365 compliance center, and the older Security & Compliance Center. For example, if you add a user to Security Administrator in the Microsoft 365 Defender portal, they have Security Administrator access **only** in the Microsoft 365 Defender Portal, the Microsoft 365 compliance center, and the Security & Compliance Center.
- Many features in the Microsoft 365 Defender portal are based on Exchange Online PowerShell cmdlets and therefore require role group membership in the corresponding roles (technically, role groups) in Exchange Online (in particular, for access to the corresponding Exchange Online PowerShell cmdlets).
- There are Email & collaboration roles in the Microsoft 365 Defender portal that have no equivalent to Azure AD roles, and are important for security operations (for example the Preview role and the Search and Purge role).

Typically, only a subset of security personnel will need additional rights to download messages directly from user mailboxes. This requires an additional permission that Security Reader does not have by default.

## Step 6: Create pilot protection policies

By creating production policies, even if they aren't applied to all users, you can test post-breach features like [Threat Explorer](threat-explorer.md) and test integrating Defender for Office 365 into your security response team's processes.

### Create pilot Safe Attachments policies

[Safe Attachments](safe-attachments.md) is the easiest Defender for Office 365 feature to enable and test before you switch your MX record. Safe Attachments has the following benefits:

- Minimal configuration.
- Extremely low chance of false positives.
- Similar behavior to anti-malware protection, which is always on and not affected by the SCL=-1 mail flow rule.

Create a Safe Attachments policy for your pilot users.

For the recommended settings, see [Recommended Safe Attachments policy settings](recommended-settings-for-eop-and-office365.md#safe-attachments-policy-settings). Note that the Standard and Strict recommendations are the same. To create the policy, see [Set up Safe Attachments policies](set-up-safe-attachments-policies.md). Be sure to use the group **MDOPilot\_SafeAttachments** as the condition of the policy (who the policy applies to).

### Create pilot Safe Links policies

> [!NOTE]
> We do not support wrapping or rewriting already wrapped or rewritten links. If your current protection service already wraps or rewrites links in email messages, you need to turn off this feature for your pilot users.
>
> Safe Links protection for supported Office apps is a global setting that applies to all licensed users. You can turn it on or turn it off globally, not for specific users. For more information, see [Configure Safe Links protection for Office 365 apps](configure-global-settings-for-safe-links.md#configure-safe-links-protection-for-office-365-apps-in-the-microsoft-365-defender-portal).

Create a Safe Links policy for your pilot users. Chances for false positives in Safe Links are also pretty low, but you should consider testing the feature on a smaller number of pilot users than Safe Attachments.

For the recommended settings, see [Recommended Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-settings). Note that the Standard and Strict recommendations are the same. To create the policy, see [Set up Safe Links policies](set-up-safe-links-policies.md). Be sure to use the group **MDOPilot\_SafeLinks** as the condition of the policy (who the policy applies to).

### Create pilot anti-spam policies

Create two anti-spam policies for pilot users:

- A policy that uses the Standard settings. Use the group **MDOPilot\_SpamPhish\_Standard** as the condition of the policy (who the policy applies to).
- A policy that uses the Strict settings. Use the group **MDOPilot\_SpamPhish\_Strict** as the condition of the policy (who the policy applies to). This policy should have a higher priority (lower number) than the policy with the Standard settings.

For the recommended Standard and Strict settings, see [Recommended anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings). To create the policies, see [Configure anti-spam policies](configure-your-spam-filter-policies.md).

### Create pilot anti-phishing policies

Create two anti-phishing policies for pilot users:

- A policy that uses the Standard settings, with the exception of impersonation detection actions as described below. Use the group **MDOPilot\_SpamPhish\_Standard** as the condition of the policy (who the policy applies to).
- A policy that uses the Strict settings, with the exception of impersonation detection actions as described below. Use the group **MDOPilot\_SpamPhish\_Strict** as the condition of the policy (who the policy applies to). This policy should have a higher priority (lower number) than the policy with the Standard settings.

For spoof detections, the recommended Standard action is **Move message to the recipients' Junk Email folders**, and the recommended Strict action is **Quarantine the message**. Use the spoof intelligence insight to observe the results. Overrides are explained in the next section. For more information, see [Spoof intelligence insight in EOP](learn-about-spoof-intelligence.md).

For impersonation detections, ignore the recommended Standard and Strict actions. Instead, use the value **Don't apply any action** for the following settings:

- **If message is detected as an impersonated user**
- **If message is detected as impersonated domain**
- **If mailbox intelligence detects an impersonated user**

Use the impersonation insight to observe the results. For more information, see [Impersonation insight in Defender for Office 365](impersonation-insight.md).

You'll tune spoofing protection (adjust allows and blocks) and turn on each impersonation protection action to quarantine or move the messages to the Junk Email folder (based on the Standard or Strict recommendations). You can observe the results and adjust their settings as necessary.

For more information, see the following topics:

- [Anti-spoofing protection](anti-spoofing-protection.md)
- [Impersonation settings in anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
- [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

## Step 7: (Optional) Exempt pilot users from filtering by your existing protection service

Although this step isn't required, you should consider configuring your pilot users to bypass filtering by your existing protection service. This action allows Defender for Office 365 to handle **all** filtering and protection duties for the pilot users. If you don't exempt your pilot users from your existing protection service, Defender for Office 365 effectively operates only on misses from the other service (filtering messages that have already been filtered).

> [!NOTE]
> This step is explicitly required if your current protection service provides link wrapping, but you want to pilot Safe Links functionality. Double wrapping of links is not supported.

## Step 8: Tune spoof intelligence

Check the [Spoof intelligence insight](learn-about-spoof-intelligence.md) to see what's being allowed or blocked as spoofing, and to determine if you need to override the system verdict for spoofing. Some sources of your business-critical email might have incorrectly configured email/domain authentication records in DNS (SPF, DKIM, and DMARC) and you might be using overrides in your existing protection service to mask the issue.

Spoof intelligence can rescue email from domains without proper email authentication records in DNS, but the feature sometimes needs assistance in distinguishing good spoofing from bad spoofing. Focus on the following types of message sources:

- Message sources that are outside of the IP address ranges defined in [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors).
- Message sources that have the highest number of messages.
- Message sources that have the highest impact on your organization.

Spoof intelligence will eventually tune itself after you configure user submissions, so there is no need for perfection.

## Step 9: Tune impersonation protection and mailbox intelligence

After you've had enough time to observe the results of impersonation protection in **Don't apply any action** mode, you can individually turn on each impersonation protection action in the anti-phishing policies:

- User impersonation protection: **Quarantine the message** for both Standard and Strict.
- Domain impersonation protection: **Quarantine the message** for both Standard and Strict.
- Mailbox intelligence protection: **Move message to the recipients' Junk Email folders** for Standard; **Quarantine the message** for Strict.

The longer you monitor the impersonation protection results without acting on the messages, the more data you'll have to identify allows or blocks that might be required. Consider using a delay between turning on each protection that's significant enough to allow for observation and adjustment.

> [!NOTE]
> Frequent and continuous monitoring and tuning of these protections is important. If you suspect a false positive, investigate the cause and use overrides only as necessary and only for the detection feature that requires it.

### Tune mailbox intelligence

Although mailbox intelligence has been configured to take no action on messages that were [determined to be impersonation attempts](impersonation-insight.md), it has been on and learning the email sending and receiving patterns of the pilot users. If an external user is in contact with one your pilot users, messages from that external user won't be identified as impersonation attempts by mailbox intelligence (thus reducing false positives).

When you're ready, do the following steps to allow mailbox intelligence to act on messages that are detected as impersonation attempts:

- In the anti-phishing policy with the Standard protection settings, change the value of **If mailbox intelligence detects an impersonated user** to **Move message to recipients' Junk Email folders**.

- In the anti-phishing policy with the Strict protection settings, change the value of **If mailbox intelligence detects and impersonated user** from to **Quarantine the message**.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

After you've observed the results and made any adjustments, proceed to the next section to quarantine messages detected by user impersonation.

### Tune user impersonation

In both of your anti-phishing policies based on Standard and Strict settings, change the value of **If message is detected as an impersonated user** to **Quarantine the message**.

Check the [impersonation insight](impersonation-insight.md) to see what's being blocked as user impersonation attempts.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

After you've observed the results and made any adjustments, proceed to the next section to quarantine messages detected by domain impersonation.

### Tune domain impersonation

In both of your anti-phishing policies based on Standard and Strict settings, change the value of **If message is detected as an impersonated domain** to **Quarantine the message**.

Check the [impersonation insight](impersonation-insight.md) to see what's being blocked as domain impersonation attempts.

To modify the policies, see [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

Observe the results and make any adjustments as necessary.

## Step 10: Use data from user submissions to measure and adjust

As your pilot users report false positives and false negatives, the messages will appear on the [Submissions page in the Microsoft 365 Defender portal](admin-submission.md). You can report the misidentified messages to Microsoft for analysis and use the information to adjust the settings and exceptions in your pilot polices as necessary.

Use the following features to monitor and iterate on the protection settings in Defender for Office 365:

- [Quarantine](manage-quarantined-messages-and-files.md)
- [Threat Explorer](email-security-in-microsoft-defender.md)
- [Email security reports](view-email-security-reports.md)
- [Defender for Office 365 reports](view-reports-for-mdo.md)
- [Mail flow insights](/exchange/monitoring/mail-flow-insights/mail-flow-insights)
- [Mail flow reports](/exchange/monitoring/mail-flow-reports/mail-flow-reports)

If your organization uses a third-party service for user reports, you can integrate that data into your feedback loop.

## Step 11: (Optional) Add more users to your pilot and iterate

As you find and fix issues, you can add more users to the pilot groups (and correspondingly exempt those new pilot users from scanning by your existing protection service as appropriate). The more testing that you do now, the fewer user issues that you'll need to deal with later. This "waterfall" approach allows tuning against larger portions of the organization and gives your security teams time to adjust to the new tools and processes.

**Notes**:

- Microsoft 365 generates alerts when high confidence phishing messages are allowed by organizational policies. To identify these messages, you have the following options:

  <!--- What is the Override report? I've never heard of it--->
  - The Override report.
  - Filter in Threat Explorer to identify the messages.
  - Filter in Advanced Hunting to identify the messages.

  Report any false positives to Microsoft as early as possible through admin submissions, use the [Tenant Allow/Block List](tenant-allow-block-list.md) feature to configure safe overrides for those false positives.

- It's also a good idea to examine unnecessary overrides. In other words, look at the verdicts that Microsoft 365 would have provided on the messages. If Microsoft365  rendered the correct verdict, then the need for override is greatly diminished or eliminated.

## Step 12: Extend Microsoft 365 protection to all users and turn off the SCL=-1 mail flow rule

Do the steps in this section when you're ready to switch your MX records to point to Microsoft 365.

1. Extend the pilot policies to the entire organization. Fundamentally, there are different ways to do this:
   - Use [preset security](preset-security-policies.md) policies and divide your users between the Standard protection profile and the Strict protection profile (make sure everyone is covered). Preset security policies are applied before any custom polices that you've created or any default policies. You can turn off your individual pilot policies without deleting them.

     The drawback to preset security policies is you can't change many of the important settings after you've created them.

   - Change the scope of the policies that you created and adjusted during the pilot to include all users (for example, all recipients in all domains). Remember, if multiple policies of the same type (for example, anti-phishing policies) apply to the same user (individually, by group membership, or email domain), only the settings of the policy with the highest priority (lowest priority number) are applied, and processing stops for that type of policy.

2. Turn off the SCL=-1 mail flow rule (you can turn it off without deleting it).

3. Verify that the previous changes have taken effect, and that Defender for Office 365 is now properly enabled for all users. At this point, all of the protection features of Defender for Office 365 are now allowed to act on mail for all recipients, but that mail has already been scanned by your existing protection service.

You can pause at this stage for more large-scale data recording and tuning.

## Step 13: Switch your MX records

> [!NOTE]
>
> - When you switch the MX record for your domain, it can take up to 48 hours for the changes to propagate throughout the internet.
>
> - We recommend lowering the TTL value of your DNS records to enable faster response and possible rollback (if required). You can revert to the original TTL value after the switchover is complete and verified.
>
> - Multiple MX records for a single domain will technically work, provided that you have followed all the guidance in this article. Specifically, you should make sure that policies are applied to all users, that the SCL=-1 mail flow rule is applied only to mail that passes through your existing protection service as described [earlier in this article](#step-3-maintain-or-create-the-scl-1-mail-flow-rule). However, this configuration introduces behavior that makes troubleshooting much more difficult, and therefore we do not typically recommend it.
>
> - Before you switch your MX records, verify that the following settings are not enabled on the inbound connector from the protection service to Microsoft 365. Typically, the connector will have one or more of the following settings configured:
>
>   - **and require that the subject name on the certificate that the partner uses to authenticate with Office 365 matches this domain name** (*RestrictDomainsToCertificate*)
>   - **Reject email messages if they aren't sent from within this IP address range** (*RestrictDomainsToIPAddresses*)
>
>   **If either of these settings is turned on, all mail delivery to your domains will fail after you switch the MX records. You need to disable these settings on the connector before you continue**.

When you're ready, do the following steps:

1. Switch the MX record for your domains. You can migrate all of your domains at once. Or, you can migrate less frequently used domains first, and then migrate the rest later.

   Feel free to pause and evaluate here at any point. But, remember: once you turn off the SCL=-1 mail flow rule, users might have two different experiences for checking false positives. The sooner you can provide a single, consistent experience, the happier your users and help desk teams will be when they have to troubleshoot a missing message.

2. Monitor and watch for issues that are similar to what you experienced during the pilot, but on a larger scale. The [spoof intelligence insight](learn-about-spoof-intelligence.md) and the [impersonation insight](impersonation-insight.md) are your friend here.
