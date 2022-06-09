---
title: "About the Microsoft Defender for Office 365 trial"
f1.keywords:
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: overview
ms.prod: m365-security
ms.technology: mdo
ms.localizationpriority: medium
search.appverid:
- MET150
ms.assetid:
ms.collection: 
- M365-security-compliance
- m365initiative-defender-office365
ms.custom:
- seo-marvel-apr2020
ROBOTS: NOINDEX, NOFOLLOW
description: "Admins can learn about the trial mode of Microsoft Defender for Office 365"
---

# About the Microsoft Defender for Office 365 trial

> [!IMPORTANT]
> Get started quickly with our easy to use [Trial playbook for Microsoft Defender for Office 365](trial-playbook-defender-for-office-365.md). This playbook will help you make the most of your free trial by showing you how to safeguard your organization with Microsoft Defender for Office 365.

Microsoft Defender for Office 365 safeguards your organization against malicious threats that are posed by email messages, links (URLs), and collaboration tools. Defender for Office 365 includes:

- **Threat protection policies**: Define threat-protection policies to set the appropriate level of protection for your organization.
- **Reports**: View real-time reports to monitor Defender for Office 365 performance in your organization.
- **Threat investigation and response capabilities**: Use leading-edge tools to investigate, understand, simulate, and prevent threats.
- **Automated investigation and response capabilities**: Save time and effort investigating and mitigating threats.

A Microsoft Defender for Office 365 trial is an easy way to try out the capabilities of Defender for Office 365 Plan 2 for free, after only a few clicks. These high level capabilities are described in the following table:

|Feature|Description|
|---|---|
|[Exclusive settings in anti-phishing policies](set-up-anti-phishing-policies.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)|Get user impersonation protection, domain impersonation protection, mailbox intelligence, and advanced phishing thresholds.|
|[Safe Attachments](safe-attachments.md)|Inspect email attachments and other files in a controlled detonation environment to catch new and evasive malware.|
|[Safe Links](safe-links.md)|Perform time-of-click checks to ensure URLs that might have passed initial inspection have not been weaponized.|
|[Threat Trackers](threat-trackers.md)<sup>\*</sup>|Use informative widgets and views to identify cybersecurity issues that might impact your organization.|
|[Threat Explorer](threat-explorer.md)<sup>\*</sup>|Hunt with near real-time information about threats in your Office 365 email.|
|[Automated investigation and response (AIR)](office-365-air.md)<sup>\*</sup>|Automatically locate and remediate threat objects as alerts are triggered.|
|[Attack simulation training](attack-simulation-training.md)<sup>\*</sup>|Train your users to identify phishing attacks and respond appropriately.|
|[Campaign Views](campaigns.md)<sup>\*</sup>|Investigate and respond to large-scale malicious email activity.|
|[Reports using Defender for Office 365 capabilities](view-reports-for-mdo.md)|View reports including threat protection status, URL threat protection, mail latency, and more.|
|[Priority account protection](/microsoft-365/admin/setup/priority-accounts)<sup>\*</sup>|Users that you identify as Priority accounts are tagged in alerts, reports, and investigations so they stand out. You can also use the Priority tag in filters.|

<sup>\*</sup> This feature is exclusive to Defender for Office 365 Plan 2.

## Set up a Defender for Office 365 trial

A trial allows organizations to easily set up and configure the Defender for Office 365 capabilities. During setup, policies that are exclusive to Defender for Office 365 (specifically, [Safe Attachments for email messages](safe-attachments.md), [Safe Links for email messages and Microsoft Teams](safe-links.md), and [impersonation protection in anti-phishing policies](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)) are applied using the Standard template for [preset security policies](preset-security-policies.md).

By default, these policies are scoped to all users in the organization, but during or after the setup of the trial, you can change the policy assignment to specific users.

> [!NOTE]
> Your existing anti-spam policies are likely configured with the action **Move message to Junk Email folder** for the high confidence spam verdict in anti-spam policies. The Standard template for preset security policies uses the action **Quarantine message** for high confidence spam, and preset security policies are always applied before custom anti-spam policies or the default anti-spam policy. For more information about default, Standard, and Strict settings, see [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

Other workloads are also available for protection (for example, [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](mdo-for-spo-odb-and-teams.md) and [Safe Links for supported Office 365 apps](safe-links.md#safe-links-settings-for-office-365-apps).

During the setup of the trial, response functionality that's exclusive to Defender for Office 365 Plan 2 (for example, [AIR](office-365-air.md) and [Threat Explorer](threat-explorer.md) is also set up for the entire organization. No policy scoping is required.

## Licensing

As part of the trial setup, the Defender for Office 365 licenses are automatically applied to the organization. The licenses are free of charge for the first 90 days.

The licensing card for the trial shows the following information:

:::image type="content" source="../../media/mdo-trial-licensing-card.png" alt-text="The Licensing card in the Microsoft Defender for Office 365 trial" lightbox="../../media/mdo-trial-licensing-card.png":::

- **Usage type** section:
  - **Trial**: The number of trial Defender for Office 365 licenses that are available for you to use.

    > [!NOTE]
    > In other locations, you might see the value 300 for your number of available trial licenses. This value is incorrect (unless your organization happens to have exactly 300 users). The number of trial licenses that are available to you corresponds the size of your organization, not the arbitrary value 300.

  - **Paid**: The number of paid Defender for Office 365 licenses (if any).

- **Usage** section: How many of your users are covered by Defender for Office 365 policies.
  - **Detection & response only**: The total number of users that are included in the following scenarios:
    - During the trial, you scoped the policies to specific users.
    - You have custom polices that are scoped to specific users.
  - **Full protection**: The total number of users that are protected by Defender for Office 365 Plan 2 features (AIR, Threat Explorer, Attack simulation training, etc.).

## Permissions

To start or end the trial, you need to be a member of the **Global Administrator** or **Security Administrator** roles in Azure Active Directory. For details, see [About admin roles](../../admin/add-users/about-admin-roles.md).

## Additional information

After you start the trial, it might take up to 2 hours for the changes and updates to be available. And, admins must log out and log back in to see the changes.

## Availability

The Defender for Office 365 trial is gradually rolling out to existing customers who meet specific criteria and who don't have existing Defender for Office 365 Plan 2 licenses (included in their subscription or as an add-on).

## Terms and conditions

For more information, see [Microsoft Defender for Office 365 Trial Terms & Conditions](defender-for-office-365-trial-terms-and-conditions.md).

## Frequently asked questions

### Q: How do I extend the trial?

A: See [Extend your trial](/microsoft-365/commerce/try-or-buy-microsoft-365#extend-your-trial).

### Q: What happens to my data after the trial expires?

A: After your trial expires, you'll have access to your trial data (data from features in Defender for Office 365 that you didn't have previously) for 30 days. After this 30 day period, all policies and data that were associated with the Defender for Office 365 trial will be deleted.

### Q: How many times can I use the Defender for Office 365 trial in my organization?

A: A maximum of 2 times. If your first trial expires, you need to wait at least 30 days after the expiration date before you can enroll in the Defender for Office 365 trial again. After your second trial, you can't enroll in another trial.

## Learn more about Defender for Office 365

Defender for Office 365 helps organizations secure their enterprise by offering a comprehensive slate of capabilities.

You can also learn more about Defender for Office 365 at this [interactive guide](https://aka.ms/MS365D.InteractiveGuide).

:::image type="content" source="../../media/microsoft-defender-for-office-365.png" alt-text="The Microsoft Defender for Office 365 conceptual diagram" lightbox="../../media/microsoft-defender-for-office-365.png":::

### Prevention

A robust filtering stack prevents a wide variety of volume-based and targeted attacks including business email compromise, credential phishing, ransomware, and advanced malware.

- [Anti-phishing policies: Exclusive settings in Defender for Office 365](set-up-anti-phishing-policies.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
- [Safe Attachments](safe-attachments.md)
- [Safe Links](safe-links.md)

### Detection

Industry-leading AI detects malicious and suspicious content and correlates attack patterns to identify campaigns designed to evade protection.

- [Campaign Views in Microsoft Defender for Office 365](campaigns.md)

### Investigation and hunting

Powerful experiences help identify, prioritize, and investigate threats, with advanced hunting capabilities to track attacks across Office 365.

- [Threat Explorer and Real-time detections](threat-explorer.md)
- [Real-time reports in Defender for Office 365](view-reports-for-mdo.md)
- [Threat Trackers - New and Noteworthy](threat-trackers.md)
- Integration with [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

### Response and remediation

Extensive incident response and automation capabilities amplify your security team's effectiveness and efficiency.

- [Automated investigation and response (AIR) in Microsoft Defender for Office 365](office-365-air.md)

### Awareness and training

Rich simulation and training capabilities along with integrated experiences within client applications build user awareness.

- [Get started using Attack simulation training](attack-simulation-training-get-started.md)

### Security posture

Recommended templates and configuration insights help customers get and stay secure.

- [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md)
- [Configuration analyzer for protection policies in EOP and Microsoft Defender for Office 365](configuration-analyzer-for-security-policies.md).

## Give feedback

Your feedback helps us get better at protecting your environment from advanced attacks. Share your experience and impressions of product capabilities and trial results.
