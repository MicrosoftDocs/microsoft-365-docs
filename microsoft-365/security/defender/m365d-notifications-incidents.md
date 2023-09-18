---
title: Get incident notifications by email in Microsoft 365 Defender
description: Set up email notifications to get notified of new incidents or updates to incidents in Microsoft 365 Defender.
keywords: email, notifications, incident response, incident response notifications, incident notifications, email notifications, Microsoft 365 Defender notifications
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 09/18/2023
---

# Get incident notifications by email in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

You can set up Microsoft 365 Defender to notify your staff with an email about new incidents or updates to existing incidents. You can choose to get notifications based on:

- Alert severity
- Alert sources 
- Device group

**Choose to receive email notifications only for specific service source**:
You can easily select specific service sources that you want to get email notifications for.
 
**Get more granularity with specific detection sources**:
You can get notifications only for a specific detection source. 

**Set the severity per detection or service source**:
You can choose to get email notifications only on specific severities per source. For example, you can get notified for Medium and High alerts for EDR and all severities for Microsoft Defender Experts.  

The email notification contains important details about the incident like the incident name, severity, and categories, among others. You can also go directly to the incident and start your analysis right away. For more information, see [Investigate incidents](investigate-incidents.md).

You can add or remove recipients in the email notifications. New recipients get notified about incidents after they're added.

> [!NOTE]
> You need the **Manage security settings** permission to configure email notification settings. If you've chosen to use basic permissions management, users with Security Administrator or Global Administrator roles can configure email notifications. <br> <br>
Likewise, if your organization is using role-based access control (RBAC), you can only create, edit, delete, and receive notifications based on device groups that you are allowed to manage.

## Create a rule for email notifications

Follow these steps to create a new rule and customize email notification settings.

1. Go to [Microsoft 365 Defender](https://security.microsoft.com) in the navigation pane, select **Settings > Microsoft 365 Defender > Incident email notifications**.
2. Select **Add item**.
3. On the **Basics** page, type the rule name and a description, and then select **Next**.
4. On the **Notification settings** page, configure:
    - **Alert severity** - Choose the alert severities that will trigger an incident notification. For example, if you only want to be informed about high-severity incidents, select **High**.
    - **Device group scope** - You can specify all device groups or select from the list of device groups in your tenant.
    - **Send only one notification per incident** - Select if you want one notification per incident.
    - **Include organization name in the email** - Select if you want your organization name to appear in the email notification.
    - **Include tenant-specific portal link** - Select if you want to add a link with the tenant ID in the email notification for access to a specific Microsoft 365 tenant.

    :::image type="content" source="../../media/get-incident-notifications/incidents-email-notification-settings.png" alt-text="Screenshot of the Notification settings page for incident email notifications in the Microsoft 365 Defender portal." lightbox="../../media/get-incident-notifications/incidents-email-notification-settings.png":::

5. Select **Next**. On the **Recipients** page, add the email addresses that will receive the incident notifications. Select **Add** after typing each new email address. To test notifications and ensure that the recipients receive them in the inboxes, select **Send test email**.
6. Select **Next**. On the **Review rule** page, review the settings of the rule, and then select **Create rule**. Recipients will start receiving incident notifications through email based on the settings.

To edit an existing rule, select it from the list of rules. On the pane with the rule name, select **Edit rule** and make your changes on the **Basics**, **Notification settings**, and **Recipients** pages.

To delete a rule, select it from the list of rules. On the pane with the rule name, select **Delete**.

Once you get the notification, you can go directly to the incident and start your investigation right away. For more information on investigating incidents, see [Investigate incidents in Microsoft 365 Defender](investigate-incidents.md).

## Next steps

- [Get email notifications on response actions](.m365d-response-actions-notifications.md)
- [Get email notifications about new reports in Threat analytics](.m365d-threat-analytics-notifications.md)

## See also

- [Investigate incidents in Microsoft 365 Defender](investigate-incidents.md)