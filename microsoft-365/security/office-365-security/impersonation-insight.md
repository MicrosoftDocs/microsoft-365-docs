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

localization_priority: Normal
search.appverid: 
  - MET150
  - MOE150
ms.assetid:
ms.collection: 
  - M365-security-compliance
description: Admins can learn how the impersonation insight works. They can quickly determine which senders are legitimately sending email into their organizations from domains that don't pass email authentication checks (SPF, DKIM, or DMARC).
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Impersonation insight in Defender for Office 365

Impersonation is where the sender or the sender's email domain in a message looks similar to a real sender or domain (for example, ćóntoso.com instead of contoso.com). Impersonation is different from [spoofing](anti-spoofing-protection.md), because the impersonated domain is typically a real, registered domain, so messages from senders in the impersonated domain can pass email authentication checks (SPF, DKIM, and DMARC).

Impersonation protection is part of the anti-phishing policy settings) that are exclusive to Microsoft Defender for Office 365. For more information about these settings, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](set-up-anti-phishing-policies.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

You can use the impersonation insight to quickly identify messages from impersonated senders or sender domains that's you configured for impersonation protection.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the impersonation insight on the **Anti-phishing** page, use <https://protection.office.com/antiphishing>.

- You need to be assigned permissions in the Security & Compliance Center before you can do the procedures in this article:
  - **Organization Management**
  - **Security Administrator**
  - **Security Reader**
  - **Global Reader**

  For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

  **Note**: Adding users to the corresponding Azure Active Directory role in the Microsoft 365 admin center gives users the required permissions in the Security & Compliance Center _and_ permissions for other features in Microsoft 365. For more information, see [About admin roles](https://docs.microsoft.com/microsoft-365/admin/add-users/about-admin-roles).

- You enable and configure impersonation protection in anti-phishing policies in Microsoft Defender for Office 365. Impersonation protection is not enabled by default. For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-atp-anti-phishing-policies.md).

## Open the impersonation insight in the Security & Compliance Center

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **Anti-phishing**.

2. On the main **Anti-phishing page**, the impersonation insight looks like this:

   This insight has two modes:

    - **Insight mode**: If impersonation protection is enabled and configured in any anti-phishing policies, the insight shows the number of detected messages from impersonated senders over the past seven days. This is the total of all detected impersonated senders from all anti-phishing policies.
    - **What if mode**: If impersonation protection is not enabled and configured in any active anti-phishing policies, the insight shows you how many messages *would* have been detected by our impersonation protection capabilities over the past seven days.

   Either way, **Domains impersonated** shows the number of messages from senders in protected domains, while **Users impersonated** shows the number of messages from protected users.

### View information about messages from impersonated domains or impersonated senders

On the impersonation insight, click **Domains impersonated** or **Users impersonated** to go to the **Impersonation insight** page. The page contains the following information:

- **Domains impersonated**:
  - **Domain**
  - **Message count**
  - **Impersonation type**: The value is **Domain in Address**
  - **Domain type**: This value is based on the impersonated domain settings in the anti-phishing policy:
    - **Custom domain**
  - **Policy**: The anti-phishing policy that detected the message. For more information about how policies are applied to users, see [Order and precedence of email protection](how-policies-and-protections-are-combined.md).
  - **Allowed to impersonate**:
    - **Yes**: The sender's domain was configured as an domain exception to the impersonation protection settings in the previously identified anti-phishing policy.
    - **No**: The sender's domain was not configured as a domain exception. The action for impersonated domains was applied to the message.

- **Domain** (if you selected **Domains impersonated** on the widget) or **Sender** (if you selected **Users impersonated** on the widget)
- **Message count**: The number of messages from the impersonated sender or sender domain within the last 7 days.
- **Impersonation type**
- **Domain type** (if you selected **Domains impersonated**) or **User type** (if you selected **Users impersonated**)
- **Policy**: The anti-phishing policy that contains the affected impersonation protection settings.
- **Allowed to impersonate**:
  - The value **Yes** means the sender was configured as a user or domain exception to the impersonation protection settings in the anti-spam policy as defined in **Trusted senders and domains**. Messages from this user or domain were sent to recipients that are included in the policy.
  - The value **No** means the sender was configured for user or domain impersonation protection in the anti-spam policy. Messages from this user or domain were sent to recipients that are included in the policy.

You can click selected column headings to sort the results.

To filter the results, you can use the **Filter domain** (if you selected **Domains impersonated** on the widget) or **Filter user** box (if you selected **Users impersonated** on the widget) to enter a comma-separated list of values to filter the results.

### View details about messages from impersonated domains or impersonated senders

Select an item in the list to view details. A flyout appears with the following information and features:

- **Selection impersonation policy to modify**: Select the affected anti-phishing policy that you want to modify. Only polices where the impersonated sender or domain is included in the impersonation settings of the policy are available to select. Refer to the previous page to see which policy was actually responsible for detecting the impersonated sender.

- **Add to the allowed to impersonation list**: Use this toggle to add or remove the sender from the **Trusted senders and domains** (impersonation exceptions) for the anti-phishing policy that you selected:

  - For impersonated domains:
    - If the **Allowed to impersonate** value for this entry was **No**, the toggle is off. To exempt all senders in this domain from evaluation by impersonation protection, slide the toggle to on: ![Toggle on](../../media/scc-toggle-on.png). The domain is added to the **Trusted domains** list in the impersonation protection settings of the anti-phishing policy.
    - If the **Allowed to impersonate** value for this entry was **Yes**, the toggle is on. To return all senders in this domain to evaluation by impersonation protection, slide the toggle to off: ![Toggle off](../../media/scc-toggle-off.png). The domain is removed from the **Trusted domains** list in the impersonation protection settings of the anti-phishing policy.

  - For impersonated senders:
    - If the **Allowed to impersonate** value for this entry was **No**, the toggle is off. To exempt this sender from evaluation by impersonation protection, slide the toggle to on: ![Toggle on](../../media/scc-toggle-on.png). The sender's email address is added to the **Trusted users** list in the impersonation protection settings of the anti-phishing policy.
    - If the **Allowed to impersonate** value for this entry was **Yes**, the toggle is on. To return this sender to evaluation by impersonation protection, slide the toggle to off: ![Toggle off](../../media/scc-toggle-off.png). The sender's email address is removed from the **Trusted users** list in the impersonation protection settings of the anti-phishing policy.

- Why we caught this.
- What you need to do.
- A domain summary that list the impersonated domain.
- WhoIs data about the sender.
- A link to open [Threat Explorer](threat-explorer.md) to see additional details about the sender.
- Similar messages we have seen in your tenant from the same sender.
