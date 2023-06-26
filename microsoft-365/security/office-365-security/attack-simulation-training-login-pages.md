---
title: Login pages in Attack simulation training
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
description: Admins can learn how to create and manage login pages for simulated phishing attacks in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Login pages in Attack simulation training

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, login pages are shown to users in simulations that use **Credential Harvest** and **Link in Attachment** [social engineering techniques](attack-simulation-training-simulations.md#select-a-social-engineering-technique).

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To see the available login pages, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **Login pages**. To go directly to the **Content library** tab where you can select **Login pages**, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

**Login pages** in the **Content library** tab has two tabs:

- **Global login pages** tab: Contains the built-in, non-modifiable login pages. There are four built-in login pages localized into 12+ languages:
  - **GitHub login page**
  - **LinkedIn login page**
  - **Microsoft login page**
  - **Non-branded login page**

- **Tenant login pages** tab: Contains the custom login pages that you've created.

The following information is shown for each login page:

- **Name**
- **⋮** (**Actions** control): Take action on the login page. The available actions depend on the **Status** value of the login page as described in the procedure sections.
- **Language**
- **Source**: For built-in login pages, the value is **Global**. For custom login pages, the value is **Tenant**.
- **Status**: **Ready** or **Draft**.
- **Created by**: For built-in login pages, the value is **Microsoft**. For custom login pages, the value is the UPN of the user who created the login page.
- **Last modified**

Select a column header to sort by that column. To remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**.

To find a login page in the list, type part of the login page name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the login pages by **Language** or **Status**.

When you select a login page from the list by clicking anywhere in the row other than the check box next to the name, a details flyout appears with the following information:

- :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** is available only in custom login pages on the **Tenant login pages** tab.
- :::image type="icon" source="../../media/m365-cc-sc-set-as-default-icon.png" border="false"::: **Mark as default** to make this login page the default selection in **Credential Harvest** or **Link in Attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md). If the login page is already the default, :::image type="icon" source="../../media/m365-cc-sc-set-as-default-icon.png" border="false"::: **Mark as default** isn't available.
- **Preview** tab: View the login page as users will see it. **Page 1** and **Page 2** links are available at the bottom of the page for two-page login pages.
- **Details** tab: View details about the login page:
  - **Description**
  - **Status**: **Ready** or **Draft**.
  - **Login page source**: For built-in login pages, the value is **Global**. For custom login pages, the value is **Tenant**.
  - **Modified by**
  - **Language**
  - **Last modified**

## Create login pages

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Content library** tab \> and then select **Login pages**. To go directly to the **Content library** tab where you can select **Login pages**, use <https://security.microsoft.com/attacksimulator?viewid=contentlibrary>.

2. On the **Tenant login pages** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new** to start the new login page wizard.

   > [!NOTE]
   > At any point after you name the login page during the new login page wizard, you can select **Save and close** to save your progress and continue later. The incomplete login page has the **Status** value **Draft**. You can pick up where you left off by selecting the login page from the list and then clicking the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
   >
   > You can also create login pages during the creation of simulations or simulation automations. For more information, see [Create a simulation: Select a payload and login page](attack-simulation-training-simulations.md#select-a-payload-and-login-page) and [Create a simulation automation: Select payloads and login pages](attack-simulation-training-simulation-automations.md#select-payloads-and-login-pages).

3. On the **Define details for login page** page, configure the following settings:
   - **Name**: Enter a unique name.
   - **Description**: Enter an optional description.

   When you're finished on the **Define details for login page** page, select **Next**.

4. On the **Configure login page** page, configure the following settings:

   - **Select a language**: The available values are: **Chinese (Simplified)**, **Chinese (Traditional)**, **English**, **French**, **German**, **Italian**, **Japanese**, **Korean**, **Portuguese**, **Russian**, **Spanish**, and **Dutch**.

   - **Make this the default login page**: If you select this option, the login page is the default selection in **Credential Harvest** or **Link in Attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md).

   - **Create a two-page login**: If you don't select this option, the login page is one page. If you select this option, **Page 1** and **Page 2** tabs appear for you to configure separately.

   - Login page content area: Two tabs are available:
     - **Text** tab: A rich text editor is available to create the login page. To see the typical font and formatting settings, toggle **Formatting controls** to :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: **On**.

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

       - **Use from default**: Select an available template to start with. You can modify the text and layout in the editing area. To reset the login page back to the default text and layout of the template, select **Reset to default**.

       - **Add compromise button**: Available on one-page logins or on **Page 2** of two-page logins. Select this link to add the compromise button to the login page. The default text on the button is **Submit**, but you can change it.

       - **Add Next button**: Available only on **Page 1** of two-page logins. Select this link to add the 'Next' button to the login page. The default text on the button is **Next**, but you can change it.

     - **Code** tab: You can view and modify the HTML code directly.

   You can preview the results by clicking the **Preview email** button at the top of the page.

   When you're finished on the **Review login page** page, select **Next**.

5. On the **Review login page** page, you can review the details of your login page.

   You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   When you're finished on the **Review login page** page, select **Submit**.

6. On the **New login page \<Name\> created** page, you can use the links to create a new login page, launch a simulation, or view all login pages.

   When you're finished on the **New login page \<Name\> created** page, select **Done**.

7. Back on the **Tenant login pages** tab in **Login pages**, the login page that you created is now listed.

## Modify login pages

You can't modify built-in login pages on the **Global login pages** tab. You can only modify custom login pages on the **Tenant login pages** tab.

To modify an existing custom login page on the **Tenant login pages** tab, do one of the following steps:

- Select the login page from the list by clicking the check box next to the name. Select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit** action that appears.
- Select **⋮** (**Actions**) next to the **Name** value of the login page, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.
- Select the login page from the list by clicking anywhere in the row other than the check box next to the name. In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit**.

The login page wizard opens with the settings and values of the selected login page. The steps are the same as described in the [Create login pages](#create-login-pages) section.

## Copy login pages

To copy an existing login page on the **Tenant login pages** or **Global login pages** tabs, do one of the following steps:

- Select the login page from the list by clicking the check box next to the name, and then select the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Create a copy** action that appears.
- Select **⋮** (**Actions**) next to the **Name** value of the login page, and then select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Create a copy**.

The login page wizard opens with the settings and values of the selected login page. The steps are the same as described in the [Create login pages](#create-login-pages) section.

> [!NOTE]
> When you copy a built-in login page on the **Global login pages** tab, be sure to change the **Name** value. This step ensures the copy is saved as a custom login page on the **Tenant login pages** tab.
>
> The **Use from default** control on the **Configure login page** page in the login page wizard allows you to copy the contents of a built-in login page.
>
> When you're creating or editing a login page, the **Use from default** control on the **Text** tab of the **Configure login page** step in the login page wizard also allows you to copy the contents of a built-in notification.

## Remove login pages

You can't remove built-in login pages from the **Global login pages** tab. You can only remove custom login pages from the **Tenant login pages** tab.

To remove an existing custom login page from the **Tenant login pages** tab, do one of the following steps:

- Select the login page from the list by clicking the check box next to the name, and then select the :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** action that appears.
- Select **⋮** (**Actions**) next to the **Name** value of the login page, and then select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete**.

## Make a login page the default

The default login page is the default selection that's used in **Credential Harvest** or **Link in Attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md).

To make a login page the default on the **Tenant login pages** or **Global login pages** tabs, do one of the following steps:

- Select **⋮** (**Actions**) next to the **Name** value of the login page, and then select :::image type="icon" source="../../media/m365-cc-sc-set-as-default-icon.png" border="false"::: **Mark as default**.
- Select the login page from the list by clicking anywhere in the row other than the check box next to the name. In the details flyout that opens, select :::image type="icon" source="../../media/m365-cc-sc-set-as-default-icon.png" border="false"::: **Mark as default**.
- Select **Make this the default login page** on the **Configure login page** page in the wizard when you [create or modify a login page](#create-login-pages).

> [!NOTE]
> The previous procedures are not available if the login page is already the default.
>
> The default login page is also marked in the list, although you might need to widen the **Name** column to see it:
>
> :::image type="content" source="../../media/attack-sim-training-login-pages-default.png" alt-text="The default login page marked in the list of login pages in Attack simulation training." lightbox="../../media/attack-sim-training-login-pages-default.png":::

## Related links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training-simulations.md)

[Simulation automations for Attack simulation training](attack-simulation-training-simulation-automations.md)
