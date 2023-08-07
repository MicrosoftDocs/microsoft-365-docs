---
title: Quarantined email messages
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: overview
ms.localizationpriority: medium
search.appverid:
  - MOE150
  - MED150
  - MET150
ms.assetid: 4c234874-015e-4768-8495-98fcccfc639b
ms.collection:
  - m365-security
  - tier1
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn about quarantine in Exchange Online Protection (EOP) that holds potentially dangerous or unwanted messages.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 7/24/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Quarantined email messages in EOP and Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine is available to hold potentially dangerous or unwanted messages.

> [!NOTE]
> Quarantine isn't available in Microsoft 365 operated by 21Vianet.

Whether a detected message is quarantined by default depends on the following factors:

- The protection feature that detected the message. For example, the following detections are always quarantined:
  - Malware detections by [anti-malware policies](anti-malware-policies-configure.md) and [Safe Attachments policies](safe-attachments-policies-configure.md), including [Built-in protection](preset-security-policies.md) for Safe Attachments.
  - High-confidence phishing detections by [anti-spam policies](anti-spam-policies-configure.md).
- Whether you're using the Standard and/or Strict [preset security policies](preset-security-policies.md). The Strict profile quarantines more types of detections than the Standard profile.

The default actions for protection features in EOP and Defender for Office 365, including preset security policies, are described in the feature tables in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

For anti-spam and anti-phishing protection, admins can also modify the default policy or create custom policies to quarantine messages instead of delivering them to the Junk Email folder. For instructions, see the following articles:

- [Configure anti-spam policies in EOP](anti-spam-policies-configure.md)
- [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md)
- [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)

The protection policies for [supported features](quarantine-policies.md#step-2-assign-a-quarantine-policy-to-supported-features) have one or more _quarantine policies_ assigned to them (each action within the protection policy has an associated quarantine policy assignment).

_Quarantine policies_ define what users are able to do or not do to quarantined messages, and whether users receive quarantine notifications for those messages. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

The default quarantine policies that are assigned to protection feature verdicts enforce the historical capabilities that users get for their quarantined messages (messages where they're a recipient). For more information, see the table in [Find and release quarantined messages as a user in EOP](quarantine-end-user.md). For example, only admins can work with messages that were quarantined as malware or high confidence phishing. By default, users can work with their messages that were quarantined as spam, bulk, phishing, spoof, user impersonation, domain impersonation, or mailbox intelligence.

Admins can create and apply custom quarantine policies that define less restrictive or more restrictive capabilities for users, and also turn on quarantine notifications. For more information, see [Create quarantine policies](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

> [!NOTE]
> Users can't release their own messages that were quarantined as malware by anti-malware or Safe Attachments policies, or as high confidence phishing by anti-spam policies, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware or high-confidence phishing messages.

Both users and admins can work with quarantined messages:

- Admins can work with all types of quarantined messages for all users, including messages that were quarantined as malware, high confidence phishing, or as a result of mail flow rules (also known as transport rules). For more information, see [Manage quarantined messages and files as an admin in EOP](quarantine-admin-manage-messages-files.md).

- Users can work with their quarantined messages based on the protection feature that quarantined the message, and the setting in corresponding quarantine policy. For more information, see [Find and release quarantined messages as a user in EOP](quarantine-end-user.md).

- Admins can report false positives to Microsoft from quarantine. For more information, see [Take action on quarantined email](quarantine-admin-manage-messages-files.md#take-action-on-quarantined-email) and [Take action on quarantined files](quarantine-admin-manage-messages-files.md#take-action-on-quarantined-files).

- Users can also report false positives to Microsoft from quarantine, depending on the value of the **Reporting from quarantine** setting in [user reported settings](submissions-user-reported-messages-custom-mailbox.md).

How long quarantined messages or files are held in quarantine before they expire depends why the message or file was quarantined. Features and their corresponding retention periods are described in the following table:

|Quarantine reason|Default retention period|Customizable?|Comments|
|---|---|:---:|---|
|Messages quarantined by anti-spam policies: spam, high confidence spam, phishing, high confidence phishing, or bulk.|15 days: <ul><li>In the default anti-spam policy.</li><li>In anti-spam policies that you create in PowerShell.</li></ul> <br/> 30 days in anti-spam policies that you create in the Microsoft 365 Defender portal.|Yes|You can configure (lower) this value in anti-spam policies. For more information, see the **Retain spam in quarantine for this many days** (_QuarantineRetentionPeriod_) setting in [Configure anti-spam policies](anti-spam-policies-configure.md).|
|Messages quarantined by anti-phishing policies: spoof intelligence in EOP; user impersonation, domain impersonation, or mailbox intelligence in Defender for Office 365.|30 days|Yes|This retention period is also controlled by the **Retain spam in quarantine for this many days** (_QuarantineRetentionPeriod_) setting in **anti-spam** policies. The retention period that's used is the value from the first matching **anti-spam** policy that the recipient is defined in.|
|Messages quarantined by anti-malware policies (malware messages).|30 days|No|If you turn on the *common attachments filter* in anti-malware policies (in the default policy or in custom policies), file attachments in email messages to the affected recipients are treated as malware based solely on the file extension. A predefined list of mostly executable file types is used by default, but you can customize the list. For more information, see [Common attachments filter in anti-malware policies](anti-malware-protection-about.md#common-attachments-filter-in-anti-malware-policies).|
|Messages quarantined by Safe Attachments policies in Defender for Office 365 (malware messages).|30 days|No||
|Messages quarantined by mail flow rules: the action is **Deliver the message to the hosted quarantine** (_Quarantine_).|30 days|No||
|Files quarantined by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams (malware files).|30 days|No|Files quarantined in SharePoint or OneDrive are removed fom quarantine after 30 days, but the blocked files remain in SharePoint or OneDrive in the blocked state.|

When a message expires from quarantine, you can't recover it.

For more information about quarantine, see [Quarantine FAQ](quarantine-faq.yml).
