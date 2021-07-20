---
title: Get incident notifications by email in Microsoft 365 Defender
description: Learn how to create rules to get email notifications for incidents in Microsoft 365 Defender
keywords: incident, email, email notfications, configure, users, mailbox, email, incidents, analyze, response
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Get incident notifications by email

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

You can set up Microsoft 365 Defender to notify your staff with an email about new incidents or updates to existing incidents. You can choose to get notifications based on:

- Incident severity.
- Device group.
- Only on the first update per incident.

The email notification contains important details about the incident like the incident name, severity, and categories, among others. You can also go directly to the incident and start your analysis right away. For more information, see [Investigate incidents](investigate-incidents.md).

You can add or remove recipients in the email notifications. New recipients get notified about incidents after they're added. 

>[!NOTE]
>You need the 'Manage security settings' permission to configure email notification settings. If you've chosen to use basic permissions management, users with Security Administrator or Global Administrator roles can configure email notifications for you. <br> <br>
Likewise, if your organization is using role-based access control (RBAC), you can only create, edit, delete, and receive notifications based on device groups that you are allowed to manage.

## Create a rule for email notifications

Follow these steps to create a new rule and customize email notification settings.

1. In the navigation pane, select **Settings > Microsoft 365 Defender > Incident email notifications**.
2. Select **Add item**.
3. On the **Basics** page, type the rule name and a description, and then select **Next**.
4. On the **Notification settings** page, configure:
    - **Alert severity** - Choose the alert severities that will trigger an incident notification. For example, if you only want to be informed about high-severity incidents, select **High**.
    - **Device group scope** - You can specify all device groups or select from the list of device groups in your tenant.
    - **Only notify on first occurrence per incident** - Select if you want a notification only on the first alert that matches your other selections. Later updates or alerts related to the incident won't send additional notifications.
    - **Include organization name in the email** - Select if you want your organization name to appear in the email notification.
    - **Include tenant-specific portal link** - Select if you want to add a link with the tenant ID in the email notification for access to a specific Microsoft 365 tenant.

    :::image type="content" source="../../media/get-incident-notifications/incidents-ss-email-notification-settings.png" alt-text="Notification settings for incident email notifications":::

5. Select **Next**. On the **Recipients** page, add the email addresses that will receive the incident notifications. Select **Add** after typing each new email address. To test notifications and ensure that the recipients receive them in the inboxes, select **Send test email**. 
6. Select **Next**. On the **Review rule** page, review the settings of the rule, and then select **Create rule**. Recipients will start receiving incident notifications through email based on the settings.

To edit an existing rule, select it from the list of rules. On the pane with the rule name, select **Edit rule** and make your changes on the **Basics**, **Notification settings**, and **Recipients** pages.

To delete a rule, select it from the list of rules. On the pane with the rule name, select **Delete**.

## See also
- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Investigate incidents](investigate-incidents.md)
