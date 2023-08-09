---
title: Training campaigns in Attack simulation training
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
description: Admins can learn how to create training campaigns in Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Training campaigns in Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, Training campaigns are a faster, more direct way to provide security training to users. Instead of creating and launching [simulated phishing attacks](attack-simulation-training-simulations.md) that eventually lead to training, you can create and assign Training campaigns directly to users.

A Training campaign contains one or more built-in Training modules that you select. Currently, there are over 70 Training modules to select from. For more information about Training modules, see [Training modules for Training campaigns in Attack simulation training](attack-simulation-training-training-modules.md).

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To see the existing Training campaigns, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Training** tab. To go directly to the **Training** tab, use <https://security.microsoft.com/attacksimulator?viewid=trainingcampaign>.

The **Training** tab lists the Training campaigns that you've created. The list includes the following information for each Training campaign<sup>\*</sup>:

- **Campaign name**
- **Description**
- **Total duration (mins)**
- **Training completion** (date/time)
- **Training completion**: The number of users who were included in the Training campaign and how many of them completed the training. The information is shown as a fraction (for example, **2/5**) and in a corresponding horizontal bar graph.
- **No. of training modules**: The number of training modules that are included in the Training campaign.
- **Created by**
- **Created time**
- **Status**: One of the following values:
  - **Completed**<sup>\*\*</sup>
  - **In progress**<sup>\*\*</sup>
  - **Draft**<sup>\*\*</sup>
  - **Canceled**
  - **Deleted**
  - **Failed**<sup>\*\*</sup>
  - **Scheduled**<sup>\*\*</sup>

  For more information about the **Status** values, see the [Set the training threshold](#set-the-training-threshold) section later in this article.

Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

<sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Remove columns from the view.
- Zoom out in your web browser.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png"::: **Filter** to filter the information on the page by the **Status** value of the Training campaign.

<sup>\*\*</sup> The total count of Training campaigns with these **Status** values is also shown at the top of the page. But if you filter the information (for example, exclude on of these **Status** values), the count at the top of the page is **0** for that excluded **Status** value.

To find a Training campaign in the list, type part of the campaign name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png"::: **Search** box and then press the ENTER key.

To see details about a Training campaign, see the [View Training campaign details](#view-training-campaign-details) section.

## Create Training campaigns

To create a Training campaign, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Training** tab. Or, to go directly to the **Training** tab, use <https://security.microsoft.com/attacksimulator?viewid=trainingcampaign>.

2. On the **Training** tab, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png"::: **Create new** to start the new Training campaign wizard.

   The following sections describe the steps and configuration options to create a Training campaign.

   > [!NOTE]
   > At any point after you name the Training campaign during the new Training campaign wizard, you can select **Save and close** to save your progress and continue later. The incomplete Training campaign has the **Status** value **Draft**. You can pick up where you left off by selecting the Training campaign and then clicking the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.

### Name and describe the Training campaign

On the **Name campaign** page, configure the following settings:

- **Name**: Enter a unique name for the Training campaign.
- **Description**: Enter an optional description.

When you're finished on the **Name Training campaign** page, select **Next**.

### Target users

On the **Target users** page, select who receives the Training campaign. Use the following options to select users:

- **Include all users in my organization**: The unmodifiable list of users is show in groups of 10. You can use the **Next** and **Previous** buttons directly below the list of users to scroll through the list. You can also use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** icon on the page to find specific users.

  > [!TIP]
  > Although you can't remove users from the list on this page, you can use the next **Exclude users** page to exclude specific users.

- **Include only specific users and groups**: At first, no users or groups are shown on the **Targeted users** page. To add users or groups to the Training campaign, choose one of the following options:

  - **Search for users or groups**: If you click in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and do one of the following actions, the **Filter users by categories** options on the **Add users** flyout are replaced by a **User list** section:
    - Type three or more characters and then press the ENTER key. Any users or group names that contain those characters are shown in the **User list** section by **Name** and **Email**.
    - Type fewer than three characters or no characters and then press the ENTER key. No users are shown in the **User list** section, but you can type three or more characters in the **Search** box to search for users and groups.

    The number of results appears in the **Selected (0/x) users** label.

    > [!NOTE]
    > Only Microsoft 365 groups are eligible to be selected.
    >
    > Clicking the **Add filters** button clears and replaces any results the **User list** section with the **Filter users by categories**.

    When you have a list of users or groups in the **User list** section, select some or all of the results by selecting the round check box next to the **Name** column. The number of selected results appears in the **Selected (y/x) users** label.

    Select the **Add x users** button to add the selected users or groups on the **Target users** page and to return to the **Target users** page.

  - **Filter users by categories**: Use the following options:

    - **Suggested user groups**: Select from the following values:
      - **All suggested user groups**
      - **Users not targeted by a simulation in the last three months**
      - **Repeat offenders**: For more information, see [Configure the repeat offender threshold](attack-simulation-training-settings.md#configure-the-repeat-offender-threshold).

    - **User tags**: User tags are identifiers for specific groups of users (for example, Priority accounts). For more information, see [User tags in Microsoft Defender for Office 365](user-tags-about.md). Use the following options:
      - **Search**: In :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search by user tags**, you can type part of the user tag and then press Enter. You can select some or all of the results.
      - Select **All user tags**
      - Select existing user tags. If the link is available, select **See all user tags** to see the complete list of available tags.

    - **City**: Use the following options:
      - **Search**: In :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search by City**, you can type part of the City value and then press Enter. You can select some or all of the results.
      - Select **All City**
      - Select existing City values. If the link is available, select **See all Cities** to see the complete list of available City values.

    - **Country**: Use the following options:
      - **Search**: In :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search by Country**, you can type part of the Country value and then press Enter. You can select some or all of the results.
      - Select **All Country**
      - Select existing City values. If the link is available, select **See all Countries** to see the complete list of available Country values.

    - **Department**: Use the following options:
      - **Search**: In :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search by Department**, you can type part the Department value and then press Enter. You can select some or all of the results.
      - Select **All Department**
      - Select existing Department values. If the link is available, select **See all Departments** to see the complete list of available Department values.

    - **Title**: Use the following options:
      - **Search**: In :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search by Title**, you can type part of the Title value and then press Enter. You can select some or all of the results.
      - Select **All Title**
      - Select existing Title values. If the link is available, select **See all Titles** to see the complete list of available Title values.

    :::image type="content" source="../../media/attack-sim-training-simulations-target-users-filter-by-category.png" alt-text="The User filtering on the Target users page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-target-users-filter-by-category.png":::

    You can use some or all of the search categories to find users and groups. If you select multiple categories, the AND operator is used. Any users or groups must match both values to be returned in the results (which is virtually impossible if you use the value **All** in multiple categories).

    The number of values that were used as the search criteria by a specific category is shown next to the category tile (for example, **City 50** or **Priority accounts 10**).

    When you're finished searching by category, select the **Apply(x)** button. The previous **Filter users by categories** options on the **Add users** flyout are replaced by the following information:

    - **Filters** section: Show how many filter values you used and the names of the filter values. If it's available, select the **See all** link to see all filter values
    - **User list** section: Shows the users or groups that match your category searches. The number of results appears in the **Selected (0/x) users** label.

    When you have a list of users or groups in the **User list** section, select some or all of the results by selecting the round check box next to the **Name** column. The number of selected results appears in the **Selected (y/x) users** label.

    Select the **Add x users** button to add the selected users or groups on the **Target users** page and to return to the **Target users** page.

  - :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Import**: In the dialog that opens, specify a CSV file that contains one email address per line.

    After you find a select the CSV file, the users are imported and shown on the **Targeted users** page.

  On the main **Target users** page, you can use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find selected users. You can also select :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Delete** and then **Confirm** in the confirmation dialog to remove specific users.

  To add more users and groups, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add users** or :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Import** on the **Target users** page and repeat the previous steps.

When you're finished on the **Target users** page, select **Next**.

### Exclude users

On the **Exclude users** page, you can exclude some of the previously selected users from the Training campaign by selecting **Exclude some of the target users from this simulation**.

The selection options are identical to the previous step when you select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png"::: **Add users to exclude** or :::image type="icon" source="../../media/m365-cc-sc-import-icon.png"::: **Import**.

When you're finished on the **Exclude users** page, select **Next**.

### Select training modules

On the **Select training modules** page, select one of the following options:

- **Training catalog**: Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png"::: **Add trainings**.

  In the **Add Training** flyout that opens, select one or more Training modules to include in the Training campaign by selecting the round check box that appears in the blank area next to the module name, and then clicking **Add**.

  The modules that are available in the **Add Training** flyout are identical to the modules that are available at **Training modules** on the **Content library** tab at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>. For more information, see [Training modules for Training campaigns in Attack simulation training](attack-simulation-training-training-modules.md).

  After you've selected one or more Training modules, the following information is shown for each entry on the **Select courses** page:

  - **Training name**
  - **Source**
  - **Duration (mins)**
  - **Delete**: Use the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png"::: **Delete** icon to remove the entry from the list. Select **Confirm** in the confirmation dialog**.

- **Redirect to a custom URL**: Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png"::: **Add trainings**.

  In the **Custom training URL** flyout that opens, the following options are available:

  - **Custom training URL** (required)
  - **Custom training name** (required)
  - **Custom training description**
  - **Custom training duration (in minutes)** (required): The default value is 0, which means there's no specified duration for the training.

  When you're finished on the **Custom training URL** flyout, select **Add**. Information about the custom URL is visible on the **Select courses** page.

When you're finished on the **Select courses** page, select **Next**.

### Select end user notifications

On the **Select end user notification** page, select from the following notification options:

- **Microsoft default notification (recommended)**: The notifications that users will receive are shown on the page:
  - **Microsoft default training only campaign-training assignment notification**
  - **Microsoft default training only campaign-training reminder notification**

  Select the default language to use in **Select default language**. The available values are: **Chinese (Simplified)**, **Chinese (Traditional)**, **English**, **French**, **German**, **Italian**, **Japanese**, **Korean**, **Portuguese**, **Romanian**, **Russian**, **Spanish**, or **Dutch**.

  For each notification, the following information is available:

  - **Notifications**: The name of the notification.
  - **Language**: If the notification contains multiple translations, the first two languages are shown directly. To see the remaining languages, hover over the numeric icon (for example, **+10**).
  - **Type**: One of the following values:
    - **Training assignment notification**
    - **Training reminder notification**
  - **Delivery preferences**: You need to configure the following delivery preferences before you can continue:
    - For **Microsoft default training only campaign-training reminder notification**, select **Twice a week** or **Weekly**.
  - **Actions**: If you select :::image type="icon" source="../../media/m365-cc-sc-view-icon.png" border="false"::: **View**, a **Review notification** page opens with the following information:
    - **Preview** tab: View the notification message as users see it. To view the message in different languages, use the **Select notification language** box.
    - **Details** tab: View details about the notification:
      - **Notification description**
      - **Source**: For built-in notifications, the value is **Global**. For custom notifications, the value is **Tenant**.
      - **Notification type**: One of the following types based on the notification you originally selected:
        - **Training assignment notification**
        - **Training reminder notification**
      - **Modified by**
      - **Last modified**

    When you're finished on the **Review notification** page, select **Close** to return to the **Select end user notification** page.

- **Customized end user notifications**: No other configuration options are available on the page. When you select **Next**, you need to select a **Training assignment notification** and a **Training reminder notification** to use for the Training campaign as described in the next two subsections.

When you're finished on the **Select end user notification** page, select **Next**.

#### Select a training assignment notification

> [!NOTE]
> This page is available only if you selected **Customized end user notifications** on the [Select end user notifications](#select-end-user-notifications) page.

The **Training assignment notification** page shows the following notifications and their configured languages:

- **Microsoft default training assignment notification**
- **Microsoft default training only campaign-training assignment notification**
- Any custom training assignment notifications that you previously created.

These notifications are also available on the **End user notifications** page on the **Content library** tab:

- Built-in training assignment notifications are available on the **Global notifications** tab at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary&source=global>.
- Custom training assignment notifications are available on the **Tenant notifications** tab at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary&source=tenant>.

For more information, see [End-user notifications for Attack simulation training](attack-simulation-training-end-user-notifications.md).

Do one of the following steps:

- **Select an existing notification to use**:
  - To search for an existing notification in the list, type part of the notification name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.
  - When you select a notification by clicking  anywhere in the row other than the check box, a details flyout opens that shows more information about the notification:
    - The **Preview** tab shows what the notification looks like to users.
    - The **Details** tab shows the properties of the notification.

    When you're finished in the notification details flyout, select **Close**.

  On the **Training assignment notification** page, select a notification to use by selecting the check box next to the name.

- **Create a new notification to use**: Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new**. The creation steps are identical to [Create end-user notifications](attack-simulation-training-end-user-notifications.md#create-end-user-notifications).

  > [!NOTE]
  > On the **Define details** page of the new notification wizard, be sure to select the value **Training assignment notification** for the notification type.

  When you're finished creating the notification, you return to the **Training assignment notification** page where the new notification now appears in the list for you to select

When you're finished on the **Training assignment notification** page, select **Next**.

#### Select a training reminder notification

> [!NOTE]
> This page is available only if you selected **Customized end user notifications** on the [Select end user notifications](#select-end-user-notifications) page.

The **Training reminder notification** page shows the following notifications and their configured languages:

- **Microsoft default training reminder notification**
- **Microsoft default training only campaign-training reminder notification**
- Any custom training reminder notifications that you previously created.

These notifications are also available at **Attack simulation training** \> **Content library** tab \> **End user notifications**:

- Built-in training reminder notifications are available on the **Global notifications** tab at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary&source=global>.
- Custom training reminder notifications are available on the **Tenant notifications** tab at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary&source=tenant>.

For more information, see [End-user notifications for Attack simulation training](attack-simulation-training-end-user-notifications.md).

In **Set frequency for reminder notification**, select **Weekly** or **Twice a week**, and then do one of the following steps:

- **Select an existing notification to use**:
  - To search for an existing notification in the list, type part of the notification name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.
  - When you select a notification by clicking  anywhere in the row other than the check box, a details flyout opens that shows more information about the notification:
    - The **Preview** tab shows what the notification looks like to users.
    - The **Details** tab shows the properties of the notification.

    When you're finished in the notification details flyout, select **Close**.

  On the **Training reminder notification** page, select a notification to use by selecting the check box next to the name.

- **Create a new notification to use**: Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new**. The creation steps are identical to [Create end-user notifications](attack-simulation-training-end-user-notifications.md#create-end-user-notifications).

  > [!NOTE]
  > On the **Define details** page of the new notification wizard, be sure to select the value **Training reminder notification** for the notification type.

  When you're finished creating the notification, you return to the **Training reminder notification** page where the new notification now appears in the list for you to select.

When you're finished on the **Training reminder notification** page, select **Next**.

### Schedule the Training campaign

On the **Schedule** page, you choose when to start and end the Training campaign by choosing one of the following values:

- **Launch this Training campaign as soon as I'm done**

  If you select **Send training with an end date** (it's selected by default), you need to configure the end date/time in **Set the campaign end date** and **Set hours**, **Set minutes**, and **Set time format**.

- **Schedule this Training campaign to be launched later**: Enter the Training campaign start date/time in **Set the campaign launch date** and **Set hours**, **Set minutes**, and **Set time format**.

  If you select **Send training with an end date** (it's selected by default), you need to configure the end date/time in **Set the campaign end date** and **Set hours**, **Set minutes**, and **Set time format**.

> [!NOTE]
> If you clear the **Send training with an end date** check box, no reminder notifications will be send to the targeted users outside of the initial training assignment notice.

When you're finished on the **Schedule** page, select **Next**.

## Review Training campaign details

On the **Review** page, you can review the details of the Training campaign.

Select the :::image type="icon" source="../../media/m365-cc-sc-send-icon.png" border="false"::: **Send a test** button to send a copy of the Training campaign to yourself (the currently signed in user) for inspection.

You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard to modify the settings.

When you're finished on the **Review** page, select **Submit**.

Back on the **Training campaign** tab, the Training campaign that you created is now listed. The **Status** value depends on your previous selection in the [Schedule the Training campaign](#schedule-the-training-campaign) step:

- **In progress** if you selected **Launch this Training campaign as soon as I'm done**.
- **Scheduled** if you selected **Schedule this Training campaign to be launched later**.

## Take action on Training campaigns

All actions on existing Training campaigns start on the **Training** tab. To get there, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Training** tab. Or, to go directly to the **Training** tab, use <https://security.microsoft.com/attacksimulator?viewid=trainingcampaign>.

### View Training campaign details

To view the details and reports for a Training campaign on the **Training** tab, select the Training campaign by clicking anywhere in the row other than the check box next to the name.

A details page for the Training campaign opens with the following tabs:

- **Report**
- **Users**
- **Details**

These tabs are described in the following sections.

#### Report tab

The **Report** tab of the Training campaign shows the following information:

- **Training completion classification** section.

- **Training completion summary** section:
  - Each Training module in the Training campaign is shown with a bar graph and a fraction that shows how many people have completed the module (number of users / total number of users).
  - From the previous data, the top of the section shows:
    - The percentage of users who completed all modules in the campaign.
    - The percentage of users who completed some of the modules in the campaign.
    - The percentage of users who haven't started any of the modules in the campaign.

- **All user activity** section:
  - **Successfully received training notification**: A bar graph and a fraction that shows how main people received notifications for the modules in the campaign.

#### Users tab

The **Users** tab shows the following information about the users who were assigned the Training campaign:

- **Name**
- **Training status**: One of the following values:
  - **Not started**: The user hasn't started any Training modules in the campaign.
  - **In progress**: The user has completed some Training modules in the campaign.
  - **Completed**: The user has completed all Training modules in the campaign.
  - **Overdue**: The user hasn't completed all Training modules by the campaign end date/time.
- **Training completion date**
- **Username**

To remove the **Training status** column, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png"::: **Customize columns**. By default, the only available column that's not shown is **Department**.

To download the displayed results to a RecordExport.csv file in the local Downloads folder, select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png"::: **Export**.

If you select a user from the list by clicking anywhere in the row other than the round check box that appears in the blank area next to the name, the following user information appears in a details flyout:

- **User details** section:
  - **Company**
  - **IP address**
  - **Job title**
  - **Department**
  - **Location**
  - **Manager**
- Status information for Training modules in the Training campaign for the user:
  - **Training name**: The training module name.
  - **Training status**: **Not started**, **In progress**, **Completed**, **Training Previously Assigned**, **Overdue**, or **Not Completed**.
  - **Training start date**
  - **Training completed date**

> [!TIP]
> To see details about other users in the Training campaign without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous item** and **Next item** at the top of the flyout.

#### Details tab

The **Details** tab of the Training campaign shows the following information:

- **Description**
- **Schedule details**: The launch date/time and the end date/time.
- **Notifications**: Whether training assignment notifications and training reminder notifications are enabled, and their delivery frequency.
- **Selected modules**: The Training modules in the Training campaign are listed, along with their durations.

### Cancel Training campaigns

You can cancel Training campaigns with the **Status** value **In progress** or **Scheduled**.

To cancel an existing Training campaign on the **Training tab**, select the Training campaign by selecting the check box next to the name, select the :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: **Cancel** action that appears, and then select **Confirm** in the confirmation dialog.

After you cancel the Training campaign, the **Status** value changes to **Canceled**.

### Remove Training campaigns

You can't remove Training campaigns with the **Status** value **In progress** or **Scheduled**.

To remove an existing Training campaign from the **Training** tab, select the Training campaign by selecting the check box next to the name, select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears, and then select **Confirm** in the confirmation dialog.

After you remove the Training campaign, it's no longer listed on the **Training** tab. 

## Set the training threshold

The _training threshold_ prevents users from having the same trainings assigned to them during a specific interval in days. The default value is 90 days.

During the time interval, the same training module won't be reassigned to users who meet either of the following criteria:

- They completed the training module during the training threshold.
- They haven't completed the training module, but the module was assigned to them during the training threshold.

The training threshold starts when a training module is assigned to a user.

We recommend that the training threshold is greater than the number of days that a user has to complete a training module.

In the training campaign user report, the **Status** value shows the effect of the training threshold on users and their assigned trainings modules:

- **Completed**: The user completed the training module.
- **In Progress**: The user started the training module.
- **Not Started**: The user hasn't started the training module.
- **Training Previously Assigned**: The training module was assigned to the user during the training threshold, but the user hasn't completed the training yet. The user can still complete the training module, at which point the **Status** value changes to **Completed**.
- **Overdue**: The user hasn't completed the training module before the assigned due date and the same training module hasn't been reassigned to the user during the training threshold.
- **Not Completed**: The user hasn't completed the training module within the assigned due date and/or outside the training threshold. This status makes the user eligible to have the same training module reassigned to them.

You set the training threshold on the **Settings** tab on the **Attack simulation training** page. For more information about the **Settings** tab, see [Global settings in Attack simulation training](attack-simulation-training-settings.md).

To set the training threshold on the **Settings** tab, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Settings** tab. Or, to go directly to the **Settings** tab, use <https://security.microsoft.com/attacksimulator?viewid=setting>.

2. Set the value in days for the training threshold time period. The default value is 90 days. To remove the training threshold and always assign training, set value to 0.

3. When you're finished on the **Settings** tab, select **Save**.
