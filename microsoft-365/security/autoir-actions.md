---
title: Manage actions related to automated investigation and remediation in Microsoft 365 
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

# Manage actions related to automated investigation and remediation in Microsoft 365

**Applies to**:
- Microsoft 365

The Action Center aggregates all actions that require an approval or another action for an investigation to proceed or complete.

![Action Center](images/air-actioncenter.png)

To go to the Action Center, in the Microsoft 365 security center, click the Action Center icon.

The action center consists of two main tabs:
- **Pending**: Lists pending actions for current investigations. For example, actions that require approval in order to proceed are listed here. 
- **History**: Lists previous actions, along with their associated investigations and status.

Similar to other reports in the automated investigation and remediation [dashboard](autoir-dashboard-overview.md), you can:
- Use filters to focus on specific information
- Choose which columns to display in the list
- Export the list to a file in .csv format 

> [!NOTE]
> You must be a global administrator, security administrator, security operator, or security reader to perform the tasks described in this article. To learn more, see [Microsoft 365 security center: roles and permissions](https://docs.microsoft.com/office365/securitycompliance/microsoft-security-and-compliance#required-licenses-and-permissions).

## Approve or reject an action

**Example**: Review an action for a malicious script

1. In the Action Center, on the **Pending** tab, select an item. This opens a flyout that includes details, links to an associated alert or investigation, and buttons to approve or reject the action. 

    ![Approve or reject an action](images/air-actioncenter-itemselected.png)

2. Review the information about the action, and then do one of the following:
    - Select **Open investigation page** to view more details about the investigation
    - Select **Approve** to take the recommended action and enable the investigation to proceed
    - Select **Reject** for a recommended action you do not want to take at this time. (This can cause an investigation to halt or complete.)


> [!TIP]
> When you visit the Action Center, make sure to approve or reject pending actions. That way, investigations can complete as soon as possible, and remediation steps can be taken. 

## Next steps

[Learn about the automated investigations dashboard](autoir-dashboard-overview.md)

[Analyze alerts and investigations in Microsoft 365](analyze-autoir.md)