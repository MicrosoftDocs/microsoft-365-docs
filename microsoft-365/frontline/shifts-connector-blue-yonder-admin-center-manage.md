---
title: Use the Microsoft 365 admin center to manage your Shifts connection to Blue Yonder Workforce Management
author: LanaChin
ms.author: v-lanachin
ms.reviewer:
manager: samanro
ms.topic: article
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to manage your Shifts connection to Blue Yonder Workforce Management in the Microsoft 365 admin center.
ms.localizationpriority: high
ms.collection:
  - M365-collaboration
  - m365-frontline
appliesto:
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Use the Microsoft 365 admin center to manage your Shifts connection to Blue Yonder Workforce Management

## Overview

The [Microsoft Teams Shifts connector for Blue Yonder](shifts-connectors.md#microsoft-teams-shifts-connector-for-blue-yonder) enables you to integrate the Shifts app in Microsoft Teams with Blue Yonder Workforce Management (Blue Yonder WFM). After you set up a connection, your frontline workers can seamlessly view and manage their schedules in Blue Yonder WFM from within Shifts.

You can use the [Shifts connector wizard](shifts-connector-wizard.md) in the Microsoft 365 admin center or [PowerShell](shifts-connector-blue-yonder-powershell-setup.md) to create a connection. After a connection is set up, you can manage it in the Microsoft 365 admin center. The Connector Management page lists each connection that you've set up, along with information such as health status and sync interval details. You can also access the wizard to create a new connection or make changes to any of your existing connections. For example, you can update sync settings and team mappings.

> [!NOTE]
> You can also use PowerShell to manage a connection. For example, you can view an error report, change connection settings, and disable sync. To learn more, see [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md).

## Manage your connection

1. In the left navigation of the [Microsoft 365 admin center](https://admin.microsoft.com/), choose **Setup**, and then under **Featured collections**, select **Frontline workers**.
2. Select **Manage Shifts connectors**, and then choose **Manage**. Keep in mind that this option is available only if you've set up at least one connection, either using the wizard or PowerShell.

    Here, you'll see a list of all the connections you've set up through the wizard or PowerShell, along with information about each one. 

    :::image type="content" source="media/shifts-connector-blue-yonder-manage.png" alt-text="Screenshot of the Connector Management page in the Microsoft 365 admin center, showing a list of connections." lightbox="media/shifts-connector-blue-yonder-manage.png":::

    - To create a new connection, select **Add connector** at the top of the page to start the wizard.
    - To view more details about a connection, click the connection name. On the details page, you'll see health information, including mapping and account authorization errors and warnings (if any), the list of mappings (if any), and more. You can also choose **Edit** to update connection settings in the wizard.

      :::image type="content" source="media/shifts-connector-blue-yonder-manage-details.png" alt-text="Screenshot of the details page for a connection, showing connector health and mappings information." lightbox="media/shifts-connector-blue-yonder-manage-details.png":::

    - To make changes to a connection, choose **Edit** next to the connection. You'll be taken to the wizard, where you can update the settings that you want.
  
> [!NOTE]
> You can also go directly to the Connector Management page when you select the **Connector Management** button on the last page of the wizard during connection setup.

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management](shifts-connector-wizard.md)
- [Use PowerShell to connect Shifts to Blue Yonder Workforce Management](shifts-connector-blue-yonder-powershell-setup.md)
- [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md)
- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
