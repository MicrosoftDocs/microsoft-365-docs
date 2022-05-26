---
title: Custom login pages in Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.prod: m365-security
ms.localizationpriority: medium
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn how to create login pages for simulated phishing attacks in Microsoft Defender for Office 365 Plan 2.
ms.technology: mdo
---

# Create custom login pages in Attack simulation training

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, login pages are displayed to users in the payload of simulations that use the **Credential harvest** and **Link in attachment** [social engineering techniques](attack-simulation-training.md#select-a-social-engineering-technique).

Attack simulation training comes with 4 built-in login pages for you to use in [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md) that use **Credential harvest** or **Link in attachment**:

- Microsoft
- LinkedIn
- GitHub
- Non-branded

Built-in login pages are localized into 12 languages. You can't modify or remove built-in login pages, but you can use them as templates to create your own custom login pages. Or, you can create your own custom login pages from nothing.

To see the available login pages, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulation content library** tab \> and then select **Login pages**. To go directly to the **Simulation content library** tab where you can select **Login pages**, use <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>.

The following information is shown for each login page:

- **Name**
- **Language**
- **Description**
- **Source**: For built-in login pages, the value is **Global**. For custom login pages, the value is **Tenant**.
- **Status**: **Ready** or **Draft**.
- **\# of payloads used**: The number of [payloads](attack-simulation-training-payloads.md) where the login page is used.
- **Modified by**
- **Last modified**

To find a login page in the list, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find the name of the login page.

Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the login pages by the following properties:

- **Source**
- **Language**
- **Status**

To remove one or more columns that are displayed, click ![Customize columns icon.](../../media/m365-cc-sc-customize-icon.png) **Customize columns**.

If you click the vertical ellipsis ( **⋮** ) between the **Name** and **Language** values of a login page in the list, the following options are available:

- ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** to modify the login page.
- ![Create a copy icon.](../../media/m365-cc-sc-edit-icon.png) **Create a copy** to create a copy of the login page.
- ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) to delete the login page.
- ![Mark as default icon.](../../media/m365-cc-sc-set-as-default-icon.png) **Mark as default** to make this login page the default selection in **Credential harvest** or **Link in attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md).

When you select a login page from the list, a details flyout appears with the following information:

- ![Edit icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** to modify the login page.
- ![Mark as default icon.](../../media/m365-cc-sc-set-as-default-icon.png) **Mark as default** to make this login page the default selection in **Credential harvest** or **Link in attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md).
- **Preview** tab: View the login page as users will see it.
- **Details** tab: View details about the login page:
  - **Description**
  - **Status**: **Ready** or **Draft**.
  - **Source**: For built-in login pages, the value is **Global**. For custom login pages, the value is **Tenant**.
  - **Modified by**
  - **Language**
  - **Last modified**
  - **\# of payloads**: The number of [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md) where the login page is used.

## Create login pages

You can create custom login pages in the following locations:

- In **Login pages** on the **Simulation content library** tab at <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>.
- During payload and payload automation creation. For more information, see the following topics:
  - [Create custom payloads for Attack simulation training in Defender for Office 365](attack-simulation-training-payloads.md)
  - [Payload automations for Attack simulation training](attack-simulation-training-payload-automations.md)

The steps to create are the same in any of those locations: Click ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** to start the create new login page wizard.

1. On the **Define details for login page** page, configure the following settings:
   - **Name**: Enter a unique name.
   - **Description**: Enter an optional description.

   When you're finished, click **Next**.

2. On the **Configure login page** page, configure the following settings:

   - **Select the language**

   - **Make this landing page as default**: If you select this option, the login page will be the default selection in **Credential harvest** or **Link in attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md).

   - **Login page** section:

     - On the **Text** tab, a rich text editor is available for you to create your login page.

       - Use the **Dynamic tag** control to customize the login page by inserting the available tags:
         - **Insert name**: The value that's added in the message body is `${userName}`.
         - **Insert email**: The value that's added in the message body is `${emailAddress}`.

       - Use the **Use from default** control to select a built-in login page to start with as a template.

       - Use the **Add compromise button** control to insert a button that users are supposed to click to enter their credentials (in other words, to compromise themselves). You can customize the text that's used on the button.

     - On the **Code** tab, you can view and modify the HTML code directly. Formatting and other controls like **Dynamic tag** and **Use from default** or **Add compromise button** aren't available.

   - Use the **Preview login page** button at the top of the page to review the login page.

   > [!NOTE]
   > Certain trademarks, logos, symbols, insignias and other source identifiers receive heightened protection under local, state and federal statutes and laws. Unauthorized use of such indicators can subject the users to penalties, including criminal fines. Though not an extensive list, this includes the Presidential, Vice Presidential, and Congressional seals, the CIA, the FBI, Social Security, Medicare and Medicaid, the United States Internal Revenue Service, and the Olympics. Beyond these categories of trademarks, use and modification of any third-party trademark carries an inherent amount of risk. Using your own trademarks and logos on a login page would be less risky, particularly where your organization permits the use. If you have any further questions about what is or is not appropriate to use when creating or configuring a login page , you should consult with your legal advisors.

   When you're finished, click **Next**.

3. On the **Review login page** page, you can review the details of your login page.

   You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

   When you're finished, click **Next**.

   On the **New login page created** page, you can use the links to create a new login page, launch a simulation, or view all login pages.

   When you're finished, click **Close**.

## Edit login pages

## Create copies of login pages

You can create a copy of any existing login page.

## Remove login pages

You can't remove built-in login pages where the **Source** value is **Global**. You can only remove custom landing pages that you've created where the **Source** value is **Tenant**.

## Make a login page the default

The default login page has the word **Default** next to it in the **Name** column in the list of available landing pages.

The default login page is the default selection in **Credential harvest** or **Link in attachment** [payloads](attack-simulation-training-payloads.md) or [payload automations](attack-simulation-training-payload-automations.md).

You can set a login page as the default in the following locations:

- In the list of login pages.
- In the details of a selected login page.
- During the creation or editing of a login page.

