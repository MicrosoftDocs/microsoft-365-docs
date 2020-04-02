---
title: "Campaigns Views in ATP"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.reviewer: mcostea
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid:
ms.collection:
- M365-security-compliance
description: "Learn about Campaign Views in Office 365 Advanced Threat Protection."
---

# Campaign Views in ATP

Campaign Views is a feature in Advanced Threat Protection (ATP) in the Security & Compliance Center that identifies and categorizes phishing attacks in the service. Campaign Views can help you to:

- Efficiently investigate and respond to phishing attacks.

- Better understand the scope of the attack.

- Show value to decision makers.

Campaign Views lets you see the big picture of an attack faster and more complete than any human.

## What is a campaign?

A campaign is a coordinated email attack against one or many organizations. Email attacks that steal credentials and company data are a big and lucrative industry. As technologies increase in an effort to stop attacks, attackers modify their methods in an effort to ensure continued success.

Microsoft leverages the vast amounts of anti-phishing, anti-spam, and anti-malware data across the entire Office 365 service to help identify campaigns. We analyze and classify the attack information according to several factors. For example:

- **Attack source**: Source IP addresses and sender email domains.

- **Attack message properties**: The content, style, and tone of the attack messages.

- **Attack recipients**: Recipient domains, recipient job functions (admins, executives, etc.), company types (large, small, public, private, etc.), and industries.

- **Attack payload**: Malicious links, attachments, or other payloads in the attack messages.

A campaign might be short-lived, or could span several days, weeks, or months with active and inactive periods. A campaign might be launched against your specific organization, or your organization might be part of a larger campaign across multiple companies.

## Campaign Views the Security & Compliance Center

Campaign Views is available in the [Security & Compliance Center](https://protection.office.com) at **Threat management** \> **Campaigns**.

![Campaigns overview in the Security & Compliance Center](../../media/campaigns-overview.png)

You can also get to Campaigns View from:

- **Threat management** \> **Explorer** \> **View** \> **Campaigns**

- **Threat management** \> **Explorer** \> **View** \> **All email** \> **Campaign**

> [!TIP]
> If you don't see any campaign data, try changing the date range.

The overview page shows the following information about the campaign:

- **Name**

- **Sample subject**: The subject line of one of the messages in the campaign. Note that all messages in the campaign will not necessarily have the same subject.

- **Type**: Currently, this value is always **Phish**.

- **Subtype**: Where available, the brand that is being phished by this campaign. When the detection is driven by ATP technology, the prefix **ATP-** is added to the subtype value.

- **Recipients**: The number of users that were targeted by this campaign.

- **Inboxed**: The number of users that received messages from this campaign in their Inbox (not delivered to Junk).

- **Clicked**: The number of users that clicked on the URL in the phishing message.

- **Click Rate**: The percentage as calculated by "**Clicked** / **Inboxed**". This value is an indicator of the effectiveness of the campaign, and whether the recipients were able to identify the message as phishing and avoid clicking on the payload URL.

- **Visited**: How many users actually made it through to the payload website. If there are **Clicked** values, but Safe Links blocked access to the website, this value will be zero.

When you click on the name of a campaign, the campaign details appears in a flyout.

## Campaign details

In the campaign details view, a lot of information is available about the campaign:

- Campaign information:

  - **ID**: The unique campaign identifier.

  - **Started** and **Ended**: the date range filter you selected.

  - **Impact**: The following data for the date range filter you selected:
  
    - The total number of recipients.

    - The number of messages that were "Inboxed" (that is, delivered to the Inbox, not to Junk).

    - How many users clicked on the URL payload in the phishing message.

    - Howe many users visited the URL.

  - A timeline of campaign activity: When the campaign started and ended, and the volume of messages over time.

### Campaign flow

Important details about the campaign are presented in a horizontal flow diagram (known as a _Sankey_ diagram) in the **Flow** section. These details will help you to understand the elements of the campaign and the potential impact in your organization.

![Campaign details that don't contain user URL clicks](../../media/campaign-details-no-recipient-actions.png)

If you hover over a horizontal band in the diagram, you'll see the number of related messages (for example, messages from a particular source IP, messages from the source IP using the specified sender domain, etc.).

The diagram contains the following information:

- **Sender IPs**

- **Sender domains**

- **Filter verdicts**: The values here are related to the available phishing and spam filtering verdicts as described in [Anti-spam message headers](anti-spam-message-headers.md). The available values are described in the following table:

  |Value|Spam filter verdict|Description|
  |:-----|:-----|:-----|
  | **Allowed**|`SFV:SKN` <br/><br/> `SFV:SKI`|The message was marked as not spam and/or skipped filtering before being evaluated by spam filtering (for example, by a mail flow rule, also known as a transport rule).<br/><br/>The message skipped spam filtering for other reasons (for example, the sender and recipient appear to be in the same organization).|
  |**Blocked**|`SFV:SKS`|The message was marked as spam before being evaluated by spam filtering (for example, by a mail flow rule).|
  |**Detected**|`SFV:SPM`|The message was marked as spam by spam filtering.|
  |**Not Detected**|`SFV:NSPM`|The message was marked as not spam by spam filtering.|
  |**Released**|`SFV:SKQ`|The message skipped spam filtering because it was released from quarantine.|
  |**Tenant Allow**<sup>\*</sup>|`SFV:SKA`|The message skipped spam filtering due to anti-spam policy settings (for example, the sender was in the allowed sender list or allowed domain list).|
  |**Tenant Block**<sup>\*\*</sup>|`SFV:SKA`|The message was blocked by spam filtering due to anti-spam policy settings (for example, the sender was in the allowed sender list or allowed domain list).|
  |**User Allow**<sup>\*</sup>|`SFV:SFE`|The message skipped spam filtering because the sender was in a user's Safe Senders list in Outlook.|
  |**User Block**<sup>\*\*</sup>|`SFV:BLK`|The message was blocked by spam filtering because the sender was in a user's Blocked Senders list in Outlook.|
  |**ZAP**|n/a|[Zero-hour auto purge (ZAP)](zero-hour-auto-purge.md) took action on the delivered message according to your anti-spam policy settings (moved to the Junk Email folder or Quarantined).|

  <sup>\*</sup> Review your anti-spam policies, because the allowed message would have likely been blocked by the service.

  <sup>\*\*</sup> Review your anti-spam policies, because these messages should be quarantined, not delivered.

- **Delivery locations**: You'll likely want to investigate messages that were actually delivered to recipients (either to the Inbox or the Junk Email folder), even if users didn't click on the payload URL in the message. You can also remove the quarantined messages from quarantine. For more information, see [Quarantine email messages in Office 365](quarantine-email-messages.md).

  - **Deleted folder**

  - **Dropped**

  - **External**: The recipient is located in your on-premises email organization.

  - **Failed**

  - **Forwarded**

  - **Inbox**

  - **Junk folder**

  - **Quarantine**

  - **Unknown**

> [!NOTE]
> In all layers that contain more than 10 items, the top 10 items are shown, while the rest are bundled together in **Others**.

#### URL clicks

When a phishing message is delivered to a recipient (to the Inbox or the Junk Email folder), there's always a chance that the user will click on the payload URL. Not clicking on the URL in a delivered message is a small measure of success, but you need to determine why the phishing message was delivered to their mailbox in the first place.

If a user clicked on the payload URL in the phishing message, the actions are displayed in the **URL clicks** area of the diagram in the campaign details view.

- **Allowed**

- **BlockPage**: The recipient clicked on the payload URL, but their access to the malicious website was blocked by the [ATP Safe Links](atp-safe-links.md) policies in your organization.

- **BlockPageOverride**: The recipient clicked on the payload URL in the message, ATP Safe Links tried to stop them, but they were allowed to override the block. You need to investigate your [Safe Links policies](set-up-atp-safe-links-policies.md) to see why users are allowed to override the Safe Links verdict and continue to the malicious website.

- **PendingDetonationPage**: ATP Safe Attachments is in the process of opening the payload URL in a virtual computer environment, and seeing what happens.

- **PendingDetonationPageOverride**: The recipient was allowed to override the payload detonation process and open the URL without waiting for the results.

### Tabs

There are several tabs in the campaign details view that allow you to further investigate the campaign.

- **URL Clicks**: If users didn't click on the payload URL in the phishing message, this section will be blank. If a user was able to click on the URL, the following values will be populated:

  - **User**<sup>\*</sup>

  - **URL**<sup>\*</sup>

  - **Click Time**

  - **Click Action**

- **Sender IPs**

  - **Sender IP**<sup>\*</sup>

  - **Total Count**

  - **Inboxed Count**

  - **Blocked Count**

  - **SPF Passed**: The sender was authenticated by the [Sender Policy Framework (SPF)](how-office-365-uses-spf-to-prevent-spoofing.md). A sender that does not pass SPF validation indicates the sender isn't authenticated, or the message is spoofing a legitimate sender.

- **Senders**

  - **Sender**: This is the actual sender address in the SMTP MAIL FROM command, which is not necessarily the From: email address that users see in their email clients.

  - **Total Count**

  - **Inboxed**

  - **Not Inboxed**

  - **DKIM Passed**: The sender was authenticated by [Domain Keys Identified Mail (DKIM)](support-for-validation-of-dkim-signed-messages.md). A sender that does not pass DKIM validation indicates the sender isn't authenticated, or the message is spoofing a legitimate sender.

  - **DMARC Passed**: The sender was authenticated by [Domain-based Message Authentication, Reporting, and Conformance (DMARC)](use-dmarc-to-validate-email.md). A sender that does not pass DMARC validation indicates the sender isn't authenticated, or the message is spoofing a legitimate sender.

- **Payloads**

  - **URL**<sup>\*</sup>

  - **Total Count**

<sup>\*</sup> Clicking on this value opens a new flyout that contains more details about the specified item (user, URL, etc.) on top of the campaign details view. To return to the campaign details view, click **Done** in the new flyout.

### Buttons

The buttons in the campaign details view allow you to use the power of Threat Explorer to further investigate the campaign.

- **Explore campaign**: Opens a new Threat Explorer search tab using the **Campaign ID** value as the search filter.

- **Explore Inboxed messages**: Opens a new Threat Explorer search tab using the **Campaign ID** and **Delivery location: Inbox** as the search filter.
