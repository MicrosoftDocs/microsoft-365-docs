---
title: Get incident notifications in Microsoft 365 Defender
description: Learn how to create rules to get email notifications for incidents in Microsoft 365 Defender
keywords: incident, email, email notfications, configure, users, mailbox, email, incidents
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Get incident notifications by email

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

You can set up Microsoft 365 Defender to notify you by email every time there are new incidents or new updates to existing incidents. 

You can choose to get notifications based on incident severity or by device group. You can also choose to get a notification only on the first update per incident.

You can add or remove other recipients in the email notifications. Newly added recipients get notified about incidents after they are added. 

The email notification contains important details about the incident like the incident name, severity, and categories, among others. You can also directly go to incidents to start your investigation right away. For more on investigating incidents, see [Investigate incidents in Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/investigate-incidents).

>[!NOTE]
>You need 'Manage security settings' permissions to configure email notification settings. If you've chosen to use basic permissions management, users with Security Administrator or Global Administrator roles can configure email notifications for you. <br> <br>
Likewise, if your organization is using role-based access control (RBAC), you can only create, edit, delete, and receive notifications based on device groups that you are allowed to manage.

## Create rules for incident notifications

To set up your first email notification for incidents, create a new rule and customize email notification settings.

1. In the navigation pane, select **Settings** > **Incident notifications**.
2. Select **Create rule**.
3. Give the rule a name in **Name rule**.
4. Next, go to **Notification settings** to specify the following:
    - **Alert severity** - Choose the alert severity that will trigger an inncident notification. For example, if you only want to be informed about High severity incidents, select High.
    - **Device group scope** 
    - **Only notify on first occurrence per incident**
    - **Include organization name**
    - **Include tenant-specific portal link**
5. Next, specify the recipients in **Recipients**.
6. Finally, select **Review rule** to check your new rule.

