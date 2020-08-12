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
description: "Design customization Microsoft Compliance Score by creating assessments to help you manage compliance for your organization."
---

# Customize Compliance Score (preview) with assessments

**In this article:** Learn how to customize Compliance Score by setting up ready to use **assessments**. Read how to modify the **template** for an assessment and create your own Custom Assessments to suit your organization’s needs. This article also explains how to organize assessments into **groups**, work with **controls**, and export assessment **reports**.

## Introduction to assessments

Compliance Score helps you manage compliance with assessments for the regulations and certifications that apply to your organization. Assessments are groupings of controls from a specific regulation, standard, or policy. Compliance Score makes it easy to start tracking your compliance by providing ready to use assessments that cover a variety of industry and regional regulations and certifications.

Each assessment is created from a template, which serves as a framework containing the necessary controls and improvement actions for completing the assessment. Setting up the most relevant assessments for your organization helps ensure you’re implementing policies and operational procedures that can limit your compliance risk.

All of your assessments are listed on the assessments page. [Learn more](compliance-score-setup.md#assessments-page) about how to filter your view of your assessments and interpret status states.

## Data protection baseline default assessment

To get you started, Microsoft provides a **default** assessment in Compliance Score that contains the Microsoft 365 data protection baseline. This baseline is a set of controls that includes key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

This assessment is used to calculate your initial score the first time you come to Compliance Score, before you configure any other assessments. Compliance Score collects initial signals from your Microsoft 365 solutions. You’ll see at a glance how your organization is performing relative to key data protection standards and regulations, and see suggested improvement actions to take.

Because every organization has specific needs, Compliance Score relies on you to set up and manage your own assessments to help minimize and mitigate risk as comprehensively as possible.

## Assessment creation overview

There are three ways you can set up assessments:

1. Choose a ready to use assessment.
2. Modify the [template of an assessment](compliance-score-templates.md) to suit your own needs.
3. Create your own Custom Assessment.

Users must hold a role of global administrator, compliance administrator, compliance data administrator, or security administrator in order to create or modify assessments. Learn more about [roles and permissions](compliance-score-setup.md#set-user-permissions-and-assign-roles).

> [!NOTE]
> Any assessments created or modified in Compliance Score will be also be reflected in Compliance Manager. Learn more about the [relationship between Compliance Score and Compliance Manager](compliance-score.md#relationship-to-compliance-manager).

### Ready to use assessments

Kickstart your compliance journey by choosing from among Compliance Score’s selection of [templates](compliance-score-templates.md) for creating assessments. Templates contain the controls and improvement actions necessary for each particular assessment. Compliance Score’s templates cover regulations and certifications that align to industries, regions, and common data protection standards, such as GDPR and ISO 27001.

**To set up an assessment**, choose one of the templates when you start  [building the assessment from the wizard](#create-an-assessment).

### Modify the template of an assessment

You have the ability to modify Compliance Score templates for assessments in order to better suit your organization’s needs. For example, if you generally need to comply with HIPAA but require additional data protection or security controls, you can take our HIPAA template and add your own custom fields to create a new assessment that monitors your progress in the ways you require. During public preview, you’ll need to go to Compliance Manger to modify templates.

**To modify the template of an assessment**, follow these instructions:

1. View the list of available [templates](compliance-score-templates.md) in Compliance Score to determine which one you want to modify.
2. See the [Compliance Manager instructions to customize a template using the extension process](working-with-compliance-manager.md#customize-a-template-through-the-extension-process).
3. Once you’ve created your template and imported it into Compliance Manger, you can then create your new assessment in Compliance Score. Follow the process of building your assessment using the [assessment creation wizard](#create-an-assessment).

> [!NOTE]
> Learn  more about the [relationship between Compliance Score and Compliance Manager](compliance-score.md#relationship-to-compliance-manager) during public preview.

### Create your own Custom Assessment

You can create your own assessment entirely from scratch to track precisely what your organization needs. As with the modification process outlined above, creating your own assessment requires you to first create your own template for the assessment in Compliance Manager.

**To create your own Custom Assessment**, follow these instructions:

1. Read how to [create your own template in Compliance Manager](working-with-compliance-manager.md#create-your-own-template-and-import-it-into-compliance-manager).
2. Once you’ve created your template and imported it into Compliance Manger, you can then create your new assessment in Compliance Score. Follow the process of building your assessment using the [assessment creation wizard](#create-an-assessment).

## Understand groups before creating assessments

Before you create or modify assessments, it’s important to understand how groups work. When you create an assessment, you’ll need to assign it to a group during that process. We therefore recommend planning a grouping strategy for your assessments before you create assessments.

### What are groups

Groups are containers that allow you to organize assessments. You can group assessments in a way that is logical to you, such as by year or regulation, or based on your organization's divisions or geographies. Below are examples of two groups and their underlying assessments:

- **FFIEC IS assessments 2020**
  - Office 365 + FFIEC IS
  - Intune + FFIEC IS
- **Data security and privacy assessments**
  - Office 365 + ISO 27001:2013
  - Office 365 + ISO 27018:2014

When two different assessments in the same group share improvement actions that are managed by you, any updates you make to an action's implementation details or status will automatically synchronize to the same action in any other assessment in the group. This synchronization allows you to implement one improvement action and meet several requirements across multiple regulations.

### How to create a group

You create a group during the process of [creating a new assessment](#create-an-assessment).

Groups cannot be created as standalone entities; a group must contain at least one assessment. In order to create a group, you must first create an assessment to put in the group.

### What to know when working with groups

- Group names must be unique within your organization.
- Groups don't have security properties. All permissions are associated with assessments.
- Once you add an assessment to a group, the grouping cannot be changed.
- Related assessment controls in different assessments within the same group automatically update when completed.
- If you add a new assessment to an existing group, common information from assessments in that group are copied to the new assessment.
- Groups can contain assessments for the same certification or regulation, but each group can only contain one assessment for a specific product-certification pair. For example, a group can't contain two assessments for Office 365 and NIST CSF. A group can contain multiple assessments for the same product only if the corresponding certification or regulation for each one is different.
- Deleting an assessment breaks the relationship between that assessment and the group.
- Groups can't be deleted.
- When a change is made to an improvement that appears in multiple groups, that change is reflected in all instances of that improvement action.

## Create an assessment

To create an assessment in Compliance Score, follow the steps below:

1. From your assessments page, select **Add assessment**. An assessment wizard will appear in a large flyout pane.

2. **Select a template:** Choose a [template](compliance-score-templates.md) to serve as the basis for your assessment. You can choose a ready to use template, or a template you’ve modified or created. Select the radio button next to your chosen template, then select  **Next**.

> [!NOTE]
> See [instructions for creating and modifying templates](working-with-compliance-manager.md#templates), a process handled in Compliance Manager.

3. **Name and group:** Enter a name for your assessment in the **Assessment name** field. Assessment names must be unique within groups. If the name of your assessment matches the name of another assessment in any given group, you’ll receive an error asking you to create a different name.

4. Assign your assessment to a group. You can either:
    - Select **Use existing group** to assign it to a group you’ve already created; or
    - Select **Create new group** to create a new group and assign this assessment to it:
        - Determine a name for your group and enter it in the field beneath the radio button.
        - You can **copy data from an existing group**, such as implementation and testing details and documents, by selecting the appropriate boxes.

    Read more about [working with groups](#understand-groups-before-creating-assessments)

5. **Review and finish:** The last screen of the wizard shows the template, name, and group chosen for the assessment. You can edit any of these settings from the links on the screen, which take you back to the relevant steps in the wizard. Once you’re satisfied with the settings, select **Create assessment**.

6. The next screen confirms that you’ve successfully created your new assessment. Select **Done** to close the wizard, and your new assessment's details page will appear on the screen.

If you see an **Assessment failed** screen after selecting **Create assessment**, select **Try again** to re-create your assessment.

You can change the name of your assessment after you create it by selecting the **Edit name** button in the upper-right corner of the [assessment's details page](#monitor-assessment-progress-and-controls).

## Delete an assessment

Deleting an assessment removes it from the list on your assessments page. **Deleting an assessment is permanent; you cannot get it back.** If you want the same assessment again, it must be re-created from scratch. If the improvement actions in the assessment do not appear in any other assessment, they will be deleted when the assessment is deleted. We recommend exporting a report of the assessment before you permanently delete it.

To delete an assessment, follow the steps below:

1. From your assessments page, select the assessment you wish to delete to open that assessment’s details page.
2. Select **Delete assessment** in the upper-right corner of your screen.
3. A window will appear asking you to confirm that you want to permanently delete the assessment. Select **Delete assessment** to close the window. You’ll get a confirmation window that your assessment was deleted from Compliance Score.

If you delete the only assessment in a group, then that group is also deleted from Compliance Score.

## Monitor assessment progress and controls

Each assessment has a details page that gives an at-a-glance view of your progress in completing the assessment. The page shows your progress in completing controls, and the test status of key improvement actions within those controls.

### Overview tab

The overview tab contains a graph showing your percentage toward completion of the assessment. This graph contains a breakdown of points from actions you own, and points from actions owned by Microsoft, so you can see how many more points you need to complete the assessment.

The key improvement actions for controls in the assessment are listed in order of greatest potential impact to earn points. The associated graph details the aggregated test status of your improvement actions so you can quickly gauge what has been tested and what still needs to be done.

To access individual improvement actions, go to the controls tab.

### Controls tab

The controls tab displays detailed information for each control mapped to the assessment. A **control status breakdown** chart shows the status of controls by family, so you can see at a glance which groupings of controls need attention.

Beneath the chart, a table lists detailed information about each control within the assessment. Controls are grouped by control family. Expand each family name to reveal the individual controls it contains. The information listed for each control includes:

- **Control title**
- **Status**: reflects the test status of the improvement actions within the control 
    - **Passed** - all improvement actions have a test status of “passed,” or at least one is passed and the rest are “out of scope”
    -  **Failed** - at least one improvement action has a test status of “failed”
    - **None** - all improvement actions have not been tested
    - **Out of scope** - all improvement actions are out of scope for this assessment
    - **In progress** - improvement actions have a status other than the ones listed above, which could include “in progress,” “partial credit,” or “undetected”
- **Control ID**: the control’s identification number, assigned by its corresponding regulation, standard, or policy
- **Points achieved**: the number of points earned by completing actions, out of the total number of achievable points 
- **Your actions**: the number of your actions completed out of the total number of actions to be done
- **Microsoft actions**: the number of actions completed by Microsoft 

To view a control’s details, select it from its row in the table. The control details page shows a graph indicating the test status of the actions within that control. A table below the graph shows key improvement actions for that control.

Select an improvement action from the list to drill into the improvement action’s details page. The details pages shows test status, implementation notes, and launch into the recommended solution.

### Your improvement actions tab

The tab for your improvement actions lists all the controls in the assessment that are managed by your organization. The status bar details the aggregated test status of your improvement actions in the assessment so you can quickly gauge what has been tested and what still needs to be done. Beneath the bar is the full list of improvement actions and key details, including: test status, the number of potential and earned points, associated regulations and standards, applicable solution, action type, and control family. 

Select an improvement action to view its details page, and select the **Launch now** link to open the solution to take action.

### Microsoft actions tab

The Microsoft actions tab lists all the actions in the assessment that are managed by Microsoft. The list shows key action details, including: test status, points that contribute to your overall compliance score, associated regulations and standards, applicable solution, action type, and control family. Select an improvement action to view its details page.

#### Learn more
[Understand how controls and improvement actions are tracked and scored by Compliance Score.](compliance-score-methodology.md)

## Export an assessment report

You can export an assessment to an Excel file for compliance stakeholders in your organization or for external auditors and regulators. On your assessment details page, select the **Generate report** button near the top of the page, which creates an Excel file you can save to your machine.

The Excel file report is a snapshot of the assessment as of the date and time of the export. It contains the details for controls managed by both you and Microsoft, including implementation status, test date, test results, and links to uploaded evidence documents.