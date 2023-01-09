---
title: Use the Microsoft 365 admin center to manage your Shifts connection to Blue Yonder Workforce Management
author: LanaChin
ms.author: v-lanachin
ms.reviewer:
manager: samanro
ms.topic: how-to
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to manage your Shifts connection to Blue Yonder Workforce Management in the Microsoft 365 admin center.
ms.localizationpriority: high
ms.collection:
  - M365-collaboration
  - m365-frontline
  - tier2
appliesto:
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 10/28/2022
---

# Use the Microsoft 365 admin center to manage your Shifts connection to Blue Yonder Workforce Management

## Overview

The [Microsoft Teams Shifts connector for Blue Yonder](shifts-connectors.md#microsoft-teams-shifts-connector-for-blue-yonder) enables you to integrate the Shifts app in Microsoft Teams with Blue Yonder Workforce Management (Blue Yonder WFM). Your frontline workers can seamlessly view and manage their schedules in Blue Yonder WFM from within Shifts.

You can use the [Shifts connector wizard](shifts-connector-wizard.md) in the Microsoft 365 admin center or [PowerShell](shifts-connector-blue-yonder-powershell-setup.md) to create a connection and connector instances. After they're set up, you can manage them in the Microsoft 365 admin center. The Connector Management Console page lists each connection and connector instance that you've set up, along with information such as health status and sync interval details. You can also access the wizard to create a new connection and connector instances or make changes to any of your existing ones. For example, you can update sync settings and team mappings.

> [!NOTE]
> You can also use PowerShell to manage a connection. For example, you can view an error report, change connection settings, and disable sync. To learn more, see [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md).

## Manage your connection

1. In the left navigation of the [Microsoft 365 admin center](https://admin.microsoft.com/), choose **Setup**, and then under **Featured collections**, select **Frontline workers**.
2. Select **Connector Management Console**.

    Here, you'll see a list of all the connections and connector instances you've set up through the wizard or PowerShell, along with information about each one.

    :::image type="content" source="media/shifts-connector-blue-yonder-manage.png" alt-text="Screenshot of the Connector Management page in the Microsoft 365 admin center, showing a list of connections." lightbox="media/shifts-connector-blue-yonder-manage.png":::

    - To create a new connection, select **Add connection** at the top of the page.
    - To update connection settings, choose **Edit** next to an existing connection. You'll see the Connection settings pane, whee you can update the settings that you want.
    - To create a new connector instance, select **Create instance**.
    - To view more details about an existing connector instance, click the instance name. On the details page, you'll see health information, including mapping and account authorization errors (if any), the list of mappings (if any), and more. You can also choose **Edit** to update settings in the wizard.

      :::image type="content" source="media/shifts-connector-blue-yonder-manage-details.png" alt-text="Screenshot of the details page for a connection, showing connector health and mappings information." lightbox="media/shifts-connector-blue-yonder-manage-details.png":::

        For a complete list of error messages and how to resolve them, see [List of error messages](#list-of-error-messages) later in this article.

    - To make changes to an existing connector instance, choose **Edit** next to the instance name. You'll be taken to the wizard, where you can update the settings that you want.
  
> [!NOTE]
> You can also go directly to the Connector Management Console page when you select the **Connector Management** button on the last page of the wizard during connection setup.

## List of error messages

Here's the list of error messages that you may encounter and information to help you resolve them.

|Error type |Error details |Resolution |
|---------|---------|---------|
|Unable to authenticate workforce management system.|The workforce management system account credentials you've provided are invalid or this account doesn't have the required permissions.|Update your WFM service account credentials in the connection settings. To do this, do one of the following:<ul><li>In the Microsoft 365 admin center, choose **Edit** next to the connection on the Connector Management Console page.</li><li>Use the [Set-CsTeamsShiftsConnectionInstance](/powershell/module/teams/set-csteamsshiftsconnectioninstance) or [Update-CsTeamsShiftsConnectionInstance](/powershell/module/teams/update-csteamsshiftsconnectioninstance) cmdlet.</li><li>Use [this PowerShell script](shifts-connector-powershell-manage.md#change-connection-settings).</li></ul>|
|Unable to authenticate Graph. |Authentication failed. Ensure that you've entered valid credentials for the designated actor and have the required permissions.|Make sure that your Microsoft 365 system account (also known as designated actor) is added as a team owner.<br> Or, update your Microsoft 365 system account credentials in the connection settings.|
|Some users have failed to map correctly|Mapping failed for some users: \<X\> succeeded, \<X\> failed AAD user(s) and \<X\> failed workforce management system user(s).|Use the [Get-CsTeamsShiftsConnectionSyncResult](/powershell/module/teams/get-csteamsshiftsconnectionsyncresult) cmdlet or [this PowerShell script](shifts-connector-powershell-manage.md#user-mapping-errors) to identify the users for whom the mapping failed. Make sure that the users in the mapped team match the users in the WFM instance.|
|Unable to map a team or teams in this batch. |This designated actor profile doesn't have team ownership privileges. |Make sure your Microsoft 365 system account (also known as designated actor) is added as a team owner.<br>If you’ve changed your Microsoft 365 system account, add that account as a team owner, and update the connection settings to use that account.|
|    |This team is already mapped to an existing connector instance. |Unmap the team from the existing connector instance by using the [Remove-CsTeamsShiftsConnectionTeamMap](/powershell/module/teams/remove-csteamsshiftsconnectionteammap) cmdlet. Or, create a new connection to remap the team.|
|    |This timezone is invalid. The timezone passed in is not using tz database format.|Make sure that the time zone is correct, and then remap the team.|
|    |We can't find this connector instance.|Map the team to an existing connector instance.|
|    |This AAD team couldn't be found.|Make sure that the team exists or create a new team.|

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management](shifts-connector-wizard.md)
- [Use PowerShell to connect Shifts to Blue Yonder Workforce Management](shifts-connector-blue-yonder-powershell-setup.md)
- [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md)
- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
