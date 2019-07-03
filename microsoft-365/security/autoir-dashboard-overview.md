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

The Active automated investigation widget shows you at a glance the number of active investigations along with their status. For example, the following image indicates that one active investigation is in progress.

![Active automated investigations](images/air-active-investigations.png)

Clicking the chart opens a more detailed view. In that view, you can use filters, view information about the alert that triggered the investigation, status, detection source, entities, and more.

 
**Filters**
You can use the following operations to customize the list of Automated investigations displayed:


**Triggering alert**
The alert the initiated the Automated investigation.

**Status**
An Automated investigation can be in one of the following status:

Status | Description
:---|:---
| No threats found                                          | No malicious entities found during the investigation.
| Failed                                                    | A problem has interrupted the investigation, preventing it from completing.                                                         |
| Partially remediated                                      | A problem prevented the remediation of some malicious entities.                                                                     |
| Pending action                                          | Remediation actions require review and approval.                                                                                    |
| Waiting for machine                                       | Investigation paused. The investigation will resume as soon as the machine is available.                                            |
| Queued                                                    | Investigation has been queued and will resume as soon as other remediation activities are completed.                                |
| Running                                                   | Investigation ongoing. Malicious entities found will be remediated.                                                                 |
| Remediated                                                | Malicious entities found were successfully remediated.                                                                              |
| Terminated by system                                      | Investigation was stopped by the system.                                                                                          |
| Terminated by user                                        | A user stopped the investigation before it could complete.  
| Partially investigated                                    | Entities directly related to the alert have been investigated. However, a problem stopped the investigation of collateral entities. |

CHECK THIS!!

**Detection source**
Source of the alert that initiated the Automated investigation. 

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
