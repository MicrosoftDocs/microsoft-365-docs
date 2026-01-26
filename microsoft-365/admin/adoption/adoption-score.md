---
title: "Microsoft Adoption Score report overview"
f1.keywords:
- NOCSH
author: efrene
ms.author: efrene
ms.reviewer: cmcatee
manager: scotv
ms.date: 01/23/2026
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: high
monikerRange: o365-worldwide
ms.collection:
  - Tier2
  - scotvorg
  - M365-subscription-management
  - Adm_O365
  - Adm_TOC
  - operations-pod
ms.custom:
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid:
- MET150
- MOE150
description: "Learn how to use the Microsoft Adoption Score report to track productivity, improve workflows, and compare your organization to similar-sized businesses. Get insights and take recommended actions to drive digital transformation."
---

# Microsoft Adoption Score

> [!NOTE]
> Technology experiences retirement (January 2026)
> Starting January 22, 2026, the Microsoft 365 admin center will retire the **Technology experiences** score and its three categories, **Network connectivity**, **Microsoft 365 Apps health**, and **Endpoint analytics** from the **Adoption Score** report. This change rolls out and completes in February 2026.
>
> After this change, the overall **Adoption Score** is equal to the People experiences score. The **People experiences** score measures end user progress toward embedding Microsoft 365 and Copilot into day-to-day productivity workflows.
>
> As part of this change, the maximum possible Adoption Score changes from 900 to 600. Admins and report readers who regularly use the **Adoption Score** see a change to the total score value when the update reaches their tenant. End users aren't impacted by this change.

The **Adoption Score** supports the journey to digital transformation with insights into how your organization uses Microsoft 365. You can compare your organization's score to baselines from organizations similar in size to yours.

The **Adoption Score** provides:

- **Metrics** to help you see where you are on your digital transformation journey.
- **Insights** about the data to help you identify opportunities to improve productivity and satisfaction in your organization.
- **Recommended actions** you can take to help your organization use Microsoft 365 products efficiently.
- **Categories:** Quantifies how the organization works using Microsoft 365 categories like content collaboration, mobility, communication, meetings, teamwork, and AI adoption.  

    For each of the mentioned categories, we look at public research to identify some best practices and associated benefits in the form of organizational effectiveness. For example, Forrester research has shown that when people collaborate and share content in the cloud (instead of emailing attachments), they can save up to 100 minutes a week. Furthermore, we quantify the use of these best practices in your organization to help you see where you are on your digital transformation journey.  

    To understand more about options to configure for your organization, see [privacy controls for Adoption Score](privacy.md).

> [!NOTE]
> All insights are calculated using data at the organizational level, not the individual level.

## Adoption Score prerequisites

You must have a Microsoft 365 for business or Office 365 for enterprise subscription.

> [!NOTE]
> You don't need a license to Viva Insights to use the Adoption Score features.

The **Adoption Score** report is only available in the Microsoft 365 admin center. You can access the report only if you have one of the following roles:

- Global Administrator
- Exchange Administrator
- SharePoint Administrator
- Skype for Business Administrator
- Teams Service Administrator
- Teams Communications Administrator
- Global Reader
- Reports Reader
- AI Report Reader
- Usage Summary Reports Reader
- User Experience Success Manager
- Organizational Messages Writer Role

[!INCLUDE [ga-roles-limitation](../../includes/ga-roles-limitation.md)]

The role-based access control model for Adoption Score helps organizations further digital transformation efforts with Microsoft 365 by providing the flexibility to assign roles to IT professionals within an organization.

Microsoft is committed to protecting individual privacy. [Privacy controls for Adoption Score](privacy.md)  explains the controls we provide you, as your organization's IT administrator, to ensure that the information is actionable while not compromising the trust you place in Microsoft.

You can access the experience from the Microsoft 365 admin center under **Reports** > **Adoption Score**.

> [!NOTE]
> This feature isn't available in GCC High, GCC, and DOD tenants.
  
## How the score is calculated

Your Adoption Score is based on the combined scores of five categories (six categories if you enabled Copilot licenses). Each category is weighted equally, with a total of 100 points. The highest possible Adoption Score is 600.

### Score categories

- Communication (100 points)
- Meetings (100 points)
- Content collaboration (100 points)
- Teamwork (100 points)
- Mobility (100 points)
- AI Adoption (100 points) if Microsoft 365 Copilot licenses are enabled
- **Total possible = 600 points**
 
In each score category, the key indicators show how your organization is using Microsoft 365 in its journey towards digital transformation. You can see 28-day and 180-day views of the key activities. The report also provides supporting metrics that aren't part of the score calculation but are important for helping you identify underlying usage statistics and configurations that you can address.

The **Adoption Score** includes data from Exchange, SharePoint, OneDrive, Teams, Word, Excel, PowerPoint, OneNote, Outlook, Viva Engage, and Skype.

Your organization's score is updated daily and reflects user actions completed in the last 28 days (including the current day).

## Interpreting your organization's Adoption Score

The Adoption Score home page shows your organization's total score and score history. It also shows the primary insight for each category.

:::image type="content" source="../../media/prodscore-landing.png" alt-text="Screenshot of the Adoption Score page in Microsoft 365 admin center Reports." lightbox="../../media/prodscore-landing.png":::

**Your organization's score** appears as a percent value and in points. You can see your points in the numerator and the maximum possible points in the denominator.

**Peer benchmarks** show you how your organization's score compares with organizations like yours. The peer benchmark is calculated as the average of measures within a set of similar organizations. The set of organizations is composed of organizations in your region with a similar number of licensed users, types of licenses, industry, and tenure with Microsoft 365.

> [!NOTE]
> Microsoft uses internal data to determine the industry that an organization maps to. Tenants under a parent organization map to the same industry as the parent organization. Organizations can't view or modify industry mappings.

## Category details pages

Each category details page shows the primary insight and supporting metrics. It also shows related research and actions you can take to drive change in your organization. Research supports the importance and rationale behind the primary insights for each category. For more information, [read the Forrester report](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE2PBrb).

The details pages are:

- [Content collaboration](content-collaboration.md)
- [Communication](communication.md)
- [Meetings](meetings.md)
- [Mobility](mobility.md)
- [Teamwork](teamwork.md)
- [AI adoption](ai-adoption-score.md)

## Group level aggregates

The group-level filters help admins and adoption strategists understand how different groups, based on data from Microsoft Entra ID, are performing. Use the filters to provide higher granularity of insights and actions.

[Learn more about Group Level Aggregates](group-level-aggregates.md).

## Adoption Score organizational messages

Organizational Messages is a new feature added to Adoption Score that increases the actionability of admins to reach employees and drive adoption awareness. For example, to improve the content collaboration score, admins can send notifications to encourage employees who weren't actively using cloud attachments before to use the feature when they're about to attach a physical attachment in Outlook. Currently, admins can send messages to drive the adoption scenarios for OneDrive SharePoint, Teams Chat, using @mention in Outlook, and cloud attachments in Outlook.

[Learn more about Adoption Score Organizational Messages](organizational-messages.md).

## Provide feedback on Adoption Score

Share your thoughts about Adoption Score and your ideas about how to improve it. Use the **Feedback** sections within the product and reach out to the Adoption Score team at **adoptscorefeedback@microsoft.com**.

## Related content

[Monitor Microsoft 365 activity by using reports](../../admin/activity-reports/activity-reports.md) (article)\
[Enable Microsoft 365 usage analytics](../../admin/usage-analytics/enable-usage-analytics.md) (article)\
[Overview of the Microsoft 365 admin center](../admin-overview/admin-center-overview.md) (video)
