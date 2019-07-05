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

Use the **Customize columns** drop-down menu to select columns that you'd like to show or hide. 

From this view, you can also download the entire list in CSV format using the **Export** button, specify the number of items to show per page, and navigate between pages. You also have the flexibility to filter the list based on your preferred criteria.

## Active automated investigations

The **Active automated investigations** widget shows you at a glance the number of active investigations along with their status. For example, the following image indicates that one active investigation is in progress.

![Active automated investigations](images/air-active-investigations.png)

Clicking the chart opens a more detailed view. In that view, you can use filters, view information about the alert that triggered the investigation, status, detection source, entities, and more.

![automated investigations detailed view](images/air-automated-investigations-list-with-filters.png)



### Filters

You can filter the list of automated investigations by status, triggering alert, detection source, and entities.

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

**Threat**
The category of threat detected during the Automated investigation.


**Tags**
Filter using manually added tags that capture the context of an Automated investigation.

**Machines**
You can filter the Automated investigations list to zone in a specific machine to see other investigations related to the machine.

**Machine groups**
Apply this filter to see specific machine groups that you might have created.

**Comments**
Select between filtering the list between Automated investigations that have comments and those that don't.
