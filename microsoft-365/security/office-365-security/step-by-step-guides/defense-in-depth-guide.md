---
title: Getting started with defense in-depth configuration for email security
description: Step-by-step configuration guidance on how to get security value from Microsoft Defender for Office 365 when you have third party email filtering.
search.product:
ms.service: microsoft-365-security
ms.subservice: mdo
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: benharri
author: MSFTBen
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
search.appverid: met150
ms.date: 1/31/2023
---

# Getting the best security value from Microsoft Defender for Office 365 when you have third party email filtering

This guide is for you if:

- You're licensed for Microsoft Defender for Office 365 and host your mailboxes in Office 365
- You're also using a third party for your email security

The information below will detail how to get the most out of your investment, broken down into easy to follow steps.

## What you will need

- Mailboxes hosted in Office 365
- One or more of:
  - Microsoft Defender for Office 365 Plan 1 for protection features
  - Microsoft Defender for Office 365 Plan 2 for most other features (included in E5 plans)
  - Microsoft Defender for Office 365 Trial (available to all customers at aka.ms/tryMDO)
- Sufficient permissions to configure the features discussed below

## Step 1 – Understand the value you already have

### Protection features

- Built-in protection offers a base level of unobtrusive protection, and includes malware, zero day (Safe Attachments), and URL protection (Safe Links) in email (including internal email), SharePoint Online, OneDrive, and Teams. Note that URL protection provided in this state is via API call only. It doesn't wrap or rewrite URLs but does require a supported Outlook client. You can create your own custom policies to expand your protection.

**Read more & watch an overview video of Safe Links here:** [Complete Safe Links overview](../safe-links-about.md)

**Read more about Safe Attachments here:** [Safe Attachments](../safe-attachments-about.md)

### Detection, investigation, response and hunting features

- When alerts fire in Microsoft Defender for Office 365, they're automatically correlated, and combined into Incidents to help reduce the alert fatigue on security staff. Automated Investigation and Response (AIR) will trigger investigations to help remediate and contain threats.

**Read more, watch an overview video and get started here :** [Incident response with Microsoft 365 Defender](/microsoft-365/security/defender/incidents-overview)

- Threat Analytics is our in-product detailed threat intelligence solution from expert Microsoft security researchers, detailed reports designed to get you up to speed on the latest threat groups, attack techniques, how to protect your organization with Indicators of Compromise (IOC) and much more.

**Read more, watch an overview video and get started here :** [Threat analytics in Microsoft 365 Defender](../../defender/threat-analytics.md)

- Explorer can be used to hunt threats, visualize mail flow patterns, spot trends, and identify the impact of changes you make during tuning Defender for Office 365. You can also quickly delete messages from your organization with a few simple clicks.

**Read more, and get started here:** [Threat Explorer and Real-time detections](../threat-explorer-about.md)

## Step 2 – Enhance the value further with these simple steps

### Protection features

- Consider enabling policies beyond the built-in Protection. Enabling time-of-click protection, or impersonation protection, for example, to add extra layers or fill gaps missing from your third party protection. Be aware that if you have a transport rule or connection filter that is overriding verdicts (this also can be known as SCL=-1) you'll need to address this before turning on other protection features.

**Read more here:** [Anti-phishing policies](../anti-phishing-policies-about.md)

- If your current security provider is configured to modify messages *in any way*, it's important to note that authentication signals can impact the ability for Defender for Office to protect you against attacks such as spoofing. If your third party supports Authenticated Received Chain (ARC), then enabling this is a highly recommended step in your journey to advanced dual filtering. Moving any message modification configuration to Defender for Office 365 is also an alternative.

**Read more here:** [Use Trusted ARC senders for legitimate devices and services between the sender and receiver](../use-arc-exceptions-to-mark-trusted-arc-senders.md)

- Enhanced Filtering for connectors allows IP address and sender information to be preserved through the third party. This improves accuracy for the filtering (protection) stack, post breach capabilities & authentication improvements.

**Read more here:** [Enhanced filtering for connectors in Exchange Online](/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors)

- Priority account protection will offer enhanced visibility for accounts in tooling, along with additional protection when in an advanced defense in-depth configuration state.

**Read more here:** [Priority account protection](protect-your-c-suite-with-priority-account-protection.md)

- Advanced Delivery should be configured to deliver any third party phish simulations correctly, and if you have a Security Operations mailbox, consider defining it as a SecOps mailbox to ensure emails *do not* get removed from the mailbox due to threats.

**Read more here:** [Advanced delivery](../skip-filtering-phishing-simulations-sec-ops-mailboxes.md)

- You can configure user reported settings to allow users to report good or bad messages to Microsoft, to a designated reporting mailbox (to integrate with current security workflows) or both. Admins can use the **User reported** tab on the **Submissions** page to triage false positives and false negative user reported messages.

**Read more here:** [Deploy and configure the report message add-in to users](deploy-and-configure-the-report-message-add-in.md)

### Detection, investigation, response, and hunting features

- Advanced hunting can be used to proactively hunt for threats in your organization, using shared queries from the community to help you get started. You can also use custom detections to set up alerts when personalized criteria are met.

**Read more, watch an overview video and get started here:** [Overview - Advanced hunting](../../defender/advanced-hunting-overview.md)

### Education features

- Attack simulation training allows you to run realistic but benign cyber-attack scenarios in your organization. If you don't already have phishing simulation capabilities from your primary email security provider, Microsoft's simulated attacks can help you identify and find vulnerable users, policies, and practices. This is important knowledge to have and correct *before* a real attack impacts your organization. Post simulation we assign in product or custom training to educate users about the threats they missed, ultimately reducing your organization's risk profile. With Attack simulation training we deliver messages directly into the inbox, so the user experience is rich. This also means no security changes such as overrides needed to get simulations delivered correctly.

**Get started here:** [Get started using Attack simulation](../attack-simulation-training-get-started.md)

**Jump right into delivering a simulation here:** [How to setup automated attacks and training within Attack simulation training](how-to-setup-attack-simulation-training-for-automated-attacks-and-training.md)

## Step 3 and beyond, becoming a dual use hero

- Many of the detection, investigation, response, and hunting activities described above should be repeated by your security teams. This guidance offers a detailed description of tasks, cadence, and team assignments we would recommend.

**Read More:** [Security Operations Guide for Defender for Office 365](../mdo-sec-ops-guide.md)

- Consider user experiences such as accessing multiple quarantines, or the submission / reporting of false positives and false negatives. You can mark messages which are detected by the third party service with a custom *X* header, for example, to allow Defender for Office 365 to detect and quarantine them via transport rules, which would also give users a single place to access quarantined mail.

**Read More:** [How to configure quarantine permissions and policies](how-to-configure-quarantine-permissions-with-quarantine-policies.md)

- The Migration guide contains lots of useful guidance on preparing and tuning your environment to ready it for a migration. But many of the steps are *also* applicable to a dual-use scenario. Simply ignore the MX switch guidance in the final steps.

**Read it here:** [Migrate from a third-party protection service to Microsoft Defender for Office 365 - Office 365 | Microsoft Docs](../migrate-to-defender-for-office-365.md)

## More information

[Migrate from a third-party protection service to Microsoft Defender for Office 365](../migrate-to-defender-for-office-365.md)

[Security Operations Guide for Defender for Office 365](../mdo-sec-ops-guide.md)

[Get more out of Microsoft Defender for Office 365 with Microsoft 365 Defender](https://www.youtube.com/watch?v=Tdz6KfruDGo)
