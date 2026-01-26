---  
title: "Open old legacy formats in Protected View and save as modern format"  
description: Use Office Group policy to disallow editing of old legacy formats in Microsoft 365 apps, like Word, Excel, PowerPoint.
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

# Open legacy formats in Protected View and save as modern format

As a Microsoft 365 admin, you want to protect and secure your business environment. **Baseline security mode** helps you protect and secure your organization.

Many legacy file formats in Microsoft 365 apps, such as older Word, Excel, and PowerPoint files, are prone to memory corruption vulnerabilities. By opening legacy formats in **Protected View**, you can minimize the risk of malicious code execution, while allowing users to edit their content safely.

When this setting is turned on, legacy file formats open in Protected View, even if saved in a trusted location. Users can choose to edit the files and save them to a modern file format, but they are blocked from saving in old legacy formats. In Excel, new external workbook links referencing old legacy formats return a #BLOCKED error, and existing links display the last successfully refreshed values but won't refresh.

The following legacy file formats open in Protected View:

- Word 2007 and later Binary Documents and Templates
- Word 2003 Binary Documents and Templates
- Word 2003 and Plain XML Documents
- Word XP Binary Documents and Templates
- Word 2000 Binary Documents and Templates
- Word 97 Binary Documents and Templates
- Legacy Converters for Word
- PowerPoint 97-2003 Presentations, Shows, Templates, and Add-in Files
- Legacy Converters for PowerPoint
- Excel 97-2003 Add-in Files
- Excel 97-2003 Workbooks and Templates
- Excel 95-97 Workbooks and Templates
- Excel 95 Workbooks
- Legacy Converters for Excel

## Turn off setting in the Microsoft 365 admin center

If you have turned this setting on but need to revert to the default behaviors (not opening files in Protected View, allowing files to be saved in these formats, and allowing external workbook links to reference files), you can turn off the Baseline Security Mode setting directly in the Microsoft 365 admin center.

1. Go to the Microsoft 365 admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">https://admin.cloud.microsoft</a> and select Org settings.
1. Select Baseline Security Mode, find the **Open old legacy formats in Protected View and save as modern format**, and switch the toggle to **Off**.

## Use Office Cloud Policy service

You can make changes to the policy settings directly using the [Office Cloud Policy service](https://config.office.com/) if you need to modify the behavior -- for example, allowing files in a certain old legacy format to bypass Protected View while continuing to open all other old legacy format files in Protected View -- or if you need to scope the setting to specific groups of users.

The following table contains the settings in Office Cloud Policy service that support this Baseline Security Mode setting. To revert to the default behavior, set these policies as not configured.

| Policy | Configuration Setting |
| ------ | ------------- |
| File Block includes trusted files | Enabled <br/><br/> This policy is enabled for Word, PowerPoint, Excel, and Visio. |
| File Block includes external link files | Enabled |
| Word 2007 and later binary documents and templates | Allow editing and open in Protected View |
| Word 2003 and plain xml documents | Allow editing and open in Protected View |
| Word XP binary documents and templates | Allow editing and open in Protected View |
| Word 2000 binary documents and templates | Allow editing and open in Protected View |
| Word 97 binary documents and templates| Allow editing and open in Protected View |
| Legacy converters for Word | Allow editing and open in Protected View |
| PowerPoint 97-2003 presentations, shows, templates and add-in files | Allow editing and open in Protected View |
| Legacy converters for PowerPoint** | Allow editing and open in Protected View |
| Excel 97-2003 add-in files | Save blocked |
| Excel 97-2003 workbooks and templates | Allow editing and open in Protected View |
| Excel 95-97 workbooks and templates | Allow editing and open in Protected View |
| Excel 95 workbooks | Allow editing and open in Protected View |
| Legacy converters for Excel | Allow editing and open in Protected View |

