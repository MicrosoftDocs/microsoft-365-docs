---
title: Analyze automated investigations in Microsoft 365
description: View the details of an Automated investigation to see information such as the investigation graph, alerts associated with the investigation, and other information
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

# Analyze automated investigations

**Applies to**:
- Microsoft 365

When an automated investigation is underway or has completed, you can view details and results of the investigation. To do that, you can use [the automated investigations dashboard](autoir-dashboard-overview.md). You can also conduct further analysis on entities, alerts, or incidents, and see your recommended next steps.

Here are some examples:
- Investigate an alert that isn't suitable for automated investigation
- Examine malware that was detected in email or on a user's machine
- Find out when a user account was compromised
- Determine whether a URL switched from safe to malicious
- ... and more.

## Investigate an alert

**Example**: Investigate an unsupported alert type

Suppose that you have one automated investigation underway, but 11 new alerts. It's possible that one or more of your new alerts must be investigated manually. Here's an example of how you might conduct that analysis.

1. Starting from your security dashboard, click a chart in the **Active alerts** widget. This opens the **Alerts queue**.

    ![Security operations dashboard](images/air-secopsdashboard.png)

2. In the **Alerts queue**, in the Investigation state column, look for alerts that have values, such as Unsupported alert type or Unsupported OS.

    
    
     These are alerts for which automated investigation capabilities are not available. Such alerts must be investigated manually.

WORK IN PROGRESS

## Examine malware

WORK IN PROGRESS

## Review a compromised user account

WORK IN PROGRESS



## Next steps

- [Manage actions related to automated investigation](autoir-actions.md)

- [Hunt for malware and other threats in Microsoft 365](hunting.md)
