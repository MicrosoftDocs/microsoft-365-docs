---
title: "Manage and monitor priority accounts"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 09/24/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- Adm_O365
- Adm_TOC
- trust-pod
ms.custom:
- AdminSurgePortfolio
- admindeeplinkMAC
description: "Admins can learn how to tag users as priority accounts, and about the extra protection and monitoring features priority accounts get."
---

# Manage and monitor priority accounts

Every Microsoft 365 organization contains essential users like executives, leaders, managers, or others who have access to sensitive, proprietary, or high priority information. You can designate up to 250 of these users as _priority accounts_ and (depending on your subscription) use app-specific features that give them extra protection and visibility.

This article describes how to tag users and groups as priority accounts, and the extra protections and visibility they get as priority accounts.

> [!TIP]
> For security best practices for high value accounts, see [Security recommendations for priority accounts in cloud organizations](/defender-office-365/priority-accounts-security-recommendations).

## What do you need to know before you begin?

- The maximum number of priority accounts is 250.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft Defender XDR Unified role based access control (RBAC)](/defender-xdr/manage-rbac) (If **Email & collaboration** \> **Defender for Office 365** permissions is :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **Active**. Affects the Defender portal only, not PowerShell): **Authorization and settings/System settings/manage** or **Authorization and settings/System settings/Read-only**.
  - [Email & collaboration permissions in the Microsoft Defender portal](/defender-office-365/scc-permissions):
    - _Apply and remove the Priority account tag from users_: Membership in the **Security Administrator** and **Exchange Admin** role groups.
  - [Microsoft Entra permissions](/entra/identity/role-based-access-control/manage-roles-portal): Membership in the **Global Administrator**<sup>\*</sup> or **Security Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

> [!IMPORTANT]
> <sup>\*</sup> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role.

## Manage priority accounts

You can manage priority accounts in the Microsoft Defender portal or the Microsoft 365 admin center.

<a name='add-priority-accounts-from-the-microsoft-365-defender-page'></a>

<a name='add-priority-accounts-from-the-microsoft-defender-xdr-page'></a>

### Manage priority accounts in the Microsoft Defender portal

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User tags**. Or, to go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

2. On the **User tags** page, do one of the following steps to select and edit the **Priority account** tag:
   - Select the check box next to the first column of the **Priority account** row, and then select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
   - Click anywhere in the **Priority account** row other than the check box. In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** at the top of the flyout

3. The **Edit tag Priority account** wizard opens. On the **Assign members** page, take either of the following actions:
   - **Add members**: Do either of the following steps:
     - Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add members**. In the **Add members** flyout that opens, do any of the following steps to add individual users or groups in the **Search users and groups to add** box:
       - Click in the box and scroll through the list.
       - Start typing a name to filter the list, and then select the value below the box.

       To add more members, click in an empty area in the box and repeat the previous step.

       To remove individual entries from the box, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the entry.

       When you're finished on the **Add members** flyout, select **Add**.

       Back on the **Assign members** page, the users and groups that you added are listed by **Name** and **Type**.

     - Select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Import** to select a text file that contains the email addresses of the users or groups (one entry per line).

     - **Remove members**: In the list of members on the **Assign members** page, select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** in the entry row.

   When you're finished on the **Assign members** page, select **Next**.

4. On the **Review tag** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review tag** page, select **Submit**.

5. On the **Tag Priority account updated** page, you can select the links to add a new tag or manage the tag members.

   When you're finished on the **New tag created** page, select **Done**.

   > [!TIP]
   > It can take up to 8 hours to completely apply tags.

<a name='add-priority-accounts-from-active-users-page'></a>

### Manage priority accounts in the Microsoft admin center

1. In the Microsoft admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a>, go to the **Priority accounts** page at <https://admin.microsoft.com/Adminportal/Home#/priorityaccounts>.

   If you prefer the long way, go to **Users** \> **Active users** \> on the **Active users** page, select :::image type="icon" source="../../media/m365-cc-sc-more-actions-icon.png" border="false"::: **More actions** \> :::image type="icon" source="../../media/m365-cc-sc-medal.png" border="false"::: **Manage priority accounts**.

2. On the **Priority accounts** page, take either of the following actions:
   - **Add members**:
     1. Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Tag accounts**. In the **Tag user accounts as priority** flyout that opens, select one of the following values in **How would you like to search for accounts?**:
        - **Name and email address** (default)
        - **Job title**
        - **Distribution list**

        When you're finished, select **Next**.

     2. In the flyout that opens, find and select the users or distributions groups, and then select **Tag**.

     3. The process starts over on the **Tag user accounts as priority** flyout with the **Priority accounts tagged** total updated (the maximum is 250). Select **Next** to tag more users or distribution groups, or select **Cancel** to finish.

     Back on the **Priority accounts** page, the users or groups you select are listed.

   - **Remove members**: In the list of members on the **Priority accounts** page, do either of the following steps:
     - Select one or more entries from the list by selecting the check box next to the **Display name** column, select the :::image type="icon" source="../../media/m365-cc-sc-minus.png" border="false"::: **Remove tag** action that appears, and then select **Remove** in the confirmation dialog that appears.
     - Between the **Display name** and **Username** column values of an entry, select **⋮** **More actions** \> :::image type="icon" source="../../media/m365-cc-sc-minus.png" border="false"::: **Remove tag**, and then select **Remove** in the confirmation dialog that appears.

## Monitor priority accounts

After you tag users or groups as priority accounts, they get the following protections and visibility in Microsoft 365:

- **Visibility in reporting in Microsoft Defender for Office 365 Plan 1 or Plan 2**: Microsoft 365 Business Premium and other subscriptions that include Defender for Office 365 (for example, Microsoft 365 E5 or an add-on subscription) support priority accounts as tags in filters in alerts, reports, and investigations. For more information, see [User tags in Microsoft Defender for Office 365](../../security/office-365-security/user-tags-about.md).

- **Priority account protection in Defender for Office 365 Plan 2**: A natural question is, "Aren't all users a priority? Why not designate all users as priority accounts for priority account protection?" Yes, all users are a priority, but priority account protection in Defender for Office 365 Plan 2 (for example, in Business Premium with the [Microsoft Defender Suite for Business Premium add-on](add-defender-suite-business-premium.md)) offers the following benefits:
  - **Other heuristics**: Our analysis of mail flow in the Microsoft datacenters indicates that mail flow patterns for company executives are different than the average user. Priority account protection offers other heuristics specifically tailored to company executives that don't benefit regular users.
  - **Extra visibility in reporting**: Priority account protection as a filter allows you to specifically target your investigations.

  For more information, see [Configure and review priority account protection in Microsoft Defender for Office 365](/defender-office-365/priority-accounts-turn-on-priority-account-protection).

  > [!TIP]
  > When you apply priority account protection to a mailbox, you should also apply priority account protection to users with access to the mailbox. For example, the CEO and their executive assistant.

- **Email monitoring in Exchange Online**: Email monitoring features for priority accounts have the following requirements:
  - At least 5,000 licenses in any combination of the following products:
    - Office 365 E3
    - Microsoft 365 E3
    - Office 365 E3
    - Microsoft 365 E5

    For example, your organization has 3,000 Office 365 E3 licenses and 2,500 Microsoft 365 E5 licenses, for a total of 5,500 licenses from the qualifying products.

  - At least 50 monthly active users for one or more core workloads:
    - Microsoft Teams
    - OneDrive
    - SharePoint
    - Exchange Online
    - Microsoft 365 productivity apps

  If your organization meets **both of these requirements**, you can use the following email monitoring features for priority accounts:

  - **Exchange Online priority account monitoring**: You can view health of priority accounts for scenarios like Exchange licensing, mailbox storage, message limit, and mail delivery. For more information, see [Priority accounts monitoring scenarios](/microsoft-365/enterprise/microsoft-365-exchange-monitoring#priority-accounts-monitoring-scenarios).

  - **Premium Mail Flow Monitoring**: Healthy mail flow can be critical to business success, and delivery delays or failures can have a negative effect on the business. You can choose a threshold for failed or delayed emails, receive alerts when that threshold is exceeded, and view a report of email issues for priority accounts. For more information, see [Email issues for priority accounts report in the new EAC](/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report)

## More information

[Using Priority Accounts in Microsoft 365](https://techcommunity.microsoft.com/t5/microsoft-365-blog/using-priority-accounts-in-microsoft-365/ba-p/1873314)
