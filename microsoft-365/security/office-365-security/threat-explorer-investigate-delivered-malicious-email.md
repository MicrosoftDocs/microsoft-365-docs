---
title: Investigate malicious email that was delivered in Microsoft 365, find and investigate malicious email
keywords: TIMailData-Inline, Security Incident, incident, Microsoft Defender for Endpoint PowerShell, email malware, compromised users, email phish, email malware, read email headers, read headers, open email headers,special actions
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
ms.date: 2/27/2024
audience: ITPro
ms.topic: conceptual

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid: 8f54cd33-4af7-4d1b-b800-68f8818e5b2a
ms.collection:
  - m365-security
  - tier1
description: Learn how to use threat investigation and response capabilities to find and investigate malicious email.
ms.custom:
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Investigate malicious email that was delivered in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on have **Explorer** (also known as **Threat Explorer**) or **Real-time detections**. These features are powerful, near real-time tools to help Security Operations (SecOps) teams investigate and respond to threats. For more information, see [About Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-real-time-detections-about.md).

Threat Explorer and Real-time detections allow you to investigate activities that put people in your organization at risk, and to take action to protect your organization. For example:

- Find and delete messages.
- Identify the IP address of a malicious email sender.
- Start an incident for further investigation.

This article explains how to use Threat Explorer and Real-time detections to find malicious email in recipient mailboxes.

> [!TIP]
> To go directly to the remediation procedures, see [Remediate malicious email delivered in Office 365](remediate-malicious-email-delivered-office-365.md).
>
> For other email scenarios using Threat Explorer and Real-time detections, see the following articles:
>
> - [Threat hunting in Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-threat-hunting.md)
> - [Email security with Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-email-security.md)

## What do you need to know before you begin?

- Threat Explorer is included in Defender for Office 365 Plan 2. Real-time detections is included in Defender for Office Plan 1:
  - The differences between Threat Explorer and Real-time detections are described in [About Threat Explorer and Real-time detections in Microsoft Defender for Office 365](threat-explorer-real-time-detections-about.md).
  - The differences between Defender for Office 365 Plan 2 and Defender for Office Plan 1 are described in the [Defender for Office 365 Plan 1 vs. Plan 2 cheat sheet](mdo-security-comparison.md#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet).

- For filter properties that require you to select one or more available values, using the property in the filter condition with all values selected has the same result as not using the property in the filter condition.

- For permissions and licensing requirements for Threat Explorer and Real-time detections, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections).

## Find suspicious email that was delivered

1. Use one of the following steps to open Threat Explorer or Real-time detections:
   - **Threat Explorer**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorerv3>.
   - **Real-time detections**: In the Defender portal at <https://security.microsoft.com>, go to **Email & Security** \> **Real-time detections**. Or, to go directly to the **Real-time detections** page, use <https://security.microsoft.com/realtimereportsv3>.

2. On the **Explorer** or **Real-time detections** page, select an appropriate view:
   - **Threat Explorer**: Verify the [All email view](threat-explorer-real-time-detections-about.md#all-email-view-in-threat-explorer) is selected.
   - **Real-time detections**: Verify the [Malware view](threat-explorer-real-time-detections-about.md#malware-view-in-threat-explorer-and-real-time-detections) is selected, or select the [Phish view](threat-explorer-real-time-detections-about.md#phish-view-in-threat-explorer-and-real-time-detections).

3. Select the date/time range. The default is yesterday and today.

   :::image type="content" source="../../media/te-rtd-date-filter.png" alt-text="Screenshot of the date filter used in Threat Explorer and Real-time detections in the Defender portal." lightbox="../../media/te-rtd-date-filter.png":::

4. Create one or more filter conditions using some or all of the following targeted properties and values. For complete instructions, see [Property filters in Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#property-filters-in-threat-explorer-and-real-time-detections). For example:

   - **Delivery action**: The action taken on an email due to existing policies or detections. Useful values are:
     - **Delivered**: Email delivered to the user's Inbox or other folder where the user can access the message.
     - **Junked**: Email delivered to the user's Junk Email folder or Deleted Items folder where the user can access the message.
     - **Blocked**: Email messages that were quarantined, that failed delivery, or were dropped.

   - **Original delivery location**: Where email went before any automatic or manual post-delivery actions by the system or admins (for example, [ZAP](zero-hour-auto-purge.md) or moved to quarantine). Useful values are:
     - **Deleted items folder**
     - **Dropped**: The message was lost somewhere in mail flow.
     - **Failed**: The message failed to reach the mailbox.
     - **Inbox/folder**
     - **Junk folder**
     - **On-prem/external**: The mailbox doesn't exist in the Microsoft 365 organization.
     - **Quarantine**
     - **Unknown**: For example, after delivery, an Inbox rule moved the message to a default folder (for example, Draft or Archive) instead of to the Inbox or Junk Email folder.

   - **Last delivery location**: Where email ended-up after any automatic or manual post-delivery actions by the system or admins. The same values are available from **Original delivery location**.
  
   - **Directionality**: Valid values are:
     - **Inbound**
     - **Intra-org**
     - **Outbound**

     This information can help identify spoofing and impersonation. For example, messages from internal domain senders should be **Intra-org**, not **Inbound**.

   - **Additional action**: Valid values are:
     - **Automated remediation** (Defender for Office 365 Plan 2)
     - **Dynamic Delivery**: For more information, see [Dynamic Delivery in Safe Attachments policies](safe-attachments-about.md#dynamic-delivery-in-safe-attachments-policies).
     - **Manual remediation**
     - **None**
     - **Quarantine release**
     - **Reprocessed**: The message was retroactively identified as good.
     - **ZAP**: For more information, see [Zero-hour auto purge (ZAP) in Microsoft Defender for Office 365](zero-hour-auto-purge.md).

   - **Primary override**: If organization or user settings allowed or blocked messages that would have otherwise been blocked or allowed. Values are:
     - **Allowed by organization policy**
     - **Allowed by user policy**
     - **Blocked by organization policy**
     - **Blocked by user policy**
     - **None**

     These categories are further refined by the **Primary override source** property.

   - **Primary override source** The type of organization policy or user setting that allowed or blocked messages that would have otherwise been blocked or allowed. Values are:

     - **3rd Party Filter**
     - **Admin initiated time travel**
     - **Antimalware policy block by file type**: [Common attachments filter in anti-malware policies](anti-malware-protection-about.md#common-attachments-filter-in-anti-malware-policies)
     - **Antispam policy settings**
     - **Connection policy**: [Configure connection filtering](connection-filter-policies-configure.md)
     - **Exchange transport rule** (mail flow rule)
     - **Exclusive mode (User override)**: The **Only trust email from addresses in my Safe senders and domains list and Safe mailing lists** setting in the [safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).
     - **Filtering skipped due to on-prem organization**
     - **IP region filter from policy**: The **From these countries** filter in [anti-spam policies](anti-spam-protection-about.md#spam-properties-in-anti-spam-policies).
     - **Language filter from policy**: The **Contains specific languages** filter in [anti-spam policies](anti-spam-protection-about.md#spam-properties-in-anti-spam-policies).
     - **Phishing Simulation**: [Configure third-party phishing simulations in the advanced delivery policy](advanced-delivery-policy-configure.md#use-the-microsoft-defender-portal-to-configure-third-party-phishing-simulations-in-the-advanced-delivery-policy)
     - **Quarantine release**: [Release quarantined email](quarantine-admin-manage-messages-files.md#release-quarantined-email)
     - **SecOps Mailbox**: [Configure SecOps mailboxes in the advanced delivery policy](advanced-delivery-policy-configure.md#use-the-microsoft-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy)
     - **Sender address list (Admin Override)**: The allowed senders list or blocked senders list in [anti-spam policies](anti-spam-protection-about.md#allow-and-block-lists-in-anti-spam-policies).
     - **Sender address list (User override)**: Sender email addresses in the **Blocked Senders** list in the [safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).
     - **Sender domain list (Admin Override)**: The allowed domains list or blocked domains list in [anti-spam policies](anti-spam-protection-about.md#allow-and-block-lists-in-anti-spam-policies).
     - **Sender domain list (User override)**: Sender domains in the **Blocked Senders** list in the [safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md).
     - **Tenant Allow/Block List file block**: [Create block entries for files](tenant-allow-block-list-files-configure.md#create-block-entries-for-files)
     - **Tenant Allow/Block List sender email address block**: [Create block entries for domains and email addresses](tenant-allow-block-list-email-spoof-configure.md#create-block-entries-for-domains-and-email-addresses)
     - **Tenant Allow/Block List spoof block**: [Create block entries for spoofed senders](tenant-allow-block-list-email-spoof-configure.md#create-block-entries-for-spoofed-senders)
     - **Tenant Allow/Block List URL block**: [Create block entries for URLs](tenant-allow-block-list-urls-configure.md#create-block-entries-for-urls)
     - **Trusted contact list (User override)**: The **Trust email from my contacts** setting in the [safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).
     - **Tenant Allow/Block List file block**: [Create block entries for files](tenant-allow-block-list-files-configure.md#create-block-entries-for-files)
     - **Trusted domain (User override)**: Sender domains in the **Safe Senders** list in the [safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).
     - **Trusted recipient (User override)**: Recipient email addresses or domains in the **Safe Recipients** list in the [safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).
     - **Trusted senders only (User override)**: The **Safe Lists Only: Only mail from people or domains on your Safe Senders List or Safe Recipients List will be delivered to your Inbox** setting in the [safelist collection on a mailbox](configure-junk-email-settings-on-exo-mailboxes.md#use-exchange-online-powershell-to-configure-the-safelist-collection-on-a-mailbox).

   - **Override source**: Same available values as **Primary override source**.

     > [!TIP]
     > In the **Email** tab (view) in the details area of the **[All email](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer)**, **[Malware](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-malware-view-in-threat-explorer-and-real-time-detections)**, and **[Phish](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections)** views, the corresponding override columns are named **System overrides** and **System overrides source**.

   - **URL threat**: Valid values are:
     - **Malware**
     - **Phish**
     - **Spam**

5. When you're finished configuring date/time and property filters, select **Refresh**.

The **Email** tab (view) in the details area of the **[All email](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-all-email-view-in-threat-explorer)**, **[Malware](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-malware-view-in-threat-explorer-and-real-time-detections)**, or **[Phish](threat-explorer-real-time-detections-about.md#email-view-for-the-details-area-of-the-phish-view-in-threat-explorer-and-real-time-detections)** views contains the details you need to investigate suspicious email.

For example, Use the **Delivery Action**, **Original delivery location**, and **Last delivery location** columns in the **Email** tab (view) to get a complete picture of where the affected messages went. The values were explained in Step 4.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to selectively export up to 200,000 filtered or unfiltered results to a CSV file.

<!--- ### View the timeline of your email

**Email Timeline** is a field in Threat Explorer that makes hunting easier for your security operations team. When multiple events happen at or close to the same time on an email, those events show up in a timeline view. Some events that happen post-delivery to email are captured in the **Special actions** column. Combining information from the timeline of an email message with any special actions that were taken post-delivery gives admins insight into policies and threat handling (such as where the mail was routed, and, in some cases, what the final assessment was).  --->

## Remediate malicious email that was delivered

After you identify the malicious email messages that were delivered, you can remove them from recipient mailboxes. For instructions, see [Remediate malicious email delivered in Microsoft 365](remediate-malicious-email-delivered-office-365.md).

## Related articles

[Remediate malicious email delivered in Office 365](remediate-malicious-email-delivered-office-365.md)

[Microsoft Defender for Office 365](office-365-ti.md)

[View reports for Defender for Office 365](reports-defender-for-office-365.md)
