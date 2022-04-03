---
title: "Migrate to Microsoft Defender for Office 365 Phase 2: Setup"
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
ms.custom: migrationguides
description: "Take the steps to begin migrating from a third-party protection service or device to Microsoft Defender for Office 365 protection."
ms.technology: mdo
ms.prod: m365-security
---

# Migrate to Microsoft Defender for Office 365 - Phase 2: Setup

**Applies to:**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)

<br>

|[![Phase 1: Prepare.](../../media/phase-diagrams/prepare.png#lightbox)](migrate-to-defender-for-office-365-prepare.md) <br> [Phase 1: Prepare](migrate-to-defender-for-office-365-prepare.md)|![Phase 2: Set up.](../../media/phase-diagrams/setup.png) <br> Phase 2: Set up|[![Phase 3: Onboard.](../../media/phase-diagrams/onboard.png#lightbox)](migrate-to-defender-for-office-365-onboard.md) <br> [Phase 3: Onboard](migrate-to-defender-for-office-365-onboard.md)|
|---|---|---|
||*You are here!*||

Welcome to **Phase 2: Setup** of your **[migration to Microsoft Defender for Office 365](migrate-to-defender-for-office-365.md#the-migration-process)**! This migration phase includes the following steps:

1. [Create distribution groups for pilot users](#step-1-create-distribution-groups-for-pilot-users)
2. [Configure user submission for user message reporting](#step-2-configure-user-submission-for-user-message-reporting)
3. [Maintain or create the SCL=-1 mail flow rule](#step-3-maintain-or-create-the-scl-1-mail-flow-rule)
4. [Configure Enhanced Filtering for Connectors](#step-4-configure-enhanced-filtering-for-connectors)
5. [Create pilot protection policies](#step-5-create-pilot-protection-policies)

## Step 1: Create distribution groups for pilot users

Distribution groups are required in Microsoft 365 for the following aspects of your migration:

- **Exceptions for the SCL=-1 mail flow rule**: You want pilot users to get the full effect of Defender for Office 365 protection, so you need their incoming messages to be scanned by Defender for Office 365. You do this by defining your pilot users in the appropriate distribution groups in Microsoft 365, and configuring these groups as exceptions to the SCL=-1 mail flow rule.

  As we described in [Onboard Step 2: (Optional) Exempt pilot users from filtering by your existing protection service](migrate-to-defender-for-office-365-onboard.md#step-2-optional-exempt-pilot-users-from-filtering-by-your-existing-protection-service), you should consider exempting these same pilot users from scanning by your existing protection service. Eliminating the possibility of filtering by your existing protection service and relying exclusively on Defender for Office 365 is the best and closest representation of what's going to happen after your migration is complete.

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

For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

**Notes**:

- If you plan to allow internet mail to flow through your existing protection service **and** directly into Microsoft 365 at the same time, you need restrict the SCL=-1 mail flow rule (mail that bypasses spam filtering) to mail that's gone through your existing protection service only. You do not want unfiltered internet mail landing in user mailboxes in Microsoft 365.

  To correctly identify mail that's already been scanned by your existing protection service, you can add a condition to the SCL=-1 mail flow rule. For example:

  - **For cloud-based protection services**: You can use a header and header value that's unique to your organization. Messages that have the header are not scanned by Microsoft 365. Messages without the header are scanned by Microsoft 365
  - **For on-premises protection services or devices**: You can use source IP addresses. Messages from the source IP addresses are not scanned by Microsoft 365. Messages that aren't from the source IP addresses are scanned by Microsoft 365.

- Do not rely exclusively on MX records to control whether mail gets filtered. Senders can easily ignore the MX record and send email directly into Microsoft 365.

## Step 4: Configure Enhanced Filtering for Connectors

The first thing to do is configure [Enhanced Filtering for Connectors](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors) (also known as *skip listing*) on the connector that's used for mail flow from your existing protection service into Microsoft 365. You can use the [Inbound messages report](/exchange/monitoring/mail-flow-reports/mfr-inbound-messages-and-outbound-messages-reports) to help identify the connector.

Enhanced Filtering for Connectors is required by Defender for Office 365 to see where internet messages actually came from. Enhanced Filtering for Connectors greatly improves the accuracy of the Microsoft filtering stack (especially [spoof intelligence](anti-spoofing-protection.md), as well as post-breach capabilities in [Threat Explorer](threat-explorer.md) and [Automated Investigation & Response (AIR)](automated-investigation-response-office.md).

To correctly enable Enhanced Filtering for Connectors, you need to add the **public** IP addresses of \*\***all\*\*** third-party services and/or on-premises email system hosts that route inbound mail to Microsoft 365.

To confirm that Enhanced Filtering for Connectors is working, verify that incoming messages contain one or both of the following headers:

- `X-MS-Exchange-SkipListedInternetSender`
- `X-MS-Exchange-ExternalOriginalInternetSender`

## Step 5: Create pilot protection policies

By creating production policies, even if they aren't applied to all users, you can test post-breach features like [Threat Explorer](threat-explorer.md) and test integrating Defender for Office 365 into your security response team's processes.

> [!IMPORTANT]
> Policies can be scoped to users, groups, or domains. We do not recommend mixing all three in one policy, as only users that match all three will fall inside the scope of the policy. For pilot policies, we recommend using groups or users. For production policies, we recommend using domains. It's extremely important to understand that **only** the user's primary email domain determines if the user falls inside the scope of the policy. So, if you switch the MX record for a user's secondary domain, make sure that their primary domain is also covered by a policy.

### Create pilot Safe Attachments policies

[Safe Attachments](safe-attachments.md) is the easiest Defender for Office 365 feature to enable and test before you switch your MX record. Safe Attachments has the following benefits:

- Minimal configuration.
- Extremely low chance of false positives.
- Similar behavior to anti-malware protection, which is always on and not affected by the SCL=-1 mail flow rule.

Create a Safe Attachments policy for your pilot users.

For the recommended settings, see [Recommended Safe Attachments policy settings](recommended-settings-for-eop-and-office365.md#safe-attachments-policy-settings). Note that the Standard and Strict recommendations are the same. To create the policy, see [Set up Safe Attachments policies](set-up-safe-attachments-policies.md). Be sure to use the group **MDOPilot\_SafeAttachments** as the condition of the policy (who the policy applies to).

> [!IMPORTANT]
> Today, there is no default Safe Attachments policy. Prior to switching any MX records, we recommend that you have a Safe Attachments policy that protects the entire organization.

### Create pilot Safe Links policies

> [!NOTE]
> We do not support wrapping or rewriting already wrapped or rewritten links. If your current protection service already wraps or rewrites links in email messages, you need to turn off this feature for your pilot users. One way to ensure this doesn't happen is to exclude the URL domain of the other service in the Safe Links policy.
>
> Safe Links protection for supported Office apps is a global setting that applies to all licensed users. You can turn it on or turn it off globally, not for specific users. For more information, see [Configure Safe Links protection for Office 365 apps](configure-global-settings-for-safe-links.md#configure-safe-links-protection-for-office-365-apps-in-the-microsoft-365-defender-portal).

Create a Safe Links policy for your pilot users. Chances for false positives in Safe Links are also pretty low, but you should consider testing the feature on a smaller number of pilot users than Safe Attachments. Because the feature impacts the user experience, you should consider a plan to educate users.

For the recommended settings, see [Recommended Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-settings). Note that the Standard and Strict recommendations are the same. To create the policy, see [Set up Safe Links policies](set-up-safe-links-policies.md). Be sure to use the group **MDOPilot\_SafeLinks** as the condition of the policy (who the policy applies to).

> [!IMPORTANT]
> Today, there is no default Safe Links policy. Prior to switching any MX records, we recommend that you have a Safe Links policy that protects the entire organization.

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

For impersonation detections, ignore the recommended Standard and Strict actions for the pilot policies. Instead, use the value **Don't apply any action** for the following settings:

- **If message is detected as an impersonated user**
- **If message is detected as impersonated domain**
- **If mailbox intelligence detects an impersonated user**

Use the impersonation insight to observe the results. For more information, see [Impersonation insight in Defender for Office 365](impersonation-insight.md).

You'll tune spoofing protection (adjust allows and blocks) and turn on each impersonation protection action to quarantine or move the messages to the Junk Email folder (based on the Standard or Strict recommendations). You can observe the results and adjust their settings as necessary.

For more information, see the following topics:

- [Anti-spoofing protection](anti-spoofing-protection.md)
- [Impersonation settings in anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
- [Configure anti-phishing policies in Defender for Office 365](configure-mdo-anti-phishing-policies.md).

## Next step

**Congratulations**! You have completed the **Setup** phase of your [migration to Microsoft Defender for Office 365](migrate-to-defender-for-office-365.md#the-migration-process)!

- Proceed to [Phase 3: Onboard](migrate-to-defender-for-office-365-onboard.md).
