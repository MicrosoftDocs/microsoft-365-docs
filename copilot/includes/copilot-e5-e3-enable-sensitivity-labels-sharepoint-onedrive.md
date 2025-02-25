---
author: MandiOhlinger
ms.author: mandia
manager: laurawi
ms.reviewer: cabailey
ms.service: microsoft-365-copilot
ms.topic: include
description: Enable Microsoft Purview sensitivity labels for files in SharePoint and OneDrive for Microsoft 365 Copilot.
ms.date: 11/19/2024
---

This step is a one-time configuration that is required to enable sensitivity labels for SharePoint and OneDrive. It's also required for Microsoft 365 Copilot to access encrypted files stored in these locations.

As with all tenant-level configuration changes for SharePoint and OneDrive, it takes about 15 minutes for the change to take effect. Then users can select sensitivity labels in Office on the web and you can create policies that automatically label files in these locations.

You have two options:

- **Option 1**: Select **Information Protection** > **Sensitivity labels**. If you see the following message, select **Turn on now**:

  :::image type="content" source="../media/microsoft-365-copilot-e5-guide/purview-sensitivity-labels-prompt.png" alt-text="In Microsoft Purview Information Protection, turn on sensitivity labels for SharePoint and OneDrive." lightbox="../media/microsoft-365-copilot-e5-guide/purview-sensitivity-labels-prompt.png":::

- **Option 2**: Use the `[Set-SPOTenant](/powershell/module/sharepoint-online/set-spotenant)` Windows PowerShell cmdlet.

To learn more about this configuration, see [Enable sensitivity labels for files in SharePoint and OneDrive](/purview/sensitivity-labels-sharepoint-onedrive-files).
