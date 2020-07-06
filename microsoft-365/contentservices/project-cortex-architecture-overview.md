---
title: "Microsoft Broadsight architecture overview"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 6/12/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal
description: "Get a high-level overview of Microsoft Broadsight logical architecture."
---

# Project architecture overview

This article gives you an overview of the logical architecture that exists for key apps that are provided in Project.



![Project logical architecture diagram](media/projarchoverview.png)







## Key Project apps 

The architecture diagram above shows the key apps that are available through Project Plan subscriptions: 


- Project for the web
- Roadmap
- Project Online
- Project Online Desktop Client

For more details about features that are available through these project apps and services, see [Feature availability across apps and subscriptions](https://docs.microsoft.com/office365/servicedescriptions/project-online-service-description/project-online-service-description#microsoft-project-subscriptions) in the Microsoft Project service description.  

### Project Plans

The key Project apps described in this article are available in the following Project Plans.

|**Plan**|**Project Plan 1**|**Project Plan 3**|**Project Plan 5**|
|:-----|:-----|:-----|:----|
|Project or the web  <br/> |Available  <br/> |Available  |Available|
|Roadmap <br/>| Read-Only | Available|Available |
|Project Online <br/> |Not Available  <br/> |Available| Available|
|Project Online Desktop Client<br/> |  Not Available<br/> |Available | Available|



> [!Note] 
> In Project Plan 1, users can only view roadmaps in read-only. 

For more details on Project Plans, see the [Microsoft Project Service Description](https://docs.microsoft.com/office365/servicedescriptions/project-online-service-description/project-online-service-description).

## Project for the web
[Project for the web](https://support.microsoft.com/office/what-is-project-for-the-web-c19b2421-3c9d-4037-97c6-f66b6e1d2eb5?ui=en-us&rs=en-us&ad=us) provides simple, powerful work management capabilities to meet most needs and roles. Project managers and team members can use Project for the web to plan and manage work of any size. 

### Platform
Project for the web is built on the [Microsoft Power Platform](https://powerplatform.microsoft.com). The Power Platform consists of [PowerApps](https://docs.microsoft.com/powerapps/powerapps-overview), [Power Automate](https://docs.microsoft.com/power-automate/getting-started), [Power BI](https://docs.microsoft.com/power-bi/fundamentals/power-bi-overview), and the [Common Data Service  (CDS)](https://docs.microsoft.com/powerapps/maker/common-data-service/data-platform-intro). Integration with the Microsoft Power Platform lets you easily leverage its components to [create custom business solutions](https://developer.microsoft.com/project/blogs/developing-applications-and-reports-using-the-new-project/) and do advanced analytics and reporting on project data.

Just like Project Online, users can access their Project for the web projects through the [Project Home page](https://support.office.com/article/get-started-with-project-home-a3b38418-35e7-4df4-8e4a-ba6a4fa0562a).  It will by default list projects that were recently viewed, owned by, or shared with the user.

### Data storage
Project for the web data is saved to the Common Data Service (CDS). CDS is part of the Microsoft Power Platform, which Project for the web is built on.  

When Project for the web or Roadmap are first used in an Office 365 tenant, a Default CDS instance is provisioned for the tenant. Project for the web data is saved as entities to [Solutions](https://docs.microsoft.com/powerapps/maker/common-data-service/solutions-overview) that are in the default CDS instance, and can be identified by their display name of **Project**.


### Reporting
You can use PowerBI Desktop to import and analyze not only your Project Online data, but also your Project for the web data as well. You can use the same [Project Power BI template](https://docs.microsoft.com/project-for-the-web/connect-to-project-for-the-web-data-through-powerbi-desktop) to view a Portfolio dashboard of reports that can be helpful in analyzing your data.


## Roadmap
Use [Roadmap](https://support.office.com/article/Video-Welcome-to-Roadmap-57764149-51b8-468f-a50d-9ea6a4fd835a) to create a collective view of projects that are important to you. Your roadmap can connect to projects created in multiple tools, such as Project Online, Project for the web, and Azure DevOps.  

### Data storage
As mentioned previously, Project for the web and Roadmap data are saved to solutions in the default CDS instance. While Project for the web data is saved as entities in  **Project** [solutions](https://docs.microsoft.com/powerapps/maker/common-data-service/solutions-overview), Roadmap data is saved to entities in CDS solutions that have a display name of **Portfolio Service**.

## Project Online

Project Online is a flexible online solution for Project Portfolio Management (PPM) and everyday work. Project Online provides powerful project management capabilities for planning, prioritizing, and managing projects and project portfolio investments—from almost anywhere on almost any device. Project Online can be used by administrators, portfolio managers and viewers, project and resource managers,and team leads and members. 

### Platform
Project Online is built on the SharePoint platform, and uses key SharePoint features such as web parts, collaborative sites, and SharePoint security groups.  Access is provided through a supported web browser. 

Users can access their Project Online projects through the [Project Home page](https://support.office.com/article/get-started-with-project-home-a3b38418-35e7-4df4-8e4a-ba6a4fa0562a).  It will by default list projects that were recently viewed, owned, or shared with the user.

### Data Storage
Project Online data is stored to the SharePoint Content Database in Office 365. Each Project Online site created within the tenant creates a separate partition within the content database so that each instance is independent of each other. For example, custom fields used in one Project Online site are independent of another Project Online site. 

### Reporting 
You can use PowerBI Desktop to import and analyze your Project Online data using [Power BI](https://docs.microsoft.com/projectonline/tune-project-online-performance#powerbi). You can use the [Project Power BI template](https://docs.microsoft.com/project-for-the-web/connect-to-project-for-the-web-data-through-powerbi-desktop) to view a Portfolio dashboard of reports that can be helpful in analyzing your data. And as noted earlier, the same Project template can be used to include your Project for the web data as well.

For larger Project Online instances with very large amounts of data, you may want to use [SQL Server Integration Services (SSIS)](https://docs.microsoft.com/projectonline/tune-project-online-performance#sql-server-integration-services-ssis) to access and analyze your data.

## Project Online Desktop Client

Many project managers use the Project Online desktop client as a personal productivity tool for their project management needs. They build schedules in the client, save them as .mpp files, share these files with others, and keep them updated as the project progresses.

 You can also use the Project Online Desktop Client to [connect to a Project Online site](https://docs.microsoft.com/projectonline/connect-to-project-online-with-the-project-online-desktop-client) to take advantage of its enterprise project and portfolio management capabilities.






## See Also
  
[Turn Project for the web off](turn-project-for-the-web-off.md)</br>
[Project for web get started guide for admins](project-for-the-web-get-started-guide-for-admins.md)</br>
[Microsoft Power Platform documentation](https://docs.microsoft.com/power-platform/)</br>
[Project for the web and Project Online](https://support.microsoft.com/office/project-for-the-web-and-project-online-6569170c-5c8e-474e-a7f0-642872f62f8a?ui=en-us&rs=en-us&ad=us)</br>
[Project for the web and Project Online Desktop Client](https://support.office.com/article/project-for-the-web-and-project-online-desktop-client-2dd7583c-eb34-467f-bf63-607bdc816e20)</br>
[Develop applications and reports for the new Project for the web](https://developer.microsoft.com/project/blogs/developing-applications-and-reports-using-the-new-project/)





