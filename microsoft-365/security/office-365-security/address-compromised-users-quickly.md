---
title: Address compromised user accounts with automated investigation and response
keywords: AIR, autoIR, Microsoft Defender for Endpoint, automated, investigation, response, remediation, threats, advanced, threat, protection, compromised
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.collection: M365-security-compliance
ms.date: 06/10/2021
description: Learn how to speed up the process of detecting and addressing compromised user accounts with automated investigation and response capabilities in Microsoft Defender for Office 365 Plan 2.
ms.technology: mdo
ms.prod: m365-security
---

# Address compromised user accounts with automated investigation and response

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)


[Microsoft Defender for Office 365 Plan 2](defender-for-office-365.md#microsoft-defender-for-office-365-plan-1-and-plan-2) includes powerful [automated investigation and response](office-365-air.md) (AIR) capabilities. Such capabilities can save your security operations team a lot of time and effort dealing with threats. Microsoft continues to improve security capabilities. Recently, AIR capabilities were enhanced to include a compromised user security playbook (currently in preview). Read this article to learn more about the compromised user security playbook. And see the blog post [Speed up time to detect and respond to user compromise and limit breach scope with Microsoft Defender for Office 365](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Speed-up-time-to-detect-and-respond-to-user-compromise-and-limit/ba-p/977053) for additional details.

![Automated investigation for a compromised user.](/microsoft-365/media/office365atp-compduserinvestigation.jpg)

The compromised user security playbook enables your organization's security team to:

- Speed up detection of compromised user accounts;
- Limit the scope of a breach when an account is compromised; and
- Respond to compromised users more effectively and efficiently.

## Compromised user alerts

When a user account is compromised, atypical or anomalous behaviors occur. For example, phishing and spam messages might be sent internally from a trusted user account. Defender for Office 365 can detect such anomalies in email patterns and collaboration activity within Office 365. When this happens, alerts are triggered, and the threat mitigation process begins.

For example, here's an alert that was triggered because of suspicious email sending:

![Alert triggered because of suspicious email sending.](/microsoft-365/media/office365atp-suspiciousemailsendalert.jpg)

And here's an example of an alert that was triggered when a sending limit was reached for a user:

![Alert triggered by sending limit reached.](/microsoft-365/media/office365atp-sendinglimitreached.jpg)

## Investigate and respond to a compromised user

When a user account is compromised, alerts are triggered. And in some cases, that user account is blocked and prevented from sending any further email messages until the issue is resolved by your organization's security operations team. In other cases, an automated investigation begins which can result in recommended actions that your security team should take.

- [View and investigate restricted users](#view-and-investigate-restricted-users)

- [View details about automated investigations](#view-details-about-automated-investigations)

> [!IMPORTANT]
> You must have appropriate permissions to perform the following tasks. See [Required permissions to use AIR capabilities](office-365-air.md#required-permissions-to-use-air-capabilities).

### View and investigate restricted users

You have a few options for navigating to a list of restricted users. For example, in the Microsoft 365 Defender portal, you can go to **Email & collaboration** \> **Review** \> **Restricted Users**. The following procedure describes navigation using the **Alerts** dashboard, which is a good way to see various kinds of alerts that might have been triggered.

1. Open the Microsoft 365 Defender portal (<https://security.microsoft.com>) and go to **Incidents & alerts** \> **Alerts**. Or, to go directly to the **Alerts** page, use <https://security.microsoft.com/alerts>.

2. On the **Alerts** page, filter the results by time period and the policy named **User restricted from sending email**.

   ![The Alerts page in the Microsoft 365 Defender portal filtered for restricted users.](../../media/m365-sc-alerts-page-with-restricted-user.png)

3. If you select the entry by clicking on the name, a **User restricted from sending email** page opens with additional details for you to review. Next to the **Manage alert** button, you can click ![More options icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** and then select **View restricted user details** to go to the **Restricted users** page, where you can [release the restricted user](removing-user-from-restricted-users-portal-after-spam.md).

   ![The User restricted from sending email page from the Alerts center.](../../media/m365-sc-alerts-user-restricted-from-sending-email-page.png)

### View details about automated investigations

When an automated investigation has begun, you can see its details and results in the Security & Compliance Center. Go to **Threat management** \> **Investigations**, and then select an investigation to view its details.

To learn more, see [View details of an investigation](air-view-investigation-results.md).

## Keep the following points in mind

- **Stay on top of your alerts**. As you know, the longer a compromise goes undetected, the larger the potential for widespread impact and cost to your organization, customers, and partners. Early detection and timely response are critical to mitigate threats, and especially when a user's account is compromised.

- **Automation assists, but does not replace, your security operations team**. Automated investigation and response capabilities can detect a compromised user early on, but your security operations team will likely need to engage and do some investigation and remediation. Need some help with this? See [Review and approve actions](air-review-approve-pending-completed-actions.md).

- **Don't rely on a suspicious login alert as your only indicator**. When a user account is compromised, it might or might not trigger a suspicious login alert. Sometimes it's the series of activities that occur after an account is compromised that triggers an alert. Want to know more about alerts? See [Alert policies](../../compliance/alert-policies.md).

## Next steps

- [Review the required permissions to use AIR capabilities](office-365-air.md#required-permissions-to-use-air-capabilities)

- [Find and investigate malicious email in Office 365](investigate-malicious-email-that-was-delivered.md)

- [Learn about AIR in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Visit the Microsoft 365 Roadmap to see what's coming soon and rolling out](https://www.microsoft.com/microsoft-365/roadmap?filters=)