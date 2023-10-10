---
title: Get email notifications for response actions in Microsoft 365 Defender
description: Set up email notifications to get notified of manual and automated response actions in Microsoft 365 Defender.
keywords: email, notifications, automatic attack disruption, manual response, incident response, response actions, email notifications, response action notifications, Microsoft 365 Defender notifications
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

# Get email notifications for response actions in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

You can set up Microsoft 365 Defender to notify you through email about manual or automated response actions.

[Manual response actions](respond-first-incident-remediate.md#manual-remediation) are actions that security teams can use to stop threats or aid in investigation of attacks. These actions vary depending on the Defender workload enabled in your environment.

[Automated response actions](respond-first-incident-remediate.md#automatic-remediation), on the other hand, are capabilities in Microsoft 35 Defender that scale investigation and resolution to threats automatically. Automated remediation capabilities consist of [automatic attack disruption](automatic-attack-disruption.md) and [automated investigation and response](m365d-autoir.md).

> [!NOTE]
> You need the **Manage security settings** permission to configure email notification settings. If you've chosen to use basic permissions management, users with Security Administrator or Global Administrator roles can configure email notifications. Likewise, if your organization is using [role-based access control (RBAC)](manage-rbac.md), you can only create, edit, delete, and receive notifications based on device groups that you are allowed to manage.

## Create a rule for email notifications

> [!NOTE]
> Custom detections containing response actions are not supported in action email notifications currently.

To create a rule for email notifications, perform the following steps:

1. In the navigation pane of Microsoft 365 Defender, select **Settings > Microsoft 365 Defender**.  Under **General**, select **Email notifications**. Go to the **Actions** tab.
:::image type="content" source="../../media/m35d-response-actions-notifications/fig1-response-notifications.png" alt-text="Actions tab in the Microsoft 365 Defender Settings page" lightbox="../../media/m35d-response-actions-notifications/fig1-response-notifications.png":::
2. Select **Add notification rule**.
3. Add a rule name and description under Basics. Both Name and Description fields accept letters, numbers, and spaces only.
:::image type="content" source="../../media/m35d-response-actions-notifications/fig2-response-notifications.png" alt-text="Basics section of the add notification rule" lightbox="../../media/m35d-response-actions-notifications/fig2-response-notifications.png":::
4. Proceed to the next section by selecting Next located at the bottom of the pane.
5. You can choose what type of action, what status, and where the action will be sourced from in the **Notification settings** section.
:::image type="content" source="../../media/m35d-response-actions-notifications/fig3-response-notifications.png" alt-text="Notifications settings section of the add notification rule" lightbox="../../media/m35d-response-actions-notifications/fig3-response-notifications.png":::
6. Under **Action source**, select if you want to be notified for manual or automated response actions. You can select both options.
7. Select the specific response actions in the checklist that appears under **Action**. You can choose multiple actions available in the checklist. Note that response actions will vary depending on the Defender workload enabled in your environment. All actions selected appears in the Action field upon completion.
:::image type="content" source="../../media/m35d-response-actions-notifications/fig4-response-notifications.png" alt-text="Highlighting the Actions field in the Notification settings section of the add notification rule" lightbox="../../media/m35d-response-actions-notifications/fig4-response-notifications.png":::
8. You can choose to be notified based on the device groups where the response actions are applied in the **Device groups scope**. To be notified of response actions taken in all current and future device groups, selecting **All device** groups. To be notified of response actions taken in devices that belong to your selected device group, choose **Selected device groups**.
:::image type="content" source="../../media/m35d-response-actions-notifications/fig5-response-notifications.png" alt-text="Highlighting the Device groups scope in the Notification settings section of the add notification rule" lightbox="../../media/m35d-response-actions-notifications/fig5-response-notifications.png":::
9. Select if you want to be notified if an action is completed or failed in the **Action status** field. You can select all options available.
10. At the bottom of the pane, you can proceed to the next section by selecting **Next**. Alternately, you can go back to the Basics section by selecting Back.
11. In the **Recipients** section, you can add one or more email addresses that will receive notifications. Separate multiple addresses by adding a comma at the end of each address. Select **Add** to add the recipients. You can see the recipients at the bottom of the pane after successfully adding addresses.
:::image type="content" source="../../media/m35d-response-actions-notifications/fig6-response-notifications.png" alt-text="Adding multiple addresses in the Recipients section of the add notification rule" lightbox="../../media/m35d-response-actions-notifications/fig6-response-notifications.png":::
12. Test the notification by selecting **Send test email**. Select Next located on the bottom of the pane to proceed to the review section.
13. Check the rule's details in the **Review rule** section. You can edit the details by selecting **Edit** under each section's details.
:::image type="content" source="../../media/m35d-response-actions-notifications/fig7-response-notifications.png" alt-text="Highlighting the Edit option while in the Review rule section" lightbox="../../media/m35d-response-actions-notifications/fig7-response-notifications.png":::
14. Select **Submit** at the bottom of the pane to finish the rule creation. Recipients will start receiving notifications through email based on the settings. The new rule appears in the Notifications rule list under the Actions tab.
15. To edit or delete a notification rule, select the rule from the list. Select **Edit** to change the rule's details. Select **Delete** to remove the rule.
:::image type="content" source="../../media/m35d-response-actions-notifications/fig8-response-notifications.png" alt-text="Highlighting the Edit and Delete options while in the rule list view" lightbox="../../media/m35d-response-actions-notifications/fig8-response-notifications.png":::

Once you get the notification, you can go directly to the action and review or remediate the action.

## Next steps

- [Get email notifications on incidents](m365d-notifications-incidents.md)
- [Get email notifications about new reports in Threat analytics](m365d-threat-analytics-notifications.md)

## See also

- [Configure automatic attack disruption capabilities](configure-attack-disruption.md)
- [Configure automated investigation and response](m365d-configure-auto-investigation-response.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]