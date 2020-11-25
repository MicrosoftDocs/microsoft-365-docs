---
title: "Microsoft Productivity Score"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
monikerRange: 'o365-worldwide'
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- MOE150
description: "Overview of Microsoft productivity score."
---

# Microsoft Productivity Score 

Productivity Score helps organizations transform how work gets done with insights about how people use Microsoft 365 and the technology experiences that support them. The score reflects your organization’s performance against people and technology experiences measures and compares your score with organizations like yours.

The score includes:

- **Metrics** to help you see how people are using Microsoft 365 products to collaborate, communicate, and work across platforms.
- **Insights** about the data to help you identify opportunities to improve employee productivity and satisfaction.
- **Recommended actions** you can take to help the people in your organization use Microsoft 365 products efficiently so everyone can do their best work.

We provide data, insights, and recommendations in two areas: 

- **People experiences:** Measures how people collaborate on content, how they use Microsoft 365 products to communicate, and whether they use Microsoft 365 across multiple platforms. 

    We provide these insights because when people collaborate online, they save time, and with the freedom to work on any device makes then more productive and satisfied. The ability to communicate in a flexible way makes people more efficient, able to form better relationships therefore making your organization more unified. For evidence, see [Forrester report](https://vc2prod.blob.core.windows.net/vc-resources/TEIStudies/TEI%20of%20Microsoft%20365%20E5%20-%20Oct%202018.pdf).

- **Technology experiences:** Your team's productivity depends on reliable and well performing technology as well as the efficient use of Microsoft 365. [Endpoint analytics](https://aka.ms/endpointanalytics) helps you understand how your users’ productivity can be impacted by performance and health issues with your hardware and software.Recommended actions help you to remediate these issues. Microsoft 365 network connectivity insights will help you troubleshoot connectivty issues for your organization.

See [What is Endpoint Analytics](https://docs.microsoft.com/mem/analytics/overview) for an overview and prerequisite details. To learn more about Microsoft 365 network connectivity insights, read [the network connectivity overview](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-networking-overview).
  

## How the score is calculated

Your Productivity Score is based on the combined scores of your people and technology experiences categories. Each category is weighted equally, with a total of 100 points. The highest possible Productivity Score is 800.

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
 
 In each score category, we identify patterns for key activities that are indicators for how people use Microsoft 365 products to collaborate, communicate, and work across platforms. We provide 28-day and 180-day views of the key activities. We also provide supporting metrics that are not part of the score calculation, but are important for helping you identify underlying behaviors and settings that you can address.

### Products included in Productivity Score 

Productivity Score includes data from Exchange, SharePoint, OneDrive, Teams, Word, Excel, PowerPoint, OneNote, Outlook, Yammer, and Skype.

Your score is updated daily and reflects user actions completed in the last 28 (including the current day).


## Pre-requisites 

For people experiences data, you need a Microsoft 365 for business or Office 365 for enterprise subscription. For endpoint analytics data for your tenant, you need to add Microsoft Intune to your subscription. Intune helps you protect your organization’s data by managing devices and apps. Once you have Intune, you can turn on endpoint analytics within the Intune experience. Learn more about Microsoft Intune. 
> [!NOTE]
> A license to Workplace Analytics is not required to get the Productivity Score features.

To view the Productivity Score for your organization, you must have of one of the following roles: 

- Global admin 
- Exchange admins
- SharePoint admin 
- Skype for Business admin 
- Teams admin 
- Global Reader 
- Reports Reader 

You can access the experience from Microsoft 365 Admin home under **Reports** > **Productivity Score**.

## Interpreting Productivity Score 

The Productivity Score home page shows your total score and score history and the primary insight for each category.

:::image type="content" source="../../media/prodscore-landing.png" alt-text="Productivity Score page in Reports.":::

**Your score** is shown as a percent value and in points. You can see your points in the numerator and the maximum possible points in the denominator.

**Peer benchmarks** allow you to compare your score with organizations like yours. The peer benchmark for the people experiences categories is calculated as the average of measures within a set of similar organizations. The set of organizations is composed of organizations in your region with a similar number of licensed users, types of licenses, industry, and tenure with Microsoft 365. 

The endpoint analytics peer benchmark includes targets for device startup performance and recommended software configuration based on aggregated median values across all tenants.

For network connectivity, the recommended benchmark is 80 points.

The **Score breakdown** section provides a breakdown of your Productivity Score with benchmarks by people and technology experience areas.

Score history displays how your score in each category has changed in the past 6 months.

The **People experiences** and **Technology experiences** areas contain the primary insights for the categories in those areas. You can click on each category to see deeper insights.

## Category details pages

Each category details page shows the primary insight and supporting metrics as well as related research and actions you can take to drive change in your organization. Research supports the importance and rationale behind the primary insights for each category. for more information, [read the Forrester report](https://vc2prod.blob.core.windows.net/vc-resources/TEIStudies/TEI%20of%20Microsoft%20365%20E5%20-%20Oct%202018.pdf).

The details pages are:
- [Content collaboration – people experiences](content-collaboration.md)
- [Communication – people experiences](communication.md)
- [Meetings – people experiences](meetings.md)
- [Mobility – people experiences](mobility.md)
- [Teamwork – people experiences](teamwork.md)
- [Microsoft 365 Apps health – technology experiences](apps-health.md)

## Business continuity special report

The Business continuity report is a limited-time Workplace Intelligence report available to all Microsoft 365 customers to help them guide their organizations during this challenging time.  

This report helps business leaders understand: 

- How collaboration and communication are affected by the shift to remote work. 

- The impact on work-life balance as people adjust to working from home. 

- If remote meetings support effective decision-making.

[Learn more about the Business continuity report](https://aka.ms/bcrps)

[Learn more about Microsoft Graph](https://docs.microsoft.com/graph/)

## We want to hear from you

Share your thoughts about Productivity Score and your ideas about how to improve it. Use the **Feedback** sections within the product and/or reach out to the Productivity Score team at ProductivityScorePreview@service.microsoft.com.
