---
title: User tags in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 1/31/2023
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
---

# User tags in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to:**
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

User tags are identifiers for specific groups of users in [Microsoft Defender for Office 365](defender-for-office-365.md). There are two types of user tags:

- **System tags**: Currently, [Priority account](../../admin/setup/priority-accounts.md) is the only type of system tag.
- **Custom tags**: You create these user tags yourself.

If your organization has Defender for Office 365 Plan 2 (included in your subscription or as an add-on), you can create custom user tags in addition to using the Priority account tag.

> [!NOTE]
> Currently, you can only apply user tags to mailbox users.
>
> Your organization can tag a maximum of 250 users using the Priority account system tag.
>
> Each custom tag has a maximum of 10,000 users per tag and your organization can create up to 500 custom tags.

After you apply system tags or custom tags to users, you can use those tags as filters in alerts, incidents, reports, and investigations:

- [Alerts](alerts.md)
- [Incidents](mdo-sec-ops-manage-incidents-and-alerts.md)
- [Custom alert policies](../../compliance/alert-policies.md#view-alerts)
- [Threat Explorer and real-time detections](threat-explorer-about.md)
- [Compromised user report](reports-email-security.md#compromised-users-report)
- [Email entity page](mdo-email-entity-page.md)
- [Threat protection status report](reports-email-security.md#threat-protection-status-report)
- [Top senders and recipients report](reports-email-security.md#top-senders-and-recipients-report)
- [Attack simulation](attack-simulation-training-simulations.md#target-users)
- [Campaign Views](campaigns.md)
- [Admin submissions and user reported messages](submissions-admin.md)
- [Quarantine](quarantine-about.md)
- For priority accounts, you can use the [Email issues for priority accounts report](/exchange/monitoring/mail-flow-reports/mfr-email-issues-for-priority-accounts-report) in the Exchange admin center (EAC).

This article explains how to configure user tags in the Microsoft 365 Defender portal. You can also manage the Priority Account tag can using the _VIP_ parameter on the [Set-User](/powershell/module/exchange/set-user) cmdlet in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). There are no cmdlets in Microsoft 365 Defender portal to manage custom user tags.

To see how user tags are part of the strategy to help protect high-impact user accounts, see [Security recommendations for priority accounts in Microsoft 365](priority-accounts-security-recommendations.md).

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft 365 Defender role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac): **configuration/system (manage)** or **configuration/system (read)**. Currently, this option requires membership in the Microsoft 365 Defender Preview program.
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md):
    - _Create, modify, and delete custom user tags_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Add and remove members from the Priority Account system tag_: Membership in the **Security Administrator** and **Exchange Admin** role groups.
    - _Add and remove members from existing custom user tags_: Membership in the **Organization Management** or **Security Administrator** role groups.

  > [!NOTE]
  > User tag management is controlled by the **Tag Reader** and **Tag Manager** roles.

- You can also manage and monitor priority accounts in the Microsoft 365 admin center. For instructions, see [Manage and monitor priority accounts](../../admin/setup/priority-accounts.md).

- For information about securing _privileged accounts_ (admin accounts), see [this topic](/security/compass/critical-impact-accounts).

## Use the Microsoft 365 Defender portal to create user tags

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User tags**. To go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

2. On the **User tags** page, click ![Create tag icon.](../../media/m365-cc-sc-create-icon.png) **Create tag**.

3. The **Create tag** wizard opens in a new flyout. On the **Define tag** page, configure the following settings:
   - **Name**: Enter a unique, descriptive name for the tag. This is the value that you'll see and use. Note that you can't rename a tag after you create it.
   - **Description**: Enter an optional description for the tag.

   When you're finished, click **Next**.

4. On the **Assign members** page, do either of the following steps:
   - Click ![Add members icon.](../../media/m365-cc-sc-create-icon.png) **Add members**. In the fly out that appears, do any of the following steps to add individual users or groups:
     - Click in the box and scroll through the list to select a user or group.
     - Click in the box and start typing to filter the list and select a user or group.
     - To add additional values, click in an empty area in the box.
     - To remove individual entries, click ![Remove entry icon.](../../media/m365-cc-sc-remove-selection-icon.png) next to the entry in the box.
     - To remove all entries, click ![Remove entry icon.](../../media/m365-cc-sc-remove-selection-icon.png) on the **Selected nn users and nn groups** item below the box.

     When you're finished, click **Add**.

     Back on the **Assign members** page, you can also remove entries by clicking ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) next to the entry.

   - Click **Import** to select a text file that contains the email addresses of the users or groups. Be sure the text file contains one entry per line.

   When you're finished, click **Next**.

5. On the **Review tag** page that appears, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Submit**, and then click **Done**.

## Use the Microsoft 365 Defender portal to view user tags

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User tags**. To go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

2. On the **User tags** page, the following properties are displayed in the list of user tags:

   - **Tag**: The name of the user tag. Note that this includes the built-in **Priority account** system tag.
   - **Applied to**: The number of members
   - **Last modified**
   - **Created on**

3. When you select a user tag by clicking on the name, the details are displayed in a flyout.

## Use the Microsoft 365 Defender portal to modify user tags

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User tags**. To go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

2. On the **User tags** page, select the user tag from the list, and then click ![Edit tag icon.](../../media/m365-cc-sc-edit-icon.png) **Edit tag**.

3. In the details flyout that appears, the same wizard and settings are available as described in the [Use the Microsoft 365 Defender portal to create user tags](#use-the-microsoft-365-defender-portal-to-create-user-tags) section earlier in this article.

   **Notes**:

   - The **Define tag** page is not available for the built-in **Priority account** system tag, so you can't rename this tag or change the description.
   - You can't rename a custom tag, but you can change the description.

## Use the Microsoft 365 Defender portal to remove user tags

> [!NOTE]
> You can't remove the built-in **Priority account** system tag.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User tags**. To go directly to the **User tags** page, use <https://security.microsoft.com/securitysettings/userTags>.

2. On the **User tags** page, select the user tag from the list, and then click ![Delete tag icon.](../../media/m365-cc-sc-delete-icon.png) **Delete tag**.

3. Read the warning in the confirmation dialog that appears, and then click **Yes, remove**.

## More information

[Configure and review priority accounts in Microsoft Defender for Office 365](priority-accounts-turn-on-priority-account-protection.md)
