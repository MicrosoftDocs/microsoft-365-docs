---
title: "Create assessment templates in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: article
ms.custom: admindeeplinkMAC
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- highpri
- tier1
search.appverid: 
- MOE150
- MET150
description: "Understand how to create templates for assessments in Microsoft Purview Compliance Manager. Create and modify templates using a formatted Excel file."
---

# Create an assessment template in Microsoft Purview Compliance Manager

To create your own new template for custom assessments in Compliance Manager, you'll use a specially formatted Excel spreadsheet to assemble the necessary control data. After completing the spreadsheet, you will import it into Compliance Manager.

To learn about formatting your spreadsheet, see [Format assessment template data with Excel](compliance-manager-templates-format-excel.md).

## Required roles

Only users who hold a Global Administrator or Compliance Manager Administration role can create and modify templates. Learn more about [roles and permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles).

## Create new template in Compliance Manager

1. Go to your **assessment templates** page in Compliance Manager.
2. Select **Create new template**. A template creation wizard will open.
3. Choose the type of template you want to create. In this case, select **Create a custom template**, then select **Next**.
4. At the **Upload file** screen, select **Browse** to find and upload your formatted Excel file containing all the required template data.
5. If there are no problems with your file, the name of the file uploaded will be displayed. Select **Next** to continue. (If you need to change the file, select **Upload a different file**).
    - If there’s an error with your file, an error message at the top explains what’s wrong. You’ll need to fix your file and upload it again. Errors will result if your spreadsheet is formatted improperly, or if there’s invalid information in certain fields.
6. The **Review and finish** screen shows the number of improvement actions and controls and the maximum score for the template. When ready to approve, select **Create template.** (If you need to make changes, select **Back**.)
7. The last screen confirms a new template has been created. Select **Done** to exit the wizard.
8. You’ll arrive at your new template’s details page, where you can [create your assessment](compliance-manager-assessments.md#create-assessments).
