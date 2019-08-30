---
title: Approve or reject actions related to automated investigation and remediation in Microsoft Threat Protection 
description: Use the Action Center to manage actions related to automated investigation and response
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

# Approve or reject actions related to automated investigation and remediation in Microsoft Threat Protection

**Applies to**:
- Microsoft 365

Pending actions can be reviewed and approved (or rejected) within the Action center, within the context of an incident, or in an investigation details view.

## Review a pending action in the Action center

![Action Center](../images/air-actioncenter.png)

1. To go to the Action Center, in the Microsoft 365 security center, click the **Action Center** icon.

2. In the Action Center, on the **Pending** tab, select an item. This opens a flyout that includes details, links to an associated alert or investigation, and buttons to approve or reject the action.

    ![Approve or reject an action](../images/air-actioncenter-itemselected.png)

3. Review the information about the action, and then do one of the following:
    - Select **Open investigation page** to view more details about the investigation
    - Select **Approve** to take the recommended action and enable the investigation to proceed
    - Select **Reject** for a recommended action you do not want to take at this time. (This can cause an investigation to halt or complete.)

## Review a pending action in the investigation details view

In the investigation details view, you can review and approve pending actions on either the Key Findings tab or the Pending actions tab.