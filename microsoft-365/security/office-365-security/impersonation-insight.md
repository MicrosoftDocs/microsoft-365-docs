---
title: Impersonation insight
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: overview

ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid:
ms.collection:
  - m365-security
description: Admins can learn how the impersonation insight works. They can quickly determine which senders are legitimately sending email into their organizations from domains that don't pass email authentication checks (SPF, DKIM, or DMARC).
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Impersonation insight in Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Impersonation is where the sender of an email message looks very similar to a real or expected sender email address. Attackers often user impersonated sender email addresses in phishing or other types of attacks in an effort to gain the trust of the recipient. There are basically two types of impersonation:

- **Domain impersonation**: Instead of lila@contoso.com, the impersonated sender's email address is lila@ćóntoso.com.
- **User impersonation**: Instead of michelle@contoso.com, the impersonated sender's email address is rnichell@contoso.com.

Domain impersonation is different from [domain spoofing](anti-spoofing-protection.md), because the impersonated domain is typically a real, registered domain. Messages from senders in the impersonated domain can and often do pass regular email authentication checks that would otherwise identify spoofing attempts (SPF, DKIM, and DMARC).

Impersonation protection is part of the anti-phishing policy settings that are exclusive to Microsoft Defender for Office 365. For more information about these settings, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

You can use the impersonation insight in the Microsoft 365 Defender portal to quickly identify messages from impersonated senders or sender domains that you've configured for impersonation protection.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>. To go directly to the **Impersonation insight** page, use <https://security.microsoft.com/impersonationinsight>.

- You need to be assigned permissions in the Microsoft 365 Defender portal before you can do the procedures in this article:
  - **Organization Management**
  - **Security Administrator**
  - **Security Reader**
  - **Global Reader**

  For more information, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

  **Note**: Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Microsoft 365 Defender portal _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

- You enable and configure impersonation protection in anti-phishing policies in Microsoft Defender for Office 365. Impersonation protection is not enabled by default. For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-mdo-anti-phishing-policies.md).

## Open the impersonation insight in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-phishing** in the **Policies** section. To go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

2. On the **Anti-phishing** page, the impersonation insight looks like this:

   :::image type="content" source="../../media/m365-sc-impersonation-insight.png" alt-text="The impersonation insight on the Anti-phishing policy page in the Microsoft 365 Defender portal." lightbox="../../media/m365-sc-impersonation-insight.png":::

   The insight has two modes:

    - **Insight mode**: If impersonation protection is enabled and configured in any anti-phishing policies, the insight shows the number of detected messages from impersonated domains and impersonated users (senders) over the past seven days. This is the total of all detected impersonated senders from all anti-phishing policies.
    - **What if mode**: If impersonation protection is not enabled and configured in any active anti-phishing policies, the insight shows you how many messages *would* have been detected by our impersonation protection capabilities over the past seven days.

To view information about the impersonation detections, click **View impersonations** in the impersonation insight.

## View information about messages from senders in impersonated domains

On the **Impersonation insight** page that appears after you click **View impersonations** in the impersonation insight, verify that the **Domains** tab is selected. The **Domains** tab contains the following information:

- **Sender Domain**: The impersonating domain, which is the domain that was used to send the email message.
- **Message count**: The number of messages from impersonating sender domain over the last 7 days.
- **Impersonation type**: This value shows the detected location of the impersonation (for example, **Domain in address**).
- **Impersonated domain(s)**: The impersonated domain, which should closely resemble the domain that's configured for impersonation protection in the anti-phishing policy.
- **Domain type**: This value is **Company domain** for internal domains or **Custom domain** for custom domains.
- **Policy**: The anti-phishing policy that detected the impersonated domain.
- **Allowed to impersonate**: One of the following values:
  - **Yes**: The domain was configured as trusted domain (an exception for impersonation protection) in the anti-phishing policy. Messages from senders in the impersonated domain were detected, but allowed.
  - **No**: The domain was configured for impersonation protection in the anti-phishing policy. Messages from senders in the impersonated domain were detected and acted upon based on the action for impersonated domains in the anti-phishing policy.

You can click selected column headings to sort the results.

To filter the results, you can use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to enter a comma-separated list of values to filter the results.

### View details about messages from senders in impersonated domains

On the **Domains** tab on the **Impersonation insight** page, select one of the available impersonation detections. The details flyout that appears contains the following information and features:

- **Selection impersonation policy to modify**: Select the affected anti-phishing policy that you want to modify. Only polices where the impersonated domain is defined in the policy are available. Refer to the previous page to see which policy was actually responsible for detecting the impersonated domain (likely based on the recipient and the priority of the policy).
- **Add to the allowed to impersonation list**: Use this toggle to add or remove the sender from the **Trusted senders and domains** (impersonation exceptions) for the anti-phishing policy that you selected:
  - If the **Allowed to impersonate** value for this entry was **No**, the toggle is off. To exempt all senders in this domain from evaluation by impersonation protection, slide the toggle to on: ![Toggle on.](../../media/scc-toggle-on.png). The domain is added to the **Trusted domains** list in the impersonation protection settings of the anti-phishing policy.
  - If the **Allowed to impersonate** value for this entry was **Yes**, the toggle is on. To return all senders in this domain to evaluation by impersonation protection, slide the toggle to off: ![Toggle off.](../../media/scc-toggle-off.png). The domain is removed from the **Trusted domains** list in the impersonation protection settings of the anti-phishing policy.
- Why we caught this.
- What you need to do.
- A domain summary that list the impersonated domain.
- WhoIs data about the sender.
- A link to open [Threat Explorer](threat-explorer.md) to see additional details about the sender.
- Similar messages from the same sender that were delivered to your organization.

## View information about messages from impersonated senders

On the **Impersonation insight** page that appears after you click **View impersonations** in the impersonation insight, click the **Users** tab. The **Users** tab contains the following information:

- **Sender**: The email address of the impersonating sender that sent the email message.
- **Message count**: The number of messages from the impersonating sender over the last 7 days.
- **Impersonation type**: This value is **User in display name**.
- **Impersonated user(s)**: The email address of the impersonated sender, which should closely resemble the user that's configured for impersonation protection in the anti-phishing policy.
- **User type**: This value shows the type of protection applied (for example, **Protected user** or **Mailbox Intelligence**).
- **Policy**: The anti-phishing policy that detected the impersonated sender.
- **Allowed to impersonate**: One of the following values:
  - **Yes**: The sender was configured as trusted user (an exception for impersonation protection) in the anti-phishing policy. Messages from the impersonated sender were detected, but allowed.
  - **No**: The sender was configured for impersonation protection in the anti-phishing policy. Messages from the impersonated sender were detected and acted upon based on the action for impersonated users in the anti-phishing policy.

You can click selected column headings to sort the results.

To filter the results, you can use the **Filter sender** box to enter a comma-separated list of values to filter the results.

### View details about messages from impersonated senders

On the **Users** tab on the **Impersonation insight** page, select one of the available impersonation detections. The details flyout that appears contains the following information and features:

- **Selection impersonation policy to modify**: Select the affected anti-phishing policy that you want to modify. Only polices where the impersonated sender is defined in the policy are available. Refer to the previous page to see which policy was actually responsible for detecting the impersonated sender (likely based on the recipient and the priority of the policy).
- **Add to the allowed to impersonation list**: Use this toggle to add or remove the sender from the **Trusted senders and domains** (impersonation exceptions) for the anti-phishing policy that you selected:
  - If the **Allowed to impersonate** value for this entry was **No**, the toggle is off. To exempt the sender from evaluation by impersonation protection, slide the toggle to on: ![Toggle on.](../../media/scc-toggle-on.png). The sender is added to the **Trusted users** list in the impersonation protection settings of the anti-phishing policy.
  - If the **Allowed to impersonate** value for this entry was **Yes**, the toggle is on. To return the sender to evaluation by impersonation protection, slide the toggle to off: ![Toggle off.](../../media/scc-toggle-off.png). The sender is removed from the **Trusted users** list in the impersonation protection settings of the anti-phishing policy.
- Why we caught this.
- What you need to do.
- A sender summary that list the impersonated sender.
- WhoIs data about the sender.
- A link to open [Threat Explorer](threat-explorer.md) to see additional details about the sender.
- Similar messages from the same sender that were delivered to your organization.
