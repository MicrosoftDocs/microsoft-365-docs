---
title: Simulation automations for Attack simulation training
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.prod: m365-security
localization_priority: Normal
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn how to create automated simulations that contain specific techniques and payloads that launch when the specified conditions are met in Microsoft Defender for Office 365 Plan 2.
ms.technology: mdo
---

# Simulation automations for Attack simulation training

**Applies to**
 [Microsoft Defender for Office 365 plan 2](defender-for-office-365.md)

For getting started information about Attack simulation training, see [Get started using Attack simulation training](attack-simulation-training-get-started.md).

To create a simulation automation, do the following steps:

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com/>, go to **Email & collaboration** \> **Attack simulation training** \> **Simulation automations** tab.

   To go directly to the **Simulation automations** tab, use <https://security.microsoft.com/attacksimulator?viewid=simulationautomation>.

2. On the **Simulation automations** tab, select ![Create simulation icon.](../../media/m365-cc-sc-create-icon.png) **Create simulation**.

   ![Create simulation button on the Simulation automations tab in Attack simulation training in the Microsoft 365 Defender portal.](../../media/attack-sim-training-sim-automations-create.png)

3. The creation wizard opens. The rest of this article describes the pages and the settings they contain.

> [!NOTE]
> At any point during the simulation creation wizard, you can click **Save and close** to save your progress and continue configuring the simulation later. The incomplete simulation has the **Status** value **Draft** on the **Simulations** tab. You can pick up where you left off by selecting the simulation and clicking ![Edit simulation icon.](../../media/m365-cc-sc-edit-icon.png) **Edit** simulation.## Name and describe the simulation.

## Name and describe the simulation automation

On the **Automation name** page, configure the following settings:

- **Name**: Enter a unique, descriptive name for the simulation.
- **Description**: Enter an optional detailed description for the simulation.

When you're finished, click **Next**.

## Select one or more social engineering techniques

On the **Select social engineering techniques** page, select one or more of the available social engineering techniques, which were curated from the [MITRE ATT&CK® framework](https://attack.mitre.org/techniques/enterprise/). Different payloads are available for different techniques. The following social engineering techniques are available:

- **Credential harvest**: Attempts to collect credentials by taking users to a well-known looking website with input boxes to submit a username and password.
- **Malware attachment**: Adds a malicious attachment to a message. When the user opens the attachment, arbitrary code is run that will help the attacker compromise the target's device.
- **Link in attachment**: A type of credential harvest hybrid. An attacker inserts a URL into an email attachment. The URL within the attachment follows the same technique as credential harvest.
- **Link to malware**: Runs some arbitrary code from a file hosted on a well-known file sharing service. The message sent to the user will contain a link to this malicious file. Opening the file and help the attacker compromise the target's device.
- **Drive-by URL**: The malicious URL in the message takes the user to a familiar-looking website that silently runs and/or installs code on the user's device.

If you click the **View details** link in the description, a details flyout opens that describes the technique and the simulation steps that result from the technique.

![Details flyout for the credential harvest technique on the Select social engineering techniques page.](../../media/attack-sim-training-simulations-select-technique-sim-steps.png)

When you're finished, click **Next**.

## Select payloads

On the **Select payloads** page, select one of the following options:

- **Manually select**
- **Randomize**

If you select **Randomize**, there's nothing to configure on this page, so click **Next** to continue.

If you select **Manually select**, you need to select one or more payloads from the list. The following details are displayed to help you choose:

- **Payload name**
- **Technique**: You need to select at least one payload per technique that you selected on the previous page.
- **Language**: The language of the payload content. Microsoft's payload catalog (global) provides payloads in 10+ languages which can also be filtered.
- **Click rate**: How many people have clicked on this payload.
- **Predicted compromise rate**: Historical data for the payload across Microsoft 365 that predicts the percentage of people who will get compromised by this payload.
- **Simulations launched** counts the number of times this payload was used in other simulations.

In the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box, you can type part of the payload name and press Enter to filter the results.

If you click **Filter**, the following filters are available:

- **Complexity**: Calculated based on the number of indicators in the payload that indicate a possible attack (spelling errors, urgency, etc.). More indicators are easier to identify as an attack and indicate lower complexity. The available values are:
  - **Low**
  - **Medium**
  - **High**
- **Source**: Indicates whether the payload was created in your organization or is a part of Microsoft's pre-existing payload catalog. Valid values are:
  - **Global**
  - **Tenant**
  - **All**
- **Language**: The available values are: **English**, **Spanish**, **German**, **Japanese**, **French**, **Portuguese**, **Dutch**, **Italian**, **Swedish**, **Chinese (Simplified)**, **Norwegian Bokmål**, **Polish**, **Russian**, **Finnish**, **Korean**, **Turkish**, **Hungarian**, **Hebrew**, **Thai**, **Arabic**, **Vietnamese**, **Slovak**, **Greek**, **Indonesian**, **Romanian**, **Slovenian**, **Croatian**, **Catalan**, and **Other**.
- **Add tag(s)**
- **Filter by theme**: The available values are: **Account activation**, **Account verification**, **Billing**, **Clean up mail**, **Document received**, **Expense**, **Fax**, **Finance report**, **Incoming messages**, **Invoice**, **Items received**, **Login alert**, **Mail received**, **Password**, **Payment**, **Payroll**, **Personalized offer**, **Quarantine**, **Remote work**, **Review message**, **Security update**, **Service suspended**, **Signature required**, **Upgrade mailbox storage Verify mailbox**, **Voicemail**, and **Other**.
- **Filter by brand**: The available values are: **American Express**, **Capital One**, **DHL**, **DocuSign**, **Dropbox**, **Facebook**, **First American**, **Microsoft**, **Netflix**, **Scotiabank**, **SendGrid**, **Stewart Title**, **Tesco**, **Wells Fargo**, **Syrinx Cloud**, and **Other**.
- **Filter by industry**: The available values are: **Banking**, **Business services**, **Consumer services**, **Education**, **Energy**, **Construction**, **Consulting**, **Financial services**, **Government**, **Hospitality**, **Insurance**, **Legal**, **Courier services**, **IT**, **Healthcare**, **Manufacturing**, **Retail**, **Telecom**, **Real estate**, and **Other**.
- **Current event**: The available values are **Yes** or **No**.
- **Controversial**: The available values are **Yes** or **No**.

When you're finished configuring the filters, click **Apply**, **Cancel**, or **Clear filters**.

If you select a payload from the list by clicking on the name, details about the payload are shown in a flyout:

- The **Overview** tab contains an example and other details about the payload.
- The **Simulations launched** tab contains the **Simulation name**, **Click rate**, **Compromised rate**, and **Action**.

![Payload details flyout in Attack simulation training in the Microsoft 365 Defender portal.](../../media/attack-sim-training-simulations-select-payload-details.png)

When you're finished, click **Next**.

## Target users

On the **Target users** page, select who will receive the simulation. Configure one of the following settings:

- **Include all users in your organization**: The affected users are show in lists of 10. You can use the **Next** and **Previous** buttons directly below the list of users to scroll through the list. You can also use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** icon on the page to find affected users.
- **Include only specific users and groups**: Choose one of the following options:
  - ![Add users icon.](../../media/m365-cc-sc-create-icon.png) **Add users**: In the **Add users** flyout that appears, you can find users and groups based on the following criteria:
    - **Users or groups**: In the ![Search for users and groups icon.](../../media/m365-cc-sc-search-icon.png) **Search for users and groups** box, you can type part of the **Name** or **Email address** of the user or group, and then press Enter. You can select some or all of the results. When you're finished, click **Add x users**.

      > [!NOTE]
      > Clicking the **Add filters** button to return to the **Filter users by categories** options will clear any users or groups that you selected in the search results.

    - **Filter users by categories**: Select from none, some, or all of the following options:
      - **Suggested user groups**: Select from the following values:
        - **All suggested user groups**
        - **Users not targeted by a simulation in the last three months**
        - **Repeat offenders**
      - **Department**: Use the following options:
        - **Search**: In the ![Search by Department icon.](../../media/m365-cc-sc-search-icon.png) **Search by Department** box, you can type part of the Department value, and then press Enter. You can select some or all of the results.
        - Select **All Department**
        - Select existing Department values.
      - **Title**: Use the following options:
        - **Search**: In the ![Search by Title icon.](../../media/m365-cc-sc-search-icon.png) **Search by Title** box, you can type part of the Title value, and then press Enter. You can select some or all of the results.
        - Select **All Title**
        - Select existing Title values.

      ![User filtering on the Target users page in Attack simulation training in the Microsoft 365 Defender portal.](../../media/attack-sim-training-simulations-target-users-filter-by-category.png)

      After you identify your criteria, the affected users are shown in the **User list** section that appears, where you can select some or all of the discovered recipients.

      When you're finished, click **Apply(x)**, and then click **Add x users**.

  Back on the main **Target users** page, you can use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find affected users. You can also click ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** to remove specific users.

- ![Import icon.](../../media/m365-cc-sc-create-icon.png) **Import**: In the dialog that opens, specify a CSV file that contains one email address per line.

  After you find an select the CSV file, the list of users are imported and shown on the **Targeted users** page. You can use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to find affected users. You can also click ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete** to remove specific users.

When you're finished, click **Next**.

## Assign training

On the **Assign training** page, you can assign trainings for the simulation. We recommend that you assign training for each simulation, as employees who go through training are less susceptible to similar attacks. The following settings are available:

- **Select training content preference**: Choose one of the following options:
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

![Add recommended training on the Training assignment page in Attack simulation training in the Microsoft 365 Defender portal.](../../media/attack-sim-training-simulations-assign-training-add-recommended-training.png)

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

If you don't want to use a training that's shown, click ![Delete icon.](../../media/m365-cc-sc-delete-icon.png) **Delete**.

![Training assignment page in Attack simulation training in the Microsoft 365 Defender portal.](../../media/attack-sim-training-training-assignment.png)

When you're finished, click **Next**.

### Landing page

On the **Landing page** page, you configure the web page that user are taken to if they open the payload in the simulation.

- **Select landing page preference**: The available values depend on your previous selections on the [Select payloads](#select-payloads) page as described in the following table:

  <br>

  ****

  |Selection on Select payloads page|Available values for Select landing page preference|
  |---|---|
  |Manually select|Use Microsoft default landing page <p> Create your own landing page <p> Use a custom URL <p> **Note**: The **Use a custom URL** value is not available if you previously selected **Malware attachment** or **Link to malware** on the [Select social engineering techniques](#select-one-or-more-social-engineering-techniques) page.|
  |Randomize|Use Microsoft default landing page|
  |

  The available **Select landing page preference** values and their associated settings are described in the following list:

  - **Use Microsoft default landing page**. This is the default value, and results in one Microsoft default template, logo, and payload indicator action that's applicable to all payloads.

    You need to configure the following additional settings on the **Landing page** page:

    - **Select landing page layout**: Select one of the 5 available landing page templates.
    - **Add logo**: Click **Browse** to find and select a .png, .jpeg, or .gif file to add to all payloads that are selected by Microsoft. To remove the logo, click **Remove**.
    - **Payload indicators**: This setting is not available if you previously selected **Malware attachment** or **Link to malware** on the [Select social engineering techniques](#select-one-or-more-social-engineering-techniques) page.

      Select **Add payload indicators to email** to help users learn how to identify phishing messages.

    You can preview the results by clicking the **Open preview panel** button in the middle of the page. In the preview flyout that appears, you can use **Select payload to preview** to see what each payload looks like.

  - **Create your own landing page**: This value results in a single payload indicator action that's applied to the selected payloads.

    You need to configure the following additional settings on the **Landing page** page:

    - **Payload indicators**: This setting is not available if you previously selected **Malware attachment** or **Link to malware** on the [Select social engineering techniques](#select-one-or-more-social-engineering-techniques) page.

      Select **Add payload indicators to email** to help users learn how to identify phishing messages.

    - Page content: Two tabs are available:

      - **Text**: A rich text editor is available to create your landing page. In addition to the typical font and formatting settings, the following settings are available:
        - **Dynamic tag**: Select from the following tags:
          - **Username**
          - **Email sender name**
          - **Sender email address**
          - **Email subject**
          - **Email content**
        - **Use from default**: Select one of the 5 available landing page templates to start with. You can modify the text and layout in the editing area. To reset the landing page back to the default text and layout of the template, click **Reset to default**.
        - **Training link**: In the **Name training URL** dialog that appears, enter a link title for the training link, and then click **Confirm** to add the link to the landing page.
      - **Code**: You can view and modify the HTML code directly.

      You can preview the results by clicking the **Open preview panel** button in the middle of the page. In the preview flyout that appears, you can use **Select payload to preview** to see what each payload looks like.

  - **Use a custom URL**: Add the URL in the **Enter the custom landing page URL** box that appears. No other options are available on the page.

When you're finished, click **Next**.

## Select end user notification

On the **Select end user notification** page, select from the following notification options:

- **Do not deliver notifications**: Click **Proceed** in the alert dialog that appears. If you select this option, you're taken to the [Simulation schedule](#simulation-schedule) page when you click **Next**.

- **Microsoft default notification (recommended)**: The following additional settings are available on the page:
  - **Select default language**: The available values are: **Chinese (Simplified)**, **Chinese (Traditional)**, **English**, **French**, **German**, **Italian**, **Japanese**, **Korean**, **Portuguese**, **Russian**, **Spanish**, and **Dutch**.
  - By default, the only available notification to select is **Microsoft positive reinforcement notification**. The following information is available for the notification:
    - **Notifications** (name): The value is **Microsoft default positive reinforcement notification**.
    - **Language**: If the notification contains multiple translations, the first two languages are shown directly. To see the remaining languages, hover over the numeric icon (for example, **+10**).
    - **Type**: The value is **Positive reinforcement**.
    - **Delivery preferences**: Select from the following values:
      - **Do not deliver**
      - **Deliver after campaign ends**
      - **Deliver during campaign**
    - **Deliver to**: The value is **Not applicable**.
    - **Actions**: If you click on the ![View icon.](../../media/m365-cc-sc-view-icon.png) **View** icon, the **Review notification** page appears with the following information:
      - **Preview** tab: View the notification message. To view the message in different languages, use the **Select language** box.
      - **Details** tab: View details about the notification:
        - **Notification description**
        - **Source**: For built-in notifications, the value is **Global**. For custom notifications, the value is **Tenant**.
        - **Notification type**
        - **Modified by**
        - **Last modified**

        When you're finished, click **Close**.

  If you select this option, you're taken to the [Simulation schedule](#simulation-schedule) page when you click **Next**.

- **Customized end user notifications**: When you click **Next**, you're taken to the **Positive reinforcement notification** page as described in the next section where you can select from existing notifications or create new notifications.

When you're finished, click **Next**.

### Positive reinforcement notification

The **Positive reinforcement notification** page is available only if you selected **Customized end user notifications** on the previous page.

- **Delivery preferences**: Select one of the following values:
  - **Do not deliver**
  - **Deliver after the user reports a phish and campaign ends**
  - **Deliver immediately after the user reports a phish**

- **Select a positive reinforcement notification**: You can select an existing notification or create a new notification of type **Positive reinforcement notification** to use:
  - To select an existing notification, click in the blank area next to the notification name. If you click on the notification name, the notification is selected and a preview flyout appears. To deselect the notification, clear the check box next to the notification.
  - To search for an existing notification, use the ![Search icon.](../../media/m365-cc-sc-search-icon.png) **Search** box to search for the name.
  - To create a new notification, click ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new**.
  - To modify an existing custom notification, select it and then click ![Edit notification icon.](../../media/m365-cc-sc-edit-icon.png) **Edit notification**.

#### Create new notification wizard

If you clicked ![Create new icon.](../../media/m365-cc-sc-create-icon.png) **Create new** on the **Positive reinforcement notification** page, a notification creation wizard opens.

The creation steps are identical as described in [Create end-user notifications](attack-simulation-traning-end-user-notifications.md#create-end-user-notifications).

> [!NOTE]
> On the **Define details** page, be sure to select the value **Positive reinforcement notification** for **Select notification type**. Don't select **Simulation notification**.

When you're finished, you're taken back to the **Positive reinforcement notification** page where the notification that you just created now appears in the **Select a positive reinforcement notification** list.

- To create a new notification, click ![Create new icon.](../../media/m365-cc-sc-create-icon.png).
- To modify the notification or add additional translations, select the notification from the list, and then click ![Edit notification icon.](../../media/m365-cc-sc-edit-icon.png) **Edit notification** to start the notification wizard as previously described (with most values already filled in). If the notification already has translations for the 12 supported languages, you can't add more translations.

Select the notification that you want to use, and then click **Next**.

## Simulation schedule

On the **Simulation schedule** page, select one of the following values:

- **Randomized**: You still need to select the schedule on the next page, but the simulations will launch at random times with the schedule.
- **Fixed**

When you're finished, click **Next**.

## Schedule details

What you see on the **Schedule details** page depends on whether you selected **Randomized** or **Fixed** on the previous page.

- **Randomized**: The following settings are available:
  - **Simulation start** section: Configure the following setting:
    - **Select the date you want the simulations to start from**
  - **Simulation scoping** section: Configure the following settings:
    - **Select the days of the week that simulations are allowed to start on**: Select one or more days of the week.
    - **Enter the maximum number of simulations that can be started between the start and end dates**: Enter a value from 1 to 10.
    - **Randomize send times**: Select this setting to randomize the send times.
  - **Simulation end** section: Configure the following setting:
    - **Select the date you want the simulations to end**

- **Fixed**: The following settings are available:
  - **Simulation start** section: Configure the following setting:
    - **Select the date you want the simulations to start from**
  - **Simulation recurrence** section: Configure the following settings:
    - **Select if you want simulations to launch weekly or monthly**: Select one of the following values:
      - **Weekly**: This is the default value.
      - **Monthly**
    - **Enter how often in weeks you want the simulations to recur for**: Enter a value from 1 to 99 weeks.
    - **Select the day of the week you want the simulations to start from**
  - **Simulation end** section: Selection one of the following values:
    - **Select the date you want the simulations to end**
    - **Enter the number of occurrences of the simulations to run before ending**: Enter a value from 1 to 10.

When you're finished, click **Next**.

## Launch details

On the **Launch details** page, configure the following additional settings for the automation:

- **Use unique payloads across simulations within an automation**: By default, this setting is not selected.
- **Target repeat offenders**: By default, this setting is not selected. If you select it, configure the following setting that appears:
  - **Enter the maximum number of times a user can be targeted within this automation**: Enter a value from 1 to 10.
- **Send simulation email based upon the user's current time zone setting from Outlook web app**: By default, this setting is not selected.
- **Display the drive-by technique interstitial data gathered page**: This setting is available only if you selected **Drive-by URL** on the **[Select social engineering techniques](#select-one-or-more-social-engineering-techniques)** page. By default, the setting is on (![Toggle on icon.](../../media/scc-toggle-on.png)).

## Review simulation automation

On the **Review simulation automation** page, you can review the details of your simulation automation.

You can select **Edit** in each section to modify the settings within the section. Or you can click **Back** or select the specific page in the wizard.

When you're finished, click **Submit**.
