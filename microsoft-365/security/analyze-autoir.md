---
title: Analyze alerts, incidents, and automated investigations in Microsoft 365
description: Conduct analysis on alerts that can't be done with automated investigation. View details about alerts, incidents, and entities, and see your recommended next steps.
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

# Analyze alerts, incidents, and automated investigations in Microsoft 365

**Applies to**:
- Microsoft 365

When an automated investigation is underway or has completed, you can view details and results of the investigation. To do that, you can use [the automated investigations dashboard](autoir-dashboard-overview.md). You can also conduct further analysis on alerts, incidents, or investigations (including alerts that are not handled by automated investigation), and see your recommended next steps.

Here are some examples:
- Investigate an alert that isn't handled by automated investigation and remediation
- Examine malware that was detected in email or on a user's machine
- Get the details of a compromised user account was
- Determine whether a URL changed from safe to malicious
- ... and more.

## Investigate an alert

**Example**: Investigate an unsupported alert type

Suppose that you have one automated investigation underway, but 11 new alerts. It's possible that one or more of your new alerts must be investigated manually. Here's an example of how you might conduct that analysis.

1. Starting from your security dashboard, click a chart in the **Active alerts** widget. This opens the **Alerts queue**.

    ![Security operations dashboard](images/air-secopsdashboard.png)

2. In the **Alerts queue**, in the **Investigation state** column, look for alerts that have values, such as **Unsupported alert type** or **Unsupported OS**. These are alerts for which automated investigation capabilities are not available. Such alerts must be investigated manually.

    ![unsupported alerts](images/air-alertsqueue.png)

3. Select an alert to view more details, including recommended actions. In the following example, we selected an alert pertaining to a script with suspicious content. 

    ![Unsupported alert details view](images/air-unsupportedalertdetails.png)

4. Follow the steps in the **Recommended actions** section for the alert.

5. To explore the alert further, do one of the following:
    - If the alert is associated with an incident, click its link to view more details about the incident.
    - If an entity is listed in the **Alert context** pane, click its link to view more details.
    - Use the **Actions** menu to manage the alert, view a timeline, open the associated incident page, or print details about the alert.

## Examine malware

WORK IN PROGRESS

## Review a compromised user account

WORK IN PROGRESS



## Next steps

- [Manage actions related to automated investigation](autoir-actions.md)

- [Hunt for malware and other threats in Microsoft 365](hunting.md)
