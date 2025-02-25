---
title: Teams Shifts connector for Blue Yonder known issues
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: harrywong
ms.topic: troubleshooting
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Lists known issues when using the Team Shifts connector for Blue Yonder to integrate Shifts with Blue Yonder Workforce Management.
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

# Known issues: Teams Shifts connector for Blue Yonder

This article lists known issues for the [Microsoft Teams Shifts connector for Blue Yonder](shifts-connectors.md#microsoft-teams-shifts-connector-for-blue-yonder).

## You can map an instance to more than one team using PowerShell or the Microsoft 365 admin center

A Blue Yonder Workforce Management (Blue Yonder WFM) instance should only be mapped to one team at any given time in a connection instance.

However, when you use PowerShell or the Microsoft 365 admin center to set up a connection instance, it’s possible to map an instance to more than one team. We recommend that you avoid mapping an instance to multiple teams as it can result in syncing issues and unexpected behavior.

## Related articles

- [Shifts connectors](shifts-connectors.md)
- [Use the Shifts connector wizard to connect Shifts to Blue Yonder Workforce Management](shifts-connector-wizard.md)
- [Use PowerShell to connect Shifts to Blue Yonder Workforce Management](shifts-connector-blue-yonder-powershell-setup.md)
- [Use the Microsoft 365 admin center to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-blue-yonder-admin-center-manage.md)
- [Use PowerShell to manage your Shifts connection to Blue Yonder Workforce Management](shifts-connector-powershell-manage.md)
- [Manage the Shifts app](/microsoftteams/expand-teams-across-your-org/shifts/manage-the-shifts-app-for-your-organization-in-teams?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json)
