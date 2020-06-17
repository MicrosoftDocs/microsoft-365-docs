---
title: 'Set up Microsoft Broadsight'
description: 'How to set up Microsoft Broadsight'
author: efrene
ms.author: efrene
manager: pamgreen
ms.date: 06/15/2020
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: Normal

---
# Set up Microsoft Broadsight
Use the Microsoft 365 admin center to set up and configure Microsoft Broadsight. Setup can be divided into two distinct parts:

- Set up your knowledge network
- Build AI models to understand content

> [!Important]
> It is important to plan the best way to set up and configure Microsoft Broadsight for your environment.  For example, who should you initially give access to and which sites do I analyze?  Much of this type of information is needed during the setup steps. Before going through the setup steps, make sure to [make all your planing considerations]().


## Requirements 
You must have Global Admin permissions to be able to access the Microsoft 365 admin center and set up Microsoft Broadsight.


## Set up your knowledge network

Setting up your knowledge network walks you through the following:

- Topic discovery: Selecting topic source sites and topics to exclude from discovery.
- Topic visibility: Selecting who can view topics and see suggested topics.
- Topic permissions: Selecting who can create, edit, and manage topics.
- Knowledge center: Create your knowledge center.
- Review: Check and apply your settings.

To set up your knowledge network:

1. In the Microsoft 365 admin center, select **Setup**, and then view the **Content Service and Insights** section.
2. In **Content Service and Insights**, select **Set up your knowledge network**.<br/>
3. On the **Set up your knowledge network**, click **Get started** to walk you through the setup process.<br/>
4. On the **Choose how the knowledge network will find topics** page, in the **Select topic sources** section, select which SharePoint sites will be mined as sources for your topics during discovery. This includes:
    a. **All sites**: All SharePoint sites in your tenant.
    b. **All, except selected sites**: Type the names of the sites you want to exclude.
    c. **Only selected sites**: Type the names of the sites you want to include.
5. In the **Exclude topics by name** section, you can choose to includes names of topics you don't want to be discovery results. Your options include:
    a. **Don't exclude any topics**
    b. **Exclude**


### How to determine your Default CDS URL

 Project for the web data is stored in the Dynamics 365 Common Data Service (CDS). You need to enter the URL of your default CDS instance that you are using, and it needs to be in the following format: 

https://<spam><spam>(environment_name).(region).dynamics<spam><spam>.com

For example:
https://<spam><spam>orgde6d15d8.crm.dynamics<spam><spam>.com

The following will tell you how to find the *environment_name* and the *region* values of the URL.

**To determine the Default CDS environment name value of the URL**:

1. While logged into Office 365, go to this site:  https://<spam><spam>web.powerapps<spam><spam>.com
2. On the PowerApps page, under **Start from data**, select **Common Data Service**. 
3. On the PowerApps page, note the value in the **Environments** section.  In the image below, the default CDS environment value is **orge817dafc**.

    ![Default CDS environment](media/powerappsen.png)

**To determine the region value of the URL**:

The region value will usually be associated to the data center that is close to you geographically. The following list shows the region values associated with regional data centers.

|||
|:-----|:-----|
|**Region** <br/> |**Value** <br/> |
|North America   <br/> |crm <br/> |
|South America <br/> |crm2  <br/> |
|Canada   <br/> |crm3 <br/> |
|Europe, Middle East and Africa (EMEA)  <br/> |crm4<br/> |
|Asia Pacific Area (APAC)  <br/> |crm5 <br/> |
|Oceania   <br/> |crm6 <br/> |
|Japan   <br/> |crm7 <br/> |
|India  <br/> |crm8 <br/> |
|North America 2   <br/> |crm9 <br/> |
|United Kingdom   <br/> |crm11 <br/> |
|France  <br/> |crm12 <br/> |

If you are not sure, check with your Office 365 administrator and have them check for the value in the [Power Platform Admin Center](https://docs.microsoft.com/power-platform/admin/admin-guide).

![PowerPlatform Admin Center](media/PowerPlatformAdminCenter.png)

### How to determine your Project Web App (PWA) URL

You can go to your Project Online PWA site home page to find the PWA site URL.

You can get to your PWA site by:

1. In Office 365, click the Apps icon in the top left corner, and then in **Apps**, select **Project**.
2. On your Project Home page, on the bottom of the page, click, **Go to Project Online**. This will take you to your PWA Home page.
3. Copy the URL in your browser and use this value for the **PWA URL** field in the Project template.

![Project Web App Site URL](media/PWASiteURL.png) 

If you are still not sure, check with your Office 365 admin and have them check for the value in the SharePoint admin center.


## After connecting to your data

After Power BI Desktop retrieves the data, the visualizations in each report page will load and display the data.  

> [!Note]
> You need to have read permissions at the business-unit level to the CDS entities to which the report connects to have a portfolio-level view of the data.  


From the Power BI Desktop, we recommend [publishing the report to a shared workspace](https://docs.microsoft.com/power-bi/desktop-upload-desktop-files), and then [configure scheduled refresh of the data to keep your dataset up to date](https://docs.microsoft.com/power-bi/refresh-scheduled-refresh).

## Project reports

After connecting to your data, the following "out-of-the-box reports" are available to you to view and analyze your project data.

### Portfolio Dashboard

The Portfolio Dashboard report gives you a roll-up of all projects, and lets you know the total number of projects, effort completed, and effort remaining.  It allows you to filter your project data for project progress and view projects that are not started, in progress, and completed.

### Portfolio Timeline

The Portfolio Timeline reports shows visually where all projects fall on a timeline, including their duration and progress to date. All projects are color-coded by Project Manager.  

It allows you to filter your project data for project progress and view projects that are not started, in progress, and completed. 

The Filter Pane allows for further filtering based on start and finished dates to further refine the list of projects displayed.

### Portfolio Milestones

The Portfolio Milestones report summarizes all milestones completed the past 30 days and those still listed to complete in the past.  It also show the milestones planned for the next 30 days.

The report can be filtered on Project Progress (Not Started, In Progress, and Completed, and by Project Manager. The Filter Pane allows for further filtering based on start and finished dates to further refine the list of projects displayed.  The donut charts show the total count of milestones and how many are on each project. The table shows each milestone along with which project they are from and what the finish date is.

### Roadmap Key Dates

### Roadmap Details

### Resource Dashboard
The Resource Dashboard allows a manager to easily get an overview of where his or her resources are allocated to projects, displayed in a Treemap chart on the bottom of the report.

The stacked bar chart on the right top show total effort; effort completed and effort remaining.​

The doughnut chart shows how many tasks each resource have.​

Clicking on a resource in doughnut chart shows task by progress, and the tiles summarize the count of resources; not started tasks; in progress tasks; completed tasks as well as the  


### Resource Assignments

### Task Overview

The Task Overview report looks at task details across projects.  The tiles across the top provide a count of selected projects and how many tasks, completed tasks, future tasks, on track tasks, late tasks and overdue tasks there are.  The tiles on the right summarizes effort, effort completed and effort remaining.  You can filter on Tasks by Status, Tasks by Project, and Effort by Project.  The table shows the detailed tasks on the filtered projects and sorts by Task KPI by default.  Highlights for start and finish dates as well as in-cell data bars for progress, effort, effort completed and effort remaining. The Filter Pane allows for further filtering based on start and finished dates to further refine the list of projects displayed.

### Project Timeline

The Project Timeline shows each project with the detailed tasks and status.  It filters for Task Status, Project Manager as well as Project Name. The Filter Pane allows for further filtering based on start and finished dates to further refine the list of projects displayed.

### My Work

### My Timeline


## See also

[Compose HTTP requests and handle errors](https://docs.microsoft.com/powerapps/developer/common-data-service/webapi/compose-http-requests-handle-errors#web-api-url-and-versions)

  






