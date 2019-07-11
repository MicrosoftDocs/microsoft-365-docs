---
title: Manage actions related to automated investigations in Microsoft 365 
description: Use the action center to manage actions related to automated investigation and response
keywords: action, center, autoair, automated, investigation, response, remediation
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

# Manage actions related to automated investigation 

**Applies to**:
- Microsoft 365

The Action Center aggregates all actions that require an approval or another action for an investigation to proceed or complete.

![Action Center](images/air-actioncenter.png)

To go to the Action Center, in the Microsoft 365 security center, click the Action Center icon.

The action center consists of two main tabs:
- **Pending**: Lists pending actions for current investigations. For example, actions that require approval in order to proceed are listed here. 
- **History**: Lists previous actions


Use the Customize columns drop-down menu to select columns that you'd like to show or hide. 

From this view, you can also download the entire list in CSV format using the **Export** feature, specify the number of items to show per page, and navigate between pages.


>[!NOTE]
>The tab will only appear if there are pending actions for that category.

### Approve or reject an action
You'll need to manually approve or reject pending actions on each of these categories for the automated actions to proceed.

Selecting an investigation from any of the categories opens a panel where you can approve or reject the remediation. Other details such as file or service details, investigation details, and alert details are displayed.

From the panel, you can click on the Open investigation page link to see the investigation details.

You also have the option of selecting multiple investigations to approve or reject actions on multiple investigations. 