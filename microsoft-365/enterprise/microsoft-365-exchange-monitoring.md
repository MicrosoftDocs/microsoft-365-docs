---
title: "Exchange Online monitoring for Microsoft 365"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/03/2020
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
localization_priority: Priority
search.appverid:
- MET150
ms.collection:
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- NOCSH
description: "Use Exchange Online monitoring for information about email incidents or advisories in Microsoft 365."
---

# Exchange Online monitoring for Microsoft 365

You can use Exchange Online monitoring in the Microsoft 365 admin center to monitor the health of the Exchange service for your organization’s Microsoft 365 subscription. Exchange Online monitoring provides you with information about incidents and advisories that are collected in these categories:

- **Infrastructure**: Issue is detected in the Microsoft 365 infrastructure that Microsoft owns for providing regular updates and resolving the issue. For example, users cannot access Exchange Online because of issues with Exchange or other Microsoft 365 cloud infrastructure.
- **Third-party infrastructure**: Issue is detected in third-party infrastructure on which your organization has taken a dependency and requires action from your organization for resolution. For example, user authentication transactions are getting throttled by a third-party security token service (STS) provider that prevents users from connecting to Exchange Online.
- **Customer infrastructure**: Issue is detected in your organization's infrastructure and requires action from your organization for resolution. For example, users cannot access Exchange Online because they are unable to obtain an authentication token from STS provider hosted by your organization because of an expired certificate.

Here is an example of the **Service health** page in the Microsoft 365 admin center, available from **Health > Service health**.

![The Service health page in the Microsoft 365 admin center](../media/microsoft-365-exchange-monitoring/service-health-dashboard-example.png)

The value of the **Status** column indicates whether the service is healthy or has advisories or incidents based on the cloud services that Microsoft maintains. 

The value of the **Your org and 3rd party issues** column indicates that your organization's infrastructure or third-party software affects your users service health experience with Exchange Online. Advisories or incidents require *your* actions to resolve.

Here is an example of the **Exchange Online** monitoring page in the Microsoft 365 admin center, available from **Health > Service health > Exchange Online**.

![The Exchange Online monitoring page in the Microsoft 365 admin center](../media/microsoft-365-exchange-monitoring/exhange-monitoring-example.png)

With the **Exchange Online** monitoring page, you can see whether the Exchange Online service is healthy or not and whether there are any associated incidents or advisories. With Exchange Online monitoring, you can look at the service health for specific email scenarios and view near real-time signals to determine the impact by scenario. 

## Requirements

This preview is enabled for customers who meet these requirements: 

- Your organization needs to have a license count of at least 5,000, from one or a combination of these products: Office 365 E3, Microsoft 365 E3, Office 365 E5, Microsoft 365 E5. 

  For example, your organization can have 3,000 Office 365 E3 licenses and 2,500 Microsoft 365 E5, for a total of 5,500 licenses from the qualifying products.

- Your organization needs to have at least 50 monthly active Exchange Online users.

With Exchange Online monitoring you can view the health for the following email clients based on email read activity:

- Outlook Desktop
- Outlook on the Web
- Native mail clients of iOS and Android 
- Outlook Mobile app in iOS and Android 
- Outlook Mac client

For these clients, you can see the number of active users in the last 30 minutes based on users reading an email, along with number of incidents and advisories in the dashboard. This data is compared to the same interval for the previous week to see if there’s an issue. 

>[!Note]
> Active user count is measured by a single activity, for example, when a user reads an email. It only accounts for the last 30 minutes of activity.
>

You can also monitor Exchange Online health for the following scenarios:

- **Mail flow**: The number of messages successfully delivered to a mailbox without any delay after the message reached the Microsoft 365 network. 
- **Basic Authentication and Modern Authentication**: The number of users successfully validated in the Exchange Online service.

![An example of monitoring Exchange health for mail delivery](../media/microsoft-365-exchange-monitoring/exhange-monitoring-scenario-example.png)

For all these scenarios, the key numbers are for the last 30 minutes in the main dashboard. Detailed views for each of these scenarios shows the near real-time trend for seven days with the 30-minute aggregate compared with the previous week. 

## Send us feedback

There are two ways you can provide feedback:

- Use the **Give feedback** option available on every page of the Microsoft 365 admin center.
- Submit feedback using the **Is this post helpful?** link for a specific incident or advisory.

![The "Is this post helpful?" link for a specific incident or advisory](../media/microsoft-365-exchange-monitoring/exhange-monitoring-example-incident-feedback.png)

## Frequently asked questions

#### 1.	Why don’t I see “Exchange Online monitoring” under Health in the Microsoft 365 admin center? 

First, make sure you’ve enabled the new admin center on the **Home** page of the Microsoft 365 admin center. 

Then make sure you meet both of the following requirements: 

- Your organization needs to have a license count of at least 5,000, from one or a combination of these products: Office 365 E3, Microsoft 365 E3, Office 365 E5, Microsoft 365 E5. 
- Your organization needs to have at least 50 monthly active Exchange Online users.

If the license count for your organization goes below 5,000 users and the monthly active users goes below 50 users, Exchange Online monitoring won’t be enabled until these requirements are met.

#### 2.	The active user count in the dashboard for each client appears to be low. We have a lot of active licenses assigned to users. What does this mean? 

The active user count shown in monitoring is based on a 30-minute window where users have performed the activity called out in the feature. This shouldn’t be confused with usage numbers. To view usage numbers, use activity reports in the Microsoft 365 admin center (**Reports > Usage**).

#### 3.	Will there be other monitoring scenarios for other services such as Teams and SharePoint? 

Microsoft is integrating this experience directly inside the Service Health dashboard in the Microsoft 365 admin center. This will provide opportunities for Microsoft to extend monitoring scenarios for other services, which will be announced when there is news to share. 

#### 4.	What is the plan for general availability of this experience? 

Microsoft has integrated Exchange Online monitoring directly on the **Service Health** dashboard in the Microsoft 365 admin center. 

With this new integrated experience, Microsoft's plan is to collect your feedback and then define our plan for general availability.

#### 5.	Is this a free (included) or paid (extra) feature? 

This feature is in Public preview and only available for customers that meet the requirements in question 1.

<!--
>[!Note]
>INTERNAL: That decision is pending
>
--> 

#### 6.	How do I provide feedback? 

For general feedback, use the **Give feedback** icon on the bottom-right corner of the **Exchange Online** monitoring page. 

For feedback on incidents or advisories, use the **Is this post helpful?** link.

#### 7.	Where is the data instrumented for the scenarios that show activity trends?

The data is instrumented in the Exchange Online service. If there is a failure that happens before the request reaches Exchange Online or there is a failure in Exchange Online, you will see a drop in the activity signal.

