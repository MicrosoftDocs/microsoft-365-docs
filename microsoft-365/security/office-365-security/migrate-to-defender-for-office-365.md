---
title: Migrate from a third-party protection service to Microsoft Defender for Office 365
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
ms.custom:
description: Learn the right way to migrate from third-party protection services or devices like Google Postini, the Barracuda Spam and Virus Firewall, or Cisco IronPort to Microsoft Defender for Office 365 protection.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
---

# Migrate from a third-party protection service or device to Microsoft Defender for Office 365

If you already have an existing third-party protection service or device that sits in front of Microsoft 365, you can use this guide to migrate your protection to Microsoft Defender for Office 365. Defender for Office 365 gives you the benefits of a consolidated management experience, potentially reduced cost (using products that you already pay for), and a mature product with integrated security protection. For more information, see [Microsoft Defender for Office 365](https://www.microsoft.com/security/business/threat-protection/office-365-defender).

Watch this short video to learn more about migrating to Defender for Office 365.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWRwfH]

This guide provides specific and actionable steps for your migration, and assumes the following facts:

- You already have Microsoft 365 mailboxes, but you're currently using a third-party service or device for email protection. Mail from the internet flows through the protection service before delivery into your Microsoft 365 organization. Microsoft 365 protection is as low as possible (it's never completely off. For example, malware protection is always enforced).

  :::image type="content" source="../../media/mdo-migration-before.png" alt-text="The Mail flows from the internet through the third-party protection service or device before delivery into Microsoft 365" lightbox="../../media/mdo-migration-before.png":::

- You're beyond the investigation and consideration phase for protection by Defender for Office 365. If you need to evaluate Defender for Office 365 to decide whether it's right for your organization, we recommend that you consider the options described in [Try Microsoft Defender for Office 365](try-microsoft-defender-for-office-365.md).

- You've already purchased Defender for Office 365 licenses.

- You need to retire your existing third-party protection service, which means you ultimately need to point the MX records for your email domains to Microsoft 365. When you're done, mail from the internet flows directly into Microsoft 365 and is protected exclusively by Exchange Online Protection (EOP) and Defender for Office 365.

  :::image type="content" source="../../media/mdo-migration-after.png" alt-text="The mail flows from the internet into Microsoft 365" lightbox="../../media/mdo-migration-after.png":::

Eliminating your existing protection service in favor of Defender for Office 365 is a big step that you shouldn't take lightly, nor should you rush to make the change. The guidance in this migration guide will help you transition your protection in an orderly manner with minimal disruption to your users.

The high-level migration steps are illustrated in the following diagram. The actual steps are listed in the section named [The migration process](#the-migration-process) later in this article.

:::image type="content" source="../../media/mdo-migration-overview.png" alt-text="The process of migration from a third-party protection solution or device to Defender for Office 365" lightbox="../../media/mdo-migration-overview.png":::

## Why use the steps in this guide?

In the IT industry, surprises are generally bad. Simply flipping your MX records to point to Microsoft 365 without prior and thoughtful testing will result in many surprises. For example:

- You or your predecessors have likely spent a lot of time and effort customizing your existing protection service for optimal mail delivery (in other words, blocking what needs to be blocked, and allowing what needs to be allowed). It's almost a guaranteed certainty that not every customization in your current protection service is required in Defender for Office 365. It's also possible that Defender for Office 365 will introduce new issues (allows or blocks) that didn't happen or weren't required in your current protection service.
- Your help desk and security personnel need to know what to do in Defender for Office 365. For example, if a user complains about a missing message, does your help desk know where or how to look for it? They're likely familiar with the tools in your existing protection service, but what about the tools in Defender for Office 365?

In contrast, if you follow the steps in this migration guide, you get the following tangible benefits for your migration:

- Minimal disruption to users.
- Objective data from Defender for Office 365 that you can use as you report on the progress and success of the migration to management.
- Early involvement and instruction for help desk and security personnel.

The more you familiarize yourself with how Defender for Office 365 will affect your organization, the better the transition will be for users, help desk personnel, security personnel, and management.

This migration guide gives you a plan for gradually "turning the dial" so you can monitor and test how Defender for Office 365 affects users and their email so you can react quickly to any issues that you encounter.

## The migration process

The process of migrating from a third-party protection service to Defender for Office 365 can be divided into three phases as described in the following table:

:::image type="content" source="../../media/phase-diagrams/migration-phases.png" alt-text="The process for migrating to Defender for Office 365" lightbox="../../media/phase-diagrams/migration-phases.png":::

|Phase|Description|
|---|---|
|[Prepare for your migration](migrate-to-defender-for-office-365-prepare.md)|<ol><li>[Inventory the settings at your existing protection service](migrate-to-defender-for-office-365-prepare.md#inventory-the-settings-at-your-existing-protection-service)</li><li>[Check your existing protection configuration in Microsoft 365](migrate-to-defender-for-office-365-prepare.md#check-your-existing-protection-configuration-in-microsoft-365)</li><li>[Check your mail routing configuration](migrate-to-defender-for-office-365-prepare.md#check-your-mail-routing-configuration)</li><li>[Move features that modify messages into Microsoft 365](migrate-to-defender-for-office-365-prepare.md#move-features-that-modify-messages-into-microsoft-365)</li><li>[Define spam and bulk user experiences](migrate-to-defender-for-office-365-prepare.md#define-spam-and-bulk-user-experiences)</li><li>[Identify and designate priority accounts](migrate-to-defender-for-office-365-prepare.md#identify-and-designate-priority-accounts)</li></ol>|
|[Set up Defender for Office 365](migrate-to-defender-for-office-365-setup.md)|<ol><li>[Create distribution groups for pilot users](migrate-to-defender-for-office-365-setup.md#step-1-create-distribution-groups-for-pilot-users)</li><li>[Configure user reported message settings](migrate-to-defender-for-office-365-setup.md#step-2-configure-user-reported-message-settings)</li><li>[Maintain or create the SCL=-1 mail flow rule](migrate-to-defender-for-office-365-setup.md#step-3-maintain-or-create-the-scl-1-mail-flow-rule)</li><li>[Configure Enhanced Filtering for Connectors](migrate-to-defender-for-office-365-setup.md#step-4-configure-enhanced-filtering-for-connectors)</li><li>[Create pilot protection policies](migrate-to-defender-for-office-365-setup.md#step-5-create-pilot-protection-policies)</li></ol>|
|[Onboard to Defender for Office 365](migrate-to-defender-for-office-365-onboard.md)|<ol><li>[Begin onboarding Security Teams](migrate-to-defender-for-office-365-onboard.md#step-1-begin-onboarding-security-teams)</li><li>[(Optional) Exempt pilot users from filtering by your existing protection service](migrate-to-defender-for-office-365-onboard.md#step-2-optional-exempt-pilot-users-from-filtering-by-your-existing-protection-service)</li><li>[Tune spoof intelligence](migrate-to-defender-for-office-365-onboard.md#step-3-tune-spoof-intelligence)</li><li>[Tune impersonation protection and mailbox intelligence](migrate-to-defender-for-office-365-onboard.md#step-4-tune-impersonation-protection-and-mailbox-intelligence)</li><li>[Use data from user reported messages to measure and adjust](migrate-to-defender-for-office-365-onboard.md#step-5-use-data-from-user-reported-messages-to-measure-and-adjust)</li><li>[(Optional) Add more users to your pilot and iterate](migrate-to-defender-for-office-365-onboard.md#step-6-optional-add-more-users-to-your-pilot-and-iterate)</li><li>[Extend Microsoft 365 protection to all users and turn off the SCL=-1 mail flow rule](migrate-to-defender-for-office-365-onboard.md#step-7-extend-microsoft-365-protection-to-all-users-and-turn-off-the-scl-1-mail-flow-rule)</li><li>[Switch your MX records](migrate-to-defender-for-office-365-onboard.md#step-8-switch-your-mx-records)</li></ol>|

## Next step

- Proceed to [Phase 1: Prepare](migrate-to-defender-for-office-365-prepare.md).
