---
title: "Create assessment templates in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 01/18/2023
audience: Admin
ms.topic: article
ms.custom: admindeeplinkMAC
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid: 
- MOE150
- MET150
description: "Learn how to create a custom assessment template in Microsoft Purview Compliance Manager using a formatted Excel file."
---

# Create a custom assessment template

To create your own new template for custom assessments in Compliance Manager, you'll use a specially formatted Excel spreadsheet to assemble the necessary control data. After completing the spreadsheet, you will import it into Compliance Manager.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Required roles

Only users who hold a Global Administrator or Compliance Manager Administration role can create and modify templates. Learn more about [roles and permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles).

## Create new template in Compliance Manager

1. Start by creating a formatted Excel file that contains your template's data. Get detailed instructions at [Format assessment template data with Excel](compliance-manager-templates-format-excel.md).
1. When your Excel file is ready, go to your **assessment templates** page in Compliance Manager and select **Create new template**. A template creation wizard will open.
1. Choose the type of template you want to create. In this case, select **Create a custom template**, then select **Next**.
1. At the **Upload file** screen, select **Browse** to find and upload your formatted Excel file containing all the required template data.
1. If there are no problems with your file, the name of the file uploaded will be displayed. Select **Next** to continue. (If you need to change the file, select **Upload a different file**).
    - If there’s an error with your file, an error message at the top explains what’s wrong. You’ll need to fix your file and upload it again. Errors will result if your spreadsheet is formatted improperly, or if there’s invalid information in certain fields.
1. The **Review and finish** screen shows the number of improvement actions and controls and the maximum score for the template. When ready to approve, select **Create template.** (If you need to make changes, select **Back**.)
1. The last screen confirms a new template has been created. Select **Done** to exit the wizard.
1. You’ll arrive at your new template’s details page, where you can [create your assessment](compliance-manager-assessments.md#create-assessments).

### Modifying your templates

You can make changes to a template after you create it; for example, to add or remove an improvement action, or to change an action's name or other information. Visit [Modify assessment templates](compliance-manager-templates-modify.md) for detailed instructions.
