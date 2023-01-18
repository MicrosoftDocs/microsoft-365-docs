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
  - m365initiative-defender-office365
description: Admins can learn how to create training campaigns in Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
---

# Training campaigns in Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft Defender for Office 365 Plan 2, Training campaigns are a faster, more direct way to provide security training to users. Instead of creating and launching [simulated phishing attacks](attack-simulation-training-simulations.md) that eventually lead to training, you create and assign Training campaigns directly to users.

A Training campaign contains one or more built-in Training modules that you select. Currently, there are over 70 Training modules to select from. For more information about Training modules, see [Training modules for Training campaigns in Attack simulation training](attack-simulation-training-training-modules.md).

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To see the existing Training campaigns, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Training** tab. To go directly to the **Training** tab, use <https://security.microsoft.com/attacksimulator?viewid=trainingcampaign>.

The **Training campaigns** tab lists the Training campaigns that you've created. The list includes the following information for each Training campaign:

- **Name**
- **Description**
- **Duration (mins)**
- **Date of completion**
- **Training completion**: The number of users who were included in the Training campaign and how many of them completed the training. The information is shown as a fraction (for example, **2/5**) and in a corresponding horizontal bar graph.
- **No. of training modules**: The number of training modules that are included in the Training campaign.
- **Created by**
- **Created time**
- **Status**: One of the following values:
  - **Completed**<sup>\*</sup>
  - **In progress**<sup>\*</sup>
  - **Draft**<sup>\*</sup>
  - **Cancelled**
  - **Deleted**
  - **Failed**<sup>\*</sup>
  - **Scheduled**<sup>\*</sup>
  - **⋮ (Actions)**:
    - ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**
    - [View report icon.](../../media/m365-cc-sc-eye-icon.png) **View report**

To find a Training campaign in the list, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find the name of the Training campaign.

Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the information on the page by the **Status** value of the Training campaign.

<sup>\*</sup> The total count of Training campaigns with these **Status** values is also shown at the top of the page. But if you filter the information (for example, exclude on of these **Status** values), the count at the top of the page will be **0** for that excluded **Status** value.

## Create Training campaigns

To create a Training campaign, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Training** tab.

   Or, to go directly to the **Training** tab, use <https://security.microsoft.com/attacksimulator?viewid=trainingcampaign>

2. On the **Training** tab, click ![Create new icon.](../../media/m365-cc-sc-filter-icon.png) **Create new**.

3. The new Training campaign wizard opens. On the **Name Training campaign** page, configure the following settings:
   - **Name**: Enter a unique name.
   - **Description**: Enter an optional description.

   When you're finished, click **Next**.

4. On the **Target users** page, select one of the following values:

   - **Include all users in my organization**

   - **Include only specific users and groups**: When this value is selected, use the following options to find and select the users or groups to include in the Training campaign:
     - ![Add users icon.](../../media/m365-cc-sc-filter-icon.png) **Add users**: In the **Add users** flyout that appears, use the following options to find an select users:
       - **Search for users or groups**: In the ![Enter user or group name icon.](../../media/m365-cc-sc-search-icon.png) **Search** box, enter three or more letter of the user or group name, and then press Enter. The results (if any) are shown in the **User list** section that appears.
         - To clear the text from the search box and the entries from the **User list** section but remain in user/group search mode, click ![Remove selection icon.](../../media/m365-cc-sc-search-icon.png) in the search box.
         - To clear any selections of entries in the **User list** section but preserve the text in the search box and the actual entries in the list, click **Clear all selections**.
         - When you're done selecting entries from the **User list** section, click **Add n user(s)**. You'll return to the **Target users** page where the selected users are shown in a list.

         Repeat this step as many times as required.

         To clear the search results and return to all filters on the **Add users** flyout without adding the selected entries to the **Target users** page, click **Add/Edit**.

       - **Filter users by categories**: Use the following categories to filter and select users and groups. Multiple selections within the same category use the OR operator (for example, **User tags** equals **Priority account** OR **User tags** equals **Hight risk profile**). Selections from different categories use the AND operator (for example, **City** equals Redmond AND **Department** equals IT):
         - **Suggested user groups**: Select one or both of the following values:
           - **Users not targeted by a simulation in the last three months**
           - **Repeat offenders**
         - **User tags**: Select one or more of the following values. You'll need to click **See all user tags** to see all values, and custom [user tags](user-tags-about.md) aren't available:
           - **Priority accounts**
           - **High risk profile**
           - **Medium risk profile**
           - **Low risk profile**
         - **City**, **Department**, or **Title** properties: In each section, the following options are available:
           - ![Search by icon.](../../media/m365-cc-sc-search-icon.png) **Search by**: Type the property value and select it from the list of results.
           - The first three values for each property are shown. To see all values for the specific property, click the **All \<property>** link. Select one or more values.
           - Select **All \<property\>** to select all values for the specific property.

         After you select values from one or more categories, click **Apply(n)**. The results (if any) are shown in the **User list** section that appears.

         - To clear any selections of entries in the **User list** section but preserve the actual entries in the list, click **Clear all selections**.
         - When you're done selecting entries, click **Add n user(s)**. You'll return to the **Target users** page where the selected users are shown in a list.

         Repeat this step as many times as required.

         To return to all filters on the **Add users** flyout without adding the selected entries to the **Target users** page, click **Add/Edit**.

     - ![Import icon.](../../media/m365-cc-sc-import-icon.png) **Import**: In the dialog that opens, find and select a .csv file.

   After you've selected users or groups, the following information is shown for each entry on the **Target users** page:

   - **Name**
   - **Email**
   - **Title**
   - **Type**: **User** or **Group**
   - **Delete**: Use the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon to remove the entry from the list. Click **Confirm** in the confirmation dialog**.

   Use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find users or groups in the list.

   When you're finished, click **Next**.

5. On the **Exclude users** page, you can elect to exclude some of the previously selected user from the Training campaign by selecting **Exclude som of the target users from this simulation**.

   The available selection option are exactly the same as the previous step when you select ![Add users to exclude icon.](../../media/m365-cc-sc-filter-icon.png) **Add users to exclude** or ![Import icon.](../../media/m365-cc-sc-import-icon.png) **Import**.

   When you're finished, click **Next**.

6. On the **Select courses** page, click ![Add trainings icon.](../../media/m365-cc-sc-filter-icon.png) **Add trainings**.

   In the **Add Training** flyout that appears, select one or more Training modules to include in the Training campaign by clicking the blank area next to the module name, and then clicking **Add**.

   What you see and what you can do in the **Add Training** flyout is basically identical to what's available at **Training modules** on the **Content library** tab at <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>. For more information, see [Training modules for Training campaigns in Attack simulation training](attack-simulation-training-training-modules.md).

   After you've selected the modules, the following information is shown on the **Select courses** page for each Training module:

   - **Training name**
   - **Source**
   - **Duration (mins)**
   - **Delete**: Use the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon to remove the entry from the list. Click **Confirm** in the confirmation dialog**.

7. X
