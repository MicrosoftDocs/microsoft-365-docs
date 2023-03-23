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
ms.date: 12/01/2022
---

# Simulate a phishing attack with Attack simulation training in Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

In Attack simulation training in Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2, simulations allow you run benign cyberattack simulations in your organization. These simulations test your security policies and practices, as well as train your employees to increase their awareness and decrease their susceptibility to attacks. This article walks you through creating a simulated phishing attack using Attack simulation training.

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To launch a simulated phishing attack, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulations** tab.

   To go directly to the **Simulations** tab, use <https://security.microsoft.com/attacksimulator?viewid=simulations>.

2. On the **Simulations** tab, select ![Launch a simulation icon.](../../media/m365-cc-sc-create-icon.png) **Launch a simulation**.

   :::image type="content" source="../../media/attack-sim-training-simulations-launch.png" alt-text="The Launch a simulation button on the Simulations tab in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-launch.png":::

3. The simulation creation wizard opens. The rest of this article describes the pages and the settings they contain.

> [!NOTE]
> At any point during the simulation creation wizard, you can click **Save and close** to save your progress and continue configuring the simulation later. The incomplete simulation has the **Status** value **Draft** on the **Simulations** tab. You can pick up where you left off by selecting the simulation and clicking ![Edit simulation icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** simulation.
>
> The the ability to select Microsoft Teams messages for attack simulation trainings is currently in Preview, isn't available in all organizations, and is subject to change.

## Select a delivery platform

> [!NOTE]
> As described earlier, this page is currently in Preview.

On the **Select delivery platform** page, select one of the following values:

- **Email**
- **Microsoft Teams**: For more information about users reporting messages in Microsoft Teams, see [User reported message settings in Microsoft Teams](submissions-teams.md).

When you're finished, click **Next**.

## Select a social engineering technique

On the **Select technique** page, select an available social engineering technique, which was curated from the [MITRE ATT&CK® framework](https://attack.mitre.org/techniques/enterprise/). Different payloads are available for different techniques. The following social engineering techniques are available:

- **Credential harvest**: Attempts to collect credentials by taking users to a well-known looking website with input boxes to submit a username and password.
- **Malware attachment**<sup>\*</sup>: Adds a malicious attachment to a message. When the user opens the attachment, arbitrary code is run that will help the attacker compromise the target's device.
- **Link in attachment**<sup>\*</sup>: A type of credential harvest hybrid. An attacker inserts a URL into an email attachment. The URL within the attachment follows the same technique as credential harvest.
- **Link to malware**: Runs some arbitrary code from a file hosted on a well-known file sharing service. The message sent to the user will contain a link to this malicious file. Opening the file will help the attacker compromise the target's device.
- **Drive-by URL**: The malicious URL in the message takes the user to a familiar-looking website that silently runs and/or installs code on the user's device.
- **OAuth Consent Grant**: The malicious URL asks users to grant permissions to data for a malicious Azure Application.

<sup>\*</sup> Not available in Microsoft Teams.

If you click the **View details** link in the description, a details flyout opens that describes the technique and the simulation steps that result from the technique.

:::image type="content" source="../../media/attack-sim-training-simulations-select-technique-sim-steps.png" alt-text="The Details flyout for the credential harvest technique on the Select technique page" lightbox="../../media/attack-sim-training-simulations-select-technique-sim-steps.png":::

When you're finished, click **Next**.

## Name and describe the simulation

On the **Name simulation** page, configure the following settings:

- **Name**: Enter a unique, descriptive name for the simulation.
- **Description**: Enter an optional detailed description for the simulation.

If you selected **Microsoft Teams** as the delivery platform, the **Select sender's Microsoft Teams account** setting is available:

1. Click **Select user account**.
2. In the **Select a Microsoft 365 user account** flyout that opens, find an available account in the list. In the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box, you can type part of the user's name and press Enter to filter the results.
3. When you've found the account that you want to use, select the account by clicking in the empty area next to the **Display name** column, and then click **Select**.

When you're finished on the **Name simulation** page, click **Next**.

## Select a payload and login page

On **Select payload and login page**, you need to select an existing payload from the list or create a new payload.

You can also view the login page that's used in the payload, select a different login page to use, or create a new login page to use.

### Payload

- If applicable existing payloads are available on **Select payload and login page**, the following details are shown for each payload:

  - **Payload name**
  - **Source**: For built-in payloads, the value is **Global**. For custom payloads, the value is **Tenant**.
  - **Language**: The language of the payload content. Microsoft's payload catalog (global) provides payloads in 29+ languages as described later in **Filter**.
  - **Click rate**: How many people have clicked on this payload.
  - **Predicted compromise rate**: Historical data across Microsoft 365 that predicts the percentage of people who will be compromised by this payload (users compromised / total number of users who receive the payload). For more information, see [Predicted compromise rate](attack-simulation-training-get-started.md#predicted-compromise-rate).
  - **Simulations launched** counts the number of times this payload was used in other simulations.

  In the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box, you can type part of the payload name and press Enter to filter the results.

  If you click **Filter**, the following filters are available:

  - **Source**: The available values are: **Global**, **Tenant**, and **All**.
  - **Complexity**: Calculated based on the number of indicators in the payload that indicate a possible attack (spelling errors, urgency, etc.). More indicators are easier to identify as an attack and indicate lower complexity. The available values are: **High**, **Medium**, and **Low**.
  - **Language**: The available values are: **English**, **Spanish**, **German**, **Japanese**, **French**, **Portuguese**, **Dutch**, **Italian**, **Swedish**, **Chinese (Simplified)**, **Norwegian Bokmål**, **Polish**, **Russian**, **Finnish**, **Korean**, **Turkish**, **Hungarian**, **Hebrew**, **Thai**, **Arabic**, **Vietnamese**, **Slovak**, **Greek**, **Indonesian**, **Romanian**, **Slovenian**, **Croatian**, **Catalan**, or **Other**.
  - **Add tag(s)**
  - **Filter by theme**: The available values are: **Account activation**, **Account verification**, **Billing**, **Clean up mail**, **Document received**, **Expense**, **Fax**, **Finance report**, **Incoming messages**, **Invoice**, **Items received**, **Login alert**, **Mail received**, **Password**, **Payment**, **Payroll**, **Personalized offer**, **Quarantine**, **Remote work**, **Review message**, **Security update**, **Service suspended**, **Signature required**, **Upgrade mailbox storage Verify mailbox**, **Voicemail**, and **Other**.
  - **Filter by brand**: The available values are: **American Express**, **Capital One**, **DHL**, **DocuSign**, **Dropbox**, **Facebook**, **First American**, **Microsoft**, **Netflix**, **Scotiabank**, **SendGrid**, **Stewart Title**, **Tesco**, **Wells Fargo**, **Syrinx Cloud**, and **Other**.
  - **Filter by industry**: The available values are: **Banking**, **Business services**, **Consumer services**, **Education**, **Energy**, **Construction**, **Consulting**, **Financial services**, **Government**, **Hospitality**, **Insurance**, **Legal**, **Courier services**, **IT**, **Healthcare**, **Manufacturing**, **Retail**, **Telecom**, **Real estate**, and **Other**.
  - **Current event**: The available values are **Yes** or **No**.
  - **Controversial**: The available values are **Yes** or **No**.

  When you're finished configuring the filters, click **Apply**, **Cancel**, or ![Clear filters icon](../../media/m365-cc-sc-clear-filters-icon.png) **Clear filters**.

  If you selected **Email** as the delivery platform, you select a payload from the list by selecting the check box, a ![Send a test payload icon.](../../media/m365-cc-sc-create-icon.png) **Send a test** button appears on the main page where you can send a copy of the payload email to yourself (the currently logged in user) for inspection.

- If no payloads are available on **Select payload and login page** or if you want to create your own payload, click ![Create a payload icon.](../../media/m365-cc-sc-create-icon.png) **Create a payload**. For more information, see [Create custom payloads for Attack simulation training](attack-simulation-training-payloads.md#create-payloads).

  :::image type="content" source="../../media/attack-sim-training-simulations-select-payload.png" alt-text="The Select payload page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-select-payload.png":::

When you select a payload from the list on **Select payload and login page** by clicking anywhere in the row other than the check box, details about the payload are shown in a flyout:

- The **Payload** tab contains an example and other details about the payload.
- The **Login page** tab is available only for **Credential Harvest** or **Link in attachment** payloads and is described in the next section.
- The **Simulations launched** tab contains the **Simulation name**, **Click rate**, **Compromised rate**, and **Action**.

From any tab, you can click **Edit payload** at the bottom of the page to edit the payload.

:::image type="content" source="../../media/attack-sim-training-simulations-select-payload-details-payload-tab.png" alt-text="The Payload tab in the payload details flyout in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-select-payload-details-payload-tab.png":::

If the simulation doesn't use **Credential Harvest** or **Link in attachment** payloads, or if you don't want to view or edit the login page that's used, click **Next** on **Select payload and login page** to continue.

To view and configure the login page that's used in **Credential Harvest** or **Link in attachment** payloads, go to the next section.

### Login page

> [!NOTE]
> The **Login page** tab is available in the details flyout of a payload that you selected on **Select payload and login page** only in **Credential Harvest** or **Link in attachment** payloads.

On **Select payload and login page**, select the payload from the list by clicking anywhere in the row other than the check box to open the details flyout for the payload.

In the details flyout of the payload, the **Login page** tab shows the login page that's currently selected for the payload.

To view the complete login page, use the **Page 1** and **Page 2** links at the bottom of the page for two-page login pages.

:::image type="content" source="../../media/attack-sim-training-simulations-select-payload-details-login-page-tab.png" alt-text="The login page tab in the payload details flyout in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-select-payload-details-login-page-tab.png":::

To change the login page that's used in the payload, click ![Change login page icon.](../../media/m365-cc-sc-edit-icon.png) **Change login page**.

On the **Select login page** flyout that appears, The following information is shown for each login page:

- **Name**
- **Language**
- **Source**: For built-in login pages, the value is **Global**. For custom login pages, the value is **Tenant**.
- **Status**: **Ready** or **Draft**.
- **Created by**: For built-in login pages, the value is **Microsoft**. For custom login pages, the value is the UPN of the user who created the login page.
- **Last modified**
- **Actions**: Click ![Preview icon.](../../media/m365-cc-sc-eye-icon.png) **Preview** to preview the login page.

To find a login page in the list, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find the name of the login page.

Click ![Filter icon.](../../media/m365-cc-sc-filter-icon.png) **Filter** to filter the login pages by **Source** or **Language**.

:::image type="content" source="../../media/attack-sim-training-simulations-select-payload-select-login-page.png" alt-text="The Select login page in the Login page tab in payload details flyout in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-select-payload-select-login-page.png":::

To create a new login page, click [Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** to start the create end user login page wizard. The steps are the same as at **Login pages** at **Attack simulation training** \> **Content library** tab \> **Tenant payloads** tab or directly at <https://security.microsoft.com/attacksimulator?viewid=contentlibrary&source=tenant>. For instructions, see [Create login pages](attack-simulation-training-login-pages.md#create-login-pages).

Back on the **Select login page**, verify the new login page you created is selected, and then click **Save**.

Back on the payload details flyout, click [Close icon.](../../media/m365-cc-sc-close-icon.png) **Close**.

When you're finished on the **Select a payload and login page**, click **Next**.

## Configure OAuth Payload

> [!NOTE]
> This page is available only if you selected **OAuth Consent Grant** on the [Select technique](#select-a-social-engineering-technique) page. Otherwise, you're taken to the **Target users** page.

On the **Configure OAuth payload** page, configure the following settings:

- **App name**

- **App logo**: Click **Browse** to select a .png, .jpeg, or .gif file to use. To remove a file after you've selected it, click **Remove**.

- **Select app scope**: Choose one of the following values:
  - **Read user calendars**
  - **Read user contacts**
  - **Read user mail**
  - **Read all chat messages**
  - **Read all files that user can access**
  - **Read and write access to user mail**
  - **Send mail as a user**

## Target users

On the **Target users** page, select who will receive the simulation. Configure one of the following settings:

- **Include all users in my organization**: The affected users are show in lists of 10. You can use the **Next** and **Previous** buttons directly below the list of users to scroll through the list. You can also use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** icon on the page to find users.

- **Include only specific users and groups**: Choose one of the following options:
  - ![Add users icon.](../../media/m365-cc-sc-create-icon.png) **Add users**: In the **Add users** flyout that appears, you can find and select users and groups for the simulation.  **Dynamic distribution groups are not supported**. The following search tools are available:
    - **Search for users or groups**: In box, you can type part of the **Name** or **Email address** of the user or group and then press Enter. You can select some or all of the results. When you're finished, click **Add x users**.

      > [!NOTE]
      > Clicking the **Add filters** button to return to the **Filter users by categories** options will clear any users or groups that you selected in the search results.

    - **Filter users by categories**: Select from none, some, or all of the following options:
      - **Suggested user groups**: Select from the following values:
        - **All suggested user groups**
        - **Users not targeted by a simulation in the last three months**
        - **Repeat offenders**
      - **User tags**: User tags are identifiers for specific groups of users (for example, Priority accounts). For more information, see [User tags in Microsoft Defender for Office 365](user-tags-about.md). Use the following options:
        - **Search**: In ![Search by user tags icon.](../../media/m365-cc-sc-search-icon.png) **Search by user tags**, you can type part of the user tag and then press Enter. You can select some or all of the results.
        - Select **All user tags**
        - Select from existing user tags.
      - **Country**: Use the following options:
        - **Search**: In ![Search by Country icon.](../../media/m365-cc-sc-search-icon.png) **Search by Country**, you can type part of the country name and then press Enter. You can select some or all of the results.
        - Select **All countries**.
        - Select from existing Country values.
      - **Department**: Use the following options:
        - **Search**: In ![Search by Department icon.](../../media/m365-cc-sc-search-icon.png) **Search by Department**, you can type part the Department value and then press Enter. You can select some or all of the results.
        - Select **All Department**
        - Select existing Department values.
      - **Title**: Use the following options:
        - **Search**: In ![Search by Title icon.](../../media/m365-cc-sc-search-icon.png) **Search by Title**, you can type part of the Title value and then press Enter. You can select some or all of the results.
        - Select **All Title**
        - Select existing Title values.

      :::image type="content" source="../../media/attack-sim-training-simulations-target-users-filter-by-category.png" alt-text="The User filtering on the Target users page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-target-users-filter-by-category.png":::

      After you identify your criteria, the affected users are shown in the **User list** section that appears, where you can select some or all of the discovered recipients.

      When you're finished, click **Apply(x)**, and then click **Add x users**.

  Back on the main **Target users** page, you can use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find affected users. You can also click ![Delete users icon.](../../media/m365-cc-sc-search-icon.png) **Delete** to remove specific users.

- ![Import icon.](../../media/m365-cc-sc-create-icon.png) **Import**: In the dialog that opens, specify a CSV file that contains one email address per line.

  After you find a select the CSV file, the list of users are imported and shown on the **Targeted users** page. You can use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find affected users. You can also click ![Delete targeted users icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** to remove specific users.

When you're finished on the **Target users** page, click **Next**.

## Exclude users

On the **Exclude users** page, you can select **Exclude some of the targeted users from this simulation** to exclude users that would otherwise be included in the simulation based on your previous selections on the **Target users** page.

The methods are the same as described in the previous section for **Include only specific users and groups** and **Import**.

When you're finished on the **Exclude users** page, click **Next**.

## Assign training

On the **Assign training** page, you can assign trainings for the simulation. We recommend that you assign training for each simulation, as employees who go through training are less susceptible to similar attacks. The following settings are available:

In the **Select training content preference** section, choose one of the following options:

- **Microsoft training experience**: This is the default value that has the following associated options to configure:
  - Select one of the following options:
    - **Assign training for me**: This is the default and recommended value. We assign training based on a user's previous simulation and training results, and you can review the selections in the next steps of the wizard.
    - **Select training courses and modules myself**: If you select this value, you'll still be able to see the recommended content as well as all available courses and modules in the next step of the wizard.
  - **Due date**: Choose one of the following values:
    - **30 days after simulation ends**: This is the default value.
    - **15 days after simulation ends**
    - **7 days after simulation ends**

- **Redirect to a custom URL**: This value has the following associated options to configure:
  - **Custom training URL** (required)
  - **Custom training name** (required)
  - **Custom training description**
  - **Custom training duration (in minutes)**: The default value is 0, which means there is no specified duration for the training.
  - **Due date**: Choose one of the following values:
    - **30 days after simulation ends**: This is the default value.
    - **15 days after simulation ends**
    - **7 days after simulation ends**

- **No training**: If you select this value, the only option on the page is the **Next** button that takes you to the [**Landing page**](#landing-page) page.

:::image type="content" source="../../media/attack-sim-training-simulations-assign-training-add-recommended-training.png" alt-text="The option to add the recommended training on the Training assignment page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-assign-training-add-recommended-training.png":::

### Training assignment

> [!NOTE]
> The **Training assignment** page is available only if you selected **Microsoft training experience** \> **Select training courses and modules myself** on the previous page.

On the **Training assignment** page, select the trainings that you want to add to the simulation by clicking ![Add trainings icon.](../../media/m365-cc-sc-create-icon.png) **Add trainings**.

On the **Add training** flyout that appears, you can select the trainings to use on the following tabs that are available:

- **Recommended** tab: Shows the recommended built-in trainings based on the simulation configuration. These are the same trainings that would have been assigned if you selected **Assign training for me** on the previous page.
- **All trainings** tab: Shows all built-in trainings that are available.

  The following information is shown for each training:

  - **Training name**
  - **Source**: The value is **Global**.
  - **Duration (mins)**
  - **Preview**: Click the **Preview** button to see the training.

  In the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box, you can type part of the training name and press Enter to filter the results on the current tab.

  Select all trainings that you want to include from the current tab, and then click **Add**.

Back on the main **Training assignment** page, the trainings that you selected are shown. The following information is shown for each training:

- **Training name**
- **Source**
- **Duration (mins)**

For each training in the list, you need to select who gets the training by selecting values in the **Assign to** column:

- **All users**

  or one or both of the following values:

- **Clicked payload**
- **Compromised**

If you don't want to use a training that's shown, click ![Delete training icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

:::image type="content" source="../../media/attack-sim-training-training-assignment.png" alt-text="The Training assignment page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-training-assignment.png":::

When you're finished, click **Next**.

### Landing page

On the **Landing page** page, you configure the web page that users are taken to if they open the payload in the simulation.

Microsoft-curated landing pages are available in 12 languages: Chinese (Simplified), Chinese (Traditional), English, French, German, Italian, Japanese, Korean, Portuguese, Russian, Spanish, and Dutch.

- **Select landing page preference**: The available values are:
  - **Use Microsoft default landing page**: This is the default value that has the following associated options to configure:
    - **Select landing page layout**: Select one of the available templates.
    - **Add logo**: Click **Browse** to find and select a .png, .jpeg, or .gif file. The logo size should be a maximum of 210 x 70 to avoid distortion. To remove the logo, click **Remove**.
    - **Add payload indicators to email**: This setting is not available if you previously selected **Malware attachment** or **Link to malware** on the [Select technique](#select-a-social-engineering-technique) page.

    You can preview the results by clicking the **Open preview panel** button at the bottom of the page.

  - **Use a custom URL**: This setting is not available if you previously selected **Malware attachment** or **Link to malware** on the [Select technique](#select-a-social-engineering-technique) page.

    If you select **Use a custom URL**, you need to add the URL in the **Enter the custom landing page URL** box that appears. No other options are available on the page.

  - **Create your own landing page**: This value has the following associated options to configure:
    - **Add payload indicators to email**:This setting is available to select only if both of the following statements are true:
      - You selected **Credential harvest**, **Link in attachment**, **Drive-by URL**, or **OAuth Consent Grant** on the [Select technique](#select-a-social-engineering-technique) page.
      - You've added the **Dynamic tag** named **Insert Payload content** in the landing page content on this page.

    - Landing page content: Two tabs are available:
      - **Text**: A rich text editor is available to create your landing page. In addition to the typical font and formatting settings, the following settings are available:
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

        - **Use from default**: Select an available template to start with. You can modify the text and layout in the editing area. To reset the landing page back to the default text and layout of the template, click **Reset to default**.
    - **Code**: You can view and modify the HTML code directly.

    You can preview the results by clicking the **Open preview panel** button in the middle of the page.

When you're finished, click **Next**.

> [!NOTE]
> Certain trademarks, logos, symbols, insignias and other source identifiers receive heightened protection under local, state and federal statutes and laws. Unauthorized use of such indicators can subject the users to penalties, including criminal fines. Though not an extensive list, this includes the Presidential, Vice Presidential, and Congressional seals, the CIA, the FBI, Social Security, Medicare and Medicaid, the United States Internal Revenue Service, and the Olympics. Beyond these categories of trademarks, use and modification of any third-party trademark carries an inherent amount of risk. Using your own trademarks and logos in a payload would be less risky, particularly where your organization permits the use. If you have any further questions about what is or is not appropriate to use when creating or configuring a payload, you should consult with your legal advisors.

## Select end user notification

On the **Select end user notification** page, select from the following notification options:

- **Do not deliver notifications**: Click **Proceed** in the alert dialog that appears. If you select this option, you're taken to the [Launch details](#launch-details) page when you click **Next**.

- **Microsoft default notification (recommended)**: The following additional settings are available on the page:

  - **Select default language**: The available values are: **English**, **Spanish**, **German**, **Japanese**, **French**, **Portuguese**, **Dutch**, **Italian**, **Swedish**, **Chinese (Simplified)**, **Norwegian Bokmål**, **Polish**, **Russian**, **Finnish**, **Korean**, **Turkish**, **Hungarian**, **Hebrew**, **Thai**, **Arabic**, **Vietnamese**, **Slovak**, **Greek**, **Indonesian**, **Romanian**, **Slovenian**, **Croatian**, **Catalan**, or **Other**.

  - By default, the following notifications are included:
    - **Microsoft positive reinforcement notification**
    - **Microsoft default training assignment notification**
    - **Microsoft default training reminder notification**

    For each notification, the following information is available:
    - **Notifications**: The name of the notification.
    - **Language**: If the notification contains multiple translations, the first two languages are shown directly. To see the remaining languages, hover over the numeric icon (for example, **+10**).
    - **Type**: One of the following values:
      - **Positive reinforcement notification**
      - **Training assignment notification**
      - **Training reminder notification**
    - **Delivery preferences**: For **Positive reinforcement notification** and **Training reminder notification** types, the following values are available
      - **Do not deliver**
      - **Deliver after campaign ends**
      - **Deliver during campaign**
    - **Actions**: If you click on the ![View icon.](../../media/m365-cc-sc-view-icon.png) **View** icon, the **Review notification** page appears with the following information:
      - **Preview** tab: View the notification message as users will see it.
        - To view the message in different languages, use the **Select language** box.
        - Use the **Select payload to preview** box to select the notification message for simulations that contain multiple payloads.
      - **Details** tab: View details about the notification:
        - **Notification description**
        - **Source**: For built-in notifications, the value is **Global**. For custom notifications, the value is **Tenant**.
        - **Notification type**: One of the following types base on the notification you originally selected:
          - **Positive reinforcement notification**
          - **Training assignment notification**
          - **Training reminder notification**
        - **Modified by**
        - **Last modified**

        When you're finished, click **Close**.

  You're taken to the [Launch details](#launch-details) page when you click **Next**.

- **Customized end user notifications**: When you click **Next**, you're taken to the **Training assignment notification** page as described in the next sections.

### Training assignment notification

The **Training assignment notification** page is available only if you selected **Customized end user notifications** on the **[Select end user notification](#select-end-user-notification)** page.

This page shows the following notifications and their configured languages:

- **Microsoft default training assignment notification**
- Any custom training assignment notifications that you previously created.

  These notifications are also available in **End user notifications** on the **Simulation content library** tab in Attack simulation training at <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>. **Microsoft default training assignment notification** is available on the **Global notifications** tab. Custom training assignment notifications are available on the **Tenant notifications** tab. For more information, see [End-user notifications for Attack simulation training](attack-simulation-training-end-user-notifications.md).

You can select an existing training assignment notification or create a new notification to use:

- To select an existing notification, click in the blank area next to the notification name. If you click on the notification name, the notification is selected and a preview flyout appears. To deselect the notification, clear the check box next to the notification.
- To search for an existing notification, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to search for the name.

  Select the notification that you want to use, and then click **Next**.

- To create and use a new notification, click ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new**.

#### Create new training assignment notification wizard

If you clicked ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** on the **Training assignment notification** page, a notification creation wizard opens.

The creation steps are identical as described in [Create end-user notifications](attack-simulation-training-end-user-notifications.md#create-end-user-notifications).

> [!NOTE]
> On the **Define details** page, be sure to select the value **Training assignment notification** for **Select notification type**.

When you're finished, you're taken back to the **Training assignment notification** page where the notification that you just created now appears in the list.

Select the notification that you want to use, and then click **Next**.

### Training reminder notification

The **Training reminder notification** page is available only if you selected **Customized end user notifications** on the **[Select end user notification](#select-end-user-notification)** page.

- **Set frequency for reminder notification**: Select **Weekly** (default) or **Twice a week**.

- **Select a reminder notification**: This section shows the following notifications and their configured languages:

  - **Microsoft default training reminder notification**
  - Any custom training reminder notifications that you previously created.

    These notifications are also available in **End user notifications** on the **Simulation content library** tab in Attack simulation training at <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>. **Microsoft default training reminder notification** is available on the **Global notifications** tab. Custom training reminder notifications are available on the **Tenant notifications** tab. For more information, see [End-user notifications for Attack simulation training](attack-simulation-training-end-user-notifications.md).

  You can select an existing training reminder notification or create a new notification to use:

  - To select an existing notification, click in the blank area next to the notification name. If you click on the notification name, the notification is selected and a preview flyout appears. To deselect the notification, clear the check box next to the notification.
  - To search for an existing notification, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to search for the name.

    Select the notification that you want to use, and then click **Next**.

  - To create and use a new notification, click ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new**.

#### Create new training reminder notification wizard

If you clicked ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** on the **Training reminder notification** page, a notification creation wizard opens.

The creation steps are identical as described in [Create end-user notifications](attack-simulation-training-end-user-notifications.md#create-end-user-notifications).

> [!NOTE]
> On the **Define details** page, be sure to select the value **Training reminder notification** for **Select notification type**.

When you're finished, you're taken back to the **Training reminder notification** page where the notification that you just created now appears in the list.

Select the notification that you want to use, and then click **Next**.

### Positive reinforcement notification

The **Positive reinforcement notification** page is available only if you selected **Customized end user notifications** on the **[Select end user notification](#select-end-user-notification)** page.

- **Delivery preferences**: Select one of the following values:

  - **Do not deliver**: If you select this option, you're taken to the [Launch details](#launch-details) page when you click **Next**.

  - **Deliver after the user reports a phish and campaign ends** or **Deliver immediately after the user reports a phish**: These sections show the following notifications and their configured languages in the **Select a positive reinforcement notification** section that appears:

  - **Microsoft default positive reinforcement notification**
  - Any custom positive reinforcement notifications that you previously created.

    These notifications are also available in **End user notifications** on the **Simulation content library** tab in Attack simulation training at <https://security.microsoft.com/attacksimulator?viewid=simulationcontentlibrary>. **Microsoft default positive reinforcement notification** is available on the **Global notifications** tab. Custom positive reinforcement notifications are available on the **Tenant notifications** tab. For more information, see [End-user notifications for Attack simulation training](attack-simulation-training-end-user-notifications.md).

  You can select an existing positive reinforcement notification or create a new notification to use:

  - To select an existing notification, click in the blank area next to the notification name. If you click on the notification name, the notification is selected and a preview flyout appears. To deselect the notification, clear the check box next to the notification.
  - To search for an existing notification, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to search for the name.

    Select the notification that you want to use, and then click **Next**.

  - To create and use a new notification, click ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new**.

#### Create new positive reinforcement notification wizard

If you clicked ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** on the **Positive reinforcement notification** page, a notification creation wizard opens.

The creation steps are identical as described in [Create end-user notifications](attack-simulation-training-end-user-notifications.md#create-end-user-notifications).

> [!NOTE]
> On the **Define details** page, be sure to select the value **Positive reinforcement notification** for **Select notification type**.

When you're finished, you're taken back to the **Positive reinforcement notification** page where the notification that you just created now appears in the list.

Select the notification that you want to use, and then click **Next**.

## Launch details

On the **Launch details** page, you choose when to launch the simulation and when to end the simulation. We'll stop capturing interaction with this simulation after the end date you specify.

The following settings are available:

- Choose one of the following values:
  - **Launch this simulation as soon as I'm done**
  - **Schedule this simulation to be launched later**: This value has the following associated options to configure:
    - **Select launch date**
    - **Select launch time**
- **Configure number of days to end simulation after**: The default value is 2.
- **Enable region aware time zone delivery**: Deliver simulated attack messages to your employees during their working hours based on their region.
- **Display the drive-by technique interstitial data gathered page**: You can show the overlay that appears for the drive-by URL technique attacks. To hide this overlay and directly go to the landing page, de-select this option.

- **Display the drive-by technique interstitial data gathered page**: This setting is available only if you selected **Drive-by URL** on the [select a technique page](#select-a-social-engineering-technique) page. You can show the overlay that comes up for drive-by URL technique attacks. To hide the overlay and go directly to the landing page, don't select this option.

When you're finished, click **Next**.

## Review simulation

On the **Review simulation** page, you can review the details of your simulation.

Click the ![Send a test icon.](../../media/m365-cc-sc-send-icon.png) **Send a test** button to send a copy of the payload email to yourself (the currently logged in user) for inspection.

You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

When you're finished, click **Submit**.

:::image type="content" source="../../media/attack-sim-training-simulations-review-simulation.png" alt-text="The Review simulation page in Attack simulation training in the Microsoft 365 Defender portal" lightbox="../../media/attack-sim-training-simulations-review-simulation.png":::
