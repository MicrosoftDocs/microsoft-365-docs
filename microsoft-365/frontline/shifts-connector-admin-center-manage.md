---
title: Use the Microsoft 365 admin center to manage your Shifts connection to your workforce management system
author: LanaChin
ms.author: v-lanachin
ms.reviewer:
manager: samanro
ms.topic: article
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to manage your Shifts connection to your workforce management system in the Microsoft 365 admin center.
ms.localizationpriority: high
ms.collection:
  - M365-collaboration
  - m365-frontline
appliesto:
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Use the Microsoft 365 admin center to manage your Shifts connection to your workforce management system

## Overview

[Shifts connectors](shifts-connectors.md) enable you to integrate the Shifts app in Microsoft Teams with your workforce management (WFM) system. After you set up a connection, your frontline workers can seamlessly view and manage their schedules in your WFM system from within Shifts.

This article applies to you if you've set up a connection using one of the following connectors and methods.

|Connector|Connection setup|
|---------|---------|
|[Microsoft Teams Shifts connector for Blue Yonder](shifts-connectors.md#microsoft-teams-shifts-connector-for-blue-yonder)|Use the [Shifts connector wizard](shifts-connector-wizard.md) or [PowerShell](shifts-connector-blue-yonder-powershell-setup.md) to connect Shifts to Blue Yonder Workforce Management.|
|[Microsoft Teams Shifts connector for UKG Dimensions](shifts-connectors.md#microsoft-teams-shifts-connector-for-ukg-dimensions) (preview)|Use the [Shifts connector wizard](shifts-connector-wizard-ukg.md) or [PowerShell](shifts-connector-ukg-powershell-setup.md) to connect Shifts to UKG Dimensions.|

After a connection is set up, you can manage it in the Microsoft 365 admin center. The Manage Shifts connectors page lists each connection that you've set up, along with information such as health status and sync interval details. You can also access the wizard to make changes to any of your connections. For example, you can update sync settings and team mappings.

> [!NOTE]
> You can also use PowerShell to manage a connection. For example, you can view an error report, change connection settings, and disable sync. To learn more, see [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md) or [Use PowerShell to manage your Shifts connection to UKG Dimensions](shifts-connector-ukg-powershell-manage.md).

This article assumes that you've already set up a connection, either by using the wizard or PowerShell.

## Manage your connection

1. In the left navigation of the [Microsoft 365 admin center](https://admin.microsoft.com/), choose **Setup**, and then under **Featured collections**, select **Frontline workers**.
2. Select **Manage Shifts connectors**, and then choose **Manage**. Keep in mind that this option is available only if you've set up at least one connection.

    Here, you'll see a list of all the connections you've set up through the wizard and PowerShell, along with information about each one.

    :::image type="content" source="media/shifts-connector-wizard-ukg-manage.png" alt-text="Screenshot of the Manage Shifts connectors page in the Microsoft 365 admin center, showing a list of connections." lightbox="media/shifts-connector-wizard-ukg-manage.png":::

    To make changes to a connection, choose **Edit** next to the connection. You'll be taken to the wizard, where you can update the settings that you want.

## Related articles

- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
