---
title: "User tags"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- M365-security-compliance
description: "Admins can learn how to identify specific groups of users with user tags in Microsoft 365. Tag filtering is available across alerts, reports, and investigations in Office 365 ATP to quickly identify the tagged users."
---

# User tags in the Security & Compliance Center

User tags are identifiers for specific groups of users in [Office 365 Advanced Threat Protection (ATP)](office-365-atp.md). [Priority accounts](https://docs.microsoft.com/microsoft-365/admin/setup/priority-accounts) are a type of user tag. You can create custom user tags in addition to the priority accounts tag. After you apply tags to specific users, you can use those tags as filters in alerts, reports, and investigations:

- [Alerts in the Security & Compliance Center](alerts.md)

- [Threat Explorer and real-time detections](threat-explorer.md)

- [Threat protection status report](view-email-security-reports.md#threat-protection-status-report)

- [Campaign Views](campaigns.md)

This article explains how to configure user tags in the Security & Compliance Center and in Security & Compliance Center PowerShell.

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **User tags** page, open <https://protection.office.com/userTags>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell). To connect to standalone EOP PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-protection-powershell).

- To create, modify, or remove user tags, you need to be a member of the **Organization Management** or **Security Administrator** role groups in the Security & Compliance Center. For more information, see [Permissions in the Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Use the Security & Compliance Center to create user tags

1. In the Security & Compliance Center, go to **Settings** \> **User tags**.

2. On the **User tags** page that opens, click **Create tag**.

3. The **Create tag** wizard opens in a new fly out. On the **Define tag** page, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the tag. This is the value that you'll see and use.

   - **Description**: Enter an optional description for the tag.

   When you're finished, click **Next**.

4. On the **Assign mailboxes** page, do either of the following steps:

   - Click **Add mailboxes**. In the fly out that appears, do any of the following steps to add individual users or groups:

     - Click in the box and scroll through the list to select a user or group.
     - Click in the box and start typing to filter the list and select a user or group.
     - To add additional values, click in an empty area in the box.
     - To remove individual entries from the box, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) on the user or group in the box.
     - To remove existing entries from the list below the box, click **Remove** ![Remove icon](../../media/scc-remove-icon.png) the entry.

     When you're finished, click **Add**.

   - Click **Import** to select a text file that contains the email addresses of the users or groups. Be sure the text file contains one entry per line.

   When you're finished, click **Next**.

5. On the **Review tag** page, review your settings. You can click **Edit** in the specific section to make changes.

   When you're finished, click **Submit**.

## Use the Security & Compliance Center to view user tags

1. In the Security & Compliance Center, go to **Settings** \> **User tags**.

2. On the **User tags** page that opens, select the user tag that you want to view (don't click on the checkbox).

3. In the read-only details fly out that appears, review the settings.

   When you're finished, click **Close**.

## Use the Security & Compliance Center to modify user tags

1. In the Security & Compliance Center, go to **Settings** \> **User tags**.

2. On the **User tags** page that opens, select the user tag that you want to view, and then click **Edit tag**.

3. The policy wizard opens in an **Edit tag** fly out. Click **Next** to review and modify the settings.

   When you're finished, click **Submit**.

## Use the Security & Compliance Center to remove user tags

1. In the Security & Compliance Center, go to **Settings** \> **User tags**.

2. On the **User tags** page that opens, select the user tag that you want to remove, click **Delete tag**, and then select **Yes, remove** in the warning that appears.
