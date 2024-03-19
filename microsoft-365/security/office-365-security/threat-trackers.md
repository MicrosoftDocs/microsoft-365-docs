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
ms.date: 3/18/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Threat trackers in Microsoft Defender for Office 365 Plan 2

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Microsoft 365 organizations that have [Microsoft Defender for Office 365](defender-for-office-365.md) included in their subscription or purchased as an add-on have _Threat trackers_. Threat trackers are based on queries that you create and save in [Threat Explorer (also known as Explorer)](threat-explorer-real-time-detections-about.md). You use these queries automtically or manually to discover and take action against cybersecurity threats in your organization.

## Permissions and licensing for Threat trackers

To use Threat trackers, you need to be assigned permissions. You have the following options:

- [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md):
  - _Create, save, and modify Threat Explorer queries_: Membership in the **Organization Management** or **Security Administrator** role groups.
  - _Read-only access to Threat Explorer queries on the Threat tracker page_: Membership in the **Security Reader** or **Global Reader** role groups.
- [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership these roles gives users the required permissions _and_ permissions for other features in Microsoft 365:
  - _Create, save, and modify Threat Explorer queries_: Membership in the **Global Administrator** or **Security Administrator** roles.
  - _Read-only access to Threat Explorer queries on the Threat tracker page_: Membership in the **Security Reader** or **Global Reader** roles.

To use Threat Explorer or Threat trackers, you need to be assigned a license for Defender for Office 365 (included in your subscription or an add-on license).

Threat Explorer and Threat trackers contain data for users with Defender for Office 365 licenses assigned to them.

## Threat trackers

The **Threat tracker** page is available in the Microsoft Defender portal at <https://security.microsoft.com>. Go to **Email & collaboration** \> **Threat tracker**. Or, to go directly to the **Threat tracker** page, use <https://security.microsoft.com/threattrackerv2>.

The **Threat tracker** page contains three tabs:

- **Saved queries**: Contains queries that you saved in Threat Explorer.
- **Tracked queries**: Contains the results of queries that you saved in Threat Explorer where you selected **Track query**. The query automatically runs periodically, and the results are shown on this tab.
- **Trending campaigns**

These tabs are explained in the following subsections.

### Saved queries tab

The **Save queries** tab on the **Threat tracker** page at <https://security.microsoft.com/threattrackerv2> contains your saved queries from Threat Explorer. You can use these queries without having to re-create the search criteria every time.

For information about creating and saving queries in Threat Explorer, see [Saved queries in Threat Explorer](threat-explorer-real-time-detections-about.md#saved-queries-in-threat-explorer).

The following information is shown on the **Save queries** tab. You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown.  By default, all available columns are selected.

- **Date created**
- **Name**
- **Type**
- **Author**
- **Last executed**
- **Tracked query**: This value is controlled by whether you selected **Track this query** when you created the query in Threat Explorer:
  - **No**: You need to run the query manually.
  - **Yes**: The query automatically runs periodically. The query and the results are also available on the **Tracked queries** page.
- **Actions**: Select **Explore** to open and run the query in Threat Explorer.

If you select a query, the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** and :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** actions that appear.

If you select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**, you can update the date and **Track query** settings of the existing query in the details flyout that opens.

### Tracked queries

The **Save queries** tab on the **Threat tracker** page at <https://security.microsoft.com/threattrackerv2> contain the results of queries that you created in Threat Explorer where you selected **Track this query**. The query and the results are shown on this tab. Tracked queries run automatically, giving you up-to-date information without having to remember to re-run your queries.

The following information is shown on the **Tracked queries** tab. You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown.  By default, all available columns are selected.

- **Date created**
- **Name**
- **Todays message count**
- **Prior day message count**
- **Trend: today vs. prior week**
- **Actions**: Select **Explore** to open and run the query in Threat Explorer.

If you select a query, the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action appears. If you select this action, you can update the date and **Track query** settings of the existing query in the details flyout that opens.

### Trending campaigns tab

The **Trending campaigns** tab on the **Threat tracker** page at <https://security.microsoft.com/threattrackerv2> automatically highlights new email threats that were received by your organization in the past week.

The following information is shown on the **Trending campaigns** tab. You can sort the entries by clicking on an available column header. Select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns** to change the columns that are shown.  By default, all available columns are selected.

- **Malware family**
- **Prior day message count**
- **Trend: today vs. prior week**
- **Targeting: your company vs. global**
- **Actions**: Select **Explore** to open and run the query in Threat Explorer.

## Trackers and Explorer

Whether you're reviewing email, content, or Office activities (coming soon), Explorer and Trackers work together to help you investigate and track security risks and threats. All together, Trackers provide you with information to protect your users by highlighting new, notable, and frequently searched issues - ensuring your business is better protected as it moves to the cloud.

## Trackers and Microsoft Defender for Office 365

With our inaugural Noteworthy threat, we're highlighting advanced malware threats detected by [Safe Attachments](safe-attachments-about.md). If you're an Office 365 Enterprise E5 customer and you're not using [Microsoft Defender for Office 365](defender-for-office-365.md), you should be - it's included in your subscription. Defender for Office 365 provides value even if you have other security tools filtering email flow with your Office 365 services. However, anti-spam and [Safe Links](safe-links-about.md) features work best when your main email security solution is through Office 365.

In today's threat-riddled world, running only traditional anti-malware scans means you are not protected well enough against attacks. Today's more sophisticated attackers use commonly available tools to create new, obfuscated, or delayed attacks that won't be recognized by traditional signature-based anti-malware engines. The Safe Attachments feature takes email attachments and detonates them in a virtual environment to determine whether they're safe or malicious. This detonation process opens each file in a virtual computer environment, then watches what happens after the file is opened. Whether it's a PDF, and compressed file, or an Office document, malicious code can be hidden in a file, activating only once the victim opens it on their computer. By detonating and analyzing the file in the email flow, Defender for Office 365 capabilities finds these threats based on behaviors, file reputation, and a number of heuristic rules.

The new Noteworthy threat filter highlights items that were recently detected through Safe Attachments. These detections represent items that are new malicious files, not previously found by Microsoft 365 in either your email flow or other customers' email. Pay attention to the items in the Noteworthy Threat Tracker, see who was targeted by them, and review the detonation details shown on the Advanced Analysis tab (found by clicking on the subject of the email in Explorer). Note you'll only find this tab on emails detected by the Safe Attachments capability - this Noteworthy tracker includes that filter, but you can also use that filter for other searches in Explorer.
