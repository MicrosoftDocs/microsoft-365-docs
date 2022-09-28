---
title: "Format assessment template data in Excel for Microsoft Purview Compliance Manager"
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
search.appverid: 
- MOE150
- MET150
description: "Understand how to work with Excel data for assessment templates in Microsoft Purview Compliance Manager."
---

# Format assessment template data in Excel for Microsoft Purview Compliance Manager

When [creating](compliance-manager-templates-create.md), [modifying](compliance-manager-templates-modify.md), or [extending](compliance-manager-templates-extend.md) assessment templates in Compliance Manager, you will work with Excel spreadsheets that use a specific format and schema. These specifications must be followed for the files to import correctly.

## Download example spreadsheet

To view a sample spreadsheet, [download an example file](https://go.microsoft.com/fwlink/?linkid=2124865). You can use this for reference to create your own file.

If you plan to modify an existing template, start by viewing the template’s details in Compliance Manager and downloading its Excel file.

## Spreadsheet format

The Excel spreadsheet contains four tabs, three of which are required:

1. [Template](#template-tab) (required)
2. [ControlFamily](#controlfamily-tab) (required)
3. [Actions](#actions-tab) (required)
4. [Dimensions](#dimensions-tab) (optional)

When filling out your spreadsheet with template data, the spreadsheet **must include the tabs in the order listed above**, otherwise your data won't successfully import to a template.

### Template tab

The **Template** tab is required. The information in this tab provides metadata about the template. There are four required columns. The columns must retain the order on the Excel sheet as listed below. You can add your own column **after** the four columns to provide your own dimensions. If you do this, be sure to add them to the **Dimensions** tab.

- **title**: This is the title for your template, which must be unique. It can't share a name with another template you have in Compliance Manager, including your own templates or a Compliance Manager template.

- **product**: This is a required dimension. List the product associated with the template.

- **certification**: This is the regulation you're using for the template.

- **inScopeServices**: These are the services within the product that this assessment addresses (for example, if you listed Office 365 as the product, Microsoft Teams could be an in-scope service). You can list multiple services separated by two semi-colons.

> [!NOTE]
> The data you insert in the **product** and **certification** cells can't be edited after you import the spreadsheet to create or customize a template. Also, a group can't contain two assessments that have the same **product/certification** combination. You can have multiple templates with the same product/certification combination.

### ControlFamily tab

The **ControlFamily** tab is required.  The required columns in this tab, which must follow the order provided in the sample spreadsheet, are:

- **controlName**: This is the control name from the certification, standard, or regulation, which is typically some type of ID. Control names must be unique within a template. You can't have multiple controls with the same name in the spreadsheet.

- **controlFamily**: Provide a word or phrase for the controlFamily, which identifies a broad grouping of controls. A controlFamily doesn't have to be unique; it can be listed more than once in a spreadsheet. The same controlFamily can also be listed in multiple templates, though they have no relation to each other. Every controlFamily must be mapped to at least one control.

- **controlTitle**: Provide a title for the control. Whereas the controlName is a reference code, the title is a rich text format typically seen in the regulations.

- **controlDescription**: Provide a description of the control.

- **controlActionTitle**: This field relates your control to one or more actions, listed by their actionTitle. You can add multiple actions by separating them with two semi-colons with no space in between. Every control you list must include at least one existing action, and the action may be defined in the **Actions** tab of the same spreadsheet, be in a different template, or be created by Microsoft. Different controls can reference the same action.

### Actions tab

The **Actions** tab is required.  It designates improvement actions managed by your organization and not those of Microsoft, which already exist in Compliance Manager. The required columns for this tab, which must follow the order provided in the sample spreadsheet, are:

- **actionTitle**: This is the title for your action and is a required field. The title you provide must be unique. **Important**: if you reference an action you own that already exists (such as in another template) and you modify any of its elements in the subsequent columns, those changes will propagate to the same action in other templates.

- **implementationType**: In this required field, list one of the following three implementation types: 
  1) **Operational** - actions implemented by people and processes to protect the confidentiality, integrity, and availability of organizational systems, assets, data, and personnel (example: security awareness and training).      
  2) **Technical** - actions completed by using technology and mechanisms contained in the hardware, software, or firmware components of the information system to protect the confidentiality, integrity, and availability of organizational systems and data (example: multi-factor authentication).
  3) **Documentation** - actions implemented through documented policies and procedures establishing and defining the controls required to protect the confidentiality, integrity, and availability of organizational systems, assets, data, and personnel (example: an information security policy).

- **actionScore**: In this required field, provide a numeric score value for your action. The value must be a whole number ranging from 1 to 99; it cannot be 0, null, or blank. The higher the number, the greater its value toward improving your compliance posture. The image below demonstrates how Compliance Manager scores controls:

  ![Compliance Manager controls point values.](../media/compliance-score-action-scoring.png "Compliance Manager controls point values")

- **actionDescriptionTitle**: This is the title of the description and is required. This description title allows you to have the same action in multiple templates and surface a different description in each template.  This field helps you clarify what template the description is referencing. In most cases, you can put the name of the template you're creating in this field.

- **actionDescription**: Provide a description of the action. You can apply formatting such as bold text and hyperlinks. This is required field.

- **dimension-Action Purpose**: This is an optional field. If you include it, the header must include the "dimension-" prefix. Any dimensions you include here will be used as filters in Compliance Manager and appear on the improvement actions details page in Compliance Manager.

### Dimensions tab

The **Dimensions** tab is optional. However, if you reference a dimension elsewhere, you need to specify it here if it does not exist in a template you've already created or in a Microsoft template. The columns for this tab are listed below:

- **dimensionKey**: list as "product", "certifications," "action purpose"
- **dimensionValue**: examples: Office 365, HIPPA, Preventative, Detective

When you export an existing template, the exported spreadsheet will have the **Dimensions** tab, which lists all the dimensions used in the template.
