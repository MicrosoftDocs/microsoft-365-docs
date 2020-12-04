---
title: "Walkthrough - Spoof intelligence insight"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 59a3ecaf-15ed-483b-b824-d98961d88bdd
ms.collection:
- M365-security-compliance
description: "Admins can learn how the Spoof intelligence insight works. They can quickly determine which senders are legitimately sending email into their organizations from domains that don't pass email authentication checks (SPF, DKIM, or DMARC)."
ms.custom: seo-marvel-apr2020
---

# Walkthrough - Spoof intelligence insight in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


In Microsoft 365 organizations with Defender for Office 365, you can use the Spoof intelligence insight to quickly determine which senders are legitimately sending you unauthenticated email (messages from domains that don't pass SPF, DKIM, or DMARC checks).

By allowing known senders to send spoofed messages from known locations, you can reduce false positives (good email marked as bad). By monitoring the allowed spoofed senders, you provide an additional layer of security to prevent unsafe messages from arriving in your organization.

For more information about reports and insights, see [Reports and insights in the Security & Compliance Center](reports-and-insights-in-security-and-compliance.md).

This walkthrough is one of several for the Security & Compliance Center. To about navigating reports and insights, see the walkthroughs in the [Related topics](#related-topics) section.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Security dashboard** page, use <https://protection.office.com/searchandinvestigation/dashboard>.

  You can view the Spoof intelligence insight from more than one dashboard in the Security & Compliance Center. Regardless of which dashboard you're looking at, the insight provides the same details and allows you to quickly perform the same tasks.

- You need to be assigned permissions in the Security & Compliance Center before you can do the procedures in this article:
  - **Organization Management**
  - **Security Administrator**
  - **Security Reader**
  - **Global Reader**

  **Note**: Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Security & Compliance Center _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).

- You enable and disable spoof intelligence in anti-phishing policies in Microsoft Defender for Office 365. For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md).

- To use spoof intelligence to monitor and manage senders who are sending you unauthenticated messages, see [Configure spoof intelligence in Microsoft 365](learn-about-spoof-intelligence.md).

## Open the spoof intelligence insight in the Security & Compliance Center

1. In the Security & Compliance Center, go to **Threat Management** \> **Dashboard.**

2. In the **Insights** row, look for one of the following items:

   - **Spoof intelligence is enabled**: The insight is named **Spoofed domains that failed authentication of the past 30 days**. This is the default.
   - **Spoof intelligence is disabled**: The insight in named **Enable Spoof Protection**, and clicking on it allows you to enable spoof intelligence.

3. The insight on the dashboard shows you information like this:

   ![Screenshot of spoof intelligence insight](../../media/28aeabac-c1a1-4d16-9fbe-14996f742a9a.png)

   This insight has two modes:

   - **Insight mode**: If spoof intelligence is enabled, the insight shows you how many messages were impacted by our spoof intelligence capabilities over the past 30 days.

   - **What if mode**: If spoof intelligence is disabled, then the insight shows you how many messages *would* have been impacted by our spoof intelligence capabilities over the past 30 days.

   Either way, the spoofed domains displayed in the insight are separated into two categories: **Suspicious domain pairs** and **Non-suspicious domain pairs**. These categories are further subdivided into three different buckets for you to review.

   A **domain pair** is a combination of the From address and the sending infrastructure:

   - The From address is the sender's email address that's displayed in the From box in email clients. This address is also known as the `5322.From` address.

   - The sending infrastructure, or sender, is the organizational domain of the reverse DNS lookup (PTR record) of the sending IP address. If the sending IP address has no PTR record, then the sender is identified by the sending IP with the 255.255.255.0 subnet mask in CIDR notation (/24). For example, if the IP address is 192.168.100.100 then the complete IP address of the sender is 192.168.100.100/24.

   **Suspicious domain pairs** include:

   - **High-confidence spoof**: Based on the historical sending patterns and the reputation score of the domains, we're highly confident that the domains are spoofing, and messages from these domains are more likely to be malicious.

   - **Moderate confidence spoof**: Based on historical sending patterns and the reputation score of the domains, we're moderately confident that the domains are spoofing, and that messages sent from these domains are legitimate. False positives are more likely in this category than high-confidence spoof.

   - **Non-suspicious domain pairs** (includes **rescued spoof**): The domain failed explicit email authentication checks [SPF](how-office-365-uses-spf-to-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), and [DMARC](use-dmarc-to-validate-email.md)). However, the domain passed our implicit email authentication checks ([composite authentication](email-validation-and-authentication.md#composite-authentication)). As a result, no anti-spoofing action was taken on the message.

### View detailed information about suspicious domain pairs from the spoof intelligence insight

1. On the Spoof intelligence insight, click any of the domain pairs (high, moderate, or rescued).

   The **Spoof Intelligence insight** page appears. The page shows you a list of senders who are sending unauthenticated email into your organization.

   This information helps you determine whether spoofed messages are authorized, or if you need to take further action.

   You can sort the information by message count, the date the spoof was last detected, and more.

2. Select an item in the table to open a details pane that contains rich information about the domain pair. The information includes:
   - Why we caught this.
   - What you need to do.
   - A domain summary.
   - WhoIs data about the sender.
   - Similar messages we have seen in your tenant from the same sender.

   From here, you can also choose to add or remove the domain pair from the **AllowedToSpoof** safe sender list.

   ![Screenshot of a domain in the Spoof intelligence insight details pane](../../media/03ad3e6e-2010-4e8e-b92e-accc8bbebb79.png)

### Add or remove a domain from the AllowedToSpoof list

You add or remove a domain from the AllowedToSpoof (safe sender) list in the details pane of the spoof intelligence insight for the domain pair. Simply set the toggle accordingly.

Allowing a domain pair only allows the combination of the spoofed domain *and* the sending infrastructure. It does not allow email from the spoofed domain from any source, nor does it allow email from the sending infrastructure for any domain.

For example, you allow the following domain pair to send spoofed messages into your organization:

- *Spoofed Domain*: gmail.com"
- *Sending Infrastructure* `tms.mx.com`:

Only email from that domain pair will be allowed to spoof. Other senders attempting to spoof gmail.com aren't allowed. Messages in other domains from tms.mx.com are checked by spoof intelligence.

## Related topics

[Anti-spoofing protection in Microsoft 365](anti-spoofing-protection.md)
