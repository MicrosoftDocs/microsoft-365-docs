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
description: Admins use the impersonation insight in Microsoft Defender for Office 365 to view information about the senders and sender domains that are detected as impersonation attempts over the last week by anti-phishing policies.
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/22/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Impersonation insight in Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

_Impersonation_ is when the sender of an email message looks similar to a real or expected sender's email address. Attackers often use impersonated sender email addresses in phishing or other types of attacks to gain the trust of the recipient. There are two basic types of impersonation:

- **Domain impersonation**: Contains subtle differences in the domain. For example, lila@ćóntoso.com impersonates lila@contoso.com.
- **User impersonation**: Contains subtle differences in the email alias. For example, rnichell@contoso.com impersonates michelle@contoso.com.

Domain impersonation is different from _[domain spoofing](anti-phishing-protection-spoofing-about.md)_, because the impersonated domain is often a real, registered domain, but with the intent to deceive. Messages from senders in the impersonated domain are able to pass regular email authentication checks that would otherwise identify the messages as spoofing attempts (SPF, DKIM, and DMARC).

Impersonation protection is part of the anti-phishing policy settings that are exclusive to Microsoft Defender for Office 365. For more information about these settings, see [Impersonation settings in anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365).

Admins can use the impersonation insight in the Microsoft 365 Defender portal to quickly identify messages from impersonated senders or sender domains that are specified in impersonation protection in anti-phishing policies.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>. To go directly to the **Impersonation insight** page, use <https://security.microsoft.com/impersonationinsight>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in any of the following role groups:
    - **Organization Management**
    - **Security Administrator**
    - **Security Reader**
    - **Global Reader**
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator**, **Security Administrator**, **Security Reader**, or **Global Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- You enable and configure impersonation protection in anti-phishing policies in Microsoft Defender for Office 365. Impersonation protection isn't enabled by default. For more information, see [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md) and [Use the Microsoft 365 Defender portal to assign Standard and Strict preset security policies to users](preset-security-policies.md#use-the-microsoft-365-defender-portal-to-assign-standard-and-strict-preset-security-policies-to-users).

- For more information about licensing requirements, see [Licensing terms](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description#licensing-terms).

## Open the impersonation insight in the Microsoft 365 Defender portal

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Anti-phishing** in the **Policies** section. Or, to go directly to the **Anti-phishing** page, use <https://security.microsoft.com/antiphishing>.

On the **Anti-phishing** page, the impersonation insight looks like this:

:::image type="content" source="../../media/m365-sc-impersonation-insight.png" alt-text="The impersonation insight on the Anti-phishing policy page in the Microsoft 365 Defender portal." lightbox="../../media/m365-sc-impersonation-insight.png":::

The insight has two modes:

- **Insight mode**: If impersonation protection is enabled and configured in any anti-phishing policies, the insight shows the number of detected messages from impersonated domains and impersonated users (senders) over the past seven days. The number shown is the total of all detected impersonation attempts from all anti-phishing policies.
- **What if mode**: If impersonation protection isn't enabled and configured in any active anti-phishing policies, the insight shows how many messages _would have been_ detected by impersonation protection over the past seven days.

To view information about impersonation detections, select **View impersonations** in the impersonation insight to go to the **Impersonation insight** page.

## View information about domain impersonation detections

The **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight> is available when you select **View impersonations** in the impersonation insight on the **Anti-phishing** page.

On the **Impersonation insight** page, verify the **Domains** tab is selected.

You can sort the entries by clicking on an available column header. The following columns are available:<sup>\*</sup>:

- **Sender Domain**: The impersonating domain, which is the domain that was used to send the email message.
- **Message count**: The number of messages from impersonating sender domain over the last seven days.
- **Impersonation type**: This value shows the detected location of the impersonation (for example, **Domain in address**).
- **Impersonated domain(s)**: The domain that's protected by domain impersonation protection, which should resemble the domain in **Sender domain**.
- **Domain type**: This value is **Company domain** for [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) or **Custom domain** for custom domains.
- **Policy**: The anti-phishing policy that detected the impersonated domain.
- **Allowed to impersonate**: One of the following values:
  - **Yes**: The domain was configured as trusted domain (an exception for impersonation protection) in the anti-phishing policy that detected the message. Messages from the impersonated domain were detected, but allowed.
  - **No**: The domain was configured for impersonation protection in the anti-phishing policy that detected the message. The action for domain impersonation detections in the anti-phishing policy is done to the message.

<sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Zoom out in your web browser.

To change the list of domain impersonation detections from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a comma-separated list of values to find specific domain impersonation detections.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of domain impersonation detections to a CSV file.

### View details about a domain impersonation detection

On the **Domains** tab on the **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight?type=Domain>, select one of the impersonation detections by clicking anywhere in the row other than the check box.

The following information is available in the details flyout:

- **Why did we catch this?**
- **What do you need to do?**
- **Domain summary**: The domain that was detected as impersonation.
- **Whois data**: Contains information about the domain:
  - **Sender location**
  - **Domain created date**
  - **Domain expiration date**
  - **Registrant**

- **Explorer investigation**: Select the link to open [Threat Explorer or Real-time detections](threat-explorer-about.md) for additional details about the sender.

- **Email from sender**: This section shows the following information about similar messages from senders in the domain:
  - **Date**
  - **Recipient**
  - **Subject**
  - **Sender**
  - **Sender IP**
  - **Delivery action**

> [!TIP]
> To see details about other domain impersonation entries without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

To prevent senders in a detected domain from being identified as domain impersonation, see the next subsection.

### Exempt senders in a detected domain from future domain impersonation checks

On the **Domains** tab of the **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight?type=Domain>, use the following steps to exempt senders in a detected domain from being identified as domain impersonation:

Select the entry from the list by clicking anywhere in the row other than the check box.

In the details flyout that opens, use the **Select impersonation policy to modify** and **Add to the allowed to impersonation list** settings at the top of the flyout. These settings work together to add the domain to the [Trusted senders and domains](anti-phishing-policies-about.md#trusted-senders-and-domains) list in the policy that incorrectly identified the message as domain impersonation:

- Select the anti-phishing policy in the dropdown list. The anti-phishing policy that was responsible for detecting the message is shown in the **Policy** value on the **Domain** tab.
- Slide the toggle to on: :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: to add the domain to the **Trusted senders and domains** list in the selected policy.

  To remove the domain from the **Trusted senders and domains** list, slide the toggle back to :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::

When you're finished in the details flyout, select **Close**.

## View information about user impersonation detections

The **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight> is available when you select **View impersonations** in the impersonation insight on the **Anti-phishing** page.

On the **Impersonation insight** page, select the **Users** tab.

You can sort the entries by clicking on an available column header. The following columns are available:<sup>\*</sup>:

- **Sender**: The email address of the impersonating sender that sent the email message.
- **Message count**: The number of messages from the impersonating sender over the last seven days.
- **Impersonation type**: For example, **User in display name**.
- **Impersonated user(s)**: The display name and email address of the sender that's protected by impersonation protection, which resembles the email address in **Sender**.
- **User type**: The type of protection applied (for example, **Protected user** or **Mailbox Intelligence**).
- **Policy**: The anti-phishing policy that detected the impersonated sender.
- **Allowed to impersonate**: One of the following values:
  - **Yes**: The sender was configured as trusted user (an exception for impersonation protection) in the anti-phishing policy that detected the message. Messages from the impersonated sender were detected, but allowed.
  - **No**: The sender was configured for impersonation protection in the anti-phishing policy that detected the message. The action for user impersonation detections in the anti-phishing policy is done to the message.

<sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Zoom out in your web browser.

To change the list of user impersonation detections from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a comma-separated list of values to find specific user impersonation detections.

Use :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export** to export the list of user impersonation detections to a CSV file.

### View details about a user impersonation detection

On the **Users** tab on the **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight?type=User>, select one of the impersonation detections by clicking anywhere in the row other than the check box.

The following information is available in the details flyout:

- **Why did we catch this?**
- **What do you need to do?**
- **Sender summary**: The sender that was detected as impersonation.

- **Explorer investigation**: Select the link to open [Threat Explorer or Real-time detections](threat-explorer-about.md) for additional details about the sender.

- **Email from sender**: This section shows the following information about similar messages from the sender:
  - **Date**
  - **Recipient**
  - **Subject**
  - **Sender**
  - **Sender IP**
  - **Delivery action**

> [!TIP]
> To see details about other user impersonation entries without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

To prevent a detected sender from being identified as user impersonation, see the next subsection.

### Exempt a detected sender from future user impersonation checks

On the **Users** tab of the **Impersonation insight** page at <https://security.microsoft.com/impersonationinsight?type=User>, use the following steps to exempt detected senders from being identified as user impersonation:

Select the entry from the list by clicking anywhere in the row other than the check box.

In the details flyout that opens, use the **Select impersonation policy to modify** and **Add to the allowed to impersonation list** settings at the top of the flyout. These settings work together to add the sender to the [Trusted senders and domains](anti-phishing-policies-about.md#trusted-senders-and-domains) list in the policy that incorrectly identified the message as user impersonation:

- Select the anti-phishing policy in the dropdown list. The anti-phishing policy that was responsible for detecting the message is shown in the **Policy** value on the **Domain** tab.
- Slide the toggle to on: :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: to add the sender to the **Trusted senders and domains** list in the selected policy.

  To remove the sender from the **Trusted senders and domains** list, slide the toggle back to :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::

When you're finished in the details flyout, select **Close**.
