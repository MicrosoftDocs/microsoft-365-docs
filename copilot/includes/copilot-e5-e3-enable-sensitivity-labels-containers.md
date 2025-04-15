---
author: MandiOhlinger
ms.author: mandia
manager: laurawi
ms.reviewer: cabailey
ms.service: microsoft-365-copilot
ms.topic: include
description: Enable and configure sensitivity labels for containers that affect Microsoft 365 Copilot.
ms.date: 03/06/2025
---

Instead, the label settings can restrict access to the container. This restriction provides an extra layer of security when you use Copilot. If a user can't access the site or workspace, Copilot can't access it on behalf of that user.

For example, you can set the privacy setting to **Private**, which restricts site access to only approved members in your organization. When the label is applied to the site, it replaces any previous setting and locks the site for as long as the label is applied. This feature is a more secure setting than letting anybody access the site and allowing users to change the setting. When only approved members can access the data, it helps prevent oversharing of data that Copilot might access.

To configure any label settings for groups and sites, you must enable this feature in your tenant and then synchronize your labels. This configuration is a one-time configuration and uses PowerShell. To learn more, see [How to enable sensitivity labels for containers and synchronize labels](/purview/sensitivity-labels-teams-groups-sites#how-to-enable-sensitivity-labels-for-containers-and-synchronize-labels).

You can then edit your sensitivity labels, or create new sensitivity labels specifically for groups and sites:

1. For the sensitivity label scope, select **Groups & sites**. Remember, you must have already run the PowerShell commands. If you didn't, you can't select this scope.

    To learn more, see [How to enable sensitivity labels for containers and synchronize labels](/purview/sensitivity-labels-teams-groups-sites#how-to-enable-sensitivity-labels-for-containers-and-synchronize-labels).

2. Select the groupings of settings to configure. Some of the settings have backend dependencies before they can be enforced, like Conditional Access that must be already configured. The privacy setting, which is included in **Privacy and external user access settings**, doesn't have any backend dependencies.

3. Configure the settings you want to use and save your changes.

For more information, including details of all the available label settings that you can configure for groups and sites, see [Use sensitivity labels to protect content in Microsoft Teams, Microsoft 365 groups, and SharePoint sites](/purview/sensitivity-labels-teams-groups-sites).
