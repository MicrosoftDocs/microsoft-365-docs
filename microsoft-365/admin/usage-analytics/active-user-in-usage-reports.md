---
title: "Active user in Microsoft 365 usage reports"
ms.author: efrene
author: efrene
manager: scotv
ms.date: 02/19/2020
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 093a6d0d-890b-489e-9f46-b15687d3fe4f
description: "Learn about an active user of Microsoft 365 usage analytics, activity reports and adoption metrics."
---

# Active user in Microsoft 365 usage reports

## Active user in usage reports

An active user of Microsoft 365 products for [Microsoft 365 usage analytics](usage-analytics.md) and the [Activity Reports in the admin center](../activity-reports/activity-reports.md) is defined as follows. 
  
|**Product**|**Definition of an active user**|**Notes**|
|:-----|:-----|:-----|
|Exchange Online  <br/> |Any user who has performed any of the following actions: Mark as read, send messages, create appointments, send meeting requests, accept (as tentative) or decline meeting requests, cancel meetings.  <br/> |No calendar information is represented, this will be added in an upcoming update.  <br/> |
|SharePoint Online  <br/> |Any user who has interacted with a file by creating, modifying, viewing, deleting, sharing internally or externally, or synchronizing to clients on any site or viewed a page on any site.  <br/> |The active user metrics for SharePoint Online in the Microsoft 365 Usage Analytics template app only reflect users who did file activity against a SharePoint Team site or a Group site. The template app will be updated to synchronize the definition to the same as that on the usage reports in the admin center.  <br/> |
|OneDrive for Business  <br/> |Any user who has interacted with a file by creating, modifying, viewing, deleting, sharing internally or externally, or synchronizing to clients.  <br/> ||
|Viva Engage  <br/> |Any user who has read, posted, or liked a message on Viva Engage.  <br/> ||
|Skype for Business  <br/> |Any user who has participated in a peer-to-peer session (including instant messaging, audio and video calls, application sharing, and file transfers) or who has organized or participated in a conference.  <br/> ||
|Microsoft 365  <br/> |Any user who has activated their Microsoft 365 Apps for enterprise, Visio Pro or Project Pro subscription on at least one device.  <br/> ||
|Microsoft 365 Groups  <br/> |Any group member that has mailbox activity (if a message has been sent to the group)  <br/> |This definition will be enhanced with group site file activity and Viva Engage group activity (file activity on group site and message posted to Viva Engage group associated with the group.) This data is currently not available in the Microsoft 365 Usage Analytics template app  <br/> |
|Microsoft Teams  <br/> |Any user who has participated in chat messages, private chat messages, calls, meetings, or other activity. Other activity is defined as the number of other team activities by the user some of which include, and not limited to: liking messages, apps, working on files, searching, following teams and channel and favoriting them.  <br/> ||
   
## Adoption Metrics

[Microsoft 365 usage analytics](usage-analytics.md) contains more adoption metrics related to active users to show adoption of the products over time. These metrics are valid for the month, year, and product selected and are defined as follows. 
  
|**Metric**|**Description**|
|:-----|:-----|
|EnabledUsers  <br/> |Number of users enabled to use the product in the month.  <br/> |
|ActiveUsers  <br/> |Number of users active in the month.  <br/> |
|MoMReturningUsers  <br/> |Number of users active in the month that were also active in the preceding month.  <br/> |
|FirstTimeUsers  <br/> |Number of users active in the month that had never used the service before.  <br/> |
|CumulativeActiveUsers  <br/> |Number of users active in the month plus any preceding month.  <br/> |
|ActiveUsers(%)  <br/> |Percent of users, rounded to the nearest tenth, active in the month compared to the number of users enabled in that month.  <br/> |
|MoMReturningUsers(%)  <br/> |Percent of users, rounded to the nearest tenth, active in the month that were also active in the preceding month compared to the number of active users.  <br/> |
   
MoMReturningUsers, FirstTimeUsers, &amp; CumulativeActiveUsers were reset starting January 1, 2018 with the inclusion of Microsoft Teams.
  
