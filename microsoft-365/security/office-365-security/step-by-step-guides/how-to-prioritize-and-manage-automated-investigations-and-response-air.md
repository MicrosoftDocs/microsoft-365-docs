---
title: How to prioritize and manage Automated Investigations and Response (AIR).
description: How to steps to analyze and approve AIR actions directly from the Action Center. When alerts are triggered, Automated Investigation and Response (AIR) determines the scope of impact of a threat in your organization and provided recommended remediation actions.
search.product:
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-guidance-templates
- m365-security
- tier3
ms.topic: how-to
ms.subservice: mdo
search.appverid: met150
ms.date: 1/31/2023
---

# Prioritize and manage Automated Investigations and Response (AIR)

Automated Investigation and Response (AIR) saves your security operations team time and effort.

- When alerts are triggered, automated investigation will determine the scope of impact of a threat in your organization and provide recommended remediation actions.
- Security teams can save time by leveraging AIR automation to reduce the need for manual hunting.
- These investigations can identify emails that haven't been cleaned-up by Zero-hour Auto Purge (ZAP) or other remediation.
- AIR investigations also identify mailbox configurations that may be risky or indicate a compromised mailbox.

Investigation actions (and investigations) are accessible from several points in the Microsoft Security portal: via *Incidents*, via *Alerts*, or via *Action Center*. Which admins use is based on the workflow an admin is pursuing.

## Why use the Action Center workflow

As automated investigations on *Email & collaboration* content results in verdicts, such as *Malicious* or *Suspicious*, certain remediation actions are created. The remediation actions suggested aren't carried out automatically. SecOps must navigate to each investigation to *approve* those suggested actions. In the *Action Center* all the pending actions are aggregated for quick approval.

## What you'll need

- Microsoft Defender for Office 365 Plan 2 or higher (Included with E5)
- Sufficient permissions (Security reader, security operations, or security administrator, plus [Search and purge](../mdo-portal-permissions.md) role)

## Steps to analyze and approve AIR actions directly from the Action Center

1. Navigate to [Microsoft 365 Defender portal](https://security.microsoft.com/action-center) and sign in.
2. When the Action center loads, filter and prioritize by clicking columns to sort the actions, or press **Filters** to apply a filter such as *entity type* (for a particular URL) or action type (such as soft delete email).
3. A flyout will open once an action is clicked. It will appear on right-hand side of the screen for review.
4. For more information about why an action is requested, select **Open investigation page** in the flyout to learn more about the investigation or alerts linked to this action. (Admins can also approve actions seen on the investigation page by selecting the *Pending Actions* tab.)
5. Otherwise, select **Approve** to take the recommended action directly from the Action Center.
6. Reject the action, if you determine it's unnecessary.

## Check AIR history

1. Navigate to the [Microsoft 365 Defender portal](https://security.microsoft.com) and sign in.
2. In the left-hand navigation pane, expand **Action & submissions** then click **Action Center**.
3. When the Action Center loads press the **History** tab.
4. View the history of AIR, including decisions made, source of action, and admin who made the decision, if appropriate.

## More Information

[View the results of an automated investigation in Microsoft 365 - Office 365 | Microsoft Docs](../air-view-investigation-results.md)

[Learn about approving and rejecting pending actions from the Investigation page](../air-review-approve-pending-completed-actions.md)
