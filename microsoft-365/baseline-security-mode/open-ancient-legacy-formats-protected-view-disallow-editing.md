---  
title: "Open ancient legacy formats in Protected View and disallow editing"  
description: Use Office Group policy to disallow editing of legacy formats in Microsoft 365 apps, like Word, Excel, PowerPoint.
author: kwekuako
ms.author: kwekua  
manager: dansimp
ms.date: 06/24/2025  
ms.topic: how-to
ms.service: microsoft-365-admin
ms.localizationpriority: medium
ms.collection: RestrictedMode
ms.custom: QuickDraft
audience: Admin
ai-usage: ai-assisted
ROBOTS: NOINDEX, NOFOLLOW
---

# Open ancient legacy formats in Protected View and disallow editing

As a Microsoft 365 admin, you want to protect and secure your business environment. **Baseline security mode** helps you protect and secure your organization.

Ancient legacy file formats in Microsoft 365 apps are vulnerable to memory corruption-related security issues. To mitigate these risks, administrators can configure settings to open these outdated formats in **Protected View** with editing disabled. This approach prevents potential exploits while still allowing users to view the content without risk.

When this setting is turned on, ancient legacy file formats will open in Protected View and users will be unable to edit them, even if saved in a trusted location. Users can save files to a modern file format, but they will be blocked from saving in legacy formats. In Excel, new external workbook links referencing ancient legacy formats will return a #BLOCKED error, and existing links will display the last successfully refreshed values but will no longer refresh.

The following ancient legacy file formats will open in Protected View with editing disabled:

- Word 2 and earlier binary documents
- Word 6.0 binary documents
- Word 95 binary documents
- Excel 2, 3, 4 Macrosheets and add-in files
- Excel 2, 3, 4 worksheets
- Excel 4 workbooks

## Turn off setting in the Microsoft 365 admin center

If you have turned this setting on but need to revert to the default behaviors (allowing trusted files to bypass Protected View and allowing users to override the editing block using Trust Center), you can turn off the setting directly in the Microsoft 365 admin center.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a> and select Org settings.
2. Select Baseline Security Mode, find the **Open ancient legacy formats in Protected View and disallow editing** setting, and switch the toggle to **Off**.

## Use Office Cloud Policy service

You can make also changes to the policy settings directly using the [Office Cloud Policy service](https://config.office.com/) if you need to modify the behavior or if you need to scope the setting to specific groups of users.

The following table contains the settings in Office Cloud Policy service that support this Baseline Security Mode setting. To revert to the default behavior, set these policies as not configured.

| Policy | Configuration Setting |
| ------ | ------------- |
| File Block includes trusted files | Enabled <br/><br/> This policy is enabled for Word, PowerPoint, Excel, and Visio. |
| File Block includes external link files | Enabled |
| Word 2 and earlier binary documents and templates | Open in Protected View |
| Word 6.0 binary documents and templates | Open in Protected View |
| Word 95 binary documents and templates | Open in Protected View |
| Excel 2 macrosheets and add-in files| Open in Protected View |
| Excel 3 macrosheets and add-in files | Open in Protected View |
| Excel 4 macrosheets and add-in files | Open in Protected View |
| Excel 2 worksheets | Open in Protected View |
| Excel 3 worksheets | Open in Protected View |
| Excel 4 worksheets | Open in Protected View |
| Excel 4 workbooks | Open in Protected View |
