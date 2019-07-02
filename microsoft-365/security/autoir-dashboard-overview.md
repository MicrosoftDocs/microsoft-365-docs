---
title: Learn about the automated investigations dashboard in Microsoft 365 security center
description: View the list of automated investigations, its status, detection source and other details
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.topic: article
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Learn about the automated investigations dashboard in Microsoft 365 security center
By default, the Automated investigations list displays investigations initiated in the last week. You can also choose to select other time ranges from the drop-down menu or specify a custom range. 

>[!NOTE]
>If your organization has implemented role-based access to manage portal access, only authorized users or user groups who have permission to view the machine or machine group will be able to view the entire investigation. 

Use the **Customize columns** drop-down menu to select columns that you'd like to show or hide. 

From this view, you can also download the entire list in CSV format using the **Export** button, specify the number of items to show per page, and navigate between pages. You also have the flexibility to filter the list based on your preferred criteria.


 
**Filters**</br>
You can use the following operations to customize the list of Automated investigations displayed:


**Triggering alert**</br>
The alert the initiated the Automated investigation.

**Status**</br>
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

**Detection source**</br>
Source of the alert that initiated the Automated investigation. 

**Threat**</br>
The category of threat detected during the Automated investigation.


**Tags**</br>
Filter using manually added tags that capture the context of an Automated investigation.

**Machines**</br>
You can filter the Automated investigations list to zone in a specific machine to see other investigations related to the machine.

**Machine groups**</br>
Apply this filter to see specific machine groups that you might have created.

**Comments**</br>
Select between filtering the list between Automated investigations that have comments and those that don't.
