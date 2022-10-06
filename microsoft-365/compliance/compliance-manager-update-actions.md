---
title: "Update improvement actions and bring compliance data into Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: article
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
description: "Migrate your existing compliance data into Microsoft Purview Compliance Manager using an Excel based upload process."
---

# Update improvement actions and bring compliance data into Compliance Manager

**In this article:** Learn how to migrate your organization's existing compliance activities into Compliance Manager and update multiple improvement actions at once by uploading a formatted Excel file.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Overview

Compliance Manager enables organizations to bring their existing compliance activity data and evidence into the Compliance Manager solution. By uploading a specially formatted Excel file, organizations who are new to Compliance Manager can migrate compliance activities completed in other systems into Compliance Manager and quickly start increasing their overall compliance score.

This upload process also gives new and existing Compliance Manager users greater flexibility and ability to update improvement actions on a larger scale. For example, you can:

- [Add test results and evidence](compliance-manager-improvement-actions.md#perform-work-and-store-documentation) to multiple improvement actions that were tested in a system other than Compliance Manager.
- [Assign improvement actions](compliance-manager-improvement-actions.md#assign-improvement-actions) to various users based on the actions' score potential.
- Update the [implementation status](compliance-manager-improvement-actions.md#change-implementation-details) or [testing status](compliance-manager-improvement-actions.md#change-test-status) of multiple improvement actions all at one time.
- Change improvement actions' [testing source](compliance-manager-improvement-actions.md#update-testing-source) from automatic to manual implementation and testing.
- [Parent the testing source](compliance-manager-improvement-actions.md#parent-testing-source) of multiple actions at one time, so that those actions inherit the implementation and testing status of another action.

## Getting started

To migrate existing data into Compliance Manager or to perform a bulk update of improvement actions, you can start from one of two places in Compliance Manager:

- From **Assessments** page: Helps you update specific assessments with information from elsewhere, such as test results or evidence for actions that were tested by a separate system. 
- From **Improvement actions** page: Facilitates updating multiple actions at once, such as assigning them to users, changing implementation or test status, and adding notes and evidence.

To begin the process of migrating data or updating actions, [follow the steps outlined below](#steps-for-updating-actions).

> [!IMPORTANT]
> - Only the improvement actions managed by your organization, not Microsoft managed actions, can be updated by this process. (Learn more about [types of improvement actions](compliance-score-calculation.md#action-types-and-points).)
> - Improvement actions must already be associated to an  assessment before you can update them through this process. (Learn more about [building and managing assessments](compliance-manager-assessments.md).)

## Migrating your existing work into Compliance Manager

If you're new to Compliance Manager, the steps below illustrate the basic workflow for bringing your existing compliance activities into Compliance Manager:

1. **Create an assessment**: Compliance Manager can recommend assessments that may be most relevant to your organization, or you can create one through a guided process. Visit [Create assessments](compliance-manager-assessments.md#create-assessments) for instructions.

2. **Export improvement actions**: You'll export an Excel file containing the action data that you want to update. It may make more sense to start the export from your **Assessments** page, but you can also export from the **Improvement actions** page. See the [steps outlined below](#steps-for-updating-actions).

3. **Update the improvement action Excel file**: Use the instructions on the **How to update actions** tab of the Excel file to add your information.

4. **Upload the Excel file**: Upload your edited Excel file by selecting the **Upload actions** command on the **Assessments** or **Improvement actions** page.

## Updating multiple improvement actions at once

To update the status, evidence, notes, or other data in multiple improvement actions at one time, you'll follow the basic flow outlined below:

1. **Export improvement actions.** Export the improvement actions you want to update, staring either from your **Improvement actions** page or your **Assessments** page. The export is a downloaded Excel file containing improvement action data. See the [steps outlined below](#steps-for-updating-actions).

2. **Update the improvement action Excel file.** Use the instructions on the **How to update actions** tab of the Excel file to add or update the information in the specially formatted Excel file.

3. **Upload the Excel file.** Upload your edited Excel file by selecting the **Upload actions** command on the **Assessments** or **Improvement actions** page.

> [!NOTE]
> The improvement action update process can't be used to add new improvement actions to Compliance Manager. Adding a new action requires the [creation of a custom assessment template](compliance-manager-templates-create.md), which involves a different type of Excel file with action and control-mapping data. Refer to the [template formatting instructions](compliance-manager-templates-format-excel.md); in particular, the "Actions" tab instructions.

> [!NOTE]
> If you export the improvement actions from an assessment, the exported Excel file will include control-mapping data for that assessment. However, you won't be able to change the control-mapping data when you edit your Excel file.

## Steps for updating actions

The following steps outline the process for bringing compliance activity data into your assessments and updating improvement actions.

1. In Compliance Manager, begin from either from the **Assessments** page or the **Improvement actions** page.

2. Export the improvement actions that you want to update:

    a. From the **Improvement actions** page: Find the improvement actions you want to update, and select the checkbox to the left of their names. Then select the **Export actions** command above the list of actions.
    
    b. From the **Assessments** page: Find the assessment or assessments you want to update, and select the checkbox to the left of their names. Then select the **Export actions** command above the list of assessments.

4. An Excel file will download, which contains all the data related to the actions. Open the file and refer to the formatting instructions on the tab labeled **How to update actions.**

5. Edit the information on the **Action Update** tab of the spreadsheet according to the formatting instructions. Then save your updated version of the Excel file to your computer.

6. On your **Assessments** page or **Improvement actions** page, select the **Update actions** command, which will open the improvement actions update wizard.

7. The first page in the wizard lists the main prerequisites: that all improvement actions must be associated to at least one assessment, and that your data needs to be formatted in an Excel file for upload. Check the boxes next to the reminders, then continue the process by selecting **Next**.

8. On the **Import updated improvement actions** page, select **Browse** to locate your updated Excel file from its saved location, then select **Next**. If there are any problems with the format of your file, an error message will give instructions for fixing the problem. Upload your corrected file again, then select **Next**.

9. On the **Review and finish** page, review the summary showing the number of actions that will be updated, their associated assessments, and how they affect your compliance score. From here you can upload a different file, or continue with the upload by selecting **Update actions**.

10. When your file has been successfully uploaded, you'll see a confirmation screen. Select **Finish** to exit the wizard and arrive back at the page where you began the update actions process.

Most of the updates will take effect right away, but it may take up to a day for all the updated information to be fully reflected in Compliance Manager.

> [!NOTE]
> Control mapping won't be included in the Excel file that's downloaded when you *Export* actions. Control mapping is handled via the process of creating an assessment template using a [differently formatted Excel file for importing template data](compliance-manager-templates-format-excel.md).
