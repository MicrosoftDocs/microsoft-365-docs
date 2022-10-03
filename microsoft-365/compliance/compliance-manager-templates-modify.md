---
title: "Modify assessment templates in Microsoft Purview Compliance Manager"
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
- tier1
search.appverid: 
- MOE150
- MET150
description: "Understand how to modify assessment templates in Microsoft Purview Compliance Manager."
---

# Modify assessment templates in Microsoft Purview Compliance Manager

When working with assessments in Compliance Manager, you may want to modify an assessment template that you've created. The process is similar to the [template creation](compliance-manager-templates-create.md) process in that you'll upload a formatted Excel file with your template data.

However, there are details to be aware of as you format your file with changes to existing template data. **We recommend you review these instructions carefully to ensure you don't overwrite any existing data that you want to retain.**

To learn more about the format of this spreadsheet, see [Format your template data with Excel](compliance-manager-templates-format-excel.md).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format your Excel file to modify an existing template

From your **assessment templates** page, select the template you want to modify, which will bring up its details page. Then select **Export to Excel**. An Excel file with all your template data will download. Save the file to your local machine.

To work with this file, jump to a section below to quickly find the instructions you need:

- [Edit the main template attributes](#edit-the-main-template-attributes)
- [Add an improvement action](#add-an-improvement-action)
- [Edit an improvement action's information](#edit-an-improvement-actions-information)
- [Change an improvement action's name](#change-an-improvement-actions-name)
- [Remove an improvement action](#remove-an-improvement-action)
- [Remove a control](#remove-a-control)

### Edit the main template attributes

On the **Templates** tab, you can edit anything in the **title** column, the **inScopeServices** column, and in any other column you may have added. However, you can't edit anything in the **product** or **certification** columns.

### Add an improvement action

1. Go to the **Actions** tab. Add your information in the required fields in the first empty row underneath your existing actions.
2. Go to your **ControlFamily** tab. Find the row containing the control your improvement action maps to. Add your new action to the **controlActionTitle** column in that row (remember to separate multiple actions in this field with two semi-colons, no space in between).
3. Save your spreadsheet.

### Edit an improvement action's information

You can change any improvement action's information *except for its title*. You can edit any cell from columns B onward, and when you import the file back into the template, the improvement actions in that template will now contain the updated data.

You cannot edit the **actionTitle** (column A) because if you do, Compliance Manager considers this to be a new improvement action. If you want to change an improvement action's name, see the instructions immediately below.

### Change an improvement action's name

If you want to change the name of an improvement action, you have to explicitly designate in the spreadsheet that you are replacing an existing name with a new name. Follow these steps:

1. In the **Actions** tab of your spreadsheet, add a new column to the spreadsheet after column A.
2. In this new column, which is now column B, put as its header in row 1: **oldActionTitle**.
3. Copy the contents of column A and paste them into column B. This puts your existing improvement action titles, which are what you want to change, into column B.
4. In column A, **actionTitle**, delete the old name and replace it with the new name for your improvement action.

Note that action titles, both for your improvement actions and for Microsoft actions, must be written in English in order to be recognized when referenced in controls.

### Remove an improvement action

To remove an improvement action from a template, you'll need to remove it from every control that references it. Follow the steps below to modify your spreadsheet:

1. On the **ControlFamily** tab, search for for the title of the improvement action you want to remove.
2. Delete the improvement action's title in the cells where it appears. If the improvement action is the only action on that row, delete the entire row (which removes the control).
3. On the **Actions** tab, delete the row that contains the improvement action you're deleting.
4. Save your spreadsheet.

When you import your spreadsheet back into the template, your improvement action will be removed from the template.

Removing an improvement action from a template does not completely remove the improvement action from Compliance Manager. That action can still be referenced by another template.

### Remove a control

To remove a control, modify your spreadsheet by following the steps below, then re-import your spreadsheet:

1. On the **ControlFamily** tab, find the control you want to remove in the **controlName** column.
2. Delete the row for that control.
    - If this deleted control contains improvement actions that aren't referenced by any other control, you'll need to remove those improvement actions from the **Actions** tab. Otherwise, you'll receive a validation error.

3. Save your spreadsheet.

When you import your spreadsheet back into the template, your control will be removed from the template.

## Modify template info in Compliance Manager

After your Excel file is completed and saved, follow these steps.

1. Open the assessment template page again and select your template. At your template's details page, select **Modify template** to initiate the modification wizard.
2. At the **Upload file** screen, select **Browse** to find and upload your Excel file.
3. If there are no problems with your file, the next screen shows the name of the file uploaded. Select **Next** to continue (if you need to change the file, select **Upload a different file**).
    - If there's a problem with your file, an error message at the top explains what's wrong. You'll need to fix your file and upload it again. Errors will result if your spreadsheet is formatted improperly, or if there's invalid information in certain fields.

4. The **Review and finish** screen shows the number of improvement actions and controls and the maximum score for the template. When ready to approve, select **Next**.
5. The last screen confirms that the template has been modified. Select **Done** to exit the wizard.

Your template will now include the changes you made. Any assessments that use this modified template will now show pending updates, and you'll need to accept the updates to the assessments to reflect the changes made in the template. Learn more about [updates to assessments](compliance-manager-assessments.md#accept-updates-to-assessments).

> [!NOTE]
> If you use Compliance Manager in a language other than English, you'll notice that some text appears in English when you export a template to Excel. The titles of actions (both your improvement actions and, where applicable, Microsoft actions) must be in English to be recognized by controls. If you make changes to an action title, be sure to write it in English so that the file imports correctly.
