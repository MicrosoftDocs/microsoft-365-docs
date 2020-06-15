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
description: "Admins can learn how the spoof intelligence insight works, including how to quickly determine which senders are legitimately sending you unauthenticated email."
ms.custom: seo-marvel-apr2020
---

# Walkthrough - ATP Spoof intelligence insight in Microsoft 365

In Microsoft 365 organizations with Advanced Threat Protection (ATP), you can use the spoof intelligence insight to quickly determine which senders are legitimately sending you unauthenticated email. By permitting them to send spoofed messages, you can reduce the risk of any false positives going to your users. You can also use the spoof intelligence insight to monitor and manage permitted domain-pairs to provide an additional layer of security and prevent unsafe messages from arriving in your organization.

If you're new to [reports and insights in the Security & Compliance Center](reports-and-insights-in-security-and-compliance.md), it might help to see how you can easily navigate from a dashboard to an insight and recommended actions.

This walkthrough is one of several for the Security & Compliance Center. To about navigating reports and insights, see the walkthroughs in the Related topics section.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Security dashboard** page, use <https://protection.office.com/searchandinvestigation/dashboard>.

  You can view the spoof intelligence insight from more than one dashboard in the Security & Compliance Center. Regardless of which dashboard you're looking at, the insight provides the same details and allows you to quickly perform the same tasks.

- You need to be assigned permissions before you can do the procedures in this topic. To use the spoof intelligence insight, you need to be a member of one of the following role groups:

  - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
  - **Organization Management** or **Hygiene Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).
  - **Security Reader** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
  - **View-Only Organization Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

- You enable and disable spoof intelligence in ATP anti-phishing policies. For more information, see [Configure ATP anti-phishing policies in Microsoft 365](configure-atp-anti-phishing-policies.md).

- In Microsoft 365 organizations with Exchange Online mailboxes, and in standalone Exchange Online Protection (EOP) without Exchange Online mailboxes, you can use spoof intelligence to monitor and manage senders you are sending you unauthenticated messages. For more information, see [Configure spoof intelligence in Microsoft 365](learn-about-spoof-intelligence.md).

## Open the spoof intelligence insight in the Security & Compliance Center

1. In the Security & Compliance Center, go to **Threat Management** \> **Dashboard.**

2. In the **Insights** row, look for one of the following items:

   - **Spoof intelligence is enabled**: The insight is named **Spoofed domains that failed authentication of the past 30 days**. This is the default.

   - **Spoof intelligence is disabled**: The insight in named **Enable Spoof Protection**, and clicking on it allows you to enable spoof intelligence.

3. The insight on the dashboard shows you information like this:

   ![Screenshot of spoof intelligence insight](../../media/28aeabac-c1a1-4d16-9fbe-14996f742a9a.png)

   This insight has two modes:

   - **Insight mode**. If you have any spoof policy enabled, then the insight shows you how many mails were impacted by our spoof intelligence capabilities over the past 30 days.

   - **What if mode**. If you do not have any spoof policy enabled, then the insight shows you how many mails  *would*  have been impacted by our spoof intelligence capabilities over the past 30 days.

   Either way, the spoofed domains displayed in the insight are separated into two categories: **suspicious domain pairs** and **non-suspicious domain pairs**. These categories are further subdivided into three different buckets for you to review.

   A **domain pair** is a combination of the From address and the sending infrastructure:

   - The From address is the sender's email address that's displayed in email clients. This address identifies the author of the email. That is, the mailbox of the person or system responsible for writing the message. This address is also known as the `5322.From` address.

   - The sending infrastructure, or sender, is the organizational domain of the reverse DNS lookup (PTR record) of the sending IP address. If the sending IP address has no PTR record, then the sender is identified by the sending IP with the 255.255.255.0 subnet mask in CIDR notation (/24). For example, if the IP address is 192.168.100.100 then the complete IP address of the sender is 192.168.100.100/24.

   **Suspicious domain pairs** include:

   - **High-confidence spoof**: Microsoft 365 received strong signals that these domains are suspicious, based on the historical sending patterns and the reputation score of the domains. Microsoft 365 is highly confident that the domains are spoofing and that messages sent from these domains are less likely to be legitimate.

   - **Moderate confidence spoof**: Microsoft 365 received moderate signals that these domains are suspicious, based on historical sending patterns and the reputation score of the domains. Office 365 is moderately confident that the domains are spoofing and that messages sent from these domains are legitimate. This bucket has a greater chance of containing false positives (FPs) than the high-confidence spoof bucket.

   - **Non-suspicious domain pairs** (includes **rescued spoof**): Rescued spoof are domains that have failed the explicit authentication checks [SPF](how-office-365-uses-spf-to-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), [DMARC](use-dmarc-to-validate-email.md)) but passed our implicit email authentication checks ([composite authentication](email-validation-and-authentication.md#composite-authentication)). As a result, Microsoft 365 rescued the mail on your behalf and no anti-spoofing action was taken on the message.

### View detailed information about suspicious domain pairs from the spoof intelligence insight

1. On the spoof intelligence insight, click any of the domain pairs (high, moderate, or rescued).

   The **Spoof Intelligence insight** page appears showing you a list of senders that are sending unauthenticated mail into your organization. The information on this page helps you determine whether spoofed messages are authorized, or if you need to take further action. You can sort the information by message count, the date the spoof was last detected, and more. (Click column headings, such as **Message count** or **Last seen**, for example.)

2. Select an item in the table to open a details pane that contains rich information about the domain pair, including why we caught this, what you need to do, a domain summary, WhoIs data about the sender, and similar emails we have seen in your tenant from the same sender. From here, you can also choose to add or remove the domain pair from the **AllowedToSpoof** safe sender list.

   ![Screenshot of a domain in the spoof intelligence insight details pane](../../media/03ad3e6e-2010-4e8e-b92e-accc8bbebb79.png)

### Add or remove a domain from the AllowedToSpoof safe sender list

You add or remove a domain from the AllowedToSpoof safe sender list while reviewing the domain pair in the details pane of the spoof intelligence insight. Simply set the toggle accordingly.

This modifies the unique domain pair combination of the spoofed domain and the sending infrastructure and does not provide coverage for the entire spoofed domain or the sending infrastructure in isolation.

For example, if you add the following domain pair to the 'AllowedToSpoof' sender allow list:  *Spoofed Domain*  "gmail.com" and *Sending Infrastructure* "tms *.mx.com",* then only mail from that domain pair will be allowed to spoof. Other senders attempting to spoof "gmail.com", and other domains that "tms.mx.com" attempt to spoof will continue to be protected by spoof intelligence.

## Related topics

[Anti-spoofing protection in Microsoft 365](anti-spoofing-protection.md)
