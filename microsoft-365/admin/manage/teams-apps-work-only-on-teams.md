---
title: "Teams apps that only work on Teams"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 09/18/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid: MET150
ROBOTS: NOINDEX, NOFOLLOW
description: "How to block and unblock apps Teams apps that only work on Teams through controls in the Integrated Apps portal."
---

# Teams apps that only work on Teams

In addition to the controls available to you in the Integrated Apps portal, admins can also block or unblock Teams apps that only work on Teams. Such apps have a manifest version less than 1.13. These apps can be identified by the availability status **Some or all users in the organization can install** in the **Available Apps** list. At this time, only blocking and unblocking of such an app is supported via the Integrated Apps portal.

## Before you begin

- These apps only show up on the Available Apps list based on your settings in Teams admin center. Verify if your settings in the Teams admin center are for 3P apps.
    - If access to 3P apps on Teams admin center is turned on, admins can start seeing these apps on the **Integrated apps portal** in **Available apps** and **Blocked apps** lists based on their setting in Teams admin center.
    - If access to 3P apps on Teams admin center is turned off, no such apps are visible on the Integrated apps portal.
- These apps always have the availability status of **Some or all users in the organization can install**. These apps always have only Teams as the host product. To know more about which users can access this app on Teams, visit the Teams admin center.

## How to block a Teams app on Teams

1. Sign into Microsoft 365 admin center as a global administrator.
2. Select **Settings**, and then select **Integrated Apps**.
3. Select the **Available Apps** list.
4. Select an app with the status **Some or all users in the organization can install** from the **Available Apps** list to open the overview pane. These apps will always have only Teams listed as host product.
5. Select **Block app**.
6. Consent to blocking the app by selecting **Yes, I'm sure I want to block this app**.
7. Select **Block**. You can now see this app in the **Blocked Apps** list.
When the admin blocks such an app, it's blocked for all users in the organization on the Teams client.

## How to unblock a Teams app on Teams?

1. Sign into Microsoft 365 admin center as a global administrator.
2. Select **Settings**, and then select **Integrated Apps**.
3. Select the **Blocked Apps** list.
4. Select an app from the **Blocked Apps** list to open the overview pane.
5. Select **Unblock app**.
6. Read the availability and deployment status that the app will revert to after unblocking. These statutes are the last saved ones of the app before it was blocked.
7. Select **Unblock**. You can now see this app in the **Available Apps** list and/or the **Deployed Apps** list based on the last saved setting.

When the admin unblocks such an app, it's reverted to the last saved setting as set by the admin in Teams admin center. Visit Teams admin center to know the latest status of the app on Teams.

> [!NOTE]
> Teams apps with availability status as **Some or all users in the organization can install** can only be blocked on unblocked on Integrated Apps for the Teams client. For any other management actions on these apps or to view how these apps show up on Teams to users in your organization, please visit the Teams admin center.

