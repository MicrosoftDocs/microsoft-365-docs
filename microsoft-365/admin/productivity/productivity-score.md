---
title: "Microsoft Productivity Score"
f1.keywords:
- NOCSH
ms.author: pebaum
author: pebaum
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Priority
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

Productivity Score supports the journey to digital transformation with insights about how your organization uses Microsoft 365 and the technology experiences that support it. Your organization's score reflects people and technology experience measurements and can be compared to benchmarks from organizations similar in size to yours.

It provides:

- **Metrics** to help you see where you are on your digital transformation journey.
- **Insights** about the data to help you identify opportunities to improve productivity and satisfaction in your organization.
- **Recommended actions** you can take to help your organization use Microsoft 365 products efficiently.

We provide metrics, insights, and recommendations in two areas: 

- **People experiences:** Quantifies how the organization works using Microsoft 365 categories like content collaboration, mobility, communication, meetings, and teamwork.  

    For each of the mentioned categories, we look at public research to identify some best practices and associated benefits in the form of organizational effectiveness. For example, [Forrester](https://vc2prod.blob.core.windows.net/vc-resources/TEIStudies/TEI%20of%20Microsoft%20365%20E5%20-%20Oct%202018.pdf) research has shown that when people collaborate and share content in the cloud (instead of emailing attachments), they can save up to 100 minutes a week. Furthermore, we quantify the use of these best practices in your organization to help you see where you are on your digital transformation journey. 

- **Technology experiences:** Your organization depends on reliable and well performing technology as well as the efficient use of Microsoft 365. [Endpoint analytics](https://aka.ms/endpointanalytics) helps you understand how your organization can be impacted by performance and health issues with your hardware and software. Microsoft  365 apps health helps you understand whether the devices in your organization are running Microsoft 365 apps on recommended channels.

See [What is Endpoint Analytics](/mem/analytics/overview) for an overview and prerequisite details. To learn more about Microsoft 365 network connectivity insights, read [the network connectivity overview](../../enterprise/microsoft-365-networking-overview.md).
  

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
 
 In each score category, we quantify the key indicators for how your organization is using Microsoft 365 in its journey towards digital transformation. We provide 28-day and 180-day views of the key activities. We also provide supporting metrics that are not part of the score calculation, but are important for helping you identify underlying usage statistics and configurations that you can address.

### Products included in Productivity Score 

Productivity Score includes data from Exchange, SharePoint, OneDrive, Teams, Word, Excel, PowerPoint, OneNote, Outlook, Yammer, and Skype.

Your organization's score is updated daily and reflects user actions completed in the last 28 (including the current day).


## Prerequisites 

For people experiences data, you need a Microsoft 365 for business or Office 365 for enterprise subscription. For endpoint analytics data for your tenant, you need to add Microsoft Intune to your subscription. Intune helps you protect your organization’s data by managing devices and apps. Once you have Intune, you can turn on endpoint analytics within the Intune experience. Learn more about [Microsoft Intune](/mem/intune/). 

> [!NOTE]
> A license to Workplace Analytics is not required to get the Productivity Score features.

Productivity Score is only available in the Microsoft 365 Admin Center and can only be accessed by IT professionals who have one of the following roles:  

- Global admin
- Exchange admins
- SharePoint admin
- Skype for Business admin
- Teams admin
- Global Reader
- Reports Reader
- Usage Summary Reports Reader

> [!NOTE]
> Only an IT professional with the Global Administrator role can sign up or opt in a tenant for Productivity Score.

The role-based access control model for Productivity Score helps organizations further digital transformation efforts with Microsoft 365 by providing the flexibility to assign roles to IT professionals within an organization.

Microsoft is committed to protecting individual privacy. This [privacy document](privacy.md)  explains the controls we provide you, as your organization's IT administrator, to ensure that the information is actionable while not compromising the trust you place in Microsoft.

You can access the experience from Microsoft 365 Admin home under **Reports** > **Productivity Score**.

## Interpreting your organization's Productivity Score 

The Productivity Score home page shows your organization's total score and score history and the primary insight for each category.

:::image type="content" source="../../media/prodscore-landing.png" alt-text="Productivity Score page in Reports.":::

**Your organization's score** is shown as a percent value and in points. You can see your points in the numerator and the maximum possible points in the denominator.

**Peer benchmarks** allow you to compare your organization's score with organizations like yours. The peer benchmark for the people experiences categories is calculated as the average of measures within a set of similar organizations. The set of organizations is composed of organizations in your region with a similar number of licensed users, types of licenses, industry, and tenure with Microsoft 365. 

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
- [Endpoint Analytics](/mem/analytics/productivity-score)

## Business continuity special report

The Business continuity report is a limited-time Workplace Intelligence report available to all Microsoft 365 customers to help them guide their organizations during this challenging time.  

This report helps organizations understand: 

- How collaboration and communication are affected by the shift to remote work. 

- The impact on work-life balance as people adjust to working from home. 

- Whether remote meetings support effective decision-making.

[Learn more about the Business continuity report](/Workplace-Analytics/tutorials/bcrps)

[Learn more about Microsoft Graph](/graph/)

> [!NOTE]
> Users also have the option to get productivity insights from the [MyAnalytics dashboard](/workplace-analytics/myanalytics/use/dashboard-2).


## We want to hear from you

Share your thoughts about Productivity Score and your ideas about how to improve it. Use the **Feedback** sections within the product and/or reach out to the Productivity Score team at prodscorefeedback@microsoft.com.

## Related content

[Monitor Microsoft 365 activity by using reports](https://docs.microsoft.com/microsoft-365/admin/activity-reports/activity-reports) (article)

[Enable Microsoft 365 usage analytics](https://docs.microsoft.com/microsoft-365/admin/usage-analytics/enable-usage-analytics) (article)

[Overview of the Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/business-video/admin-center-overview) (video)