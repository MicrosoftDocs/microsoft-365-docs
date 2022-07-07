---
title: "Update improvement actions and bring compliance data into Compliance Manager"
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
- M365-security-compliance
- m365solution-compliancemanager
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
description: "Migrate your existing compliance data into Microsoft Purview Compliance Manager using an Excel based upload process."
---

# Bring your compliance data into Microsoft Purview Compliance Manager

**In this article:** Learn how to migrate your organization's existing compliance activities into Compliance Manager and update multiple improvement actions at once by uploading a formatted Excel file.

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

- From **Assessments** page: Helps you update specific assessments with information from elsewhere, such as test results or evidence for actions that were tested by a separate system. [Visit these instructions below](#updating-actions-from-the-assessments-page).
- From **Improvement actions** page: Facilitates updating multiple actions at once, such as assigning them to users, changing implementation or test status, and adding notes and evidence. [Visit these instructions below](#updating-actions-from-the-improvement-actions-page).

> [!IMPORTANT]
> - Only the improvement actions managed by your organization, not Microsoft managed actions, can be updated by this process. (Learn more about [types of improvement actions](compliance-score-calculation.md#action-types-and-points).)
> - Improvement actions must already be associated to an  assessment before you can update them through this process. (Learn more about [building and managing assessments](compliance-manager-assessments.md).)

## Migrating your existing work into Compliance Manager

If you're new to Compliance Manager, follow these steps to bring your existing compliance activities into Compliance Manager:

1. **Create an assessment**: Compliance Manager can recommend assessments that may be most relevant to your organization, or you can create one through a guided process. Visit [Create assessments](compliance-manager-assessments.md#create-assessments) for instructions.

2. **Export improvement actions**: You'll export an Excel file containing the action data that you want to update. It may make more sense to start the export from your [Assessments page](#updating-actions-from-the-assessments-page), but you can also export from the [Improvement actions](#updating-actions-from-the-improvement-actions-page) page.

3. **Update the improvement action Excel file**: Use the instructions on the **How to update actions** tab of the Excel file to add your information.

4. **Upload the Excel file**: Upload your edited Excel file by selecting the **Upload actions** command on the **Assessments** or **Improvement actions** page.

## Updating multiple improvement actions at once

Follow the steps below to update status, evidence, notes, or other data in multiple improvement actions at one time.

1. **Export improvement actions.** Export the improvement actions you want to update, staring either from your [Improvement actions](#updating-actions-from-the-improvement-actions-page) page or your [Assessments page](#updating-actions-from-the-assessments-page). The export is a downloaded Excel file containing improvement action data.

2. **Update the improvement action Excel file.** Use the instructions on the **How to update actions** tab of the Excel file to add or update the information in the specially formatted Excel file.

3. **Upload the Excel file.** Upload your edited Excel file by selecting the **Upload actions** command on the **Assessments** or **Improvement actions** page.

> [!NOTE]
> The improvement action update process can't be used to add new improvement actions to Compliance Manager. To add a new improvement action that doesn't already exist in Compliance Manager, you'll need to [create a custom assessment template](compliance-manager-templates-create.md). A custom template  requires you to format and upload a different Excel spreadsheet with action and control-mapping data. See specifically the "Actions tab" formatting instructions at [how to format assessment template data in Excel](compliance-manager-templates-format-excel.md).  

## Updating actions from the Improvement actions page

Follow the instructions below to update improvement actions by starting from the **Improvement actions** page. You can filter your list of actions to more easily select the actions you want to update.

1. In Compliance Manager, go to the **Improvement actions** page.

2. Select the checkbox next to the improvement actions you want to update, then select the **Export actions** command, located above the list of actions.

3. An Excel file will download, which contains all the data related to the actions. Open the file and refer to the formatting instructions on the tab labeled **How to update actions.**

4. Edit the information on the **Action Update** tab of the spreadsheet according to the formatting instructions. Then save your updated version of the Excel file to your computer.

5. On the **Improvement actions** page, select the **Update actions** command, located above the list of actions. This action will open an improvement actions update wizard.

6. The first page reminds you of the main prerequisites. Check the boxes next to the reminders, then continue the process by selecting **Next**.

7. On the **Import updated improvement actions** page, select **Browse** to locate your updated Excel file from the location you saved it. When After selecting your file, select **Next**. If there are any problems with the format of your file, an error message will give instructions for fixing the problem. Upload your corrected file again, then select **Next**.

8. On the **Review and finish** page, review the summary showing the number of actions that will be updated, their associated assessments, and how they affect your compliance score. From here you can upload a different file, or continue with the upload by selecting **Update actions**.

9. When your file has been successfully uploaded, you'll see a confirmation screen. Select **Finish** to exit the wizard and arrive back at your **Improvement actions** page.

Most of the updates will take effect right away, but it may take up to a day for all the updated information to be fully reflected in Compliance Manager.

> [!NOTE]
> Control mapping won't be included in the Excel file that's downloaded when you *Export* actions. Control mapping is handled via the process of creating an assessment template using a [differently formatted Excel file for importing template data](compliance-manager-templates-format-excel.md).

## Updating actions from the Assessments page

Follow the instructions below to update improvement actions by starting from the **Assessments** page. When you select an assessment, the exported Excel file will contain all the improvement actions for controls that are mapped to that assessment.

1. In Compliance Manager, go to the **Assessments** page.

2. Select the checkbox next to the assessment containing the improvement actions you want to update, then select the **Export actions** command, located above the list of actions.

3. An Excel file will download, which contains all the data related to the actions. Open the file and refer to the formatting instructions on the tab labeled **How to update actions.**

4. Edit the information on the **Action Update** tab of the spreadsheet according to the formatting instructions. Then save your updated version of the Excel file to your computer.

5. On the **Assessments** page, select the **Update actions** command, located above the list of actions. This action will open an improvement actions update wizard.

6. The first page reminds you of the main prerequisites. Check the boxes next to the reminders, then continue the process by selecting **Next**.

7. On the **Import updated improvement actions** page, select **Browse** to locate your updated Excel file from the location you saved it. When After selecting your file, select **Next**. If there are any problems with the format of your file, an error message will give instructions for fixing the problem. Upload your file again, then select **Next**.

8. On the **Review and finish** page, review the summary showing the number of actions that will be updated, their associated assessments, and how they affect compliance score. From here you can upload a different file, or continue with the upload by selecting **Update actions**.

9. When your file has been successfully uploaded, you'll see a confirmation screen. Select **Finish** to exit the wizard and arrive back at your **Improvement actions** page.

Most of the updates will take effect right away, but it may take up to a day for all the updated information to be fully reflected in Compliance Manager.

> [!NOTE]
> Control mapping won't be included in the Excel file that's downloaded when you *Export* actions. Control mapping is handled via the process of creating an assessment template using a [differently formatted Excel file for importing template data](compliance-manager-templates-format-excel.md).

