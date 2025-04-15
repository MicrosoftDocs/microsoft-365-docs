---
title: "Microsoft Adoption Score"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 12/14/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: high
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
description: "Learn how Microsoft Adoption Score reflects people and technology experience measurements and compare to organizations of similar size."
---

# Microsoft Adoption Score

Adoption Score supports the journey to digital transformation with insights about how your organization uses Microsoft 365 and the technology experiences that support it. Your organization's score reflects people and technology experience measurements and can be compared to benchmarks from organizations similar in size to yours.

## Watch: Adoption Score overview

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=0c5dfe1d-cba4-4bee-91d1-f58730d0c68a]

It provides:

- **Metrics** to help you see where you are on your digital transformation journey.
- **Insights** about the data to help you identify opportunities to improve productivity and satisfaction in your organization.
- **Recommended actions** you can take to help your organization use Microsoft 365 products efficiently.

We provide metrics, insights, and recommendations in two areas: 

- **People experiences:** Quantifies how the organization works using Microsoft 365 categories like content collaboration, mobility, communication, meetings, and teamwork.  

    For each of the mentioned categories, we look at public research to identify some best practices and associated benefits in the form of organizational effectiveness. For example, Forrester research has shown that when people collaborate and share content in the cloud (instead of emailing attachments), they can save up to 100 minutes a week. Furthermore, we quantify the use of these best practices in your organization to help you see where you are on your digital transformation journey. 

    Visit [privacy controls for Adoption Score](privacy.md) to understand more about options to configure people experiences for your organization.

- **Technology experiences:** Your organization depends on reliable and well-performing technology, and the efficient use of Microsoft 365. [Endpoint analytics](https://aka.ms/endpointanalytics) helps you understand how your organization can be impacted by performance and health issues with your hardware and software. [Network connectivity](../../enterprise/microsoft-365-networking-overview.md) helps you understand Exchange, SharePoint, and Microsoft Teams performance on your network architecture. You can review and update network settings to improve connectivity. Microsoft  365 apps health helps you understand whether the devices in your organization are running apps in Microsoft 365 on recommended channels.

> [!NOTE]
> All insights are calculated using data at the organizational level, not the individual level.

## Adoption Score Prerequisites

For people experiences data, you need a Microsoft 365 for business or Office 365 for enterprise subscription. For endpoint analytics data for your tenant, you need to add Microsoft Intune to your subscription. Intune helps protect your organization's data by managing devices and apps. Once you have Intune, you can turn on endpoint analytics within the Intune experience. To learn more about Microsoft Intune, see the [Microsoft Intune documentation](/mem/intune/).

> [!NOTE]
> A license to Viva Insights is not required to get the Adoption Score features.

Adoption Score is only available in the Microsoft 365 admin center and can only be accessed by IT professionals who have one of the following roles:  

- Global Administrator
- Exchange Administrator
- SharePoint Administrator
- Skype for Business Administrator
- Teams Service Administrator
- Teams Communications Administrator
- Global Reader
- Reports Reader
- Usage Summary Reports Reader
- User Experience Success Manager
- Organizational Messages Writer Role

The role-based access control model for Adoption Score helps organizations further digital transformation efforts with Microsoft 365 by providing the flexibility to assign roles to IT professionals within an organization.

Microsoft is committed to protecting individual privacy. This [privacy document](privacy.md)  explains the controls we provide you, as your organization's IT administrator, to ensure that the information is actionable while not compromising the trust you place in Microsoft.

You can access the experience from Microsoft 365 Admin home under **Reports** > **Adoption Score**.

> [!NOTE]
> This feature is not available in GCC High, GCC, and DOD tenants.
  
## How the score is calculated

Your Adoption Score is based on the combined scores of your people and technology experiences categories. Each category is weighted equally, with a total of 100 points. The highest possible Adoption Score is 800.

### Score categories

- Communication (100 points)
- Meetings (100 points)
- Content collaboration (100 points)
- Teamwork (100 points)
- Mobility (100 points)
- Endpoint analytics (100 points)
- Network connectivity (100 points)
- Microsoft 365 Apps Health (100 points)
- **Total possible = 800 points**
 
In each score category, we quantify the key indicators for how your organization is using Microsoft 365 in its journey towards digital transformation. We provide 28-day and 180-day views of the key activities. We also provide supporting metrics that aren't part of the score calculation, but are important for helping you identify underlying usage statistics and configurations that you can address.

### Products included in Adoption Score

Adoption Score includes data from Exchange, SharePoint, OneDrive, Teams, Word, Excel, PowerPoint, OneNote, Outlook, Viva Engage, and Skype.

Your organization's score is updated daily and reflects user actions completed in the last 28 (including the current day).

## Interpreting your organization's Adoption Score

The Adoption Score home page shows your organization's total score and score history and the primary insight for each category.

:::image type="content" source="../../media/prodscore-landing.png" alt-text="Adoption Score page in Reports." lightbox="../../media/prodscore-landing.png":::

**Your organization's score** is shown as a percent value and in points. You can see your points in the numerator and the maximum possible points in the denominator.

**Peer benchmarks** allow you to compare your organization's score with organizations like yours. The peer benchmark for the people experiences categories is calculated as the average of measures within a set of similar organizations. The set of organizations is composed of organizations in your region with a similar number of licensed users, types of licenses, industry, and tenure with Microsoft 365.

> [!NOTE]
> Microsoft uses internal data to determine the industry that an organization maps to. Tenants under a parent organization get mapped to the same industry as the parent organization. Organizations cannot view or modify industry mappings.

The endpoint analytics peer benchmark includes targets for device startup performance and recommended software configuration based on aggregated median values across all tenants.

For network connectivity, the recommended benchmark is 80 points.

The **Score breakdown** section provides a breakdown of your Adoption Score with benchmarks by people and technology experience areas.

Score history displays how your score in each category has changed in the past six months.

The **People experiences** and **Technology experiences** areas contain the primary insights for the categories in those areas. You can select each category to see deeper insights.

## Category details pages

Each category details page shows the primary insight and supporting metrics as well as related research and actions you can take to drive change in your organization. Research supports the importance and rationale behind the primary insights for each category. For more information, [read the Forrester report](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE2PBrb).

The details pages are:
- [Content collaboration – people experiences](content-collaboration.md)
- [Communication – people experiences](communication.md)
- [Meetings – people experiences](meetings.md)
- [Mobility – people experiences](mobility.md)
- [Teamwork – people experiences](teamwork.md)
- [Microsoft 365 Apps health – technology experiences](apps-health.md)
- [Endpoint Analytics](/mem/analytics/productivity-score)

## Group Level Aggregates

The group-level filters functionality helps admins and adoption strategists understand how different groups, based on data from Microsoft Entra ID, are performing on the people experiencing insights. It's used to provide higher granularity of insights and actions.

[Learn more about Group Level Aggregates](group-level-aggregates.md).

## Adoption Score Organizational Messages

Organizational Messages is a new feature added to Adoption Score that will increase the actionability of admins to reach employees and drive adoption awareness. For example, to improve the content collaboration score, admins can send notifications to encourage employees who weren’t actively using cloud attachments before to use the feature when they're about to attach a physical attachment in Outlook. Currently, we enable admins to send messages to drive the adoption scenarios for OneDrive SharePoint, Teams Chat, using @mention in Outlook, and cloud attachments in Outlook.

[Learn more about Adoption Score Organizational Messages](organizational-messages.md).

## We want to hear from you

Share your thoughts about Adoption Score and your ideas about how to improve it. Use the **Feedback** sections within the product and/or reach out to the Adoption Score team at **adoptscorefeedback@microsoft.com**.

## Related content

[Monitor Microsoft 365 activity by using reports](../../admin/activity-reports/activity-reports.md) (article)\
[Enable Microsoft 365 usage analytics](../../admin/usage-analytics/enable-usage-analytics.md) (article)\
[Overview of the Microsoft 365 admin center](../admin-overview/admin-center-overview.md) (video)
