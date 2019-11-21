---
title: Visit the Action center 
description: Use the Action Center to view details about automated investigation and approve pending actions
keywords: Action Center, threat protection, investigation, alert, pending, automated, detection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: M365-security-compliance
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

# The Action center

## Overview of the Action center

![Action Center](../images/air-actioncenter.png)

The Action center provides a view of current and past investigations across identities, devices, and mailboxes. The Action center not only enables your security operations team to operate more effectively and efficiently, it also provides a more comprehensive view of Microsoft Threat Protection at work for your organization. 

Depending on the type of threat and resulting verdict, remediation actions occur automatically or upon approval by your organization’s security operations team. All remediation actions, whether they are pending approval or were already approved, are consolidated in the Action center. This provides a "single pane of glass" experience for both approving pending remediation actions and viewing an audit log of already approved remediation actions across Microsoft Threat Protection. 

The following table lists remediation actions that are currently supported in the Action center: 

|Endpoints remediation actions  |Email remediation actions  |
|---------|---------|
|Quarantine file<br/>Remove registry key<br/>Kill process <br/>Stop service <br/>Remove registry key <br/>Disable driver <br/>Remove scheduled task      |Soft delete emails<br/>Block URL (time-of-click)<br/>Turn off external mail forwarding<br/>Soft delete emails          |

> [!NOTE]
> You must be a global administrator, security administrator, security operator, or security reader to perform the tasks described in this article. 

## Visit the Action center

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. 

2. In the navigation pane, choose **Action center**. 

3. In the Action center, you’ll see two tabs: **Pending** and **History**.

    - The **Pending** tab lists investigations that require review and approval by someone in your security operations team to continue. Make sure to review and take action on pending items you see here.

    - The **History** tab lists past investigations and remediation actions that were taken automatically. You can view data for the past day, week, month, or six months.

4. To show only the columns you want to see, select **Customize columns**.<br/>![Action Center in Microsoft Threat Protection](../images/mtp-action-center.png)

5. Select an item in the list to view more details about an investigation. The investigation details view opens.<br/>![Investigation details](../images/mtp-air-investdetails.png)

    - If the investigation pertains to email content (such as, the entity is a mailbox), investigation details open in the Office 365 Security & Compliance Center ([https://protection.office.com/threatinvestigation](https://protection.office.com/threatinvestigation)). 

    - If the investigation involves a user account or a device, investigation details open in the security center ([https://security.microsoft.com](https://security.microsoft.com)). 

## Next steps 

[Learn about hunting in Microsoft Threat Protection](hunting.md)

[Learn about incidents in Microsoft Threat Protection](incidents-overview.md)
