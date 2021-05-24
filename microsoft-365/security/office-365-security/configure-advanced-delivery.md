---
title: Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.collection: 
  - M365-security-compliance
ms.custom: 
description: Admins can learn how to use the advanced delivery policy in Exchange Online Protection (EOP) to identify messages that should not be filtered in specific supported scenarios (third-party phishing simulations and messages delivered to security operations (SecOps) mailboxes.
ms.technology: mdo
ms.prod: m365-security
---

# Configure the delivery of third-party phishing simulations to users and unfiltered messages to SecOps mailboxes

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> The feature that's described in this article is in Preview, isn't available to everyone, and is subject to change.

To keep your organization [secure by default](secure-by-default.md), Exchange Online Protection (EOP) does not allow safe lists or filtering bypass for messages that result in malware or high confidence phishing verdicts. But there are specific scenarios that require the delivery of unfiltered messages. For example:

- **Third-party phishing simulations**: Simulated attacks can help you identify vulnerable users before a real attack impacts your organization.
- **Security operations (SecOps) mailboxes**: Dedicated mailboxes that are used by security teams to collect and analyze unfiltered messages (both good and bad).

You use the _advanced delivery policy_ in Microsoft 365 to prevent these messages _in these specific scenarios_ from being filtered<sup>\*</sup>. The advanced delivery policy ensures that messages in these scenarios are not filtered:

- Filters in EOP and Microsoft Defender for Office 365 take no action on these messages.<sup>\*</sup>
- [Zero-hour Purge (ZAP)](zero-hour-auto-purge.md) for spam and phishing takes no action on these messages.<sup>\*</sup>
- [Default system alerts](alerts.md) aren't triggered for these scenarios.
- [AIR and clustering in Defender for Office 365](office-365-air.md) ignores these messages.
- Specifically for third-party phishing simulations:
  - [Admin submissions](admin-submission.md) generates an automatic response saying that the message is part of a phishing simulation campaign and isn't a real threat. Alerts and AIR will not be triggered.
  - [Safe Links in Defender for Office 365](safe-links.md) doesn't block or detonate the specifically identified URLs in these messages.
  - [Safe Attachments in Defender for Office 365](safe-attachments.md) doesn't detonate attachments in these messages.

<sup>\*</sup> You can't bypass malware filtering or ZAP for malware.

Messages that are identified by the advanced delivery policy aren't security threats, so the messages are marked as system overrides. Admins can filter and analyze these system overrides in the following experiences:

- [Threat Explorer/Real-time detections in Defender for Office 365 plan 2](threat-explorer.md)
- The [Email entity Page in Threat Explorer/Real-time detections](mdo-email-entity-page.md)
- The [Threat protection status report](view-email-security-reports.md#threat-protection-status-report)
- [Advanced hunting in Microsoft Defender for Endpoint](../defender-endpoint/advanced-hunting-overview.md)
- [Campaign Views](campaigns.md)

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **Advanced delivery** page, open <https://protection.office.com/advanceddelivery>.

- You need to be assigned permissions before you can do the procedures in this article:
  - To create, modify, or remove configured settings in the advanced delivery policy, you need to be a member of the **Security Administrator** role group in the **Security & Compliance Center** and a member of the **Organization Management** role group in **Exchange Online**.  
  - For read-only access to the advanced delivery policy, you need to be a member of the **Global Reader** or **Security Reader** role groups.

  For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md) and [Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo).

## Use the Security & Compliance Center to configure third-party phishing simulations in the advanced delivery policy

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Advanced delivery**.

2. On the **Advanced delivery** page, select the **Phishing simulation** tab, and then click **Edit**.

3. On the **Third-party phishing simulation** flyout that opens, configure the following settings:

   - **Sending domain**: At least one email address domain is required (for example, contoso.com). You can add up to 10 entries.
   - **Sending IP**: At least one valid IPv4 address is required. You can add up to 10 entries. Valid values are:
     - Single IP: For example, 192.168.1.1.
     - IP range: For example, 192.168.0.1-192.168.0.254.
     - CIDR IP: For example, 192.168.0.1/25.
   - **Simulation URLs to allow**: Optionally, enter specific URLs that are part of your phishing simulation campaign that should not be blocked or detonated. You can add up to 10 entries.

4. When you're finished, click **Save.**

The third-party phishing simulation entries that you configured are displayed on the **Phishing simulation** tab. To make changes, click **Edit** on the tab.

## Use the Security & Compliance Center to configure SecOps mailboxes in the advanced delivery policy

1. In the Security & Compliance Center, go to **Threat Management** \> **Policy** \> **Advanced delivery**.

2. On the **Advanced delivery** page, select the **SecOps mailbox** tab, and then click **Edit**.

3. On the **SecOps mailbox** flyout that opens, enter the email addresses of existing Exchange Online mailboxes that you want to designate as SecOps mailboxes. Distribution groups are not allowed.

4. When you're finished, click **Save**.

The SecOps mailbox entries that you configured are displayed on the **SecOps mailbox** tab. To make changes, click **Edit** on the tab.

## Additional scenarios that require filtering bypass

In addition to the two scenarios that the advanced delivery policy can help you with, there are other scenarios that might require you bypass filtering:

- **Third-party filters**: If your domain's MX record *doesn't* point to Office 365 (messages are routed somewhere else first), [secure by default](secure-by-default.md) *is not available*.

  To bypass Microsoft filtering for messages that have already been evaluated by third-party filtering, use mail flow rules (also known as transport rules), see [Use mail flow rules to set the SCL in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl.md).

- **False positives under review**: You might want to temporarily allow certain messages that are still being analyzed by Microsoft via [admin submissions](admin-submission.md) to report known good messages that are incorrectly being marked as bad to Microsoft (false positives). As with all overrides, it is ***highly recommended*** that these allowances be made temporarily.
