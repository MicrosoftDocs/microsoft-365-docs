---
title: "Group Level Aggregates in Adoption Score"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 11/11/2022
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
monikerRange: 'o365-worldwide'
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- MET150
- MOE150
description: "Use Group Level Aggregates in Microsoft Adoption score to get group-level insights for your organization in Microsoft 365."
---
# Group Level Aggregates in Adoption Score

Group Level Aggregates help admins and adoption strategists understand how different groups are performing on the people experiencing insights. Group Level Aggregates provide a higher level of insights and actions for your organization based on data from Azure Active Directory (Azure AD). You can get group-level insights for your organization in Microsoft 365 and use them to:

- **Compare** different groups of your organization to understand the overall distribution of adoption scores and insights, groups that are doing well, and groups that need growth.

- **Focus** on a specific group of your organization to understand more about it in isolation.

## How to enable Group Level Aggregates

Group Level Aggregates isn't enabled by default.

> [!NOTE]
> Group Level Aggregates can only be enabled by the Global Administrator role.  
  
To enable Group Level Aggregates:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/) as a Global Administrator.

2. Go to **Settings** \> **Org settings** \> **Adoption Score**.

3. Under **Insights Calculation and Display**, select **Turn on group-level insights**.

Once enabled, it can be accessed by all roles on the people experiences pages.

:::image type="content" source="../../media/enable-group-level-insights-adoption-score.png" alt-text="Screenshot: Turn on group-level insights in Adoption Score." lightbox="../../media/enable-group-level-insights-adoption-score.png":::

## Data accuracy evaluation

Before group-level insights can be enabled, you need to run a data accuracy evaluation to determine if group data is accurate. The evaluation helps you make an informed decision about which segments to use that will best reflect your organization’s composition.

:::image type="content" source="../../media/group-level-insights-data-accuracy.jpg" alt-text="Screenshot: Warning to run a data accuracy evaluation before enabling group-level insights.":::

The data accuracy evaluation check is a report that reflects the organization’s composition based on key attributes in Azure AD.

Currently, we provide capabilities for five attributes in Azure AD:

- Company

- Department

- Country

- State

- City

:::image type="content" source="../../media/group-level-aggregates-data-evaluation.png" alt-text="Screenshot: Group-level data evaluation report.":::

The report displays the number of people who are included for all the different organizational attributes out of the total number of employees in Azure AD. This is included based on an entry in the Azure AD fields for those five selected attributes. You can download the report for these five attributes and check for data accuracy. This report is only run and approved once while setting up Group Level Aggregates.

Example: In the screenshot, the organization has the ‘Department’ attribute filled for XX out of the total YY employees with ZZ unique departments mentioned. You would see ZZ unique departments in the Group Level Aggregates filters on people experience insights pages.

To have all people included in the group-level insights reporting, make sure the above five fields are accurately updated for all employees in Azure AD. For subsequent updates to the Azure AD attributes, you don't need to run the evaluation again. The updates are available immediately. [Learn more about how to update user data in Azure AD here](/azure/active-directory/fundamentals/active-directory-users-profile-azure-portal).

## Filtering people experiences scores

Group-level insights on people experience insights help filter the overall score and each insight for the selected group. When certain filters are applied, you'll see an informative message when some insights aren't available.

In some cases, you may not see an entire group in the filters despite all data being accurate in Azure AD. This happens when the group has fewer than 10 individuals for that unique group. We do this to protect user privacy so that no insights can be directly correlated to individual users.

:::image type="content" source="../../media/group-level-aggregates-filters.png" alt-text="Screenshot: Filters for group-level insights in Adoption Score.":::
