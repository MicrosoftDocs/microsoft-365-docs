---
title: Configure and review priority account protection in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 6/19/2023
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: Admins can learn how to turn on priority account protection in Microsoft Defender for Office 365 Plan 2 organizations.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Configure and review priority account protection in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with Microsoft Defender for Office 365 Plan 2, _priority account protection_ is a differentiated level of protection that's applied to accounts that have the **Priority account** tag applied to them. For more information about the Priority account tag and how to apply it to users, see [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md).

Priority account protection offers additional heuristics that are tailored to company executives that don't benefit regular employees. Priority account protection is better suited to the mail flow patterns of company executives based on extensive data from the Microsoft datacenters.

By default, priority account protection is turned on in organizations with Defender for Office 365 Plan 2. This default behavior means an account that's tagged as a Priority account automatically receives priority account protection.

This article describes how to confirm that priority account protection is turned on, how to turn it on, and identifies the reporting features that allow you to see the results of priority account protection.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Exchange Online RBAC](/exchange/permissions-exo/permissions-exo): Membership in the **Organization Management** or **Security Administrator** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator** or **Security Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- As previously described, priority account protection is applied to accounts that have the **Priority account** tag applied to them. For instructions, see [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md).

- The Priority account tag is a type of _user tag_. You can create custom user tags to differentiate specific groups of users in reporting and other features. For more information about user tags, see [User tags in Microsoft Defender for Office 365](user-tags-about.md).

## Review or turn on priority account protection in the Microsoft 365 Defender portal

> [!NOTE]
> We don't recommend turning off priority account protection.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **Priority account protection**. Or, to go directly to the **Priority account protection** page, use <https://security.microsoft.com/securitysettings/priorityAccountProtection>.

2. On the **Priority account protection** page, verify that **Priority account protection** is turned on (:::image type="icon" source="../../media/scc-toggle-on.png" border="false":::).

   :::image type="content" source="../../media/mdo-priority-account-protection.png" alt-text="Turn on Priority account protection." lightbox="../../media/mdo-priority-account-protection.png":::

### Review or turn on priority account protection in Exchange Online PowerShell

If you'd rather use PowerShell to verify that priority account protection is turned on, run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

```powershell
Get-EmailTenantSettings | Format-List Identity,EnablePriorityAccountProtection
```

The value True for the EnablePriorityAccountProtection property means priority account protection is turned on. The value False means priority account protection is turned off.

To turn on priority account protection, run the following command:

```powershell
Set-EmailTenantSettings -EnablePriorityAccountProtection $true
```

For detailed syntax and parameter information, see [Get-EmailTenantSettings](/powershell/module/exchange/get-emailtenantsettings) and [Set-EmailTenantSettings](/powershell/module/exchange/set-emailtenantsettings).

## Review differentiated protection from priority account protection

The effects of priority account protection are visible in the following reporting features:

- [Threat protection status report](reports-email-security.md#threat-protection-status-report)
  - [View data by Email \> Phish and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--phish-and-chart-breakdown-by-detection-technology)
  - [View data by Email \> Spam and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--spam-and-chart-breakdown-by-detection-technology)
  - [View data by Email \> Malware and Chart breakdown by Detection Technology](reports-email-security.md#view-data-by-email--malware-and-chart-breakdown-by-detection-technology)
  - [Chart breakdown by Policy type](reports-email-security.md#chart-breakdown-by-policy-type)
  - [Chart breakdown by Delivery status](reports-email-security.md#chart-breakdown-by-delivery-status)
- [Threat Explorer and real-time detections](threat-explorer-about.md)
- [Email entity page](mdo-email-entity-page.md)

For information about where the Priority account tag and other user tags are available as filters, see [User tags in reports and features](user-tags-about.md#user-tags-in-reports-and-features). 

### Threat protection status report

The **Threat protection status** report brings together information about malicious content and malicious email detected and blocked by Exchange Online Protection and Defender for Office 365. For more information, see [Threat protection status report](reports-email-security.md#threat-protection-status-report).

In the previously mentioned views in the report, the option **Priority account protection** and the value **Yes** is available when you select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. This option allows you to filter the data in the report by priority account protection detections.

### Threat Explorer

For more information about Threat Explorer, see [Threat Explorer and Real-time detections](threat-explorer-about.md).

To view the results of priority account protection in Threat Explorer, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Explorer**. Or, to go directly to the **Explorer** page, use <https://security.microsoft.com/threatexplorer>.

2. On the **Explorer** page, on the **All email**, **Malware**, or **Phish** tabs, select **Context** \> **Equal any of** \> **Priority account protection**, and then select **Refresh**.

   :::image type="content" source="../../media/threat-explorer-context-filter.png" alt-text="Context filter within Threat Explorer." lightbox="../../media/threat-explorer-context-filter.png":::

### Email entity page

The email entity page is available in **Threat Explorer**. For more information, see [The Email entity page](mdo-email-entity-page.md).

In the filtered results on the **All email**, **Malware**, or **Phish** tabs of the **Explorer** page, select the **Subject** of an email message in the results.

In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-open-icon.png" border="false"::: **Open email entity** at the top of the flyout.

On the email entity page that opens, select the **Analysis** tab. **Priority account protection** is listed in the **Threat detection details** section.

:::image type="content" source="../../media/email-entity-priority-account-protection.png" alt-text="The Analysis tab of the Email entity page showing Priority account protection results." lightbox="../../media/email-entity-priority-account-protection.png":::

## More information

- [User tags in Microsoft Defender for Office 365](user-tags-about.md)
- [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md)
