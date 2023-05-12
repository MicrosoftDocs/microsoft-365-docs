---
title: Impersonation insight
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: overview
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.assetid:
ms.collection:
  - m365-security
  - tier2
description: Admins can learn how the impersonation insight works. They can quickly determine which senders are legitimately sending email into their organizations from domains that don't pass email authentication checks (SPF, DKIM, or DMARC).
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 5/11/2023
---

# Impersonation insight in Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

_Impersonation_ is when the sender of an email message looks very similar to a real or expected sender's email address. Attackers often user impersonated sender email addresses in phishing or other types of attacks in an effort to gain the trust of the recipient. There are two basic types of impersonation:

- **Domain impersonation**: Contains subtle differences in the domain. For example, lila@ćóntoso.com is used to impersonate lila@contoso.com.
- **User impersonation**: Contains subtle differences in the email alias. For example, rnichell@contoso.com is used to impersonate michelle@contoso.com.

Domain impersonation is different from _[domain spoofing](anti-phishing-protection-spoofing-about.md)_, because the impersonated domain is often a real, registered domain. Messages from senders in the impersonated domain are able to pass regular email authentication checks that would otherwise identify spoofing attempts (SPF, DKIM, and DMARC).

Impersonation protection is part of the anti-phishing policy settings that are exclusive to Microsoft Defender for Office 365. For more information about these settings, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

Use the impersonation insight in the Microsoft 365 Defender portal to quickly identify messages from impersonated senders or sender domains that you've included in impersonation protection.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>. To go directly to the **Impersonation insight** page, use <https://security.microsoft.com/impersonationinsight>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft 365 Defender role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac): **configuration/security (manage)** or **configuration/security (read)**. Currently, this option requires membership in the Microsoft 365 Defender Preview program.
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in any of the following role groups:
    - **Organization Management**
    - **Security Administrator**
    - **Security Reader**
    - **Global Reader**
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Security Reader**, or **Global Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- You enable and configure impersonation protection in anti-phishing policies in Microsoft Defender for Office 365. Impersonation protection isn't enabled by default. For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md) and [Use the Microsoft 365 Defender portal to assign Standard and Strict preset security policies to users](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

## Open the impersonation insight in the Microsoft 365 Defender portal

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-phishing** in the **Policies** section. Or, to go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

On the **Anti-phishing** page, the impersonation insight looks like this:

:::image type="content" source="../../media/m365-sc-impersonation-insight.png" alt-text="The impersonation insight on the Anti-phishing policy page in the Microsoft 365 Defender portal." lightbox="../../media/m365-sc-impersonation-insight.png":::

The insight has two modes:

- **Insight mode**: If impersonation protection is enabled and configured in any anti-phishing policies, the insight shows the number of detected messages from impersonated domains and impersonated users (senders) over the past seven days. This is the total of all detected impersonated attempts from all anti-phishing policies.
- **What if mode**: If impersonation protection isn't enabled and configured in any active anti-phishing policies, the insight shows how many messages _would have_ been detected by impersonation protection over the past seven days.

To view information about the impersonation detections, select **View impersonations** in the impersonation insight.

## View information about messages from impersonated domains

After you select **View impersonations** in the impersonation insight, you're taken to the **Impersonation insight** page. To go directly to the **Impersonation insight** page, use <https://security.microsoft.com/impersonationinsight>.

On the **Impersonation insight** page, verify that the **Domains** tab is selected. The following information is shown:<sup>\*</sup>:

- **Sender Domain**: The impersonating domain, which is the domain that was used to send the email message.
- **Message count**: The number of messages from impersonating sender domain over the last 7 days.
- **Impersonation type**: This value shows the detected location of the impersonation (for example, **Domain in address**).
- **Impersonated domain(s)**: The impersonated domain, which should closely resemble the domain that's configured for impersonation protection in the anti-phishing policy.
- **Domain type**: This value is **Company domain** for [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) or **Custom domain** for custom domains.
- **Policy**: The anti-phishing policy that detected the impersonated domain.
- **Allowed to impersonate**: One of the following values:
  - **Yes**: The domain was configured as trusted domain (an exception for impersonation protection) in the anti-phishing policy. Messages from senders in the impersonated domain were detected, but allowed.
  - **No**: The domain was configured for impersonation protection in the anti-phishing policy. Messages from senders in the impersonated domain were detected and acted upon based on the action for impersonated domains in the anti-phishing policy.

Select a column header to sort by that column.

sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Zoom out in your web browser.

To change the list of domain impersonation detections from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false":::.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a comma-separated list of values to find specific domain impersonation detections.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of domain impersonation detections to a CSV file.

### View details about messages from impersonated domains

On the **Domains** tab on the **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight?type=Domain>, select one of the impersonation detections by clicking anywhere in the row other than the check box.

The details flyout that open contains the following information and actions:

- **Select impersonation policy to modify**: Select the affected anti-phishing policy to modify. Only policies where the domain is specified in domain impersonation protection are available. Refer to the previous page to see which policy was responsible for detecting the impersonated domain (likely based on the recipient and the priority of the policy).
- **Add to the allowed to impersonation list**: Use this toggle to add or remove the sender from the **Trusted senders and domains** (impersonation exceptions) for the anti-phishing policy that you selected:
  - If the **Allowed to impersonate** value for this entry was **No**, the toggle is off. To exempt all senders in this domain from evaluation by impersonation protection, slide the toggle to on: :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::. The domain is added to the **Trusted domains** list in the impersonation protection settings of the anti-phishing policy.
  - If the **Allowed to impersonate** value for this entry was **Yes**, the toggle is on. To return all senders in this domain to evaluation by impersonation protection, slide the toggle to off: :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::. The domain is removed from the **Trusted domains** list in the impersonation protection settings of the anti-phishing policy.
- Why we caught this.
- What you need to do.
- A domain summary that list the impersonated domain.
- WhoIs data about the sender.
- A link to open [Threat Explorer](threat-explorer-about.md) to see additional details about the sender.
- Similar messages from the same sender that were delivered to your organization.

## View information about messages from impersonated senders

After you select **View impersonations** in the impersonation insight, you're taken to the **Impersonation insight** page. To go directly to the **Impersonation insight** page, use <https://security.microsoft.com/impersonationinsight>.

On the **Impersonation insight** page, select the **Users** tab. The following information is shown:<sup>\*</sup>:

- **Sender**: The email address of the impersonating sender that sent the email message.
- **Message count**: The number of messages from the impersonating sender over the last 7 days.
- **Impersonation type**: This value is **User in display name**.
- **Impersonated user(s)**: The email address of the impersonated sender, which should closely resemble the user that's configured for impersonation protection in the anti-phishing policy.
- **User type**: The type of protection applied (for example, **Protected user** or **Mailbox Intelligence**).
- **Policy**: The anti-phishing policy that detected the impersonated sender.
- **Allowed to impersonate**: One of the following values:
  - **Yes**: The sender was configured as trusted user (an exception for impersonation protection) in the anti-phishing policy. Messages from the impersonated sender were detected, but allowed.
  - **No**: The sender was configured for impersonation protection in the anti-phishing policy. Messages from the impersonated sender were detected and acted upon based on the action for impersonated users in the anti-phishing policy.

Select a column header to sort by that column.

sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Zoom out in your web browser.

To change the list of user impersonation detections from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false":::.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a comma-separated list of values to find specific user impersonation detections.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of user impersonation detections to a CSV file.

### View details about messages from impersonated senders

On the **Users** tab on the **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight?type=User>, select one of the impersonation detections by clicking anywhere in the row other than the check box.

The details flyout that open contains the following information and actions:

- **Select impersonation policy to modify**: Select the affected anti-phishing policy to modify. Only policies where the user is specified in user impersonation protection are available. Refer to the previous page to see which policy was responsible for detecting the impersonated sender (likely based on the recipient and the priority of the policy).
- **Add to the allowed to impersonation list**: Use this toggle to add or remove the sender from the **Trusted senders and domains** (impersonation exceptions) for the anti-phishing policy that you selected:
  - If the **Allowed to impersonate** value for this entry was **No**, the toggle is off. To exempt the sender from evaluation by impersonation protection, slide the toggle to on: :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::. The sender is added to the **Trusted users** list in the impersonation protection settings of the anti-phishing policy.
  - If the **Allowed to impersonate** value for this entry was **Yes**, the toggle is on. To return the sender to evaluation by impersonation protection, slide the toggle to off: :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::. The sender is removed from the **Trusted users** list in the impersonation protection settings of the anti-phishing policy.
- Why we caught this.
- What you need to do.
- A sender summary that list the impersonated sender.
- WhoIs data about the sender.
- A link to open [Threat Explorer](threat-explorer-about.md) to see additional details about the sender.
- Similar messages from the same sender that were delivered to your organization.
