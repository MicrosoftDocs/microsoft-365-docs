---

title: "Migrate to Microsoft Defender for Office 365 Phase 1: Prepare"
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection:
  - m365-security
  - m365solution-mdo-migration
  - highpri
  - tier1
ms.custom: migrationguides
description: "Prerequisite steps for migrating from a third-party protection service or device to Microsoft Defender for Office 365 protection."
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
---

# Migrate to Microsoft Defender for Office 365 - Phase 1: Prepare

<br>

|:::image type="content" source="../../media/phase-diagrams/prepare.png" alt-text="Phase 1: Prepare." lightbox="../../media/phase-diagrams/prepare.png"::: <br> Phase 1: Prepare|[:::image type="content" source="../../media/phase-diagrams/setup.png" alt-text="Phase 2: Set up." lightbox="../../media/phase-diagrams/setup.png":::](migrate-to-defender-for-office-365-setup.md) <br> [Phase 2: Set up](migrate-to-defender-for-office-365-setup.md)|[:::image type="content" source="../../media/phase-diagrams/onboard.png" alt-text="Phase 3: Onboard." lightbox="../../media/phase-diagrams/onboard.png":::](migrate-to-defender-for-office-365-onboard.md) <br> [Phase 3: Onboard](migrate-to-defender-for-office-365-onboard.md)|
|---|---|---|
|*You are here!*|||

Welcome to **Phase 1: Prepare** of your **[migration to Microsoft Defender for Office 365](migrate-to-defender-for-office-365.md#the-migration-process)**! This migration phase includes the following steps. You should inventory the settings at your existing protection service first, before you make any changes. Otherwise, you can do the remaining steps in any order:

1. [Inventory the settings at your existing protection service](#inventory-the-settings-at-your-existing-protection-service)
2. [Check your existing protection configuration in Microsoft 365](#check-your-existing-protection-configuration-in-microsoft-365)
3. [Check your mail routing configuration](#check-your-mail-routing-configuration)
4. [Move features that modify messages into Microsoft 365](#move-features-that-modify-messages-into-microsoft-365)
5. [Define spam and bulk user experiences](#define-spam-and-bulk-user-experiences)
6. [Identify and designate priority accounts](#identify-and-designate-priority-accounts)

## Inventory the settings at your existing protection service

A complete inventory of settings, rules, exceptions, etc. from your existing protection service is a good idea, because you likely won't have access to the information after you cancel your subscription.

**But, it's very important that you do not automatically or arbitrarily recreate all of your existing customizations in Defender for Office 365**. At best, you might introduce settings that are no longer required, relevant, or functional. At worse, some of your previous customizations might actually create security issues in Defender for Office 365.

Your testing and observation of the native capabilities and behavior of Defender for Office 365 ultimately determines the overrides and settings that you need. You might find it helpful to organize the settings from your existing protection service into the following categories:

- **Connection or content filtering**: You'll likely find that you don't need most of these customizations in Defender for Office 365.
- **Business routing**: Most of the customizations that you need to recreate likely fall into this category. For example, you can recreate these settings in Microsoft 365 as Exchange mail flow rules (also known as transport rules), connectors, and exceptions to spoof intelligence.

Instead of moving old settings blindly into Microsoft 365, we recommend a waterfall approach. This approach involves a pilot phase with ever-increasing user membership, and observation-based tuning based on balancing security considerations with organizational business needs.

## Check your existing protection configuration in Microsoft 365

As we stated earlier, it's impossible to completely turn off all protection features for mail that's delivered into Microsoft 365, even when you use a third-party protection service. So, it's not unusual for a Microsoft 365 organization to have at least some email protection features configured. For example:

- In the past, you weren't using the third-party protection service with Microsoft 365. You might have used and configured some protection features in Microsoft 365 that are currently being ignored. But those settings might take effect as you "turn the dial" to enable the protection features in Microsoft 365.
- You might have accommodations in Microsoft 365 protection for false positives (good mail marked as bad) or false negatives (bad mail allowed) that made it through your existing protection service.

Review your existing protection features in Microsoft 365 and consider removing or simplifying settings that are no longer required. A rule or policy setting that was required years ago could put the organization at risk and create unintentional gaps in protection.

## Check your mail routing configuration

- If you're using any sort of complex routing (for example [Centralized Mail Transport](/exchange/transport-options)), you should consider simplifying your routing and thoroughly documenting it. External hops, especially after Microsoft 365 has already received the message, can complicate configuration and troubleshooting.

- Outbound and relay mail flow is out of the scope for this article. However, you might need to do one or more of the following steps:
  - Verify that all of the domains that you use to send email have the proper SPF records. For more information, see [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md).
  - We strongly recommend that you set up DKIM signing in Microsoft 365. For more information, see [Use DKIM to validate outbound email](email-authentication-dkim-configure.md).
  - If you're not routing mail directly from Microsoft 365, you need to change that routing by removing or changing the outbound connector.

- Using Microsoft 365 to relay email from your on-premises email servers can be a complex project in itself. A simple example is a small number of apps or devices that send most of their messages to internal recipients and aren't used for mass mailings. See [this guide](/exchange/mail-flow-best-practices/how-to-set-up-a-multifunction-device-or-application-to-send-email-using-microsoft-365-or-office-365) for details. More extensive environments need to be more thoughtful. Marketing email and messages that could be seen as spam by recipients aren't allowed.

- Defender for Office 365 doesn't have a feature for aggregating DMARC reports. Visit the [Microsoft Intelligent Security Association (MISA) catalog](https://www.microsoft.com/misapartnercatalog) to view third-party vendors that offer DMARC reporting for Microsoft 365.

## Move features that modify messages into Microsoft 365

You need to transfer any customizations or features that modify messages in any way into Microsoft 365. For example, your existing protection service adds an **External** tag to the subject or message body of messages from external senders. Any link wrapping feature will also cause problems with some messages. If you're using such a feature today, you should prioritize the rollout of Safe Links as an alternative to minimize problems.

If you don't turn off message modification features in your existing protection service, you can expect the following negative results in Microsoft 365:

- DKIM will break. Not all senders rely on DKIM, but senders that do will fail authentication.
- [Spoof intelligence](anti-phishing-protection-spoofing-about.md) and the tuning step later in this guide won't work properly.
- You'll probably get a high number of false positives (good mail marked as bad).

To recreate external sender identification in Microsoft 365, you have the following options:

- The [Outlook external sender call-out feature](https://techcommunity.microsoft.com/t5/exchange-team-blog/native-external-sender-callouts-on-email-in-outlook/ba-p/2250098), together with [first contact safety tips](anti-phishing-policies-about.md#first-contact-safety-tip).
- Mail flow rules (also known as transport rules). For more information, see [Organization-wide message disclaimers, signatures, footers, or headers in Exchange Online](/exchange/security-and-compliance/mail-flow-rules/disclaimers-signatures-footers-or-headers).

Microsoft is working with the industry to support the Authenticated Received Chain (ARC) standard. If you wish to leave any message modification features enabled at your current mail gateway provider, then we recommend contacting them about their plans to support this standard.

## Account for any active phishing simulations

If you have active third-party phishing simulations, you need to prevent the messages, links, and attachments from being identified as phishing by Defender for Office 365. For more information, see [Configure third-party phishing simulations in the advanced delivery policy](skip-filtering-phishing-simulations-sec-ops-mailboxes.md#use-the-microsoft-365-defender-portal-to-configure-third-party-phishing-simulations-in-the-advanced-delivery-policy).

## Define spam and bulk user experiences

- **Quarantine vs. deliver to Junk Email folder**: The natural and recommended response for malicious and definitely risky messages is to quarantine the messages. But, how do you want your users to handle less harmful messages, such as spam, and bulk mail (also known as *gray mail*)? Should these types of messages be delivered to user Junk Email folders?

  With our Standard security settings, we generally deliver these less risky types of messages to the Junk Email folder. This behavior is similar to many consumer email offerings, where users can check their Junk Email folder for missing messages, and they can rescue those messages themselves. Or, if the user intentionally signed up for a newsletter or marketing mail, they can choose to unsubscribe or block the sender for their own mailbox.

  However, many enterprise users are used to little (if any) mail in their Junk Email folder. Instead, these users are used to checking a quarantine for their missing messages. Quarantine introduces issues of quarantine notifications, notification frequency, and the permissions that are required to view and release messages.

  Ultimately, it's your decision if you want to prevent delivery of email to the Junk Email folder in favor of delivery to quarantine. But, one thing is certain: if the experience in Defender for Office 365 is different than what your users are used to, you need to notify them and provide basic training. Incorporate learnings from the pilot and make sure that users are prepared for any new behavior for email delivery.

- **Wanted bulk mail vs. unwanted bulk mail**: Many protection systems allow users to allow or block bulk email for themselves. These settings don't easily migrate to Microsoft 365, so you should consider working with VIPs and their staff to recreate their existing configurations in Microsoft 365.

  Today, Microsoft 365 considers some bulk mail (for example, newsletters) as safe based on the message source. Mail from these "safe" sources is currently not marked as bulk (the bulk complaint level or BCL is 0 or 1), so it's difficult to globally block mail from these sources. For most users, the solution is to ask them to individually unsubscribe from these bulk messages or use Outlook to block the sender. But, some users don't like blocking or unsubscribing from bulk messages themselves.

  Mail flow rules that filter bulk email can be helpful when VIP users don't wish to manage bulk email themselves. For more information, see [Use mail flow rules to filter bulk email](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-filter-bulk-mail).

## Identify and designate priority accounts

If the feature is available to you, **priority accounts** and **user tags** can help to identify your important Microsoft 365 users so they stand out in reports. For more information, see [User tags in Microsoft Defender for Office 365](user-tags-about.md) and [Manage and monitor priority accounts](/microsoft-365/admin/setup/priority-accounts).

## Next step

**Congratulations**! You have completed the **Prepare** phase of your [migration to Microsoft Defender for Office 365](migrate-to-defender-for-office-365.md#the-migration-process)!

- Proceed to [Phase 2: Setup](migrate-to-defender-for-office-365-setup.md).
