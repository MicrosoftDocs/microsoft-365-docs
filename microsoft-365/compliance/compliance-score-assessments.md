---
title: "Customize Microsoft Compliance Score with assessments"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Customize Microsoft Compliance Score by creating assessments to help you manage compliance for your organization."
---

# Customize Compliance Score (preview) with assessments

**In this article:** Learn how to customize Compliance Score by setting up your assessments. This article discusses the pre-configured **assessments** provided by Microsoft, explains how to modify assessments to suit your needs, and how to create your own assessments. This article also covers how to organize assessments into **groups**, working with **controls**, and creating **reports**.

## Introduction to assessments

Compliance Score helps you better manage compliance as you create assessments for the regulations and certifications that apply to your organization. Assessments are groupings of controls that help you evaluate whether you’ve met a compliance objective. The way to ensure you’re implementing policies and operational procedures to limit your compliance risk is to set up the most relevant assessments for you. 

## Data protection baseline default assessment

To get you started, Microsoft provides a **Default** assessment in Compliance Score for you that contains the Microsoft 365 data protection baseline. This baseline is a set of controls that includes key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

This assessment is used to calculate your initial score the first time you come to Compliance Score, before you configure any other assessments. Upon your first visit, Compliance Score is already collecting signals from your Microsoft 365 solutions. Even if your organization doesn't set up  additional assessments, you'll receive valuable and actionable insights on your organization’s current compliance posture relative to key data protection standards and regulations.

Because every organization has specific needs and accountabilities, Compliance Score relies on you to set up and manage your own assessments to help minimize and mitigate risk as comprehensively as possible.

## Assessment creation overview

There are three ways you can set up assessments:
1. Use a pre-configured assessment created by Microsoft.
2. Modify a pre-configured assessment to suit your own needs.
3. Create your own Custom Assessment.

> [!NOTE]
> Users must be assigned a role of compliance administrator, compliance data administrator, or security administrator in order to create or modify assessments. Learn more about [roles and permissions](compliance-score-setup.md#set-user-permissions-and-assign-roles).

### Use a pre-configured assessment

Compliance Score has multiple built-in assessments to cover a variety of regulations and certifications that align to industries, regions, and common data protection standards such as GDPR and ISO 27001. These assessments are based off of **templates** that include the necessary controls and improvement actions to fulfill the assessment’s objective.

View the full list of templates for assessments provided by Microsoft.  

To start using a built-in assessment for your organization, you’ll choose from among our pre-configured templates when you start [building the assessment from the wizard](#create-an-assessment).

### Modify a pre-configured assessment

You have the ability to modify the template of a built-in assessment in order to better suit your organization’s needs. For example, if you generally need to comply with HIPPA but require additional data protection or security measures, you can take our HIPPA template and add your own custom fields to create a new assessment that monitors your progress in the ways you require.

To set up this type of modified, customized assessment for your organization, you’ll first need to create a custom template. During public preview, you’ll need to visit Compliance Manager to create and manage your custom templates. Follow these instructions:

1. Decide which built-in assessment you want to modify by viewing the list of templates.
2. See the [Compliance Manager instructions to customize a template using the extension process](working-with-compliance-manager.md#customize-a-template-through-the-extension-process).
3. Once you’ve created your template and imported it into Compliance Manger, you can then create your new assessment in Compliance Score. Follow the process of building your assessment using the [assessment creation wizard](#create-an-assessment).

> [!NOTE]
> Learn  more about the [relationship between Compliance Score and Compliance Manager](compliance-score.md#relationship-to-compliance-manager) during public preview.

### Create your own Custom Assessment

You can create your own assessment entirely from scratch to track precisely what your organization needs. As with the assessment modification process above, creating your own assessment requires you to first create your own template for the assessment in Compliance Manager.

**To create your own Custom Assessment,** follow these instructions:

1. See the [instructions for creating your own template in Compliance Manager](working-with-compliance-manager.md#create-your-own-template-and-import-it-into-compliance-manager).
2. Once you’ve created your template and imported it into Compliance Manger, you can then create your new assessment in Compliance Score. Follow the process of building your assessment using the [assessment creation wizard](#create-an-assessment).

## Understand groups before creating assessments

Before you create or modify assessments, it’s important to understand how groups work. When you create a new assessment or modify an assessment, you’ll need to assign it to a group during that process. We therefore recommend planning a grouping strategy for your assessments before you create assessments.

### What are groups

Groups are containers that allow you to organize assessments and share common information and workflow tasks between assessments that have the same or related controls managed by you.

You can group assessments in a way that is logical to you, such as by year, standard, service, or based on your organization's teams, divisions, or geographies. Below are examples of two groups and their underlying assessments:

- **FFIEC IS assessments 2020**
  - Office 365 + FFIEC IS
  - Intune + FFIEC IS
- **Data security and privacy assessments**
  - Office 365 + ISO 27001:2013
  - Office 365 + ISO 27018:2014

### How to create a group

You create a new group during the process of [creating a new assessment](#create-an-assessment).

Groups cannot be created as standalone entities. A group must always contain at least one assessment, so in order to create a group, you must first create an assessment to put in the group.

### What to know when working with groups

- Group names must be unique within your organization.
- Groups do not have any security properties. All permissions are associated with assessments.
- Once you add an assessment to a group, the grouping cannot be changed. You can rename the assessment group, which changes the name of the assessment grouping for all the assessments associated with that group.
- Related assessment controls in different assessments within the same group automatically update when completed.
- If you add a new assessment to an existing group, common information from assessments in that group are copied to the new assessment.
- Groups can contain assessments for the same certification or regulation, but each group can only contain one assessment for a specific product-certification pair. For example, a group can't contain two assessments for Office 365 and NIST CSF. A group can contain multiple assessments for the same product only if the corresponding certification or regulation for each one is different.
- Deleting an assessment breaks the relationship between that assessment and the group.
- Groups cannot be deleted.
- When a change is made to an improvement that appears in multiple groups, that change is reflected in all instances of that improvement action.

## Create an assessment

To create an assessment in Compliance Score, follow the steps below:

1. From your assessments page, select **Create assessment**. An assessment wizard will appear in a large flyout pane.

2. **Select a template:** Choose a template to serve as the basis for your assessment. You can choose from among the pre-configured templates or a template you’ve modified or created. Use the filters to search available templates by industry, region, and regulation. Select the radio button next to your chosen template, then select **Next**.

> [!NOTE]
> See [instructions for creating and modifying templates](working-with-compliance-manager.md#templates). During public preview, template creation and management occurs in Compliance Manager.

3. **Name and group:** By default, the name provided is the name of the template you choose. You can select a different name for your assessment and type it in the **Assessment name** field. By default, assessment names must be unique within groups. If the name of your assessment matches the name of another assessment in any given group, you’ll receive an error asking you to create a different name.

4. Next you need to assign your assessment to a group. You can either:
    - Select **Use existing group** to assign it to a group you’ve already created; or
    - Select **Create new group** to create a new group and assign this assessment to it. Determine a name for your group and enter it in the field beneath the radio button.

> [!NOTE]
> Step 4 above is the process for creating groups.

5. **Review and finish:** The last screen of the wizard shows the template, name, and group chosen for the assessment. You can edit any of these settings from the links on the screen, which take you back to the relevant steps in the wizard. Once you’re satisfied with the settings, select **Create assessment**.

6. The next screen confirms that you’ve successfully created your new assessment. After you select Done, the wizard closes and your new assessment will appear in your list of assessments.

If you see an **Assessment failed** screen after selecting **Create assessment**, this may be due to XYZ. Select Try again and re-enter XYZ.

## Delete an assessment

When you delete an assessment, it is removed from the list on your assessments page. **Deleting an assessment is permanent; you cannot get it back.** If you want the same assessment again, it must be re-created from scratch. Deleting an assessment does/does not delete the controls within that assessment. Export a report before deleting?

To delete an assessment, follow the steps below:

1. From your assessments page, select the assessment you wish to delete to open that assessment’s details page.
2. From the assessment details page, select **Delete assessment** in the upper-right corner of your screen.
3. A window will appear asking you to confirm that you want to permanently delete the assessment. Select **Delete assessment** to close the window. Your assessment is now deleted from Compliance Score.

If you delete the only assessment in a group, then that group is also deleted from Compliance Score.

## Generate a report

You can export an assessment to an Excel file for compliance stakeholders in your organization or for external auditors and regulators.

On your assessment details page, just below your assessment status information, select **Generate report** to download the Excel file.

The report is a snapshot of the assessment as of the date and time of the export. The report contains the details for controls managed by both you and Microsoft for the assessment, control implementation status, control test date, test results, and links to uploaded evidence documents.

## Monitor assessment progress and controls

Each assessment has a details page that gives an at-a-glance view of your progress in completing the assessment. It shows the completion rate of controls within the assessment and test status of key improvement actions within those controls.

..insert screen shot..

### Overview tab

The overview tab contains a graph showing your percentage toward completion of the assessment. This graph contains a breakdown of points from actions you own, and points from actions owned by Microsoft, so you can see how many more points you need to complete the assessment.

The key improvement actions for controls in the assessment are listed in order of greatest potential impact to earn points. The associated graph details the aggregated test status of your improvement actions so you can quickly gauge what has been tested and what work still needs to be done.

### Controls tab

The controls tab displays detailed information for each control mapped to the assessment. The fields listed for each control are:
