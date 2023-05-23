---
title: Configure and review the results of priority account protection in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 5/23/2023
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: Learn how to identify critical people in an organization and add the priority account tag to provide them with extra protection.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Configure and review the results of priority account protection in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with Microsoft Defender for Office 365 Plan 2, _priority account protection_ is a differentiated level of protection that's available to accounts that have the **Priority account** tag applied to them. For more information about the Priority account tag and how to apply it to users, see [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md).

Priority account protection offers additional heuristics that are specifically tailored to company executives that wouldn't benefit a regular employee. Priority account protection is better suited to the mail flow patterns of company executives based on extensive data from the Microsoft datacenters.

By default, priority account protection is turned on in organizations with Defender for Office 365 Plan 2. This default behavior means an account that's tagged as a Priority account automatically receives priority account protection.

This article describes how to confirm that priority account protection is turned on, and identifies the reporting features that allow you to see the effects of priority account protection.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo): Membership in the **Organization Management** or **Security Administrator** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator** or **Security Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- As previously described, priority account protection is available for accounts that have the **Priority account** tag applied to them. For instructions, see [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md).

- The Priority account tag is a type of _user tag_. You can create custom user tags to differentiate specific groups of users in reporting and other features. For more information about user tags, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).

## Review or turn on priority account protection in the Microsoft 365 Defender portal

> [!NOTE]
> We don't recommend turning off priority account protection.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **Priority account protection**. Or, to go directly to the **Priority account protection** page, use <https://security.microsoft.com/securitysettings/priorityAccountProtection>.

2. On the **Priority account protection** page, verify that **Priority account protection** is turned on (:::image type="icon" source="../../media/scc-toggle-on.png" border="false":::).

   :::image type="content" source="../../media/mdo-priority-account-protection.png" alt-text="Turn on Priority account protection." lightbox="../../media/mdo-priority-account-protection.png":::

### Review or turn on priority account protection in the Microsoft 365 Defender portal

If you want to use Exchange Online PowerShell to turn on priority account protection, do the following steps:

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following command:

   ```powershell
   Set-EmailTenantSettings -EnablePriorityAccountProtection $true
   ```

2. To verify that priority account protection is turned on, run the following command to verify the EnablePriorityAccountProtection property value:

   ```powershell
   Get-EmailTenantSettings | Format-List Identity,EnablePriorityAccountProtection
   ```

   The value True means priority account protection is turned on. The value False means priority account protection is turned off.

### Assign the Priority account tag to users

Microsoft Defender for Office 365 supports priority accounts as tags that can be used as filters in alerts, reports, incidents, and more.

For more information, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).

> [!NOTE]
> Currently, you can only apply user tags to mailbox users.
>
> Your organization can tag a maximum of 250 users using the Priority account tag.
>
> Each custom tag has a maximum of 10,000 users per tag and your organization can create up to 500 custom tags.

## Review differentiated protection from priority account protection

The effects of priority account protection are visible in the following features:

- [Threat protection status report](reports-email-security.md#threat-protection-status-report)
  - [View data by Email \> Phish and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)
  - [View data by Email \> Spam and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--spam-and-chart-breakdown-by-detection-technology)
  - [View data by Email \> Malware and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--malware-and-chart-breakdown-by-detection-technology)
  - [Chart breakdown by Policy type](reports-email-security.md#chart-breakdown-by-policy-type)
  - [Chart breakdown by Delivery status](reports-email-security.md#chart-breakdown-by-delivery-status)
- [Threat Explorer and real-time detections](threat-explorer-about.md)
- [Email entity page](mdo-email-entity-page.md)

### Threat protection status report

The **Threat protection status** report brings together information about malicious content and malicious email detected and blocked by Microsoft Defender for Office 365. For more information, see [Threat protection status report](reports-email-security.md#threat-protection-status-report).

In the previously mentioned views in the report, the option **Priority account protection** and the value **Yes** is available when you select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** . This option allows you to filter the data in the report by priority account protection detections.

### Threat Explorer

Context filter within Threat Explorer helps search for emails where priority account protection was involved in the detection of the message. This allows security operations teams to be able to see the value provided by this protection. You can still filter messages by priority account tag to find all messages for the specific set of users.

To view the extra protection in Threat Explorer, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Explorer**. To go directly to the **Threat Explorer** page, use <https://security.microsoft.com/threatexplorer>.

2. Select **Context** from the dropdown, and then select the checkbox next to **Priority account protection**.

> [!div class="mx-imgBorder"]
> ![Context filter within Threat Explorer.](../../media/threat-explorer-context-filter.png)

### Email entity page

The email entity page is available in **Threat Explorer**. Select the subject of an email you're investigating. A gold bar will display at the top of the email flyout for that mail. Select to view the new page.

The tabs along the top of the entity page will allow you to investigate email efficiently. Click the **Analysis** tab. Priority account protection is now listed under **Threat detection details**.

## More information

- [User tags in Microsoft Defender for Office 365](user-tags-about.md)
- [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md)
