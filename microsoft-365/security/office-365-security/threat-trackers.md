---
title: Threat trackers in Microsoft Defender for Office 365 Plan 2
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
audience: ITPro
ms.topic: overview
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid: a097f5ca-eac0-44a4-bbce-365f35b79ed1
ms.collection: 
  - m365-security
  - tier2
ms.custom:
description: Learn about Threat Trackers, including new Noteworthy Trackers, to help your organization stay on top of security concerns.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 3/19/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Threat trackers in Microsoft Defender for Office 365 Plan 2

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365 Plan 2](mdo-about.md#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet) included in their subscription or purchased as an add-on have _Threat trackers_. Threat trackers are queries that you create and save in [Threat Explorer (also known as Explorer)](threat-explorer-real-time-detections-about.md). You use these queries to automatically or manually discover cybersecurity threats in your organization.

For information about creating and saving queries in Threat Explorer, see [Saved queries in Threat Explorer](threat-explorer-real-time-detections-about.md#saved-queries-in-threat-explorer).

## Permissions and licensing for Threat trackers

To use Threat trackers, you need to be assigned permissions. You have the following options:

- [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md):
  - _Create, save, and modify Threat Explorer queries_: Membership in the **Organization Management** or **Security Administrator** role groups.
  - _Read-only access to Threat Explorer queries on the Threat tracker page_: Membership in the **Security Reader** or **Global Reader** role groups.
- [Microsoft Entra permissions](/entra/identity/role-based-access-control/manage-roles-portal): Membership these roles gives users the required permissions _and_ permissions for other features in Microsoft 365:
  - _Create, save, and modify Threat Explorer queries_: Membership in the **Global Administrator** or **Security Administrator** roles.
  - _Read-only access to Threat Explorer queries on the Threat tracker page_: Membership in the **Security Reader** or **Global Reader** roles.

To remediate messages in Threat Explorer, you need additional permissions. For more information, see [Permissions and licensing for Threat Explorer and Real-time detections](threat-explorer-real-time-detections-about.md#permissions-and-licensing-for-threat-explorer-and-real-time-detections).

To use Threat Explorer or Threat trackers, you need to be assigned a license for Defender for Office 365 (included in your subscription or an add-on license).

Threat Explorer and Threat trackers contain data for users with Defender for Office 365 licenses assigned to them.

## Threat trackers

The **Threat tracker** page is available in the Microsoft Defender portal at <https://security.microsoft.com> at **Email & collaboration** \> **Threat tracker**. Or, to go directly to the **Threat tracker** page, use <https://security.microsoft.com/threattrackerv2>.

The **Threat tracker** page contains three tabs:

- **Saved queries**: Contains all queries that you saved in Threat Explorer.
- **Tracked queries**: Contains the results of queries that you saved in Threat Explorer where you selected **Track query**. The query automatically runs periodically, and the results are shown on this tab.
- **Trending campaigns**: We populate the information on this tab to highlight new threats received in your organization.

These tabs are described in the following subsections.

### Saved queries tab

The **Save queries** tab on the **Threat tracker** page at <https://security.microsoft.com/threattrackerv2> contains all of your saved queries from Threat Explorer. You can use these queries without having to re-create the search filters.

The following information is shown on the **Save queries** tab. You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. By default, all available columns are selected.

- **Date created**
- **Name**
- **Type**
- **Author**
- **Last executed**
- **Tracked query**: This value is controlled by whether you selected **Track this query** when you created the query in Threat Explorer:
  - **No**: You need to run the query manually.
  - **Yes**: The query automatically runs periodically. The query and the results are also available on the **Tracked queries** page.
- **Actions**: Select **Explore** to open and run the query in Threat Explorer, or to update or save a modified or unmodified copy of the query in Threat Explorer.

If you select a query, the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** and :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** actions that appear.

If you select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**, you can update the date and **Track query** settings of the existing query in the details flyout that opens.

### Tracked queries

The **Tracked queries** tab on the **Threat tracker** page at <https://security.microsoft.com/threattrackerv2> contains the results of queries that you created in Threat Explorer where you selected **Track this query**. Tracked queries run automatically, giving you up-to-date information without having to remember to run the queries.

The following information is shown on the **Tracked queries** tab. You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. By default, all available columns are selected.

- **Date created**
- **Name**
- **Today's message count**
- **Prior day message count**
- **Trend: today vs. prior week**
- **Actions**: Select **Explore** to open and run the query in Threat Explorer.

If you select a query, the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action appears. If you select this action, you can update the date and **Track query** settings of the existing query in the details flyout that opens.

### Trending campaigns tab

The **Trending campaigns** tab on the **Threat tracker** page at <https://security.microsoft.com/threattrackerv2> automatically highlights new email threats that were recently received by your organization.

The following information is shown on the **Trending campaigns** tab. You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown. By default, all available columns are selected.

- **Malware family**
- **Prior day message count**
- **Trend: today vs. prior week**
- **Targeting: your company vs. global**
- **Actions**: Select **Explore** to open and run the query in Threat Explorer.
