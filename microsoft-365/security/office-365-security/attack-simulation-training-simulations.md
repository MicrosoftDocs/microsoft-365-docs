---
title: Simulate a phishing attack with Attack simulation training
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
ms.custom:
description: Admins can learn how to simulate phishing attacks and train their users on phishing prevention using Attack simulation training in Microsoft Defender for Office 365 Plan 2.
ms.subservice: mdo
search.appverid: met150
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview" target="_blank">Microsoft Defender for Office 365 plan 2</a>
---

# Simulate a phishing attack with Attack simulation training

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, simulations are benign cyberattacks that you run in your organization. These simulations test your security policies and practices, as well as train your employees to increase their awareness and decrease their susceptibility to attacks. This article walks you through creating a simulated phishing attack using Attack simulation training.

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To launch a simulated phishing attack, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulations** tab. Or, to go directly to the **Simulations** tab, use <https://security.microsoft.com/attacksimulator?viewid=simulations>.

2. On the **Simulations** tab, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Launch a simulation** to start the new simulation wizard.

   :::image type="content" source="../../media/attack-sim-training-simulations-launch.png" alt-text="The Launch a simulation button on the Simulations tab in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-launch.png":::

   The following sections describe the steps and configuration options to create a simulation.

   > [!NOTE]
   > At any point after you name the simulation during the new simulation wizard, you can select **Save and close** to save your progress and continue later. The incomplete simulation has the **Status** value **Draft**. You can pick up where you left off by selecting the simulation and then clicking the :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Edit simulation** action that appears.

## Select a social engineering technique

On the **Select technique** page, select an available social engineering technique, which was curated from the [MITRE ATT&CK® framework](https://attack.mitre.org/techniques/enterprise/). Different payloads are available for different techniques. The following social engineering techniques are available:

- **Credential Harvest**: Attempts to collect credentials by taking users to a well-known looking website with input boxes to submit a username and password.
- **Malware Attachment**: Adds a malicious attachment to a message. When the user opens the attachment, arbitrary code is run that helps the attacker compromise the target's device.
- **Link in Attachment**: A type of credential harvest hybrid. An attacker inserts a URL into an email attachment. The URL within the attachment follows the same technique as credential harvest.
- **Link to Malware**: Runs some arbitrary code from a file hosted on a well-known file sharing service. The message sent to the user contains a link to this malicious file. Opening the file helps the attacker compromise the target's device.
- **Drive-by URL**: The malicious URL in the message takes the user to a familiar-looking website that silently runs and/or installs code on the user's device.
- **OAuth Consent Grant**: The malicious URL asks users to grant permissions to data for a malicious Azure Application.

If you select the **View details** link in the description, a details flyout opens that describes the technique and the simulation steps that result from the technique.

:::image type="content" source="../../media/attack-sim-training-simulations-select-technique-sim-steps.png" alt-text="The Details flyout for the credential harvest technique on the Select technique page" lightbox="../../media/attack-sim-training-simulations-select-technique-sim-steps.png":::

When you're finished on the **Select technique** page, select **Next**.

## Name and describe the simulation

On the **Name simulation** page, configure the following settings:

- **Name**: Enter a unique, descriptive name for the simulation.
- **Description**: Enter an optional detailed description for the simulation.

When you're finished on the **Name simulation** page, select **Next**.

## Select a payload and login page

On the **Select payload and login page** page, you need to select an existing payload or create a new payload.

For the **Credential Harvest** or **Link in Attachment** social engineering techniques, you can also view the login page that's used in the payload, select a different login page to use, or create a new login page to use.

### Select a payload

The following details are shown for each payload:

- **Payload name**
- **Source**: For built-in payloads, the value is **Global**. For custom payloads, the value is **Tenant**.
- **Language**: The language of the payload content. Microsoft's payload catalog (global) provides payloads in 29+ languages as described in :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**.
- **Click rate**: How many people have clicked on this payload.
- **Predicted compromise rate**: Historical data across Microsoft 365 that predicts the percentage of people who will be compromised by this payload (users compromised / total number of users who receive the payload). For more information, see [Predicted compromise rate](attack-simulation-training-get-started.md#predicted-compromise-rate).
- **Simulations launched** counts the number of times this payload was used in other simulations.

To find a payload in the list, type part of the payload name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

If you select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false":::, the following filters are available:

- **Source**: The available values are: **Global**, **Tenant**, and **All**.

- **Complexity**: Calculated based on the number of indicators in the payload that indicate a possible attack (spelling errors, urgency, etc.). More indicators are easier to identify as an attack and indicate lower complexity. The available values are: **High**, **Medium**, and **Low**.

- **Language**: The available values are: **English**, **Spanish**, **German**, **Japanese**, **French**, **Portuguese**, **Dutch**, **Italian**, **Swedish**, **Chinese (Simplified)**, **Norwegian Bokmål**, **Polish**, **Russian**, **Finnish**, **Korean**, **Turkish**, **Hungarian**, **Hebrew**, **Thai**, **Arabic**, **Vietnamese**, **Slovak**, **Greek**, **Indonesian**, **Romanian**, **Slovenian**, **Croatian**, **Catalan**, or **Other**.

- **Add tag(s)**

- **Filter by theme**: The available values are: **Account activation**, **Account verification**, **Billing**, **Clean up mail**, **Document received**, **Expense**, **Fax**, **Finance report**, **Incoming messages**, **Invoice**, **Items received**, **Login alert**, **Mail received**, **Password**, **Payment**, **Payroll**, **Personalized offer**, **Quarantine**, **Remote work**, **Review message**, **Security update**, **Service suspended**, **Signature required**, **Upgrade mailbox storage Verify mailbox**, **Voicemail**, and **Other**.

- **Filter by brand**: The available values are: **American Express**, **Capital One**, **DHL**, **DocuSign**, **Dropbox**, **Facebook**, **First American**, **Microsoft**, **Netflix**, **Scotiabank**, **SendGrid**, **Stewart Title**, **Tesco**, **Wells Fargo**, **Syrinx Cloud**, and **Other**.

- **Filter by industry**: The available values are: **Banking**, **Business services**, **Consumer services**, **Education**, **Energy**, **Construction**, **Consulting**, **Financial services**, **Government**, **Hospitality**, **Insurance**, **Legal**, **Courier services**, **IT**, **Healthcare**, **Manufacturing**, **Retail**, **Telecom**, **Real estate**, and **Other**.

- **Current event**: The available values are **Yes** or **No**.

- **Controversial**: The available values are **Yes** or **No**.

When you're finished configuring filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

If you select a payload by selecting the check box next to the name, a :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Send a test** button appears above the list of payloads. You can use this button to send a copy of the payload email to yourself (the currently logged in user) for inspection.

If no payloads are available or if you want to create your own payload, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create a payload**. The creation steps are the same as at **Attack simulation training** \> **Content library** tab \> **Payloads** \> **Tenant payloads** tab. For more information, see [Create custom payloads for Attack simulation training](attack-simulation-training-payloads.md#create-payloads).

:::image type="content" source="../../media/attack-sim-training-simulations-select-payload.png" alt-text="The Select payload page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-select-payload.png":::

If you select a payload by clicking anywhere in the row other than the check box next to the name, details about the payload are shown in a flyout:

- The **Overview** tab (named **Payload** in **Credential Harvest** and **Link in Attachment** payloads) contains details about the payload, include a preview.
- The **Login page** tab is available only for **Credential Harvest** or **Link in Attachment** payloads and is described in the [Select a login page](#select-a-login-page) subsection.
- The **Attachment** tab is available only for **Malware Attachment**, **Link in Attachment**, and **Oauth Consent Grant** payloads. This tab contains details about the attachment, include a preview.
- The **Simulations launched** tab contains the **Simulation name**, **Click rate**, **Compromised rate**, and **Action**.

:::image type="content" source="../../media/attack-sim-training-simulations-select-payload-details-payload-tab.png" alt-text="The Payload tab in the payload details flyout in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-select-payload-details-payload-tab.png":::

If the simulation doesn't use **Credential Harvest** or **Link in Attachment** payloads, or if you don't want to view or edit the login page that's used, select **Next** on the **Select payload and login page** page to continue.

To select the login page that's used in **Credential Harvest** or **Link in Attachment** payloads, go to the [Select a login page](#select-a-login-page) subsection.

### Select a login page

> [!NOTE]
> The **Login page** tab is available only in the details flyout of **Credential Harvest** or **Link in Attachment** payloads.

On the **Select payload and login page** page, select the payload by clicking anywhere in the row other than the check box to open the details flyout for the payload.

In the details flyout of the payload, the **Login page** tab shows the login page that's currently selected for the payload.

To view the complete login page, use the **Page 1** and **Page 2** links at the bottom of the page for two-page login pages.

:::image type="content" source="../../media/attack-sim-training-simulations-select-payload-details-login-page-tab.png" alt-text="The login page tab in the payload details flyout in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-select-payload-details-login-page-tab.png":::

To change the login page that's used in the payload, select :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Change login page**.

On the **Select login page** flyout that opens, The following information is shown for each login page:

- **Name**
- **Language**
- **Source**: For built-in login pages, the value is **Global**. For custom login pages, the value is **Tenant**.
- **Created by**: For built-in login pages, the value is **Microsoft**. For custom login pages, the value is the UPN of the user who created the login page.
- **Last modified**
- **Actions**: Select :::image type="icon" source="../../media/m365-cc-sc-eye-icon.png" border="false"::: **Preview** to preview the login page.

To find a login page in the list, type part of the login page name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the login pages by **Source** or **Language**.

:::image type="content" source="../../media/attack-sim-training-simulations-select-payload-select-login-page.png" alt-text="The Select login page in the Login page tab in payload details flyout in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-select-payload-select-login-page.png":::

To create a new login page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new**. The creation steps are the same as at **Attack simulation training** \> **Content library** tab \> **Login pages** \> **Tenant login pages** tab. For instructions, see [Create login pages](attack-simulation-training-login-pages.md#create-login-pages).

Back on the **Select login page**, verify the new login page you created is selected, and then select **Save**.

Back on the payload details flyout, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: **Close**.

When you're finished on the **Select a payload and login page** page, select **Next**.

### Configure OAuth Payload

> [!NOTE]
> This page is available only if you selected **OAuth Consent Grant** on the [Select technique](#select-a-social-engineering-technique) page and a corresponding payload.

On the **Configure OAuth payload** page, configure the following settings:

- **App name**: Enter a name for the payload.

- **App logo**: Select **Browse** to select a .png, .jpeg, or .gif file to use. To remove a file after you've selected it, select **Remove**.

- **Select app scope**: Choose one of the following values:
  - **Read user calendars**
  - **Read user contacts**
  - **Read user mail**
  - **Read all chat messages**
  - **Read all files that user can access**
  - **Read and write access to user mail**
  - **Send mail as a user**

When you're finished on  the **Configure OAuth payload** page, select **Next**.

## Target users

On the **Target users** page, select who receives the simulation. Use the following options to select users:

- **Include all users in your organization**: The unmodifiable list of users is show in groups of 10. You can use the **Next** and **Previous** buttons directly below the list of users to scroll through the list. You can also use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** icon on the page to find specific users.

  > [!TIP]
  > Although you can't remove users from the list on this page, you can use the next **Exclude users** page to exclude specific users.

- **Include only specific users and groups**: At first, no users or groups are shown on the **Targeted users** page. To add users or groups to the simulation, choose one of the following options:

  - :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add users**: In the **Add users** flyout that opens, you find and select users and groups to receive the simulation. **Dynamic distribution groups are not supported**. The following search tools are available:

    - **Search for users or groups**: If you click in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and do one of the following actions, the **Filter users by categories** options on the **Add users** flyout are replaced by a **User list** section:
      - Type three or more characters and then press the ENTER key. Any users or group names that contain those characters are shown in the **User list** section by **Name** and **Email**.
      - Type less than three characters or no characters and then press the ENTER key. No users are shown in the **User list** section, but you can type three or more characters in the **Search** box to search for users and groups.

      The number of results appears in the **Selected (0/x) users** label.

      > [!NOTE]
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
        - **Search**: In :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search by Country**, you can type part of the Country/region value and then press Enter. You can select some or all of the results.
        - Select **All Country**
        - Select existing City values. If the link is available, select **See all Countries** to see the complete list of available Country/region values.

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

## Exclude users

On the **Exclude users** page, you can select **Exclude some of the targeted users from this simulation** to exclude users that would otherwise be included based on your previous selections on the **Target users** page.

The methods to find and select users are the same as described in the previous section for **Include only specific users and groups**.

When you're finished on the **Exclude users** page, select **Next**.

## Assign training

On the **Assign training** page, you can assign trainings for the simulation. We recommend that you assign training for each simulation, as employees who go through training are less susceptible to similar attacks.

Use the following options on the page to assign trainings as part of the simulation:

- **Select training content preference**: Choose one of the following options in the dropdown list:

  - **Microsoft training experience (Recommended)**: This is the default value that has the following associated options to configure on the page:
    - Select one of the following options:
      - **Assign training for me (Recommended)**: This is the default value. We assign training based on a user's previous simulation and training results.
      - **Select training courses and modules myself**: If you select this value, the next step in the wizard will be **Training assignment** where you find and select trainings. The steps are described in the [Training assignment](#training-assignment) subsection.
    - **Due date**: Choose one of the following values:
      - **30 days after simulation ends**: This is the default value.
      - **15 days after simulation ends**
      - **7 days after simulation ends**

  - **Redirect to a custom URL**: This value has the following associated options to configure on the page:
    - **Custom training URL** (required)
    - **Custom training name** (required)
    - **Custom training description**
    - **Custom training duration (in minutes)**: The default value is 0, which means there is no specified duration for the training.
    - **Due date**: Choose one of the following values:
      - **30 days after simulation ends**: This is the default value.
      - **15 days after simulation ends**
      - **7 days after simulation ends**

  - **No training**: If you select this value, the only option on the page is the **Next** button.

When you're finished on the **Assign training** page, select **Next**.

### Training assignment

> [!NOTE]
> This page is available only if you selected **Select training courses and modules myself** on the **Assign training** page.

On the **Training assignment** page, select the trainings that you want to add to the simulation by clicking :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Add trainings**.

On the **Add training** flyout that opens, use the following tabs to select trainings to include in the simulation:

- **Recommended** tab: Shows the recommended built-in trainings based on the simulation configuration. These are the same trainings that would have been assigned if you selected **Assign training for me (Recommended)** on the previous page.
- **All trainings** tab: Shows all built-in trainings that are available.

:::image type="content" source="../../media/attack-sim-training-simulations-assign-training-add-recommended-training.png" alt-text="The option to add the recommended training on the Training assignment page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-assign-training-add-recommended-training.png":::

On either tab, the following information is shown for each training:

- **Training name**
- **Source**: The value is **Global**.
- **Duration (mins)**
- **Preview**: Select the **Preview** button to see the training.

On either tab, you can use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to find trainings. Type part of the training name and press the ENTER key.

On either tab, select one or more trainings by clicking in the blank area next to the **Training name** column. When you're finished, select **Add**.

Back on the **Training assignment** page, the selected trainings are now listed. The following information is shown for each training:

- **Training name**
- **Source**
- **Duration (mins)**
- **Assign to**: For each training, you need to select who gets the training by selecting from the following values:
  - **All users**
  - One or both of the values **Clicked payload** or **Compromised**.
- **Delete**: Select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Delete** to remove the training from the simulation.

:::image type="content" source="../../media/attack-sim-training-training-assignment.png" alt-text="The Training assignment page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-training-assignment.png":::

:::image type="content" source="../../media/attack-sim-training-training-assignment.png" alt-text="The Training assignment page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-training-assignment.png":::

When you're finished on the **Training assignment** page, select **Next**.

## Select a landing page

On the **Selecting phish landing page** page, you configure the web page that users are taken to if they open the payload in the simulation.

Select one of the following options:

- **Use landing pages from library**: The following options are available:
  - **Payload indicators**: Select **Add payload indicators to email** to help users learn how do identify phishing email.
    - This setting is not available if you selected **Malware Attachment** or **Link to Malware** on the [Select a social engineering technique](#select-a-social-engineering-technique) page.
    - For landing pages that you create on the **Tenant landing pages** tab, this setting is meaningful only if you use the **Dynamic tag** named **Insert Payload content** in the landing page content as described in the **Create a landing page** subsection.
  - **Show the interstitial page before the landing page**: This setting is available only if you selected **Drive-by URL** on the [Select a social engineering technique](#select-a-social-engineering-technique) page. You can show the overlay that comes up for drive-by URL attacks. To hide the overlay and go directly to the landing page, don't select this option.

  The remainder of the **Selecting phish landing page** page has two tabs where you select the landing page to use:

  - **Global landing pages** tab: Contains the built-in landing pages. When you select a built-in landing page to use by selecting the check box next to name, an **Edit layout** section appears with the following options:
    - **Add logo**: Select **Browse logo image** to find and select a .png, .jpeg, or .gif file. The logo size should be a maximum of 210 x 70 to avoid distortion. To remove the logo, select **Remove uploaded logo image**.
    - **Select default language**: This setting is required. Select one of the following values: **Chinese (Simplified)**, **Chinese (Traditional)**, **English**, **French**, **German**, **Italian**, **Japanese**, **Korean**, **Portuguese**, **Russian**, **Spanish**, and **Dutch**.

  - **Tenant landing pages** tab: Contains any custom landing pages that you've created. To create a new landing page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new**. The creation steps are the same as at **Attack simulation training** \> **Content library** tab \> **Phish landing pages** \> **Tenant landing pages** tab. For instructions, see [Landing pages in Attack simulation training](attack-simulation-training-landing-pages.md#create-landing-pages).

  On both tabs, the following information is shown for each landing page:

  - **Name**
  - **Language**: If the landing page contains multiple translations, the first two languages are shown directly. To see the remaining languages, hover over the numeric icon (for example, **+10**).
  - **Default language**
  - **Status**
  - **Linked simulation**

  Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, the only available columns that aren't selected are **Source** and **Created by**.

  To find a landing page in the list, type part of the landing page name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

  Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the landing pages by language.

  When you select a landing page by clicking on the name, a details flyout opens that shows more information about the landing page:

  - The **Preview** tab shows what the landing page looks like to users.
  - The **Details** tab shows the properties of the landing page.

  When you're finished in the landing page details flyout, select **Close**.

  On the **Selecting phish landing page** page, select a landing page to use by selecting the check box next to the **Name** column.

- **Use a custom URL**: This setting is not available if you selected **Malware Attachment** or **Link to Malware** on the [Select technique](#select-a-social-engineering-technique) page.

  If you select **Use a custom URL**, you need to add the URL in the **Enter the custom landing page URL** box that appears. No other options are available on the **Selecting phish landing page** page.

When you're finished on the **Selecting phish landing page** page, select **Next**.

## Select end user notifications

On the **Select end user notification** page, select from the following notification options:

- **Do not deliver notifications**: No other configuration options are available on the page. Users will not receive **Training assignment notifications**, **Training reminder notifications** or **Positive reinforcement notifications** from the simulation.

- **Microsoft default notification (recommended)**: The notifications that users will receive are shown on the page:

  - **Microsoft default positive reinforcement notification**
  - **Microsoft default training assignment notification**
  - **Microsoft default training reminder notification**

  Select the default language to use in **Select default language**. The available values are: **Chinese (Simplified)**, **Chinese (Traditional)**, **English**, **French**, **German**, **Italian**, **Japanese**, **Korean**, **Portuguese**, **Romanian**, **Russian**, **Spanish**, or **Dutch**.

  For each notification, the following information is available:

  - **Notifications**: The name of the notification.
  - **Language**: If the notification contains multiple translations, the first two languages are shown directly. To see the remaining languages, hover over the numeric icon (for example, **+10**).
  - **Type**: One of the following values:
    - **Positive reinforcement notification**
    - **Training assignment notification**
    - **Training reminder notification**
  - **Delivery preferences**: You need to configure the following delivery preferences before you can continue:
    - For **Microsoft default positive reinforcement notification**, select **Do not deliver**, **Deliver after campaign ends**, or **Deliver during campaign**.
    - For **Microsoft default training reminder notification**, select **Twice a week** or **Weekly**.
  - **Actions**: If you select :::image type="icon" source="../../media/m365-cc-sc-view-icon.png" border="false"::: **View**, a **Review notification** page opens with the following information:
    - **Preview** tab: View the notification message as users will see it.
      - To view the message in different languages, use the **Select language** box.
      - Use the **Select payload to preview** box to select the notification message for simulations that contain multiple payloads.
    - **Details** tab: View details about the notification:
      - **Notification description**
      - **Source**: For built-in notifications, the value is **Global**. For custom notifications, the value is **Tenant**.
      - **Notification type**: One of the following types based on the notification you originally selected:
        - **Positive reinforcement notification**
        - **Training assignment notification**
        - **Training reminder notification**
      - **Modified by**
      - **Last modified**

    When you're finished on the **Review notification** page, select **Close** to return to the **Select end user notification** page.

- **Customized end user notifications**: No other configuration options are available on the page. When you select **Next**, you'll need to select a **Training assignment notification**, a **Training reminder notification**, and (optionally) a **Positive reinforcement notification** to use for the simulation as described in the next three subsections.

When you're finished on the **Select end user notification** page, select **Next**.

### Select a training assignment notification

> [!NOTE]
> This page is available only if you selected **Customized end user notifications** on the [Select end user notifications](#select-end-user-notifications) page.

The **Training assignment notification** page shows the following notifications and their configured languages:

- **Microsoft default training assignment notification**
- **Microsoft default training only campaign-training assignment notification**
- Any custom training assignment notifications that you previously created.

These notifications are also available at **Attack simulation training** \> **Content library** tab \> **End user notifications**:

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

### Select a training reminder notification

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

### Select a positive reinforcement notification

> [!NOTE]
> This page is available only if you selected **Customized end user notifications** on the [Select end user notifications](#select-end-user-notifications) page.

You have the following options for positive reinforcement notifications:

- Don't use positive reinforcement notifications: Select **Do not deliver** in the **Delivery preferences** section.

  There's nothing else to configure on the page, so you're taken to the [Launch details](#configure-the-simulation-launch-details) page when you select **Next**.

- Use an existing positive reinforcement notification: Select **Deliver after the user reports a phish and campaign ends** or **Deliver immediately after the user reports a phish** in the **Delivery preferences** section.

  The following notifications and their configured languages appear on the page:

  - **Microsoft default positive reinforcement notification**
  - Any custom positive reinforcement notifications that you previously created.

  These notifications are also available at **Attack simulation training** \> **Content library** tab \> **End user notifications**:

  - Built-in positive reinforcement notifications are available on the **Global notifications** tab at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary&source=global>.
  - Custom positive reinforcement notifications are available on the **Tenant notifications** tab at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary&source=tenant>.

  For more information, see [End-user notifications for Attack simulation training](attack-simulation-training-end-user-notifications.md).

  To search for an existing notification in the list, type part of the notification name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

  When you select a notification by clicking anywhere in the row other than the check box, a details flyout opens that shows more information about the notification:

  - The **Preview** tab shows what the notification looks like to users.
  - The **Details** tab shows the properties of the notification.

  When you're finished in the notification details flyout, select **Close**.

  On the **Positive reinforcement notification** page, select an existing notification to use by clicking the check box next to the name.

- Create a new positive reinforcement notification to use: Select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **Create new**. The creation steps are identical to [Create end-user notifications](attack-simulation-training-end-user-notifications.md#create-end-user-notifications).

  > [!NOTE]
  > On the **Define details** page of the new notification wizard, be sure to select the value **Positive reinforcement notification** for the notification type.

  When you're finished creating the notification, you return to the **Positive reinforcement notification** page where the new notification now appears in the list for you to select.

When you're finished on the **Positive reinforcement notification** page, select **Next**.

## Configure the simulation launch details

On the **Launch details** page, you choose when to start and end the simulation. We'll stop capturing interaction with this simulation after the end date you specify.

Choose one of the following values:

- **Launch this simulation as soon as I'm done**

- **Schedule this simulation to be launched later**: This value has the following associated options to configure:
  - **Select launch date**
  - **Select launch time hour**
  - **Select launch time minute**
  - **Select time format**: Select **AM** or **PM**.

The default value for **Configure number of days to end simulation after** is 2 days, which is also the minimum value. The maximum value is 30 days.

If you select **Enable region aware time zone delivery**, the simulated attack messages are delivered to users during their regional working hours.

When you're finished on the **Launch details** page, select **Next**.

## Review simulation details

On the **Review simulation** page, you can review the details of the simulation.

Select the :::image type="icon" source="../../media/m365-cc-sc-send-icon.png" border="false"::: **Send a test** button to send a copy of the payload email to yourself (the currently logged in user) for inspection.

You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard to modify the settings.

When you're finished on the **Review simulation** page, select **Submit**.

:::image type="content" source="../../media/attack-sim-training-simulations-review-simulation.png" alt-text="The Review simulation page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-review-simulation.png":::

On the **Simulation has been scheduled for launch** page, you can use the links to go to the Attack simulation training overview or to view all payloads.

When you're finished on the **Simulation has been scheduled for launch**, select **Done**.

Back on the **Simulations** tab, the simulation that you created is now listed. The **Status** value depends on your previous selection in the [Configure the simulation launch details](#configure-the-simulation-launch-details) step:

- **In progress** if you selected **Launch this simulation as soon as I'm done**.
- **Scheduled** if you selected **Schedule this simulation to be launched later**.

## View simulations

The **Simulations** tab in Attack simulation training shows any simulations that you've created.

By default, the following information is shown for each simulation<sup>\*</sup>:

- **Simulation name**
- **Type**
- **Platform**
- **Launch date**
- **End date**
- **Actual compromise rate (%)**: The percentage of people who were compromised by your simulation (users compromised / total number of users who receive the simulation).
- **Predicted compromise rate (%)**: Historical data across Microsoft 365 that predicts the percentage of people who will be compromised by this payload (users compromised / total number of users who receive the payload). For more information, see [Predicted compromise rate](attack-simulation-training-get-started.md#predicted-compromise-rate).
- **Technique**: The [social engineering technique](#select-a-social-engineering-technique) that's used in the simulation.
- **Status**: One of the following values:
  - **Draft**
  - **Scheduled**
  - **In progress**
  - **Completed**
  - **Failed**
  - **Canceled**
  - **Excluded**
- **⋮** (**Actions** control): Take action on the simulation. The available actions depend on the **Status** value of the simulation as described in the procedure sections. This control always appears at the end of the row.

Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. By default, all available columns are selected.

<sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Remove columns from the view.
- Zoom out in your web browser.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to search for the name of an existing simulation.

Select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter** to filter the simulations by **Technique** or **Status** (all **Status** values except for **Excluded**).

When you're finished configuring filters, select **Apply**, **Cancel**, or :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

To see simulations that have been excluded from reporting (the **Status** value is **Excluded**), use the **Show excluded simulations** toggle on the **Simulations** tab.

### View simulation details

To view details about a simulation, use either of the following methods on the **Simulations** tab:

- Select the simulation by clicking anywhere in the row other than the check box next to the name.
- Select the simulation by clicking **⋮** (**Actions**) at the end of the row, and then select :::image type="icon" source="../../media/m365-cc-sc-eye-icon.png" border="false"::: **View report**.

The title of the details page that opens shows the name of the simulation and other information (for example, the status, social engineering technique, and delivery status).

You can select :::image type="icon" source="../../media/m365-cc-sc-view-activity-timeline-icon.png" border="false"::: **View activity timeline** to see date/time information about the simulation (simulation scheduled, simulation launched, simulation ended, and training due dates).

The rest of the details page contains the following tabs:

- **Report** tab: For a description of what's on this tab, see [Attack simulation report](attack-simulation-training-insights.md#attack-simulation-report).

- **Users** tab: Shows the following information for all targeted users in the simulation:
  - **Name**
  - **Compromised**
  - **Reported**
  - **Training status**
  - **Other actions**
  - **Compromised on**
  - **Reported on**
  - **Failed deliveries**
  - **Username**

  Select a column header to sort by that column. To add or remove columns, select :::image type="icon" source="../../media/m365-cc-sc-customize-icon.png" border="false"::: **Customize columns**. The following additional columns are available:

  - **Days out of office**
  - **Message read on**
  - **Message forwarded on**
  - **Message deleted on**
  - **Replied to message**
  - **Department**
  - **Company**
  - **Job title**
  - **Office**
  - **City**
  - **Country**
  - **Manager**

  To change the list of users from normal to compact spacing, select :::image type="icon" source="../../media/m365-cc-sc-standard-icon.png" border="false"::: **Change list spacing to compact or normal**, and then select :::image type="icon" source="../../media/m365-cc-sc-compact-icon.png" border="false"::: **Compact list**.

  If you select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**, the following filters are available:

  - **Compromised**: Select **Yes** or **No**.
  - **Reported message**: Select **Yes** or **No**.
  - **Simulation message delivery**: Select **Delivered** or **Failed to deliver**.
  - **Other actions**: *Select one or more of the following values: **Replied to message**, **Forwarded message**, and **Deleted messages**.
  - **Training status**: Select **Completed**, **In progress**, **Not started**, or **Not assigned**.
  - **Assigned trainings**: Select one or more of the following values: **Mass Market Phishing**, **Report Message**, **Web Phishing**, **Anatomy of a Spear Phishing Attack**.

  To find a user in the list, type part of the name in the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and then press the ENTER key.

- **Details** tab: Contains details about the simulation in the following sections:
  - **Description** section:
    - **Delivery platform**
    - **Type**
    - **Landing page**
    - **Technique**
    - **Launch details**
    - **Payload & login page**
    - **Target users**: Include excluded users or groups.
  - **Training information** section:
    - **Training name**
    - **Assign to**
    - **Actions**: Select :::image type="icon" source="../../media/m365-cc-sc-view-icon.png" border="false"::: **View** to see the training.
  - **Notifications** section:
    - **Notification name**
    - **Notification type**
    - **Delivery frequency**
    - **Actions**:  Select :::image type="icon" source="../../media/m365-cc-sc-view-icon.png" border="false"::: **View** to see the notification.

## Take action on simulations

All actions on existing simulations start on the **Simulations** tab. To get there, open the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulations** tab. Or, to go directly to the **Simulations** tab, use <https://security.microsoft.com/attacksimulator?viewid=simulations>.

> [!TIP]
> To see the **⋮** (**Actions**) control that's required to act on simulations on the **Simulations** tab, you likely need to do one or more of the following steps:
>
> - Horizontally scroll in your web browser.
> - Narrow the width of appropriate columns.
> - Remove columns from the view.
> - Zoom out in your web browser.

### Cancel simulations

You can cancel simulations with the **Status** value **In progress** or **Scheduled**.

To cancel a simulation on the **Simulations** tab, select the simulation by clicking **⋮** (**Actions**) at the end of the row, select :::image type="icon" source="../../media/m365-cc-sc-close-icon.png" border="false"::: **Cancel simulation**, and then select **Confirm** in the confirmation dialog.

After you cancel the simulation, the **Status** value changes to **Canceled**.

### Remove simulations

You can't remove simulations with the **Status** value **In progress**.

To remove a simulation from the **Simulations** tab, select the simulation by clicking **⋮** (**Actions**) at the end of the row, and then select :::image type="icon" source="../../media/m365-cc-sc-delete-icon.png" border="false"::: **Cancel simulation**, and then select **Confirm** in the confirmation dialog.

After you remove the simulation, it no longer appears on the **Simulations** tab.

### Exclude completed simulations from reporting

The **Exclude** action is available only for simulations with the **Status** value **Competed**.

To remove a simulation from the **Simulations** tab, select the simulation by clicking **⋮** (**Actions**) at the end of the row, select :::image type="icon" source="../../media/m365-cc-sc-exclude-icon.png" border="false"::: **Exclude**, and then select **Confirm** in the confirmation dialog.

After you exclude the completed simulation from reporting, the **Status** value changes to **Excluded**, and the simulation is no longer visible on the **Simulations** tab when the **Show excluded simulations** toggle is off :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.

To see completed simulations that have been excluded from reporting, use either of the following methods:

- On the **Simulations** tab, toggle **Show excluded simulations** to on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::. Only excluded simulations are shown.
- On the **Settings** tab at <https://security.microsoft.com/attacksimulator?viewid=setting>, select the **View all** link in the **Simulations excluded from reporting** section. This action takes you to the **Simulations** tab where **Show excluded simulations** is toggled on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::. The excluded simulation appears in the list with all the other simulations. Find it by using the **Status** value. For more information, see [View simulations excluded from reporting](attack-simulation-training-settings.md#view-simulations-excluded-from-reporting).

### Include completed simulations in reporting

By default, all completed simulations are included in reporting. A simulation is excluded from reporting only if you exclude it as described in the previous section.

The **Include** action is available only for simulations with the **Status** value **Excluded**, which are visible on the **Simulations** tab only when **Show excluded simulations** is toggled on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.

To include a completed session in reporting after it has been excluded, do the following steps:

1. On the **Simulations** tab, set the **Show excluded simulations** toggle to on :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
2. Select the simulation by clicking **⋮** (**Actions**) at the end of the row, and then select :::image type="icon" source="../../media/m365-cc-sc-include-icon.png" border="false"::: **Exclude**.

After you've included the excluded simulation, the **Status** value changes to **Completed**. Toggle **Show excluded simulations** to off :::image type="icon" source="../../media/scc-toggle-off.png" border="false"::: to see the simulation.

### View simulation reports

For simulations with the **Status** value **In progress** or **Completed**, you can view the report for the simulation by using either of the following methods on the **Simulations** tab:

- Select the simulation by clicking anywhere in the row other than the check box next to the name.
- Select the simulation by clicking **⋮** (**Actions**) at the end of the row, and then select :::image type="icon" source="../../media/m365-cc-sc-eye-icon.png" border="false"::: **View report**.

The report page for the simulation opens and contains the following information:

- **Report** tab: Show the following information
  **Simulation impact**
