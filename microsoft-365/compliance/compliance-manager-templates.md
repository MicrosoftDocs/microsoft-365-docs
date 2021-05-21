---
title: "Working with assessment templates in Microsoft Compliance Manager"
f1.keywords:
- NOCSH
ms.author: jmgriffee
author: jmgriffee
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Understand how to use and manage templates for building assessments in Microsoft Compliance Manager. Create and modify templates using a formatted Excel file."
---

# Working with assessment templates in Compliance Manager

**In this article:** Understand **how templates work** and **how to manage them** from your assessment templates page. Get instructions for **creating** new templates, **extending** and **modifying** existing templates, **formatting your template data with Excel**, and exporting template **reports**.

> [!IMPORTANT]
> The assessment templates that are available to your organization depends on your licensing agreement. [Review the details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

## Templates overview

A template is a framework of controls for creating an assessment in Compliance Manager. Our comprehensive set of templates can help your organization comply with national, regional, and industry-specific requirements governing the collection and use of data. We refer to templates by the same name as their underlying certification or regulation, such as the EU GDPR template and the ISO/IEC 27701:2019 template.

## Template availability and licensing

The templates available for use are based on your organization’s licensing agreement ([view licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#compliance-manager)). There are two categories of templates: included and premium.

#### Included and premium templates

1. **Included templates** are granted by your license and cover key regulations and requirements.
2. **Premium templates** can be purchased to expand your library and cover specific needs. Once purchased, you may create as many assessments from a template as needed. [Learn how you can purchase premium templates](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#compliance-manager).

View the [full list of templates](compliance-manager-templates-list.md).

#### Active and inactive templates

Templates will display an activation status as either active or inactive:

- A template is considered **active** once you create an assessment from that template.
- A template is considered **inactive** if your organization isn’t using it for an assessment.

When you purchase a premium template and create an assessment from it, that template is active for one year. Your purchase will automatically renew unless you cancel.

#### Activated templates counter

Your assessment page and assessment templates page have an **activated templates** counter near the top. The counter displays the number of templates in use out of the number eligible to use according to your licensing agreement.

For example, if your counter shows 2/5, this means your organization has activated 2 templates out of the 5 that are available to use.

If your counter shows 5/2, this indicates that your organization exceeds its limits and needs to purchase 3 of the premium templates in use.

For further details, see [Compliance Manager licensing guidance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#compliance-manager).

## View and manage templates

The assessment templates page in Compliance Manager displays a list of templates and key details about them. The list includes templates provided by Compliance Manager as well as any templates your organization has modified or created. You can apply filters to find a template based on certification, product scope, country, industry, who created it, and whether the template is enabled for assessment creation.

Select a template from its row to bring up its details page. This page contains a description of the template and further information about certification, scope, and controls details. From this page you can select the appropriate buttons to create an assessment, export the template data to Excel, or modify the template.

## Format template data with Excel

The Excel spreadsheet ([download an example](https://go.microsoft.com/fwlink/?linkid=2124865)) used to create or modify templates has a specific format and schema that must be used in order to import correctly into Compliance Manager. It contains four tabs, three of which are required:

1. [Template](#template-tab) (required)
2. [ControlFamily](#controlfamily-tab) (required)
3. [Actions](#actions-tab) (required)
4. [Dimensions](#dimensions-tab) (optional)

When filling out your spreadsheet with template data, the spreadsheet **must include the tabs in the order listed above**, otherwise your data won't successfully import to a template.

##### Template tab

The **Template** tab is required. The information in this tab provides metadata about the template. There are four required columns. The columns must retain the order on the Excel sheet as listed below. You can add your own column **after** the four columns to provide your own dimensions. If you do this, be sure to add them to the **Dimensions** tab.

- **title**: This is the title for your template, which must be unique. It can't share a name with another template you have in Compliance Manager, including your own templates or a Compliance Manager template.

- **product**: This is a required dimension. List the product associated with the template.

- **certification**: This is the regulation you're using for the template.

- **inScopeServices**: These are the services within the product that this assessment addresses (for example, if you listed Office 365 as the product, Microsoft Teams could be an in-scope service). You can list multiple services separated by two semi-colons.

> [!NOTE]
> The data you insert in the **product** and **certification** cells can't be edited after you import the spreadsheet to create or customize a template. Also, a group can't contain two assessments that have the same **product/certification** combination. You can have multiple templates with the same product/certification combination.

##### ControlFamily tab

The **ControlFamily** tab is required.  The required columns in this tab, which must follow the order provided in the sample spreadsheet, are:

- **controlName**: This is the control name from the certification, standard, or regulation, which is typically some type of ID. Control names must be unique within a template. You can't have multiple controls with the same name in the spreadsheet.

- **controlFamily**: Provide a word or phrase for the controlFamily, which identifies a broad grouping of controls. A controlFamily doesn't have to be unique; it can be listed more than once in a spreadsheet. The same controlFamily can also be listed in multiple templates, though they have no relation to each other. Every controlFamily must be mapped to at least one control.

- **controlTitle**: Provide a title for the control. Whereas the controlName is a reference code, the title is a rich text format typically seen in the regulations.

- **controlDescription**: Provide a description of the control.

- **controlActionTitle**: This is the title of an action that you want to relate to this control. You can add multiple actions by separating by two semi-colons with no space in between. Every control you list must include at least one action, and the action must exist (which means you can list an action that you list on the **Actions** tab of the same spreadsheet, an action that exists in a different template, or an action created by Microsoft). Different controls can reference the same action.

##### Actions tab

The **Actions** tab is required.  It designates improvement actions managed by your organization and not those of Microsoft, which already exist in Compliance Manager. The required columns for this tab, which must follow the order provided in the sample spreadsheet, are:

- **actionTitle**: This is the title for your action and is a required field. The title you provide must be unique. **Important**: if you reference an action you own that already exists (such as in another template) and you modify any of its elements in the subsequent columns, those changes will propagate to the same action in other templates.

- **implementationType**: In this required field, list one of the three implementation types below:
    - **Operational** - actions implemented by people and processes to protect the confidentiality, integrity, and availability of organizational systems, assets, data, and personnel (example: security awareness and training)
    - **Technical** - actions completed by using technology and mechanisms contained in the hardware, software, or firmware components of the information system to protect the confidentiality, integrity, and availability of organizational systems and data (example: multi-factor authentication)
    - **Documentation** - actions implemented through documented policies and procedures establishing and defining the controls required to protect the confidentiality, integrity, and availability of organizational systems, assets, data, and personnel (example: an information security policy)

- **actionScore**: In this required field, provide a numeric score value for your action. The value must be a whole number ranging from 1 to 99; it cannot be 0, null, or blank. The higher the number, the greater its value toward improving your compliance posture. The image below demonstrates how Compliance Manager scores controls:

![Compliance Manager controls point values](../media/compliance-score-action-scoring.png "Compliance Manager controls point values")

- **actionDescriptionTitle**: This is the title of the description and is required. This description title allows you to have the same action in multiple templates and surface a different description in each template.  This field helps you clarify what template the description is referencing. In most cases, you can put the name of the template you're creating in this field.

- **actionDescription**: Provide a description of the action. You can apply formatting such as bold text and hyperlinks. This is required field.

- **dimension-Action Purpose**: This is an optional field. If you include it, the header must include the "dimension-" prefix. Any dimensions you include here will be used as filters in Compliance Manager and appear on the improvement actions details page in Compliance Manager.

##### Dimensions tab

The **Dimensions** tab is optional. However, if you reference a dimension elsewhere, you need to specify it here if it does not exist in a template you've already created or in a Microsoft template. The columns for this tab are listed below:

- **dimensionKey**: list as "product", "certifications," "action purpose"
- **dimensionValue**: examples: Office 365, HIPPA, Preventative, Detective

When you export an existing template, the exported spreadsheet will have the **Dimensions** tab, which lists all the dimensions used in the template.

## Create an assessment template

To create your own new template for custom assessments, you'll use your specially formatted Excel spreadsheet to assemble the necessary control data. After completing the spreadsheet, you will import it into Compliance Manager.

#### Required roles

Only users who hold a Global Administrator or  Compliance Manager Administration role can create and modify templates. Learn more about [roles and permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles).

### Create new template in Compliance Manager

1. Go to your **assessment templates** page in Compliance Manager.
2. Select **Create new template**. A template creation wizard will open.
3. Choose the type of template you want to create. In this case, select **Create a custom template**, then select **Next**.
4. At the **Upload file** screen, select **Browse** to find and upload your formatted Excel file containing all the required template data.
5. If there are no problems with your file, the name of the file uploaded will be displayed. Select **Next** to continue. (If you need to change the file, select **Upload a different file**).
    - If there’s an error with your file, an error message at the top explains what’s wrong. You’ll need to fix your file and upload it again. Errors will result if your spreadsheet is formatted improperly, or if there’s invalid information in certain fields.
6. The **Review and finish** screen shows the number of improvement actions and controls and the maximum score for the template. When ready to approve, select **Create template.** (If you need to make changes, select **Back**.)
7. The last screen confirms a new template has been created. Select **Done** to exit the wizard.
8. You’ll arrive at your new template’s details page, where you can [create your assessment](compliance-manager-assessments.md#create-assessments).

## Extend an assessment template

Compliance Manager offers the option to add your own controls and improvement actions to an existing Microsoft-provided template. This process is called extending a Microsoft template. When you extend a template, it can still receive updates released by Microsoft, which may happen when there are changes to the related regulation or product (see [Accept updates to assessments](compliance-manager-assessments.md#accept-updates-to-assessments)).

To prepare, you’ll need to assemble a specially formatted Excel spreadsheet to import the necessary template data. The Excel files follow the same general format outlined above, but there are special requirements for extensions. See these additional points to help prevent errors:

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

## Modify a template

You may want to modify a template you’ve already created, such as to add controls, or add or remove improvement actions. The process is similar to the template creation process in that you’ll upload formatted Excel file with your template data.

However, there are details to be aware of as you format your file with changes to existing template data. **We recommend you review these instructions carefully to ensure you don’t overwrite any existing data that you want to retain.**

### Format your Excel file to modify an existing template

From your **assessment templates** page, select the template you want to modify, which will bring up its details page. Then select **Export to Excel**. An Excel file with all your template data will download. Save the file to your local machine.

To work with this file, jump to a section below to quickly find the instructions you need:

- [Edit the main template attributes](#edit-the-main-template-attributes)
- [Add an improvement action](#add-an-improvement-action)
- [Edit an improvement action’s information](#edit-an-improvement-actions-information)
- [Change an improvement action’s name](#change-an-improvement-actions-name)
- [Remove an improvement action](#remove-an-improvement-action)
- [Remove a control](#remove-a-control)

#### Edit the main template attributes

On the **Templates** tab, you can edit anything in the **title** column, the **inScopeServices** column, and in any other column you may have added. However, you can't edit anything in the **product** or **certification** columns.

#### Add an improvement action

1. Go to the **Actions** tab. Add your information in the required fields in the first empty row underneath your existing actions.
2. Go to your **ControlFamily** tab. Find the row containing the control your improvement action maps to. Add your new action to the **controlActionTitle** column in that row (remember to separate multiple actions in this field with two semi-colons, no space in between).
3. Save your spreadsheet.

#### Edit an improvement action's information

You can change any improvement action's information *except for its title*. You can edit any cell from columns B onward, and when you import the file back into the template, the improvement actions in that template will now contain the updated data.

You cannot edit the **actionTitle** (column A) because if you do, Compliance Manager considers this to be a new improvement action. If you want to change an improvement action's name, see the instructions immediately below.

#### Change an improvement action’s name

If you want to change the name of an improvement action, you have to explicitly designate in the spreadsheet that you are replacing an existing name with a new name. Follow these steps:

1. In the **Actions** tab of your spreadsheet, add a new column to the spreadsheet after column A.
2. In this new column, which is now column B, put as its header in row 1: **oldActionTitle**.
3. Copy the contents of column A and paste them into column B. This puts your existing improvement action titles, which are what you want to change, into column B.
4. In column A, **actionTitle**, delete the old name and replace it with the new name for your improvement action.

Note that action titles, both for your improvement actions and for Microsoft actions, must be written in English in order to be recognized when referenced in controls.

#### Remove an improvement action

To remove an improvement action from a template, you'll need to remove it from every control that references it. Follow the steps below to modify your spreadsheet:

1. On the **ControlFamily** tab, search for for the title of the improvement action you want to remove.
2. Delete the improvement action's title in the cells where it appears. If the improvement action is the only action on that row, delete the entire row (which removes the control).
3. On the **Actions** tab, delete the row that contains the improvement action you're deleting.
4. Save your spreadsheet.

When you import your spreadsheet back into the template, your improvement action will be removed from the template.

Removing an improvement action from a template does not completely remove the improvement action from Compliance Manager. That action can still be referenced by another template.

#### Remove a control

To remove a control, modify your spreadsheet by following the steps below, then re-import your spreadsheet:

1. On the **ControlFamily** tab, find the control you want to remove in the **controlName** column.
2. Delete the row for that control.
    - If this deleted control contains improvement actions that aren't referenced by any other control, you'll need to remove those improvement actions from the **Actions** tab. Otherwise, you'll receive a validation error.

3. Save your spreadsheet.

When you import your spreadsheet back into the template, your control will be removed from the template.

### Modify template info in Compliance Manager

After your Excel file is completed and saved, follow these steps.

1. Open the assessment template page again and select your template. At your template’s details page, select **Modify template** to initiate the modification wizard.
2. At the **Upload file** screen, select **Browse** to find and upload your Excel file.
3. If there are no problems with your file, the next screen shows the name of the file uploaded. Select **Next** to continue (if you need to change the file, select **Upload a different file**).
    - If there’s a problem with your file, an error message at the top explains what’s wrong. You’ll need to fix your file and upload it again. Errors will result if your spreadsheet is formatted improperly, or if there’s invalid information in certain fields.

4. The **Review and finish** screen shows the number of improvement actions and controls and the maximum score for the template. When ready to approve, select **Next**.
5. The last screen confirms that the template has been modified. Select **Done** to exit the wizard.

Your template will now include the changes you made. Any assessments that use this modified template will now show pending updates, and you’ll need to accept the updates to the assessments to reflect the changes made in the template. Learn more about [updates to assessments](compliance-manager-assessments.md#accept-updates-to-assessments).

> [!NOTE]
> If you use Compliance Manager in a language other than English, you’ll notice that some text appears in English when you export a template to Excel. The titles of actions (both your improvement actions and Microsoft actions) must be in English to be recognized by controls. If you make changes to an action title, be sure to write it in English so that the file imports correctly.

## Export a template

You can export an Excel file that contains all of a template’s data. You’ll need to export a template in order to modify it, since this will be the Excel file you edit and upload in the [modification process](#modify-a-template).

To export your template, go to your template details page and select the **Export to Excel** button.

Note that when exporting a template you extended from a Compliance Manager template, the exported file will only contain the attributes you added to the template. The exported file won’t include the original template data provided by Microsoft. To get such a report, see the instructions for [exporting an assessment report](compliance-manager-assessments.md#export-an-assessment-report).
