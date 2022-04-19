---
title: Configure and review priority accounts in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 3/21/2022
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
ms.custom:
description: Learn how to identify critical people in an organization and add the priority account tag to provide them with extra protection.
ms.technology: mdo
ms.prod: m365-security
---

# Configure and review priority accounts in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In every organization, there are people that are critical, like executives, leaders, managers, or other users who have access to sensitive, proprietary, or high priority information. You can tag these users within Microsoft Defender for Office 365 as priority accounts, allowing security teams to prioritize their focus on these critical individuals. With differentiated protection for priority accounts, users tagged as priority accounts will receive a higher level of protection against threats.

Priority accounts are targeted by attackers more often and are generally attacked with more sophisticated techniques. Differentiated protection for priority accounts focuses on this specific user set and provides higher level of protection using enhanced machine learning models. This differentiation in learning and message handling provides the highest level of protection for these accounts and helps maintain a low false positive rate, as a high rate of false positives can also have a negative impact on these users.

## Configure priority account protection

Priority account protection is turned on by default for pre-identified critical users. However, the security administrator of your organization can also turn on priority account protection by following these steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **Priority account protection**. To go directly to the **Priority account protection** page, use <https://security.microsoft.com/securitysettings/priorityAccountProtection>.

2. On the **Priority account protection** page, turn on **Priority account protection**.

    > [!div class="mx-imgBorder"]
    > ![Turn on Priority account protection.](../../media/mdo-priority-account-protection.png)

> [!NOTE]
> We don't recommend disabling or turning off priority account protection.

### Enable the priority account tag

Microsoft Defender for Office 365 supports priority accounts as tags that can be used as filters in alerts, reports, and investigations.

For more information, see [User tags in Microsoft Defender for Office 365](user-tags.md).

## Review differentiated protection from priority account protection

The affects of priority account protection are visible in the following features:

- The [Threat protection status report](view-email-security-reports.md#threat-protection-status-report).
- [Threat Explorer](threat-explorer.md)
- The [Email entity page](mdo-email-entity-page.md)

### Threat protection status report

The **Threat protection status** report is a single view that brings together information about malicious content and malicious email detected and blocked by Microsoft Defender for Office 365.

To view the report, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Reports** \> **Email & collaboration** \> **Email & collaboration reports** \> find **Threat protection status** and then click **View details**. To go directly to the report, use <https://security.microsoft.com/reports/TPSAggregateReportATP>.

2. The default view is **View data by Overview**. Click on this value to change the view by selecting one of the following values:
   - **View data by Email \> Phish**
   - **View data by Email \> Malware**
   - **View data by Email \> Spam**

3. Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter**.

4. On the **Filters** flyout that opens, in the **Priority accounts** section, select **Yes**, **No** or both values.

   ![Priority account protection filters in the Threat protection status report.](../../media/priority-account-protection-tps-report.png)

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

- [User tags in Microsoft Defender for Office 365](user-tags.md)
- [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md)
