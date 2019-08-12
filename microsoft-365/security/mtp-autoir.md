---
title: Automatically investigate and remediate issues using Microsoft Threat Protection 
description: Get an overview of automated investigation and remediation capabilities in Microsoft Threat Protection
keywords: automated, investigation, alert, trigger, action, remediation
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

# Automatically investigate and remediate issues in Microsoft 365

**Applies to**:
- Microsoft 365

## Summary

With automated investigation and remediation (AIR) capabilities in Microsoft Threat Protection, security administrators can set up alerts that trigger investigations automatically or start an automated investigation manually. Once an investigation is underway, your security team can use the [Action center](mtp-action-center.md) to monitor progress, approve pending actions, review the results, and remediate security issues. 

## The automated investigation and remediation flow

|Phase  |What happens  |
|---------|---------|
|Automated investigation begins     |An automated investigation begins when one of the following occurs:<br/>- An alert triggers an incident that includes an automated investigation<br/>- A security analyst starts an investigation manually while viewing an alert or a security report        |
|The automated investigation runs     |- Details about the threat and affected entities (user accounts, machines, and so on) are gathered<br/>- The investigation scope can increase if new alerts or entities related to the initial threat emerge          |
|Details and results emerge |- During and after an automated investigation, details are available in the Action center<br/>- Automated investigation results inform remediation steps  |
|Remediation steps are taken |- Remediation happens automatically or by approval from your security operations team |

## Automated investigation begins

An automated investigation can begin when one of the following occurs:
- An alert triggers an automated investigation; or
- An analyst starts an automated investigation manually.

### An alert can trigger an automated investigation

Most often, an automated investigation begins when an alert is triggered and an incident is created. Not every alert will trigger an automated investigation; this depends on how your organization's alert policies are configured. With automated investigation and remediation capabilities, several kinds of alerts can be configured to work with security playbooks that define the automated investigation process. Here are just a few examples:
- Malware is detected on a user's machine
- A malicious file is detected in email
- A user account is flagged as compromised
- ... and many other other scenarios.



## Monitor progress of investigations

When you have one or more investigations in progress, you can monitor status and view progress.

**Example**: Navigate from a widget to a detailed view of an investigation

1. In your security dashboard, select an item, such as the chart in the **Active automated investigations** widget. 

    ![Security operations dashboard](images/air-secopsdashboard.png)

    This opens the **Automated Investigations** view.

    ![automated investigations detailed view](images/air-automated-investigations-list-with-filters.png)

2. Select an item, such as an item in the **Triggering alert** column. This takes you to the Investigation details page, with the Investigation graph in view.

    ![Investigation details](images/air-investigationgraph.png)

3. Use the various tabs to view details about the investigation.

    |Tab  |Description  |
    |---------|---------|
    |**Investigation graph**     |Provides a visual representation of the investigation. Depicts entities and lists threats found, along with alerts and whether any actions are awaiting approval.         |
    |**Alerts**     |Lists alerts associated with the investigation. Alerts can come from threat protection features on a user's machine, in Office apps, Cloud App Security, and other Microsoft 365 Threat Protection features.          |
    |**Machines** |Lists machines included in the investigation along with remediation level. |
    |**Users** |Lists user accounts included in the investigation, including a threat determination (verdict). | 
    |**Key findings** |Lists results from the investigation along with status and actions taken. |
    |**Entities** |Lists user activities, files, processes, services, drivers, IP addresses, and persistence methods associated with the investigation, along with status and actions taken. |
    |**Log** |Provides a detailed view of all steps taken during the investigation, along with status.  |
    |**Pending actions** |Lists items that require approval to proceed. |

## Approve pending actions

Although many steps in AIR are automated, some actions require approval from someone on your security operations team. 

**Example**: Review and approve a pending action 

1. On the **Investigation details** page, select the **Pending actions** tab.

    ![Pending actions](images/air-2pendingactions.png)

2. Select an item to open a flyout, where you can view more details about the incident and proposed action. Then, choose **Approve** (or **Reject**).

## Next steps

[Analyze automated investigations](analyze-autoir.md)

[Learn about the automated investigations dashboard](autoir-dashboard-overview.md)