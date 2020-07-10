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
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
- MOE150
ROBOTS: NOINDEX, NOFOLLOW
description: "Overview of Microsoft productivity score."
---

# Microsoft Productivity Score (Preview)

Productivity Score helps organizations transform how work gets done with insights about how people use Microsoft 365 and the technology experiences that support them. The score reflects your organization’s performance against employee and technology experience measures and compares your score with organizations like yours.

The score includes:

- **Metrics** to help you see how people are using Microsoft 365 products to collaborate, communicate, and work across platforms.
- **Insights** about the data to help you identify opportunities to improve employee productivity and satisfaction.
- **Recommended actions** you can take to help the people in your organization use Microsoft 365 products efficiently so everyone can do their best work.

We provide data, insights, and recommendations in two areas: 

- **Employee experience:** We measure how people collaborate on content, how they use Microsoft 365 products to communicate, and whether they use Microsoft 365 across platforms. 

    We provide these insights because when people collaborate online, they save time. When they have the freedom to work on any device, they are more productive and satisfied. When they can communicate in a flexible way, they are more efficient, form better relationships, and your organization is more unified. For evidence, see [Forrester report](https://vc2prod.blob.core.windows.net/vc-resources/TEIStudies/TEI%20of%20Microsoft%20365%20E5%20-%20Oct%202018.pdf).

- **Technology experience:** Productivity depends on reliable and performant technology as well as the efficient use of Microsoft 365. We provide endpoint analytics, which gives you insights and recommendations about device setup and startup times, and we provide Microsoft 365 network connectivity insights for your organization.

To learn more about end point analytics, read [the network connectivity overview](https://docs.microsoft.com/office365/enterprise/office-365-networking-overview).
  

## How the score is calculated

Your Productivity Score is based on the combined scores of your employee and technology experience categories. Each category is weighted equally, with a total of 100 points per category. The total possible points for Productivity Score are 500.

### Score categories 

- Content collaboration (100 points)
- Communication (100 points)
- Mobility (100 points)
- Endpoint analytics (100 points)
- Network connectivity (100 points)
- **Total possible = 500 points**
 
 In each category, we identify patterns for key activities that are indicators for how people use Microsoft 365 products to collaborate, communicate, and work across platforms. We provide 28-day and 180-day views of the key activities. We also provide supporting metrics that are not part of the score calculation but are important for helping you identify underlying behaviors and settings that you can act on to drive change.

### Products included in Productivity Score 

Productivity Score includes data from Exchange, SharePoint, OneDrive, Teams, Word, Excel, PowerPoint, OneNote, Outlook, Yammer, and Skype.

Your score is updated daily and reflects user actions completed in the last 28 to 180 days (including the current day).


## Pre-requisites 

You need a Microsoft 365 for business or Office 365 for enterprise subscription to get employee experience data, and you need to be using multi-tenant cloud services. To get endpoint analytics data for your tenant, you need to add Microsoft Intune to your subscription. Intune helps you protect your organization’s data by managing devices and apps.       Once you have Intune, you can turn on endpoint analytics within the Intune experience. Learn more about Microsoft Intune. 

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

The Productivity Score home page shows your total score and score history as well as the primary insight for each category

![Productivity Score home page](../../media/pslanding.png)

**Your score** is shown as a percent value as well as in points so you can see your points (numerator) and maximum possible points (denominator).

**Peer benchmarks** allow you to compare your score with organizations like yours. For the employee experience categories, the peer benchmark measure is calculated as the average of measures within a set of similar organizations. The set is composed of organizations in your region with a similar number of licensed users, types of licenses, industry, and tenure with Microsoft 365. 

The endpoint analytics peer benchmark includes targets for device startup performance and recommended software configuration based on aggregated median values across all tenants.

For network connectivity, the recommended benchmark is 80 points.

The **Score breakdown** section provides a breakdown of your Productivity Score with benchmarks by employee and technology experience areas.

Score history displays how your score in each category has changed in the past 6 months.

The **Employee experience** and **Technology experience** areas contain the primary insights for the categories in those areas. You can click on each category to see deeper insights.

## Category details pages

Each category details page shows the primary insight and supporting metrics as well as related research and actions you can take to drive change in your organization. Research supports the importance and rationale behind the primary insights for each category. for more information, [read the Forrester report](https://vc2prod.blob.core.windows.net/vc-resources/TEIStudies/TEI%20of%20Microsoft%20365%20E5%20-%20Oct%202018.pdf).

### Content collaboration details

The primary insight for content collaboration is the number of people who create, read, and collaborate (edit and share) online. These measures are important because research shows that when people collaborate with online files, each person saves an average of 100 minutes, or almost 2 hours, per week.

We define content collaboration as one person creating and sharing an Office file, and then at least one other person editing it. 

Readers: People who access or download online files in OneDrive or SharePoint.

**Creators:** People who create, modify, upload, sync, check in, copy, or move online OneDrive or SharePoint files.

Collaborators: People who collaborate with online files  using OneDrive or SharePoint. Two people are collaborators if one of them reads or edits an online Word, Excel, PowerPoint, OneNote, or PDF cloud document after the other person creates or modifies it, within a 28-day window.

The file types considered for collaboration are Word, Excel, PowerPoint, OneNote, and PDF files.

We provide insights into the startup times and set up for devices in your organization as well as network connectivity insights for content collaboration because online file collaboration requires reliable devices that start quickly and have up-to-date software as well as good connectivity to Microsoft 365.

### Communication details

The primary insight for communication is how frequently people in your organization use email, chat, and community posts to communicate. This insight matters because when people use a variety of real-time communication tools, they are able to choose the mode of communication that helps them to be most efficient, and they have tools like chat and communities that help them develop relationships across office locations.

### Mobility details

The primary insight for mobility is the number of people who access files and use email and chat across multiple platforms. The ability to work from any location on whatever device they choose is important for people with sales roles, senior managers, consultants, and others who need to do work away from the office to be productive. Improvements for these workers have a large impact. 

We measure the percentage and absolute number of people who used at least one Microsoft 365 productivity app across two or more platforms, including desktop, mobile and web. The productivity apps we measure are Outlook, Teams, Word, Excel, PowerPoint, OneNote, Yammer, and Skype. People must have Microsoft 365 apps for enterprise, Exchange, Yammer, Skype, or Teams licenses to be measured. 

## Business continuity special report

The Business continuity report is a limited-time Workplace Intelligence report available to all Microsoft 365 customers to help them guide their organizations during this challenging time.  

This report helps business leaders understand: 

- How collaboration and communication is affected by the shift to remote work. 

- The impact on work-life balance as people adjust to working from home. 

- If remote meetings support effective decision-making.

[Learn more about the Business continuity report](https://aka.ms/bcrps)

[Learn more about Microsoft Graph](https://docs.microsoft.com/graph/)

## We want to hear from you

Please share your thoughts about Productivity Score and your ideas about how to improve it. Use the **Feedback** sections within the product and/or reach out to the Productivity Score team at ProductivityScorePreview@service.microsoft.com.