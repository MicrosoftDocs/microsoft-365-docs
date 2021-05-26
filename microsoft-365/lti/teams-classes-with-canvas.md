---
title: Use Microsoft Teams classes with Canvas
ms.author: v-cichur
author: cichur
manager: serdars
ms.reviewer: amitman 
audience: admin
ms.topic: article
ms.service: o365-administration
f1.keywords:
- CSH
ms.collection: M365-modern-desktop
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
description: "Integrate Microsoft Teams classes with Canvas"
---


# Use Microsoft Teams classes with Canvas

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

For administrators.

1. Sign in to the Teams admin center.
2.	Select **Settings**, and then select the **Integrations** tab.
3.	Enter the **Tenant Name**, and then select **ON**.
4.	Select the **Grant Tenant Access** link. 

> [!NOTE] 
> This might have to be done by the Microsoft 365 admin at your school if you don't have sufficient access.

For teachers.

1.	In Canvas, select the **Course** > **Settings** > **Integrations** tab
2.	Select **ON**.
3.	Select **Sync Now**.

Notes
•	On Course syncs after Sync Now is selected there is a 10 minute window where it can not be re-selected
•	Course roster changes are queued automatically to be sent to Microsoft 10 minutes after
Limitations
•	Does not support syncing for multi-tenant, currently this only supports one Microsoft tenant per Canvas account
•	Does not support syncing course sections and groups
•	Does not support syncing for courses that have more than 20,000 enrollments
•	When matching on email, only supports matching on the user's primary Canvas email address
•	Does not support courses that have more than 100 Team Owners which is any role in Canvas other than students
