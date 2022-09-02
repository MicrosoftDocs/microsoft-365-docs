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
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn how to create and manage login pages for simulated phishing attacks in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
---

# Login pages in Attack simulation training

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, login pages are displayed to users in simulations that use the **Credential harvest** and **Link in attachment** [social engineering techniques](attack-simulation-training.md#select-a-social-engineering-technique).

To see the available login pages, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulation content library** tab \> and then select **Login pages**. To go directly to the **Simulation content library** tab where you can select **Login pages**, use <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>.

**Login pages** has two tabs:

- **Global login pages**: Contains the built-in, non-modifiable login pages. There are four built-in login pages localized into 12+ languages:
  - **GitHub login page**
  - **LinkedIn login page**
  - **Microsoft login page**
  - **Non-branded login page**

- **Tenant login pages**: Contains the custom login pages that you've created.

The following information is shown for each login page:

- **Name**
- **Language**
- **Source**: For built-in login pages, the value is **Global**. For custom login pages, the value is **Tenant**.
- **Status**: **Ready** or **Draft**.
- **Created by**: For built-in login pages, the value is **Microsoft**. For custom login pages, the value is the UPN of the user who created the login page.
- **Last modified**

To find a login page in the list, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find the name of the login page.

Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the login pages by **Language** or **Status**.

To remove one or more columns that are displayed, click ![Customize columns icon.](../../media/m365-cc-sc-customize-icon.png) **Customize columns**.

When you select a login page from the list, a details flyout appears with the following information:

- ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** is available only in custom login pages on the **Tenant login pages** tab.
- ![Mark as default icon.](../../media/m365-cc-sc-set-as-default-icon.png) **Mark as default** to make this login page the default selection in **Credential harvest** or **Link in attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md). If the login page is already the default, ![Mark as default icon.](../../media/m365-cc-sc-set-as-default-icon.png) **Mark as default** isn't available.
- **Preview** tab: View the login page as users will see it. **Page 1** and **Page 2** links are available at the bottom of the page for two-page login pages.
- **Details** tab: View details about the login page:
  - **Description**
  - **Status**: **Ready** or **Draft**.
  - **Login page source**: For built-in login pages, the value is **Global**. For custom login pages, the value is **Tenant**.
  - **Modified by**
  - **Language**
  - **Last modified**

## Create login pages

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulation content library** tab \> and then select **Login pages**. To go directly to the **Simulation content library** tab where you can select **Login pages**, use <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>.
You can create custom login pages in the following locations:

   Click ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** to start the create end user login page wizard.

   > [!NOTE]
   > ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** is also available during the payload selection step of creating a simulation or simulation automation. For more information, see [Create a simulation: Select a payload and login page](attack-simulation-training.md#select-a-payload-and-login-page) and [Create a simulation automation: Select a payload and login page](attack-simulation-training-simulation-automations.md#select-a-payload-and-login-page).
   >
   > At any point during the creation wizard, you can click **Save and close** to save your progress and continue configuring the login page later. You can pick up where you left off by selecting the login page on the **Tenant login pages** tab in **Login pages**, and then clicking ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**. The partially-completed login page will have the **Status** value **Draft**.

2. On the **Define details for login page** page, configure the following settings:
   - **Name**: Enter a unique name.
   - **Description**: Enter an optional description.

   When you're finished, click **Next**.

3. On the **Configure login page** page, configure the following settings:

   - **Select a language**: The available values are: **Chinese (Simplified)**, **Chinese (Traditional)**, **English**, **French**, **German**, **Italian**, **Japanese**, **Korean**, **Portuguese**, **Russian**, **Spanish**, and **Dutch**.

   - **Make this the default login page**: If you select this option, the login page will be the default selection in **Credential harvest** or **Link in attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md).

   - **Create a two-page login**: If you don't select this option, the login page is one page. If you select this option, **Page 1** and **Page 2** tabs appear for you to configure separately.

     - On the **Text** tab, a rich text editor is available for you to create your login page.

       - Use the **Dynamic tag** control to customize the login page by inserting the available tags:
         - **Insert user name**: The value that's added in the message body is `${userName}`.
         - **Insert email**: The value that's added in the message body is `${emailAddress}`.
         - **Insert date**: The value that's added in the message body is `${date|MM/dd/yyyy|offset}`.

       - Use the **Use from default** control to select a built-in login page to start with as a template.

       - The **Add Next button** control is available only on **Page 1** of two-page logins. The default text on the button is **Next** but you can change it.

       - The **Add compromise button** control in available on one-page logins or on **Page 2** of two-page logins. The default text on the button is **Submit**, but you can change it.

     - On the **Code** tab, you can view and modify the HTML code directly. Formatting and other controls like **Dynamic tag** and **Use from default** or **Add compromise button** aren't available.

   - Use the **Preview login page** button at the top of the page to review the login page.

   When you're finished, click **Next**.

4. On the **Review login page** page, you can review the details of your login page.

   You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Submit**.

5. On the **New login page \<Name\> created** page, you can use the links to create a new login page, launch a simulation, or view all login pages.

   When you're finished, click **Done**.

Back on the **Tenant login pages** tab in **Login pages**, the login page that you created is now list.

## Modify login pages

You can't modify built-in login pages on the **Global login pages** tab. You can only modify custom login pages on the **Tenant login pages** tab.

To modify an existing custom login page on the **Tenant login pages** tab, do one of the following steps:

- Select the login page from the list by clicking the check box. Click the ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** icon that appears.
- Click **⋮** (**Actions**) between the **Name** and **Language** values of the login page in the list, and then select ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**.
- Select the login page from the list by clicking the name. In the details flyout that opens, click ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit**.

The login page wizard opens with the settings and values of the selected login page. The steps are the same as described in the [Create login pages](#create-login-pages) section.

## Copy login pages

To copy an existing login page on the **Tenant login pages** or **Global login pages** tabs, do one of the following steps:

- Select the login page from the list by clicking the check box, and then click the ![Create a copy icon.](../../media/m365-cc-sc-edit-icon.png) **Create a copy** icon that appears.
- Click **⋮** (**Actions**) between the **Name** and **Language** values of the login page in the list, and then select ![Create a copy icon.](../../media/m365-cc-sc-edit-icon.png) **Create a copy**.

The login page wizard opens with the settings and values of the selected login page. The steps are the same as described in the [Create login pages](#create-login-pages) section.

> [!NOTE]
> When you copy a built-in login page on the **Global login pages** tab, be sure to change the **Name** value. This step ensures the copy is saved as a custom login page on the **Tenant login pages** tab.
>
> The **Use from default** control on the **Configure login page** page in the login page wizard allows you to copy the contents of a built-in login page.

## Remove login pages

You can't remove built-in login pages from the **Global login pages** tab. You can only remove custom login pages on the **Tenant login pages** tab.

To remove an existing custom login page from the **Tenant login pages** tab, do one of the following steps:

- Select the login page from the list by clicking the check box, and then click the ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** icon that appears.
- Click **⋮** (**Actions**) between the **Name** and **Language** values of the login page in the list, and then select ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

## Make a login page the default

The default login page is the default selection that's used in **Credential harvest** or **Link in attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md).

To make a login page the default on the **Tenant login pages** or **Global login pages** tabs, do one of the following steps:

- Select the login page from the list by clicking the check box. Click the ![Mark as default icon.](../../media/m365-cc-sc-set-as-default-icon.png) **Mark as default** icon that appears.
- Click **⋮** (**Actions**) between the **Name** and **Language** values of the login page in the list, and then select ![Mark as default icon.](../../media/m365-cc-sc-set-as-default-icon.png) **Mark as default**.
- Select the login page from the list by clicking the name. In the details flyout that opens, click ![Mark as default icon.](../../media/m365-cc-sc-set-as-default-icon.png) **Mark as default**.
- Select **Make this the default login page** on the **Configure login page** page in the wizard when you [create or modify a login page](#create-login-pages).

> [!NOTE]
> The previous procedures are not available if the login page is already the default.
>
> The default login page is also marked in the list, although you might need to widen the **Name** column to see it:
>
> ![The default login page marked in the list of login pages in Attack simulation training.](../../media/attack-sim-training-login-pages-default.png)

## Related links

[Get started using Attack simulation training](attack-simulation-training-get-started.md)

[Create a phishing attack simulation](attack-simulation-training.md)

[Simulation automations for Attack simulation training](attack-simulation-training-simulation-automations.md)
