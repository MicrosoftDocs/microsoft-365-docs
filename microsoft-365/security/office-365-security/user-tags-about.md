---
title: User tags in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 6/20/2023
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier2
ms.custom:
description: Admins can learn how to identify specific groups of users with user tags in Microsoft Defender for Office 365 Plan 2. Tag filtering is available across alerts, reports, and investigations in Microsoft Defender for Office 365 to quickly identify the tagged users.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# User tags in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

_User tags_ are identifiers for specific groups of users in [Microsoft Defender for Office 365](defender-for-office-365.md). There are two types of user tags:

- **System tags**: Currently, [Priority account](../../admin/setup/priority-accounts.md) is the only type of system tag.
- **Custom tags**: You create these types of tags.

If your organization has Defender for Office 365 Plan 2 (included in your subscription or as an add-on), you can create custom user tags in addition to using the Priority account tag.

> [!NOTE]
> Currently, you can only apply user tags to mailbox users.
>
> Your organization can tag a maximum of 250 users using the Priority account system tag.
>
> Each custom tag has a maximum of 10,000 users per tag and your organization can create up to 500 custom tags.

This article explains how to configure user tags in the Microsoft 365 Defender portal. You can also apply or remove the Priority account tag using the _VIP_ parameter on the [Set-User](/powershell/module/exchange/set-user) cmdlet in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). No PowerShell cmdlets are available to manage custom user tags.

To see how user tags are part of the strategy to help protect high-impact user accounts, see [Security recommendations for priority accounts in Microsoft 365](priority-accounts-security-recommendations.md).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md):
    - _Create, modify, and delete custom user tags_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Apply and remove the Priority account tag from users_: Membership in the **Security Administrator** and **Exchange Admin** role groups.
    - _Apply and remove existing custom user tags from users_: Membership in the **Organization Management** or **Security Administrator** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator** and **Security Administrator** roles gives users the required permissions *and* permissions for other features in Microsoft 365.

  > [!NOTE]
  > User tag management is controlled by the **Tag Reader** and **Tag Manager** roles.

- You can also manage and monitor the Priority account tag in the Microsoft 365 admin center. For instructions, see [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md).

- For information about securing _privileged accounts_ (admin accounts), see [this article](/security/compass/critical-impact-accounts).

## Use the Microsoft 365 Defender portal to create user tags

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User tags**. Or, to go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

2. On the **User tags** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create** to start the new tag wizard.

3. On the **Define tag** page, configure the following settings:
   - **Name**: Enter a unique, descriptive name for the tag. You can't rename a tag after you create it.
   - **Description**: Enter an optional description for the tag.

   When you're finished on the **User tags** page, select **Next**.

4. On the **Assign members** page, do either of the following steps:

   - Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add members**. In the **Add members** flyout that opens, do any of the following steps to add individual users or groups in the **Search users and groups to add** box:
     - Click in the box and scroll through the list to select a user or group.
     - Click in the box, start typing a name to filter the list, and then select the value below the box.select a user or group.

     To add more members, click in an empty area in the box and repeat the previous step.

     To remove individual entries from the box, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to the entry.

     To remove all entries, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: in the **Selected nn users and nn groups** item below the box.

     When you're finished on the **Add members** flyout, select **Add**.

     Back on the **Assign members** page, the users and groups that you added are listed by **Name** and **Type**. To remove entries from the list, select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** next to the entry.

   - Select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Import** to select a text file that contains the email addresses of the users or groups (one entry per line).

   When you're finished on the **Assign members** page, select **Next**.

5. On the **Review tag** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review tag** page, select **Submit**.

6. On the **New tag created** page, you can select the links to add a new tag or manage the tag members.

   When you're finished on the **New tag created** page, select **Done**.

   Back on the **User tags** page, the new tag is listed.

## Use the Microsoft 365 Defender portal to view user tags

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User tags**. Or, to go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

On the **User tags** page, you can sort the entries by clicking on an available column header. The following columns are available:

   - **Tag**: The name of the user tag.
   - **Applied to**: The number of members
   - **Last modified**
   - **Created on**

Use :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the user tags by **Last modified date**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific user tag.

Select a user tag by clicking anywhere in the row other than the check box next to the name to open the details flyout for the user tag.

The details flyout of the user tag contains the following information, based on the type of tag:

- **System tags**: The details flyout for the Priority account tag contains the following information:
  - **Last updated**
  - **Description**
  - A link to <https://security.microsoft.com/securitysettings/priorityAccountProtection> to turn on or turn off [priority account protection](priority-accounts-turn-on-priority-account-protection.md)
  - **Applied to**
- **Custom tags**: The details flyout for a custom tag contains the same information as the **User tags** page, plus the list of users and groups that the tag applies to. 

To take action on user tags, see the next section.

## Use the Microsoft 365 Defender portal to take action on user tags

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User tags**. Or, to go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

2. On the **User tags** page, select the user tag by using either of the following methods:
   - Select the tag from the list by selecting the check box next to the name. The available actions appear on the page.
   - Select the tag from the list by clicking anywhere in the row other than the check box next to the name. The available actions are in the details flyout that opens.

After you select the user tag, the available actions are described in the following subsections.

### Use the Microsoft 365 Defender portal to modify user tags

After you select the user tag, use either of the following methods to modify it:

- **On the User tags page**: Select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
- **In the details flyout of the selected user tag**: Select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action at the top of the flyout.

The same wizard and most of the same settings are available as described in the [Use the Microsoft 365 Defender portal to create user tags](#use-the-microsoft-365-defender-portal-to-create-user-tags) section earlier in this article, with the following exceptions:

- You can't rename or change the description of the Priority account tag, so the **Define tag** page isn't available for the Priority account tag.
- The **Define tag** page is available for custom tags, but you can't rename the tag; you can only change the description.

## Use the Microsoft 365 Defender portal to remove user tags

You can't remove the built-in Priority account tag.

After you select the custom tag, use either of the following methods to remove it:

- **On the User tags page**: Select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.
- **In the details flyout of the selected user tag**: Select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action at the top of the flyout.

Read the warning in the confirmation dialog that opens, and then select **Yes, remove**.

Back on the **User tags** page, the custom tag is no longer listed.

## User tags in reports and features

After you apply system tags or custom tags to users, you can use those tags as filters in the following features:

- [Alerts](../defender/investigate-alerts.md)
- [Incidents](mdo-sec-ops-manage-incidents-and-alerts.md)
- [Custom alert policies](../../compliance/alert-policies.md#view-alerts)
- [Threat Explorer](threat-explorer-about.md)
- [Campaign Views](campaigns.md)
- [Email entity page](mdo-email-entity-page.md)
- [Email security reports](reports-email-security.md)
  - [Compromised user report](reports-email-security.md#compromised-users-report)
  - [Submissions report](reports-email-security.md#submissions-report)
  - [Threat protection status report](reports-email-security.md#threat-protection-status-report)
  - [Top senders and recipients report](reports-email-security.md#top-senders-and-recipients-report)
- [Attack simulation training](attack-simulation-training-get-started.md)
  - [Simulations](attack-simulation-training-simulations.md)
  - [Simulation automations](attack-simulation-training-simulation-automations.md)
  - [Payloads](attack-simulation-training-payloads.md)
  - [Training campaigns](attack-simulation-training-training-campaigns.md)
  - [Training modules](attack-simulation-training-training-modules.md)
- [Quarantine](quarantine-admin-manage-messages-files.md)
- [Admin submissions and user reported messages](submissions-admin.md)
- In organizations above a certain size, the [Email issues for priority accounts report](/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report) is available in the Exchange admin center (EAC).

For information about where the effects of priority account protection are visible, see [Review differentiated protection from priority account protection](priority-accounts-turn-on-priority-account-protection.md#review-differentiated-protection-from-priority-account-protection). 

## More information

- [Configure and review priority account protection](priority-accounts-turn-on-priority-account-protection.md)
- [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md)
