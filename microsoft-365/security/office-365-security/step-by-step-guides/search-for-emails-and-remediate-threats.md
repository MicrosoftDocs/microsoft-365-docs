---
title: Search for emails and remediate threats using Threat Explorer in Microsoft 365 Defender
description: The steps to do manual remediation in Threat Explorer in Microsoft 365 Defender, including how to get the best performance and scenarios that call for remediation.
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

# Steps to use manual email remediation in Threat Explorer

Email remediation is an already existing feature that helps admins act on emails that are threats.

## What you'll need

- Microsoft Defender for Office 365 Plan 2 (Included in E5 plans)
- Sufficient permissions (be sure to grant the account [Search and Purge](https://sip.security.microsoft.com/securitypermissions) role)

## Create and track the remediation

1. **Select a threat to remediate** in [Threat Explorer](https://security.microsoft.com/threatexplorer) and select the **Message Actions** button, which will offer you options such as *Soft Delete* or *Hard Delete*.
1. The side pane will open and ask for details like a name for the remediation, severity, and description. Once the information is reviewed, press **Submit**.
1. As soon as the admin approves this action, they will see the Approval ID and a link to the Microsoft 365 Defender Action Center [here](https://security.microsoft.com/action-center/history). This page is where **actions can be tracked**.
    1. **Admin action alert** - A system alert shows up in the alert queue with the name 'Administrative action submitted by an Administrator'. This indicates that an admin took the action of remediating an entity. It gives details such as the name of the admin who took the action, and the investigation link and time. This makes admins aware of each important action, like remediation, taken on entities.
    1. **Admin action investigation** - Since the analysis on entities was already done by the admin and that's what led to the action taken, no additional analysis is done by the system. It shows details such as related alert, entity selected for remediation, action taken, remediation status, entity count, and approver of the action. This allows admins to keep track of the investigation and actions carried out *manually*--an admin action investigation.
1. **Action logs in unified action center** - History and action logs for email actions like soft delete and move to deleted items folder, are *all available in a centralized view* under the unified **Action Center** > **History tab**.
1. **Filters in unified action center** - There are multiple filters such as remediation name, approval ID, Investigation ID, status, action source, and action type. These are useful for finding and tracking email actions in unified Action center.

> [!IMPORTANT]
> For better performance, remediation should be done in batches of *50,000 or fewer*. Narrow down the search result by using *latest delivery location* and trigger email remediation if the email is in remediable folder like Inbox, Junk, Deleted, for example.

## Scenarios that call for email remediation

Here are scenarios of email remediation:

1. As part of an investigation SecOps identifies a threat in an end-user's mailbox and wants to clear out the problem email(s).
1. When suggested email actions in Automated Investigation and Response (AIR) are approved by SecOps, remediation action triggers automatically for the given email or email cluster.

Two manual email remediation scenarios:

1. The main scenario:
    1. Manual actions taken on emails (for example, using Threat Explorer or Advanced Hunting) are only visible in the legacy Defender for Office 365 Action Center (Email and Collaboration > Review > Action Center in Action center - Microsoft 365 security).
1. Two-step approval scenario:
    1. Manual actions pending approval using the two-step approval process (1. The email was added to remediation by one analyst, 2. The email was reviewed and approved by another analyst).

Given the common scenarios, email remediation can be triggered in three different ways.

1. **Query based remediation**: By selecting all the search results with a query (200,000 emails can be submitted at a maximum).
1. **Handpicked remediation**: Selecting emails one-by-one by clicking on the check box (100 emails can be submitted at one time).
1. **Query based remediation with exclusions**: Selecting all emails, and then manually removing a few messages (the query can hold a maximum of 1,000 emails and the maximum number of exclusions is 100).

## Next Steps

1. Go to the [Microsoft 365 Defender portal](https://security.microsoft.com) and sign in.
1. In the navigation pane, select **Action center**.
1. Go to the **History** tab, click on any waiting approval list. It opens up a side pane.
1. Track the action status in the unified action center.

## More information

[Learn more about email remediation](../../office-365-security/air-review-approve-pending-completed-actions.md)
