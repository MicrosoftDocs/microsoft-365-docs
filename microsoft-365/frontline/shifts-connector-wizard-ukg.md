---
title: Use the Shifts connector wizard to connect Shifts to UKG Pro Workforce Management
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: harrywong
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to use the Shifts connector wizard to integrate Shifts in Teams with UKG Pro Workforce Management.
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - teams-1p-app-admin
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 12/20/2024
---

# Use the Shifts connector wizard to connect Shifts to UKG Pro Workforce Management

## Overview

The [Microsoft Teams Shifts connector for UKG Pro Workforce Management](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-pro-workforce-management) enables you to integrate the Shifts app in Microsoft Teams with your UKG Pro Workforce Management (UKG Pro WFM) system. Your frontline workers can seamlessly view and manage their schedules in UKG Pro WFM from within Shifts.

In this article, we walk you through how to use the Shifts connector wizard in the Microsoft 365 admin center to connect Shifts to UKG Pro WFM.

> [!NOTE]
> If you prefer, you can use PowerShell to integrate Shifts with UKG Pro WFM. To learn more, see [Use PowerShell to connect Shifts to UKG Pro Workforce Management](shifts-connector-ukg-powershell-setup.md).

The wizard creates a connection to your UKG Pro WFM system and a connection instance. A connection instance applies the sync settings and team mappings that you choose.

- Sync settings determine the schedule information and what entities sync between UKG Pro WFM and Shifts. 
- Team mappings define the sync relationship between your UKG Pro WFM instances (also called WFM instances) and teams in Teams.

You can create one or more connection instances, each with different sync settings. For example, if your organization has multiple locations with different schedule requirements, create a connection instance with unique sync settings for each location. A WFM instance should only be mapped once to a team in Teams at any given time. However, it's possible in the wizard to have different connection instances with the same mappings. This means that you can create connection instances with duplicate mappings.

With UKG Pro WFM as the system of record, your frontline workers can efficiently manage their schedules and availability in Shifts on their devices. Frontline managers can continue to use UKG Pro WFM to set up schedules.

> [!NOTE]
> UKG Pro Workforce Management was formerly known as UKG Dimensions. You may see references to UKG Dimensions in the wizard.

### Terms used in this article

|Term |Definition |
|-----|-----------|
|Connection |A connection enables access to all WFM instances created in your UKG Pro WFM system. To create a connection, you provide your UKG Pro WFM details, which include your account username, password, and service URLs.|
|Connection instance |To create a connection instance, you configure the following settings: <ul><li>Sync settings that determine how and which schedule information syncs between UKG Pro WFM and Shifts</li><li> Team mappings to define the relationship between your WFM instances and teams in Teams</li></ul>|
|WFM instance|This term refers to a team in your UKG Pro WFM system, which is different than a team in Teams. |

## Prerequisites

Before you run the wizard, take time to review the information and complete all prerequisite and configuration tasks in [Prerequisites and requirements for the Teams Shifts connector for UKG Pro Workforce Management](shifts-connector-ukg-prerequisites.md).

Make sure that you complete all the tasks before you follow the steps in this article.

## Run the Shifts connector wizard

After you confirm that you meet all the prerequisites, you're ready to run the wizard and connect your UKG Pro WFM system to Shifts in Teams.

### Create a connection

1. In the left navigation menu of the [Microsoft 365 admin center](https://admin.microsoft.com/), choose **Setup**, and then under **Featured collections**, select **Frontline workers**.

1. Select **Connector Management Console**.
    :::image type="content" source="media/shifts-connector-wizard-get-started.png" alt-text="Screenshot of the details page for the Shifts connector wizard in the Microsoft 365 admin center." lightbox="media/shifts-connector-wizard-get-started.png":::

1. To create a new connection, choose **Add connection**.

1. In the Choose your connector pane, choose **UKG Dimensions**, and then select **Next** to create a UKG Pro WFM connection.
<a name="connection_details"> </a>

1. In the Connection settings pane, give your connection a unique name. It can't be longer than 100 characters or have any special characters.

    :::image type="content" source="media/shifts-connector-wizard-ukg-connection-details.png" alt-text="Screenshot of the Connection details page of the wizard, showing connection settings." lightbox="media/shifts-connector-wizard-ukg-connection-details.png":::

1. Enter your UKG Pro WFM information, and then select **Save connection**.
    - Account username
    - Account password
    - API URL
    - Application key
    - Client ID
    - Client secret
    - SSO URL

    Signing in with your username enables access to all instances created in UKG Pro WFM. If you don't know one or more of your connection details, contact UKG Pro WFM support.

    > [!NOTE]
    > - Check that your SSO URL is structured like this sample URL,  
    > https://contoso-sso.mykronos.com.
    > - Then, add this extra text at the end of the URL (after .com), structured like this (for a sample client ID XDV45GTaaaaab43342XA),  
    > https://contoso-sso.mykronos.com/oauth2/authorize?client_id=XDV45GTaaaaab43342XA.

To create another connection, go to the Connector Management Console page, and then select **Add connection**.

### Create a connection instance

After you create a connection, you can set up one or more connection instances in that connection.

The connections that you created are listed on the Connector Management Console page. Under the connection where you want to create a new instance, select **Create instance**.
    :::image type="content" source="media/shifts-connector-wizard-ukg-create-instance.png" alt-text="Screenshot of the Connector Management Console showing existing connections." lightbox="media/shifts-connector-wizard-ukg-create-instance.png":::

<a name="sync"> </a>
#### Choose settings

On the Instance settings page, you choose the information to sync from UKG Pro WFM to Shifts, the sync frequency, and whether Shifts users can make changes to the data.
    :::image type="content" source="media/shifts-connector-wizard-sync-settings.png" alt-text="Screenshot of the Sync settings page of the wizard, showing sync settings." lightbox="media/shifts-connector-wizard-sync-settings.png":::

1. Enter a name for your connection instance. It can't be longer than 100 characters or have any special characters.

2. Enter your Microsoft 365 system account. This is the [account that you created as a prerequisite](shifts-connector-ukg-prerequisites.md) that's a team owner of all the teams you want to map.

<a name="email"> </a>

3. Under **Email notification recipients**, choose who receives email notifications about this connection instance. You can add individual users and groups. The email notifications contain information about setup status and any issues or errors that may occur after the connection instance is set up.

4. Choose your sync settings.</br> For each of these settings, you have the following options to choose from:
     - **Shifts users will not see provider data**: Data won't sync between UKG Pro WFM and Shifts.
     - **Shifts users can see provider data**: Data syncing is unidirectional from UKG Pro WFM to Shifts.
     - **Shifts users can see and change provider data**: Data syncing is bidirectional between UKG Pro WFM and Shifts.

    > [!IMPORTANT]
    > Before you disable a feature by selecting the **Shifts users will not see provider data** option, be aware that:
    >
    > - If the **Schedules, groups, shifts, and activities** setting is disabled, then all other settings, such as **Time off** and **Employee availability**, and more, are also disabled.
    > - If the **Open shift** setting is disabled, **Open shift request** is also disabled.
    > - If the **Time off** setting is disabled, **Time off request** is also disabled.

5. Choose your sync frequency.

6. When you're done choosing your settings, select **Next**.

    > [!IMPORTANT]
    > If you chose any of the following options to disable open shifts, open shift requests, swap requests, offer shift requests, or time off requests, there's another step you need to do to hide the capability in Shifts.
    >
    > - Open shifts: **Shifts users will not see provider data**
    > - Swap requests: **Shifts users will not see provider data**
    > - Time off requests: **Shifts users will not see provider data**
    > - Offer shift requests: **Shifts users will not see provider data**
    >
    > After you run the wizard, make sure you follow the steps in the [Disable open shifts, open shifts requests, swap requests, and time off requests](#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests) section later in this article.

<a name="instances"> </a>
#### Map WFM instances to teams

Choose the WFM instances that you want to connect to Shifts, and then map each instance to a team in Teams. You can map up to 400 instances.

To complete this step, you can:

- [Manually map WFM instances](#manually-map-wfm-instances-to-teams)
- [Use a CSV file to map WFM instances](#use-a-csv-file-to-map-wfm-instances-to-teams)

##### Manually map WFM instances to teams

:::image type="content" source="media/shifts-connector-wizard-ukg-map.png" alt-text="Screenshot of wizard, showing the list of WFM instances." lightbox="media/shifts-connector-wizard-ukg-map.png":::

1. On the Mapping page, start by choosing the WFM instances that you want to map to teams in Teams.

2. Select the checkbox for each WFM instance you want to map. An instance is only mapped if the check box is selected.

3. Next, search for and choose the correct team in Teams.

    Keep in mind that teams that are already mapped to a WFM instance in this connection instance aren't available to map again.

4. Choose the time zone. The closest city is automatically filled in, but you can change it.

5. When you're done mapping all your teams, select **Next**.

##### Use a CSV file to map WFM instances to teams

1. On the Mapping page, choose **CSV upload tool**.

2. Select **Download template** to get the CSV mapping file. The template includes a list of all your WFM instances and their IDs. The top rows of your template will look like this:

   |UKG Dimensions Instance ID |UKG Dimensions Instance Name |Team ID |Team Name |Time Zone |
   |------|------|------|------|------|
   |Automatically prefilled |Automatically prefilled |Blank |Blank |Default*|

   And the bottom rows of your template will look like this:

   |UKG Dimensions Instance ID |UKG Dimensions Instance Name |Team ID |Team Name |Time Zone |
   |------|------|------|------|------|
   |Blank |Blank |Automatically prefilled |Automatically prefilled |Default*|

3. Choose a team that you want to map to a WFM instance. Cut and paste the Team ID and Team Name from the bottom half of your template to be in line with the WFM instance that you want. A completed row of your template should look like this:

   |UKG Dimensions Instance ID |UKG Dimensions Instance Name |Team ID |Team Name |Time Zone |
   |------|------|------|------|------|
   |Automatically prefilled |Automatically prefilled |Team ID that you moved |Team Name that you moved |Default*|

    Repeat this step for all your mappings.

4. Enter the correct location in the **Time Zone** column if needed.

    >[!NOTE]
    >The wizard supports approximately 460 locations. The time zone must be in tz format. If the specific location that you chose isn't supported, you'll see an error in the wizard. Try using the closest city or major city within the same time zone.

5. On the Mapping page, select **Browse** to find and upload your completed CSV file.

6. Choose **Done** if your file uploaded correctly. Otherwise, review the error report and upload a corrected file.

7. Your new mappings are listed on the Mappings page. Choose **Next**.

### Review and finish

Before finishing, review the summary of the connection instance creation process. If you need to make changes during the connection instance creation process, choose **Back**. When you're ready, select **Finish**.

:::image type="content" source="media/shifts-connector-wizard-review.png" alt-text="Screenshot of the Review page of the wizard, showing mappings." lightbox="media/shifts-connector-wizard-review.png":::

The wizard starts the process to set up the connection instance, which may take some time to complete. If you try to edit the connection instance before setup is complete, you most likely won't be able to view the mappings you created previously.

The email notification recipients you chose will receive email notifications about setup status in case there are any errors.

## Disable open shifts, open shifts requests, swap requests, and time off requests

> [!IMPORTANT]
> If you chose any of the following options to disable open shifts, open shift requests, swap requests, offer shift requests, or time off requests, there's another step you need to do to hide the capability in Shifts.
>
> - Open shifts: **Shifts users will not see provider data**
> - Swap requests: **Shifts users will not see provider data**
> - Time off requests: **Shifts users will not see provider data**
> - Offer shift requests: **Shifts users will not see provider data**
>
> After you edit your settings, make sure you follow the steps to [Disable open shifts, open shifts requests, swap requests, and time off requests.](/microsoft-365/frontline/shifts-connector-wizard-ukg#disable-open-shifts-open-shifts-requests-swap-requests-and-time-off-requests)

To hide open shifts, swap requests, and time off requests in Shifts, use the Graph API [schedule resource type](/graph/api/resources/schedule) to set the following parameters to ```false``` for each team that you mapped to a WFM instance:

- Open shifts: ```openShiftsEnabled```
- Swap requests:  ```swapShiftsRequestsEnabled```
- Time off requests: ```timeOffRequestsEnabled```
- Offer shift requests: ```offerShiftRequestsEnabled```

To hide open shifts requests in Shifts, go to **Settings** in Shifts, and then turn off the **Open shifts** setting.

<a name="manage"> </a>
## Manage your connection and connection instance

After a connection is set up, you can manage and make changes to it in the Microsoft 365 admin center or by using PowerShell.

### Use the Microsoft 365 admin center

The Connector Management Console page lists each connection and connection instance that you've set up, along with information such as health status and sync interval details. You can also access the wizard to create new connections and connection instances and make changes to any of your existing ones. For example, you can update sync settings and team mappings.

To learn more, see [Use the Microsoft 365 admin center to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-admin-center-manage.md).

### Use PowerShell

You can use PowerShell to view an error report, change connection settings, disable sync, and more. For step-by-step guidance, see [Use PowerShell to manage your Shifts connection to UKG Pro Workforce Management](shifts-connector-ukg-powershell-manage.md).

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Manage the Shifts app in Teams](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
