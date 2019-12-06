---
title: Approve or reject pending actions following automated investigation 
description: Use the Action Center to manage actions related to automated investigation and response
keywords: action, center, autoair, automated, investigation, response, remediation
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
ms.custom: autoir
---

# Approve or reject pending actions from automated investigations

**Applies to:**
- Microsoft Threat Protection

[!include[Prerelease information](prerelease.md)]

When an automated investigation runs, it can result in one or more [remediation actions](mtp-action-center.md#remediation-actions) that require approval to proceed. For example, a cluster of email messages might need to be deleted, or a quarantined file might need to be removed. It's important to approve (or reject) pending actions as soon as possible so that your automated investigations can proceed and complete in a timely manner. 

Pending actions can be reviewed and approved by using one of several methods:
- [Use the Action center](#review-a-pending-action-in-the-action-center)
- [Use the investigation details view](#review-a-pending-action-in-the-investigation-details-view)

> [!NOTE]
> You must have appropriate permissions to approve or reject remediation actions. See [Required permissions for Action center tasks](mtp-action-center.md#required-permissions-for-action-center-tasks).

## Review a pending action in the Action center

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. 

2. In the navigation pane, choose **Action center**. 

3. In the Action Center, on the **Pending** tab, select an item in the list. Depending on what you select, one of the following occurs:

    - If you select an item in the **Investigation number** column, the investigation details page opens. There, you can view the results of the investigation, and then either approve or reject the recommended action.
 
    - If you select a row in the list, a flyout opens, where you can view information about that item, click links to an associated alert or an investigation, and either approve or reject the action.<br/>![Approve or reject an action](../images/air-actioncenter-itemselected.png)

## Review a pending action in the investigation details view

![Investigation details](../images/mtp-air-investdetails.png)

1. On an [investigation details](mtp-autoir-results.md) page, select the **Pending actions** (or **Actions**) tab. Items that are pending approval are listed here.

2. Select an item in the list, and then choose **Approve** or **Reject**.

## Next steps

- [Learn more about the Action center](mtp-action-center.md)
- [Learn more about incidents](incidents-overview.md)
- [Learn about hunting](advanced-hunting-overview.md)
