---
title: "Form processing overview"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 3/15/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: PJO150
localization_priority: Normal
description: "Get a high-level overview of the Form processing feature in Microsoft Broadsight."
---

# Form processing overview

This article gives you an overview of the Form Processing feature available in Microsoft Broadsight.



![Project logical architecture diagram](media/projarchoverview.png)







## Key Project apps and services

The key Project apps and services described in this article are available in the following Project Plans.

|**Plan**|**Project Plan 1**|**Project Plan 3**|**Project Plan 5**|
|:-----|:-----|:-----|:----|
|Project Online Desktop Client<br/> |  No<br/> |Yes | Yes|
|Project Online <br/> |No  <br/> |Yes| Yes|
|Project or the web  <br/> |Yes  <br/> |Yes  |Yes|
|Roadmap <br/>| No | Yes|Yes |


> [!Note] 
> In Project Plan 1, you can view roadmaps in read-only mode, but you cannot create them. 

For more details on Project Plans, see the [Microsoft Project Service Description](https://docs.microsoft.com/office365/servicedescriptions/project-online-service-description/project-online-service-description).

### Project Online Desktop Client

Use the Project Online Desktop Client to create offline standalone project plans (.MPP file format). You can also use it to connect to a Project Online site leverage it's enterprise level capabilities (resources, ) enterprise resources and to publish and share your projects with other users. 

### Project Online

Project Online data is saved to Office 365 to the SharePoint content database. 

### Project for the web
XXX

### Project Roadmap
XXX


## Where is my data saved to?

### Common Data Service

### Office 365


## Reporting
XXXX

## Project Home






## Where is my data located

You can look for the location of where your Project for the web and Project Online data is stored by seeing [Explore where Office 365 stores your customer data](https://products.office.com/where-is-your-data-located?rtc=1). 

### Project for the web and the Common Data Service

When Project for the web is first used in your Microsoft 365 tenant, a default CDS instance is provided to your tenant.  Project for the web data (such as projects or roadmaps) is stored in solutions in the default instance.

Admins can find the name and details of their default CDS instance in the PowerApps admin center (admin.powerapps.com).  



### Deleting user data

If you need to delete Project for the web data (for example, you need to delete data for a specific user) an admin can choose to [manually delete](delete-user-data-from-project-for-the-web.md) it.

Similarly, an admin can also [manually delete Project Online data](https://docs.microsoft.com/projectonline/delete-user-data-from-project-online) (for example, user data or user identifying data) if needed.

## Turn off Project for the web

An admin can choose to [turn off Project for the web to specific users in their organization](https://review.docs.microsoft.com/project-for-the-web/turn-project-for-the-web-off?branch=efrene-v2working#turn-off-project-for-the-web-for-specific-users-in-your-organization). This can be done through the Microsoft 365 admin center or through Windows PowerShell. 

 > [!Note] 
 > When you turn off Project for the web to individual users in your tenant, you will also turn off the Roadmap feature for those users.

## Turn off Roadmap 

Although Roadmap is a Project for the web feature, it is possible that some organizations may want to use Roadmap, but may want their users to access Project for the web at a later time.

The **Turn Roadmap on for your organization** control on the Project Settings page allows you to [turn Roadmap on or off in your organization](https://docs.microsoft.com/project-for-the-web/turn-roadmap-on-or-off). </br>
 

## Turn off Project Online

An admin may want certain users to have access to Project for the web and the Roadmap feature, and not Project Online. To do this, an admin would need to [turn off the Project Online service for the user](https://docs.microsoft.com/project-for-the-web/turn-project-for-the-web-off#turn-off-project-online) through their assigned Project Plan 3 or Project Plan 5 license.

## See Also
  
[Turn Project for the web off](turn-project-for-the-web-off.md)</br>
[Project for web get started guide for admins](project-for-the-web-get-started-guide-for-admins.md)



