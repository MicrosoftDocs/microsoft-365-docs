---
title: "Control outbound spam in Office 365"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date:
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 6a601501-a6a8-4559-b2e7-56b59c96a586
ms.collection:
- M365-security-compliance
description: "If your organization sends a lot of bulk mail that's marked as spam, you could get blocked from sending email with Office 365. Read this article to learn more about why this happens and what you can do about it."
---

# Control outbound spam in Office 365

We take managing outbound spam seriously because ours is a shared service.  There are many customers behind a shared pool of resources, where if one customer sends outbound spam, it can degrade the outbound IP reputation of the service and affects the successful deliverability of email for other customers.

> [!IMPORTANT]
> The notification for when a sender is restricted is now part of the Security & Compliance Center (SCC) alerting platform. Instead of using methods outlined below to send notification, the list of users to alert can be found in the **User restricted from sending email** alert. Please start using the [alert policies page](https://sip.protection.office.com/alertpolicies) in the Security & Compliance Center to configure the alert, since the prior method will be removed in the future. Read about the new [Removing a user from the Restricted Users portal after sending spam email](removing-user-from-restricted-users-portal-after-spam.md)."

## What admins can do to control outbound spam

- **Enable notifications when an account is sending spam or shut down**: Administrators can get bcc'ed whenever a message is marked as outbound spam and sent through the High Risk pool. By monitoring this mailbox, an admin can detect if they have a compromised account in their network or if the spam filter is mistakenly marking their email as spam. You can find more information on setting up the outbound spam policy [here](configure-the-outbound-spam-policy.md).

- **Manually review spam complaints from 3rd party email providers**: Many 3rd party email services like Outlook.com, Yahoo and AOL provide a Feedback Loop where if any user in their service marks an email from our service as spam, the message is packaged up and sent back to us for review. To learn more about sender support for Outlook.com, click [here](https://sendersupport.olc.protection.outlook.com/pm/services.aspx).

## What EOP does to control outbound spam

1. **Segregation of outbound traffic into separate pools of IPs**: Every message that customers send outbound through the service is scanned for spam. If the message is spam, it is routed through the High Risk Delivery pool. This IP pool contains non-deliverable status notifications and spam. Delivery to the intended recipient is not guaranteed as many third parties will not accept email because the quality of email it emits.

   Splitting the traffic this way ensures that the lower quality email (spam, backscatter NDRs) does not drag down the reputation of the regular outbound email pools. The high risk pool typically has low reputation at many receivers around the Internet, although this is not universal.

2. **Monitoring of IP reputation**: Office 365 queries various 3rd party IP blocklists and generates alerts if any of our outbound IPs are listed on them. This allows us to react quickly when spam has caused our reputation to degrade. When an alert is generated, we have internal documentation outlying what steps to take to get delisted.

3. **Disabling of offending accounts when they send too much email marked as spam**: Even though we segregate our spam and non-spam into two separate outbound IP pools,  the email accounts cannot send spam indefinitely. We monitor which accounts are sending spam and if it exceeds an undisclosed limit, the account is blocked from sending spam.

   A single message marked as spam may be a misclassification by the spam engine and also known as a false positive. We send it through the High Risk pool to give it a chance of going out; however, a large number of messages in a short time frame is indicative of a problem and when that occurs, we block the account from sending any more email. There are different thresholds that exist for individual email accounts as well as in aggregate for the entire tenant.

4. **Disabling of offending accounts when they send too much email in too short a time frame**: In addition to the limits above that look for a proportion of messages marked as spam, there are also limits that block accounts when they reach an overall limit regardless of whether or not the messages are marked as spam. The reason this limit exists is because a compromised account could send zero-day spam that is missed by the spam filter. Because it is difficult, if not impossible, to sometimes tell the difference between a legitimate mass mailing campaign and a massive spam campaign, these limits activate to limit any potential damage.

> [!NOTE]
> For both #3 and #4, we do not advertise the exact limits to prevent spammers from gaming the system and to ensure that we can change the limits when we need to. The limits are high enough such that an average business user will never hit them and low enough that it contains most of the damage a spammer can do.

## Recommended workarounds for customers who want to send outbound a lot of email through EOP

It is difficult to strike a balance between customers who want to send a large volume of email vs. protecting the service from compromised accounts and bulk emailers with poor list acquisition practices. Again, the cost of an outbound IP landing on a 3rd party blocklist is higher than blocking a customer from sending outbound email. As described in the [Exchange Online Service Description](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits), using EOP to send bulk email is not a supported use of the service and is only permitted on a "best-effort" basis. For customers who do want to send bulk email, we recommend the following:

1. **Send the bulk email through its own on-premises mail servers**: This means that the customer will have to maintain its own email infrastructure for this type of email.

2. **Use a 3rd party bulk emailer to send the mass communication**: There are several 3rd party bulk emailers whose sole business it is to send bulk email. They can work with customers to ensure that they have good emailing practices and they have resources dedicated to enforcing it.

The Messaging, Mobile, Malware Anti-Abuse Working Group (MAAWG) publishes its membership roster [here](https://www.maawg.org/about/roster). Several bulk email providers are on the list and are known to be responsible Internet citizens.

## For more information

[Sample notification when a sender is blocked sending outbound spam](sample-notification-when-a-sender-is-blocked-sending-outbound-spam.md)

[Office 365 email anti-spam protection](anti-spam-protection.md)

[Anti-spoofing protection in Office 365](anti-spoofing-protection.md)

[Spam confidence levels](spam-confidence-levels.md)
