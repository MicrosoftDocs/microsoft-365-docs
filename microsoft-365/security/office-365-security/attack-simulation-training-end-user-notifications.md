---
title: End-user notifications for Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn how to create end-user notification email messages for Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
---

# End-user notifications for Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, end-user notifications are email messages that are sent to users as a result of [simulations](attack-simulation-training.md) or [simulation automations](attack-simulation-training-simulation-automations.md). The following types of end-user notifications are available:

- **Positive reinforcement notification**: Sent when users report a simulated phishing message.
- **Simulation notification**: Sent when users are included in a simulation or simulation automation, but no trainings are selected.
- **Training assignment notification**: Sent when users are assigned required trainings as a result of a simulation or simulation automations.
- **Training reminder notification**: Sent as reminders for required trainings.

To see the available end-user notifications, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulation content library** tab \> and then select **End user notifications**. To go directly to the **Simulation content library** tab where you can select **End user notifications**, use <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>.

**End user notifications** has two tabs:

- **Global notifications**: Contains the built-in, non-modifiable notifications.
- **Tenant notifications**: Contains the custom notifications that you've created.

The following information is shown for each notification:

- **Notifications**: The name of the notification.
- **Language**: If the notification contains multiple translations, the first two languages are shown directly. To see the remaining languages, hover over the numeric icon (for example, **+10**).
- **Type**: The value is **Positive reinforcement notification**, **Simulation notification**, **Training assignment notification**, or **Training reminder notification**.
- **Source**: For built-in notifications, the value is **Global**. For custom notifications, the value is **Tenant**.
- **Status**: The value is **Ready** or **Draft**. On the **Global notifications** tab, the value is always **Ready**.
- **Linked simulations**: The total number of [simulations](attack-simulation-training.md) or [simulation automations](attack-simulation-training-simulation-automations.md) that use the notification.
- **Created by**: For built-in notifications, the value is **Microsoft**. For custom notifications, the value is the UPN of the user who created the notification.
- **Created time**
- **Modified by**
- **Last modified time**

To find a notification in the list, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find the name of the notification.

To group the notifications by type, click ![Group icon.](../../media/m365-cc-sc-group-icon.png) **Group** and then select **Notification type**. To ungroup the notifications, select **None**.

On the **Tenant notifications** tab only, click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) to filter the notifications by one or more languages.

To remove one or more columns that are displayed, click ![Customize columns icon.](../../media/m365-cc-sc-customize-icon.png) **Customize columns**.

When you select a notification from the list, a details flyout appears with the following information:

- **Preview** tab: View the notification message as users will see it. To view the message in different languages, use the **Select language** box.
- **Details** tab: View details about the notification:
  - **Notification description**
  - **Source**: For built-in notifications, the value is **Global**. For custom notifications, the value is **Tenant**.
  - **Notification type**
  - **Modified by**
  - **Last modified**
  - **Simulations**
    - **Simulation names**
    - **Simulation status**
    - **End by**

On the details flyout from the **Tenant notifications** tab only, click **Edit notification** to modify the notification.

## Create end-user notifications

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulation content library** tab \> and then select **End user notifications**. To go directly to the **Simulation content library** tab where you can select **End user notifications**, use <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>.

2. On the **Tenant notifications** tab, click ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** to start the end user notification wizard.

   > [!NOTE]
   > At any point during the creation wizard, you can click **Save and close** to save your progress and continue configuring the notification later. You can pick up where you left off by selecting the notification on the **Tenant notifications** tab in **End user notifications**, and then clicking ![Edit automation icon.](../../media/m365-cc-sc-edit-icon.png) **Edit automation**. The partially-completed notification will have the **Status** value **Draft**.

3. On the **Define details** page**, configure the following settings:
   - **Select notification type**: Select one of the following values:
     - **Positive reinforcement notification**
     - **Simulation notification**
     - **Training assignment notification**
     - **Training reminder notification**
   - **Name**: Enter a unique name.
   - **Description**: Enter an optional description.

   When you're finished, click **Next**.

4. On the **Define content** page, the only setting that's available is the **Add content in business language** button. When you click it, an **Add content in default language** flyout appears that contains the following settings:
   - **From display name**
   - **From email address**
   - **Select the language of the email**: Select a language from the list.
   - **Mark this as the default language**: Because this is the first and only language for the notification, this value is selected and you can't change it.
   - **Subject**: The default value is **Thanks for reporting phish**, but you can change it.
   - **Import email**: You can optionally click this button and then click **Choose file** to import an existing plain text message file.
   - Email content area: Two tabs are available:
     - **Text** tab: A rich text editor is available to create your notification email. In addition to the typical font and formatting settings, the following settings are available:
       - **Dynamic tag**: Select from the following tags:
         - **Insert first name**
         - **Insert last name**
         - **Insert UPN**
         - **Insert email address**
         - **Insert payload**
     - **Code** tab: You can view and modify the HTML code directly.

   You can preview the results by clicking the **Preview email** button at the top of the page.

   When you're finished, click **Save**.

   You're taken back to the **Define content** page where the notification that you just created is summarized with the following information:

   - **Language**
   - **Subject**
   - **Category**
   - **Actions**: The following icons are available:
     - ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**
     - ![View icon.](../../media/m365-cc-sc-view-icon.png) **View**
     - ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**: If there's only language version of the notification, you can't delete it.

   To add a version of the notification in a different language, click ![Add translation icon.](../../media/m365-cc-sc-create-icon.png). In the **Add translation** flyout that appears, the same settings are available as in the **Add content in default language** flyout that was previously described. The only difference is you can select **Mark this as the default language** in additional translations.

   When you're finished, click **Save**

   You can repeat this steps as many times as necessary to create translated versions of the notification in the 12 supported languages.

   When you're finished, click **Next**

5. On the **Review notification** page, you can review the details of your notification.

   You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Submit**.

   On the **New simulation notification created** page, you can use the links to create a new notification, launch a simulation, or view all notifications.

   When you're finished, click **Done**.

Back on the **Tenant notifications** tab in **End user notifications**, the notification that you created is now list.

## Modify end-user notifications

You can't modify built-in notifications on the **Global notifications** tab. You can only modify custom notifications on the **Tenant notifications** tab.

To modify an existing custom notification on the **Tenant notifications** tab, do one of the following steps:

- Select the notification from the list by clicking the check box. Click the ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** icon that appears.
- Click **⋮** (**Actions**) between the **Notifications** and **Language** values of the notification in the list, and then select ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**.
- Select the notification from the list by clicking anywhere in the row except the check box. In the details flyout that opens, click **Edit notification**.

The end-user notification wizard opens with the settings and values of the selected notification. The steps are the same as described in the [Create end-user notifications](#create-end-user-notifications) section.

## Copy end-user notifications

To copy an existing notification on the **Tenant notifications** or **Global notifications** tabs, do one of the following steps:

- Select the notification from the list by clicking the check box, and then click the ![Create a copy icon.](../../media/m365-cc-sc-edit-icon.png) **Create a copy** icon that appears.
- Click **⋮** (**Actions**) between the **Notifications** and **Language** values of the notification in the list, and then select ![Create a copy icon.](../../media/m365-cc-sc-edit-icon.png) **Create a copy**.

When you copy a custom notification on the **Tenant notifications** tab, a copy of the notification named "\<OriginalName\> - Copy" is available in the list.

When you copy a built-in notification on the **Global notifications** tab, a **Create copy** dialog appears. The dialog confirms that a copy of the notification has been created, and is available on the **Tenant notifications** tab. If you click **Go to Tenant notification** you're taken to the **Tenant notifications** tab, where the copied built-in notification is named "\<OriginalName\> - Copy" is available in the list. If you click **Stay here** in the dialog, you return to the **Global notifications** tab.

After the copy is created, you can modify it as [previously described](#modify-end-user-notifications).

> [!NOTE]
> The **Use from default** control on the **Add content in default language** flyout in the notification wizard allows you to copy the contents of a built-in notification.

## Remove notifications

You can't remove built-in notifications from the **Global notifications** tab. You can only remove custom notifications on the **Tenant notifications** tab.

To remove an existing custom notification from the **Tenant notifications** tab, do one of the following steps:

- Select the notification from the list by clicking the check box, and then click the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon that appears.
- Click **⋮** (**Actions**) between the **Notifications** and **Language** values of the notification in the list, and then select ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

## Related links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training.md)

[Simulation automations for Attack simulation training](attack-simulation-training-simulation-automations.md)
