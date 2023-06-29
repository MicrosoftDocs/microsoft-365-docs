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
  - m365-security
  - tier2
description: Admins can learn how to create end-user notification email messages for Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# End-user notifications for Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, end-user notifications are email messages that are sent to users as a result of [simulations](attack-simulation-training-simulations.md) or [simulation automations](attack-simulation-training-simulation-automations.md). The following types of end-user notifications are available:

- **Positive reinforcement notification**: Sent when users report a simulated phishing message.
- **Simulation notification**: Sent when users are included in a simulation or simulation automation, but no trainings are selected.
- **Training assignment notification**: Sent when users are assigned required trainings as a result of a simulation or simulation automations.
- **Training reminder notification**: Sent as reminders for required trainings.

To see the available end-user notifications, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **End user notifications**. To go directly to the **Content library** tab where you can select **End user notifications**, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

**End user notifications** in the **Content library** tab has two tabs:

- **Global notifications**: Contains the built-in, nonmodifiable notifications.
- **Tenant notifications**: Contains the custom notifications that you've created.

The following information is shown for each notification<sup>\*</sup>:

- **Notifications**: The name of the notification.
- **⋮** (**Actions** control): Take action on the notification. The available actions depend on the **Status** value of the notification as described in the procedure sections.
- **Language**: If the notification contains multiple translations, the first two languages are shown directly. To see the remaining languages, hover over the numeric icon (for example, **+10**).
- **Type**: The value is **Positive reinforcement notification**, **Simulation notification**, **Training assignment notification**, or **Training reminder notification**.
- **Source**: For built-in notifications, the value is **Global**. For custom notifications, the value is **Tenant**.
- **Status**: The value is **Ready** or **Draft**. On the **Global notifications** tab, the value is always **Ready**.
- **Linked simulations**: The total number of [simulations](attack-simulation-training-simulations.md) or [simulation automations](attack-simulation-training-simulation-automations.md) that use the notification.
- **Created by**: For built-in notifications, the value is **Microsoft**. For custom notifications, the value is the UPN of the user who created the notification.
- **Created time**
- **Modified by**
- **Last modified time**

Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

> [!TIP]
> The **⋮** (**Actions** control) is associated with the **Notifications** column. If you remove that column from view, the **⋮** control goes away.

<sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Remove columns from the view.
- Zoom out in your web browser.

To find a notification in the list, type part of the notification name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

To group the notifications by type, select :::image type="icon" source="../../media/m365-cc-sc-group-icon.png" border="false"::: **Group** and then select **Notification type**. To ungroup the notifications, select **None**.

On the **Tenant notifications** tab only, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: to filter the notifications by one or more languages.

When you select a notification from the list, a details flyout appears with the following information:

- **Preview** tab: View the notification message as users will see it. To view the message in different languages, use the **Select notification language** dropdown list.
- **Details** tab: View details about the notification:
  - **Notification description**
  - **Source**: For built-in notifications, the value is **Global**. For custom notifications, the value is **Tenant**.
  - **Notification type**
  - **Modified by**
  - **Last modified**
  - **Active training campaigns and phishing simulations**
    - **Simulation names**
    - **Simulation status**
    - **End by**

On the details flyout from the **Tenant notifications** tab only, select **Edit notification** to modify the notification.

## Create end-user notifications

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> **End user notifications** \> and then select the **Tenant notifications** tab. To go directly to the **Content library** tab where you can select **End user notifications**, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

2. On the **Tenant notifications** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new** to start the new end-user notification wizard.

   > [!NOTE]
   > At any point after you name the notification during the new end-user notification wizard, you can select **Save and close** to save your progress and continue later. The incomplete notification has the **Status** value **Draft**. You can pick up where you left off by selecting the end-user notification from the list and then clicking the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
   >
   > You can also create end-user notifications during the creation of simulations and simulation automations. For more information, see [Create a simulation: Select end user notifications](attack-simulation-training-simulations.md#select-end-user-notifications) and [Create a simulation automation: Select end user notifications](attack-simulation-training-simulation-automations.md#select-end-user-notifications).

3. On the **Define details** page**, configure the following settings:
   - **Select notification type**: Select one of the following values:
     - **Positive reinforcement notification**
     - **Simulation notification**
     - **Training assignment notification**
     - **Training reminder notification**
   - **Name**: Enter a unique name.
   - **Description**: Enter an optional description.

   When you're finished n the **Define details** page, select **Next**.

4. On the **Define content** page, the only setting that's available is the **Add content in business language** button. When you select it, an **Add content in default language** flyout opens that contains the following settings:
   - **From display name**: Enter the display name of the sender.
   - **From email address**: Enter the email address of the sender.
   - **Select the language of the email**: Select a language from the list.
   - **Mark this as the default language**: Because this is the first and only language for the notification, this language value is selected as the default, and you can't change it.
   - **Subject**: The default that's used depends on the notification type that you selected in the previous step, but you can change it:
     - Positive reinforcement: **Thank you for reporting a phish!**
     - Simulation: **Thank you for participating in a phishing campaign!**
     - Training assignment: **Training assignment notification**
     - Training reminder: **Training reminder notification**

   - **Import email**: You can optionally select this button and then select **Choose file** to import an existing plain text message file.

   - Email content area: Two tabs are available:
     - **Text** tab: A rich text editor is available to create the notification. To see the typical font and formatting settings, toggle **Formatting controls** to :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **On**.

       The following controls are also available on the **Text** tab:

       - **Dynamic tag**: Select from the following tags:

          |Tag name|Tag value|
          |---|---|
          |**Insert User name**|`${userName}`|
          |**Insert First name**|`${firstName}`|
          |**Insert Last name**|`${lastName}`|
          |**Insert UPN**|`${upn}`|
          |**Insert Email**|`${emailAddress}`|
          |**Insert Department**|`${department}`|
          |**Insert Manager**|`${manager}`|
          |**Insert Mobile phone**|`${mobilePhone}`|
          |**Insert City**|`${city}`|
          |**Insert Date**|`${date|MM/dd/yyyy|offset}`|
          |**Insert training count**|`${trainingCount}`|
          |**Insert training due date**|`${trainingDueDate}`|
          |**Insert training duration**|`${trainingDuration}`|
          |**Insert training details**|`${trainingDetails}`|

       - **Use from default**: Select an available template to start with. You can modify the text and layout in the editing area. To reset the notification back to the default text and layout of the template, select **Reset to default**.

     - **Code** tab: You can view and modify the HTML code directly.

   You can preview the results by clicking the **Preview email** button at the top of the page.

   When you're finished in new end-user notification wizard, select **Save**.

   Back on the **Define content** page, the notification is listed on the page. In the **Action** column, you can select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** or :::image type="icon" source="../../media/m365-cc-sc-eye-icon.png" border="false"::: **Preview** to edit or view the notification.

   Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add translation** to create up to 11 more translations of the notification in other languages (12 translations total).

   Other than the flyout title changing to **Add translation**, the same options are available as the **Add content in default language** flyout in the first notification you created. Now the **Mark this as default language** check box is available to select. Only one translation of the notification can be the default language.

   When two or more translations of the notification are listed on the **Define content** page, the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** icon is available in the **Actions** column to delete any notification translations that aren't designated as the default language.

   When you're finished on the **Define content** page, select **Next**.

5. On the **Review notification** page, you can review the details of your notification.

   You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review notification** page, select **Submit**.

6. On the **New training assignment notification created** page, you can use the links to create a new notification, launch a simulation, or view all notifications.

   When you're finished on the **New training assignment notification created** page, select **Done**.

7. Back on the **Tenant notifications** tab in **End user notifications**, the notification that you created is now listed.

## Modify end-user notifications

You can't modify built-in notifications on the **Global notifications** tab. You can only modify custom notifications on the **Tenant notifications** tab.

To modify an existing custom notification on the **Tenant notifications** tab, do one of the following steps:

- Select the notification from the list by clicking the check box next to the name. Select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
- Select **⋮** (**Actions**) next to the **Notifications** value, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.
- Select the notification from the list by clicking anywhere in the row other than the check box. In the details flyout that opens, select **Edit notification** at the bottom of the flyout.

The end-user notification wizard opens with the settings and values of the selected notification. The steps are the same as described in the [Create end-user notifications](#create-end-user-notifications) section.

## Copy end-user notifications

To copy an existing notification on the **Tenant notifications** or **Global notifications** tabs, do one of the following steps:

- Select the notification from the list by clicking the check box, and then select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Create a copy** action that appears.
- Select **⋮** (**Actions**) next to the **Notifications** value, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Create a copy**.

When you copy a custom notification on the **Tenant notifications** tab, a copy of the notification named "\<OriginalName\> - Copy" is added to the list.

When you copy a built-in notification on the **Global notifications** tab, a **Create copy** dialog appears. The dialog confirms that a copy of the notification has been created, and is available on the **Tenant notifications** tab. If you select **Go to Tenant notification** you're taken to the **Tenant notifications** tab, where the copied built-in notification is named "\<OriginalName\> - Copy" is available. If you select **Stay here** in the dialog, you return to the **Global notifications** tab.

After the copy is created, you can modify it as [previously described](#modify-end-user-notifications).

> [!TIP]
> When you're creating or editing a notification, the **Use from default** control on the **Text** tab of the **Add content in default language** step in the end-user notification wizard also allows you to copy the contents of a built-in notification.

## Remove end-user notifications

You can't remove built-in notifications from the **Global notifications** tab. You can only remove custom notifications on the **Tenant notifications** tab. When you delete a notification, all translations of the notification are deleted.

To remove an existing custom notification from the **Tenant notifications** tab, do one of the following steps:

- Select the notification from the list by clicking the check box next to the name, and then select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.
- Select **⋮** (**Actions**) next to the **Notifications** value, and then select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete**.

In the confirmation dialog that opens, select **Delete**.

## Related links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training-simulations.md)

[Simulation automations for Attack simulation training](attack-simulation-training-simulation-automations.md)
