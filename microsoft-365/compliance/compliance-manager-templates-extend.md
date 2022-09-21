---
title: "Extend assessment templates in Microsoft Purview Compliance Manager"
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
- M365-security-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- highpri
search.appverid: 
- MOE150
- MET150
description: "Understand how to extend assessment templates in Microsoft Purview Compliance Manager to add and modify controls."
---

# Extend assessment templates in Microsoft Purview Compliance Manager

Compliance Manager offers the option to add your own controls and improvement actions to an existing template. This process is called extending a template.

To extend a template, you will use special instructions for modifying template data, depending on whether you’re extending Microsoft assessment templates or universal assessment templates.

## Extend Microsoft assessment templates

When you extend a Microsoft template, such as one created for use with Microsoft 365, it can still receive updates released by Microsoft. Updates may happen when there are changes to the related regulation or product (see [Accept updates to assessments](compliance-manager-assessments.md#accept-updates-to-assessments)).

### Prepare template data and create extension

To prepare, you’ll need to assemble a specially formatted Excel spreadsheet to import the necessary template data. The Excel files follow the same format outlined on [Format assessment template data with Excel](compliance-manager-templates-format-excel.md), but there are special requirements for extensions. See these additional points to help prevent errors:

- Your spreadsheet should contain only the actions and controls you want to add to the assessment.
- The spreadsheet can’t contain any of the controls or actions that already exist in the assessment you want to modify.
- Consider including “extension” in your template’s title, for example, “GDPR – [your company name] extension.” This makes it easier to identify in the list on your **assessment templates** page as distinct from the standard Microsoft-provided template or a custom template with a similar name.

After you format your spreadsheet, follow the steps below.

1. Go to your **Assessment templates** page and select **Create new template**. A template creation wizard will open.

2. Choose the type of template you want to create. In this case, select **Extend a Microsoft template**, then **Select Microsoft template**.

3. A template selection flyout pane appears on the right side of your screen, showing a list of all templates and their status of active or inactive. Your **activated templates** counter shows how many templates are currently in use out of the total number available to use. If you’re over your limit, a message bar will provide notice.

4. A template selection flyout pane appears on the right side of your screen. Use **Search** to apply filters for locating the template you want

5. Once you locate your template, select the radio button to the left of its name, then select **Save**.

6. The next screen shows the template you selected. If correct, select **Next**. (If incorrect, choose **Select a different template** to choose again.)

7. At the **Upload file** screen, select **Browse** to find and upload your formatted Excel file containing all the required template data.

8. If there are no problems with your file, the next screen shows the name of the file uploaded. Select **Next** to continue (if you need to change the file, select **Upload a different file**).

    - If there’s a problem with your file, an error message at the top explains what’s wrong. You’ll need to fix and re-upload your file. Errors will result if your spreadsheet is formatted improperly, or if there’s invalid information in certain fields.

9. The **Review and finish** screen shows the number of improvement actions and controls and the maximum score for the template. When ready to approve, select **Next**. (If you need to make changes, select **Upload a different file**.)

10. The last screen confirms a new template has been created. Select **Done** to exit the wizard.

11. You’ll arrive at your new template’s details page. From here you can create your assessment by selecting **Create assessment**. For guidance, see [Build and manage assessments](compliance-manager-assessments.md#create-assessments).

## Extend universal assessment templates

Universal versions of templates can also be extended to customize your product-specific assessments. You will receive a special extension template when you create an assessment using a universal template and the assessment has a unique product and certification combination. This file can be modified to meet your needs. For guidance on how to edit the template, see the instructions on [modifying a template](compliance-manager-templates-modify.md).

When editing a universal template, all content in the template can be changed, but doing so will break inheritance with the parent template. This means that it will no longer automatically receive updates from Microsoft if the parent template is refreshed.
