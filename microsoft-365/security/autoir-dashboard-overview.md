---
title: Learn about the automated investigations dashboard in Microsoft 365 
description: View the list of automated investigations, its status, detection source and other details
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
---

# Learn about the automated investigations dashboard

**Applies to**:
- Microsoft 365

In the Microsoft 365 security center, you can view detailed information about automated investigations. This includes active automated investigations and statistics. 

>[!NOTE]
>If your organization has implemented role-based access to manage portal access, only authorized users or user groups who have permission to view investigation data. 


From this view, you can also download the entire list in CSV format using the **Export** button, specify the number of items to show per page, and navigate between pages. You also have the flexibility to filter the list based on your preferred criteria.

## Active automated investigations widget

The **Active automated investigations** widget shows you at a glance the number of active investigations along with their status. For example, the following image indicates that one active investigation is in progress.

![Active automated investigations](images/air-active-investigations.png)

Clicking the chart opens the **Automated investigations** view.

## Automated investigations view

The **Automated investigations** view provides details about current and previous investigations. 

![automated investigations detailed view](images/air-automated-investigations-list-with-filters.png)

In addition to viewing information about triggering alerts, status, detection source, entities, and duration, you can do any of the following in this view:
- Use filters to focus on specific information
- Choose which columns to include in the report
- Select a value to see more detailed information
- Navigate to additional charts or views
- ...and more.


### Use filters to focus on specific information

To open the Filters pane, in the upper right corner of the Automated investigations view, select the Filters icon (![AIR filter icon](images/air-filtericon.png)).

You can filter the list of automated investigations displayed by status, triggering alert, detection source, and entities.

#### Status

|Filter option | What it does|
|:---|:---|
|Any |Shows all automated investigations, regardless of status. |
| No threats found                                          |Shows investigations in which no malicious entities were found.| 
|Pending approval |Shows investigations that have one or more actions that require approval, typically from a member of the security operations team. |
|Running |Shows investigations that are currently running. |
|Waiting for machine|Shows investigations that are currently paused because one or more machines included in the investigations are not available. (For example, a machine might be turned off.) |
| Failed   | A problem has interrupted the investigation, preventing it from completing. |

#### Triggering alert

The alert the initiated the Automated investigation.

#### Detection source

Source of the alert that initiated the automated investigation. 

#### Entities


|Entity  |Description  |
|---------|---------|
|Threat     |The category of threat detected during the Automated investigation.         |
|Tags     |Manually added tags that capture the context of an automated investigation.         |
|Machines |Filtering on a specific machine enables you to see other investigations related to the machine.|
|Machine groups | Specific machine groups that you might have created.|
|Comments | View investigations that do (or do not) have comments.|

### Choose which columns to include

Use the **Customize columns** drop-down menu to select columns that you'd like to show or hide. 


### Select a report value to view more information

### Navigate to additional reports or views

### There's more!

