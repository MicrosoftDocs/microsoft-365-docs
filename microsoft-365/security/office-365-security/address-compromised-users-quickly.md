---
title: Address compromised user accounts with automated investigation and response
keywords: AIR, autoIR, Microsoft Defender for Endpoint, automated, investigation, response, remediation, threats, advanced, threat, protection, compromised
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.collection: 
    - m365-security
    - tier2
ms.custom:
ms.date: 06/09/2023
description: Learn how to speed up the process of detecting and addressing compromised user accounts with automated investigation and response capabilities in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Address compromised user accounts with automated investigation and response

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

[Microsoft Defender for Office 365 Plan 2](defender-for-office-365.md#whats-the-difference-between-microsoft-defender-for-office-365-plan-1-and-plan-2) includes powerful [automated investigation and response](air-about.md) (AIR) capabilities. Such capabilities can save your security operations team a lot of time and effort dealing with threats. This article describes one of the facets of the AIR capabilities, the compromised user security playbook.

The compromised user security playbook enables your organization's security team to:

- Speed up detection of compromised user accounts;
- Limit the scope of a breach when an account is compromised; and
- Respond to compromised users more effectively and efficiently.

## Compromised user alerts

When a user account is compromised, atypical or anomalous behaviors occur. For example, phishing and spam messages might be sent internally from a trusted user account. Defender for Office 365 can detect such anomalies in email patterns and collaboration activity within Office 365. When this happens, alerts are triggered, and the threat mitigation process begins.

## Investigate and respond to a compromised user

When a user account is compromised, alerts are triggered. And in some cases, that user account is blocked and prevented from sending any further email messages until the issue is resolved by your organization's security operations team. In other cases, an automated investigation begins which can result in recommended actions that your security team should take.

- [View and investigate restricted users](#view-and-investigate-restricted-users)

- [View details about automated investigations](#view-details-about-automated-investigations)

> [!IMPORTANT]
> You must have appropriate permissions to perform the following tasks. See [Required permissions to use AIR capabilities](air-about.md#required-permissions-to-use-air-capabilities).

Watch this short video to learn how you can detect and respond to user compromise in Microsoft Defender for Office 365 using Automated Investigation and Response (AIR) and compromised user alerts.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWAl83]

### View and investigate restricted users

You have a few options for navigating to a list of restricted users. For example, in the Microsoft 365 Defender portal, you can go to **Email & collaboration** \> **Review** \> **Restricted Users**. The following procedure describes navigation using the **Alerts** dashboard, which is a good way to see various kinds of alerts that might have been triggered.

1. Open the Microsoft 365 Defender portal at <https://security.microsoft.com> and go to **Incidents & alerts** \> **Alerts**. Or, to go directly to the **Alerts** page, use <https://security.microsoft.com/alerts>.

2. On the **Alerts** page, filter the results by time period and the policy named **User restricted from sending email**.

   :::image type="content" source="../../media/m365-sc-alerts-page-with-restricted-user.png" alt-text="The Alerts page in the Microsoft 365 Defender portal filtered for restricted users" lightbox="../../media/m365-sc-alerts-page-with-restricted-user.png":::

3. If you select the entry by clicking on the name, a **User restricted from sending email** page opens with additional details for you to review. Next to the **Manage alert** button, you can click ![More options icon.](../../media/m365-cc-sc-more-actions-icon.png) **More options** and then select **View restricted user details** to go to the **Restricted users** page, where you can [release the restricted user](removing-user-from-restricted-users-portal-after-spam.md).

  :::image type="content" source="../../media/m365-sc-alerts-user-restricted-from-sending-email-page.png" alt-text="The User restricted from sending email page" lightbox="../../media/m365-sc-alerts-user-restricted-from-sending-email-page.png":::

### View details about automated investigations

When an automated investigation has begun, you can see its details and results in the **Action center** in the Microsoft 365 Defender portal.

To learn more, see [View details of an investigation](air-view-investigation-results.md).

## Keep the following points in mind

- **Stay on top of your alerts**. As you know, the longer a compromise goes undetected, the larger the potential for widespread impact and cost to your organization, customers, and partners. Early detection and timely response are critical to mitigate threats, and especially when a user's account is compromised.

- **Automation assists your security operations team**. Automated investigation and response capabilities can detect a compromised user early on and enable your security operations team to take action to remediate the threat. Need some help with this? See [Review and approve actions](air-review-approve-pending-completed-actions.md).

## Next steps

- [Review the required permissions to use AIR capabilities](air-about.md#required-permissions-to-use-air-capabilities)

- [Find and investigate malicious email in Office 365](investigate-malicious-email-that-was-delivered.md)

- [Learn about AIR in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Visit the Microsoft 365 Roadmap to see what's coming soon and rolling out](https://www.microsoft.com/microsoft-365/roadmap?filters=)
