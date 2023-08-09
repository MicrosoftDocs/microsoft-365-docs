---
title: Landing pages in Attack simulation training
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
description: Admins can learn how to create and manage landing pages for simulated phishing attacks in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 6/22/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Landing pages in Attack simulation training

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, landing pages are the web pages that users are taken to if they open the payload in the simulation.

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To see the available landing pages, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **Phish landing pages**. To go directly to the **Content library** tab where you can select **Landing pages**, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

**Landing pages** in the **Content library** tab has two tabs:

- **Global landing pages** tab: Contains the built-in, nonmodifiable landing page templates named **Microsoft Landing Page Template 1** to **Microsoft Landing Page Template 5**. These built-in landing pages are localized into 12+ languages.
- **Tenant landing pages** tab: Contains the custom landing pages that you've created.

The following information is shown for each landing page<sup>\*</sup>:

- **Name**
- **⋮** (**Actions** control): Take action on the landing page. The available actions depend on the **Status** value of the landing page as described in the procedure sections.
- **Language**
- **Default language**
- **Status**: **Ready** or **Draft**.
- **Linked simulations**
- **Created by**: For built-in landing pages, the value is **Microsoft**. For custom landing pages, the value is the UPN of the user who created the landing page.
- **Created time**
- **Modified by**

Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

> [!TIP]
> The **⋮** (**Actions** control) is associated with the **Name** column. If you remove that column from view, the **⋮** control goes away.

<sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Remove columns from the view.
- Zoom out in your web browser.

To find a landing page in the list, type part of the landing page name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the landing pages by **Language** or **Status**.

When you select a landing page from the list by clicking anywhere in the row other than the check box next to the name, a details flyout appears with the following information:

- **Preview** tab: View the landing page as users see it. Use the **Select language** dropdown list to see the landing page in different languages.
- **Details** tab: View details about the landing page:
  - **Description**
  - **Status**: **Ready** or **Draft**.
  - **Landing page source**: For built-in landing pages, the value is **Global**. For custom landing pages, the value is **Tenant**.
  - **Modified by**
  - **Language**
  - **Last modified**
  - **Created by**
  - **Created time**
  - **Linked simulations**
  - **Default language**

In custom landing pages only, an **Edit landing page** link is available at the bottom of both tabs.

## Create landing pages

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **Phish landing pages**. To go directly to the **Content library** tab where you can select **Phish landing pages**, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

2. On the **Tenant landing pages** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new** to start the new landing page wizard.

   > [!NOTE]
   > At any point after you name the landing page during the new landing page wizard, you can select **Save and close** to save your progress and continue later. The incomplete landing page has the **Status** value **Draft**. You can pick up where you left off by selecting the landing page from the list and then clicking the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
   >
   > You can also create landing pages during the creation of simulations and simulation automations. For more information, see [Create a simulation: Select a landing page](attack-simulation-training-simulations.md#select-a-landing-page) and [Create a simulation automation: Select a landing page](attack-simulation-training-simulation-automations.md#select-a-landing-page).

3. On the **Define details for phish landing page** page, configured the following settings:
   - **Name**: Enter a unique, descriptive name for the landing page.
   - **Description**: Enter an optional description.

   When you're finished on the **Define details for phish landing page** page, select **Next**.

4. On the **Configure landing page** page, select **Define content in preferred language**. In the **Add content in default language** flyout that opens, configure the following settings:
   - **Select the language for the landing page**: Select one of the 29+ available languages.
   - **Mark this as default language**: For the first landing page you create, this setting is selected and unchangeable.
   - Landing page content: Two tabs are available:

     - **Text** tab: A rich text editor is available to create the landing page. To see the typical font and formatting settings, toggle **Formatting controls** to :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **On**.

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
          |**Insert sender name**|`${FromName}`|
          |**Insert sender email**|`${FromEmail}`|
          |**Insert Payload subject**|`${EmailSubject}`|
          |**Insert Payload content**|`${EmailContent}`|
          |**Insert Date**|`${date|MM/dd/yyyy|offset}`|

        - **Import from library**: Select an available template to start with. You can modify the text and layout in the editing area. To reset the landing page back to the default text and layout of the template, select **Reset to default**.

     - **Code** tab: You can view and modify the HTML code directly.

   You can preview the results by clicking the **Preview phish landing page** button at the top of the page.

   When you're finished on the **Add content in default language** flyout, select **Save**.

   Back on the **Configure landing page** page, the landing page you created is now listed. In the **Action** column, you can select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** or :::image type="icon" source="../../media/m365-cc-sc-eye-icon.png" border="false"::: **Preview** to edit or view the landing page.

   Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add translation** to create additional translations of the landing page in other languages.

   Other than the flyout title changing to **Add translation**, the same options are available as the **Add content in default language** flyout in the first landing page you created. Now the **Mark this as default language** check box is available to select. Only one translation of landing page can be the default language.

   When two or more translations of the landing page are listed on the **Configure landing page** page, the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** icon is available in the **Actions** column to delete any landing page translations that aren't designated as the default language.

   When you're finished on the **Configure landing page** page, select **Next**.

5. On the **Review landing page** page, you can review your selections. Select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review landing page** page, select **Submit**, and then select **Done** on the confirmation page.

6. Back on the **Tenant landing pages** tab of the **Select phish landing page**, select the landing page you created by selecting the check box next to the **Name**, and then select **Next**.

## Modify landing pages

You can't modify built-in landing pages on the **Global landing pages** tab. You can only modify custom landing pages on the **Tenant landing pages** tab.

To modify an existing custom landing page on the **Tenant landing pages** tab, do one of the following steps:

- Select the landing page from the list by clicking the check box next to the name. Select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
- Select **⋮** (**Actions**) next to the **Name** value of the landing page, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.
- Select the landing page from the list by clicking anywhere in the row other than the check box. In the details flyout that opens, select **Edit landing page** at the bottom of the flyout.

The landing page wizard opens with the settings and values of the selected landing page. The steps are the same as described in the [Create landing pages](#create-landing-pages) section.

## Copy landing pages

To copy an existing landing page on the **Tenant landing pages** or **Global landing pages** tabs, do one of the following steps:

- Select the landing page from the list by clicking the check box, and then select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Create a copy** action that appears.
- Select **⋮** (**Actions**) next to the **Name** value of the landing page, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Create a copy**.

When you copy a custom landing page on the **Tenant landing pages** tab, a copy of the landing page named "\<OriginalName\> - Copy" is added to the list.

When you copy a built-in landing page on the **Global landing pages** tab, a **Create copy** dialog appears. The dialog confirms that a copy of the landing page has been created, and is available on the **Tenant landing pages** tab. If you select **Go to Tenant landing page** you're taken to the **Tenant landing pages** tab, where the copied built-in landing page is named "\<OriginalName\> - Copy" is available. If you select **Stay here** in the dialog, you return to the **Global landing pages** tab.

After the copy is created, you can modify it as [previously described](#modify-landing-pages).

> [!TIP]
> When you're creating or editing a landing page, the **Use from default** control on the **Text** tab of the **Add content in default language** step in the landing page wizard also allows you to copy the contents of a built-in landing page.

## Remove landing pages

You can't remove built-in landing pages from the **Global landing pages** tab. You can only remove custom landing pages on the **Tenant landing pages** tab. When you delete a landing page, all translations of the landing page are deleted.

To remove an existing custom landing page from the **Tenant landing pages** tab, do one of the following steps:

- Select the landing page from the list by clicking the check box next to the name, and then select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.
- Select **⋮** (**Actions**) next to the **Name** value of the landing page, and then select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete**.

In the confirmation dialog that opens, select **Delete**.

## Related links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training-simulations.md)

[Simulation automations for Attack simulation training](attack-simulation-training-simulation-automations.md)
