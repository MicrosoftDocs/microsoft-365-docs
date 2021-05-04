---
title: "Build and manage assessments in Microsoft Compliance Manager"
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
description: "Build assessments in Microsoft Compliance Manager to help you meet the requirements of regulations and certifications that are important to your organization."
---

# Build and manage assessments in Compliance Manager

**In this article:** Learn how to customize Compliance Manager for your organization by creating and managing **assessments**. This article walks you through how to create assessments, how to organize them into **groups**, working with **controls**, accepting **updates**, and exporting assessment **reports**.

> [!IMPORTANT]
> The assessments available to your organization depend on your licensing agreement. [Review the details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

## Introduction to assessments

Compliance Manager helps you manage compliance with assessments for the regulations and certifications that apply to your organization. Assessments are groupings of controls from a specific regulation, standard, or policy. Compliance Manager makes it easy to start tracking your compliance by providing pre-built assessments that cover a variety of industry and regional regulations and certifications.

Each assessment is created from an [assessment template](compliance-manager-templates.md). Templates serve as a framework containing the necessary controls, improvement actions, and Microsoft actions for completing the assessment. Setting up the most relevant assessments for your organization can help you implement policies and operational procedures to limit your compliance risk.

All of your assessments are listed on the assessments page. Learn more about [how to filter your view of your assessments and interpret status states](compliance-manager-setup.md#assessments-page).

## Data Protection Baseline default assessment

To get you started, Microsoft provides a **default** assessment in Compliance Manager for the **Microsoft 365 data protection baseline**. This baseline assessment has a set of controls for key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

This assessment is used to calculate your initial compliance score the first time you come to Compliance Manager, before you configure any other assessments. Compliance Manager collects initial signals from your Microsoft 365 solutions. You’ll see at a glance how your organization is performing relative to key data protection standards and regulations, and see suggested improvement actions to take.

Compliance Manager becomes more helpful as you build and manage your own assessments to meet your organization's particular needs.

## Assessment creation overview

There are three ways you can set up assessments:

1. [Use a pre-built assessment](#use-a-pre-built-assessment).
2. [Extend a pre-built assessment to suit your own needs](#extend-a-pre-built-assessment).
3. [Create your own custom assessment](#create-your-own-custom-assessment).

> [!NOTE]
> Only users who hold a Global Administrator, Compliance Manager Administration, or Compliance Manager Assessor role can create and modify assessments. Learn more about [roles and permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles).

**Use a pre-built assessment**

Kickstart your compliance journey by choosing an assessment already set up by Compliance Manager. We provide a wide selection of [templates](compliance-manager-templates.md) for regulations and certifications that align to industries, regions, and common data protection standards, such as GDPR and ISO 27001. Templates contain the controls and improvement actions for helping you meet the requirements of a particular certification. You’ll be asked to choose a template when you start [building an assessment](#use-a-pre-built-assessment).

**Extend a pre-built assessment to suit your needs**

You can modify a Compliance Manager assessment—a process we refer to as "extending"—by adding your own controls and actions to better suit your organization’s needs. For example, if you generally need to comply with HIPAA but require additional data protection or security controls, you can extend our HIPAA template by adding your own controls to it. See the instructions for [extending a pre-built assessment](#extend-a-pre-built-assessment).

**Create your own custom assessment**

You can create your own assessment entirely from scratch to track precisely what your organization needs. Creating your own assessment requires you to first create your own template for the assessment in Compliance Manager. See the instructions for [creating your own custom assessment](#create-your-own-custom-assessment).

## Understand groups before creating assessments

Before you create or modify assessments, it’s important to understand how groups work. When you create an assessment, you’ll need to assign it to a group during the process. That's why we recommend planning a grouping strategy for your assessments before you create assessments.

### What are groups

Groups are containers that allow you to organize assessments. You can group assessments in a way that is logical to you, such as by year or regulation, or based on your organization's divisions or geographies. Below are examples of two groups and their underlying assessments:

- **FFIEC IS assessment 2020**
  - FFIEC IS
- **Data security and privacy assessments**
  - ISO 27001:2013
  - ISO 27018:2014

When two different assessments in the same group share improvement actions that are managed by you, any updates you make to an action's implementation details or status will automatically synchronize to the same action in any other assessment in the group. This synchronization allows you to implement one improvement action and meet several requirements across multiple regulations.

### How to create a group

You create a group during the process of [creating a new assessment](#to-create-an-assessment).

Groups can't be created as standalone entities. A group must contain at least one assessment. In order to create a group, you need to first create an assessment to put in the group.

### What to know when working with groups

- Group names must be unique within your organization.
- Groups don't have security properties. All permissions are associated with assessments.
- Once you add an assessment to a group, the grouping can't be changed.
- Related assessment controls in different assessments within the same group automatically update when completed.
- If you add a new assessment to an existing group, common information from assessments in that group are copied to the new assessment.
- Groups can contain assessments for the same certification or regulation, but each group can only contain one assessment for a specific product-certification pair. For example, a group can't contain two assessments for Office 365 and NIST CSF. A group can contain multiple assessments for the same product only if the corresponding certification or regulation for each one is different.
- Deleting an assessment breaks the relationship between that assessment and the group.
- Groups can't be deleted.
- When a change is made to an improvement that appears in multiple groups, that change is reflected in all instances of that improvement action.

## Use a pre-built assessment

There are two starting points for creating an assessment from a Compliance Manager template.

You can begin the process from your assessments page by selecting the **Add assessment** button and then working through the assessment creation wizard. The steps for this process are below.

You can also start from your assessment templates page by finding the template you want and selecting it from the list to arrive at its details page. On the template details page, select **Create assessment**. You’ll then enter the wizard with your template already selected.

### To create an assessment

1. Know which group you’ll assign your assessment to, or be prepared to create a new one for this assessment. [Learn more about groups](#understand-groups-before-creating-assessments).  

2. Go to your **assessments** page in Compliance Manager and select **Add assessment**. An assessment wizard will appear in a large flyout pane.

3. **Select a template**: Choose a template to serve as the basis for your assessment. You’ll see the list of templates divided into included and premium categories (see [Template types](compliance-manager-templates.md#template-types-included-and-premium-active-and-inactive) for more information). Select the radio button next to your chosen template, then select **Next**.

4. **Name and group:** Enter a name for your assessment in the **Assessment name** field. Assessment names must be unique within groups. If the name of your assessment matches the name of another assessment in any given group, you’ll receive an error asking you to create a different name.

5. Assign your assessment to a group. You can either:
    - Select **Use existing group** to assign it to a group you’ve already created; or
    - Select **Create new group** to create a new group and assign this assessment to it:
        - Determine a name for your group and enter it in the field beneath the radio button.
        - You can **copy data from an existing group**, such as implementation and testing details and documents, by selecting the appropriate boxes.

    When finished, select **Next**.

6. **Review and finish:** The last screen of the wizard shows the template, name, and group chosen for the assessment. You can edit any of these settings from the links on the screen, which take you back to the relevant steps in the wizard. When you're ready, select **Create assessment**.

7. The next screen confirms that you’ve successfully created your new assessment. Select **Done** to close the wizard, and your new assessment's details page will appear on the screen.

If you see an **Assessment failed** screen after selecting **Create assessment**, select **Try again** to re-create your assessment.

You can change the name of your assessment after you create it by selecting the **Edit name** button in the upper-right corner of the [assessment's details page](#monitor-assessment-progress-and-controls).

## Extend a pre-built assessment

You can modify a pre-built assessment by adding your own controls and improvement actions to the assessment’s template. This process is called “extending a Microsoft template” in Compliance Manager. When you extend the template of an assessment, it will receive any updates released by Microsoft, which may happen when there are changes to the related regulation or product (see [Accepting updates to assessments](#accepting-updates-to-assessments)).

You’ll complete this process by starting at your **assessment templates** page rather than your **assessments** page.

**Before you begin**

To prepare for this process, you’ll first need to assemble a specially formatted Excel spreadsheet to import the necessary template data. There are special requirements for the [formatted Excel files](compliance-manager-templates.md#formatting-your-template-data-with-excel) used in the extension process. See these additional points to help prevent errors in the import process:

- Your spreadsheet should contain only the actions and controls you want to add to the assessment. 
- The spreadsheet can’t contain any of the controls or actions that already exist in the assessment you want to modify.
- Consider including “extension” in your template’s title, for example, “GDPR – [your company name] extension.” This makes it easier to identify in the list on your **assessment templates** page as distinct from the standard Microsoft-provided template or a custom template with a similar name.

After you format your spreadsheet, follow the steps below.

**Steps for extending a Compliance Manager template**

1. Go to your **Assessment templates** page and select **Create new template**. A template creation wizard will open.

2. Choose the type of template you want to create. In this case, select **Extend a Microsoft template**, then **Select Microsoft template**.

3. A template selection flyout pane appears on the right side of your screen, showing a list of all templates and their status of active or inactive. Your **activated templates** counter shows how many templates are currently in use out of the total number available to use. If you’re over your limit, a message bar will provide notice. See [Template types](compliance-manager-templates.md#template-types-included-and-premium-active-and-inactive) for more information.

4. A template selection flyout pane appears on the right side of your screen. Use **Search** to apply filters for locating the template you want

5. Once you locate your template, select the radio button to the left of its name, then select **Save**.

6. The next screen shows the template you selected. If correct, select **Next**. (If incorrect, choose **Select a different template** to choose again.)

7. At the **Upload file** screen, select **Browse** to find and upload your formatted Excel file containing all the required template data.

8. If there are no problems with your file, the next screen shows the name of the file uploaded. Select **Next** to continue (if you need to change the file, select **Upload a different file**).

    - If there’s a problem with your file, an error message at the top explains what’s wrong. You’ll need to fix and re-upload your file. Errors will result if your spreadsheet is formatted improperly, or if there’s invalid information in certain fields.
 
9. The **Review and finish** screen shows the number of improvement actions and controls and the maximum score for the template. When ready to approve, select **Next**. (If you need to make changes, select **Upload a different file**.)

10. The last screen confirms a new template has been created. Select **Done** to exit the wizard.

11. You’ll arrive at your new template’s details page. From here you can create your assessment by selecting **Create assessment**. For guidance, start at step #4 in the [assessment creation instructions above](#to-create-an-assessment).

## Create your own custom assessment

Creating a custom assessment in Compliance Manager requires you to create your own template. To create your own template, you’ll first assemble a formatted Excel spreadsheet to import the necessary template data. It also helps to decide ahead of time which group you’ll assign your assessment to when you create it (learn more about [groups](#what-are-groups)).

**Follow the steps below to create your custom assessment:**

1. **Format your Excel file.** Begin by formatting your template data into an Excel spreadsheet using [these instructions](compliance-manager-templates.md#formatting-your-template-data-with-excel).

2. **Create your template** by following [these instructions](compliance-manager-templates.md#create-a-new-template).

3. **Create your assessment** from the template. You can begin by opening the template’s details page and selecting **Create assessment**, or go to your **assessments** page and select **Create assessment**.

4. An assessment creation wizard will appear in a large flyout pane. From here, you can follow the guidance starting at step #3 of the [assessment creation instructions](#to-create-an-assessment), using your new custom template for your assessment.

## Delete an assessment

Deleting an assessment removes it from the list on your assessments page. Note these important points about deleting assessments:

- **Deleting an assessment is permanent; you cannot get it back.** If you want to use the same assessment again, you'll need to re-create it.
- If the improvement actions in the assessment don't appear in any other assessment, they'll be deleted when the assessment is deleted.
- We recommend [exporting a report](#export-an-assessment-report) of the assessment before you permanently delete it.

To delete an assessment, follow the steps below:

1. From your **assessments** page, select the assessment you wish to delete to open that assessment’s details page.

2. Select **Delete assessment** in the upper-right corner of your screen.

3. A window will appear asking you to confirm that you want to permanently delete the assessment. Select **Delete assessment** to close the window. You’ll get a confirmation window that your assessment was deleted from Compliance Manager.

If you delete the only assessment in a group, then that group is also deleted from Compliance Manager.

> [!NOTE]
> You can't delete all of your assessments. Organizations need at least one assessment for Compliance Manager to function properly. If the assessment you want to delete is the only one, add another assessment before deleting the other assessment.

## Monitor assessment progress and controls

Each assessment has a details page that gives an at-a-glance view of your progress in completing the assessment. The page shows your progress in completing controls, and the test status of key improvement actions within those controls.

### Overview tab

The overview tab contains a graph showing your percentage toward completion of the assessment. This graph contains a breakdown of points from actions you own, and points from actions owned by Microsoft, so you can see how many more points you need to complete the assessment.

The key improvement actions for controls in the assessment are listed in order of greatest potential impact to earn points. The associated graph details the aggregated test status of your improvement actions so you can quickly gauge what has been tested and what still needs to be done.

To access individual improvement actions, visit the **Controls** tab or the **Your improvement actions** tab.

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

The tab for your improvement actions lists all the controls in the assessment that are managed by your organization. The status bar details the aggregated test status of your improvement actions in the assessment so you can quickly gauge what has been tested and what still needs to be done. Beneath the bar is the full list of improvement actions and key details, including: test status, the number of potential and earned points, associated regulations and standards, applicable solution, action type, and control family. Learn more about [how actions contribute to your compliance score](compliance-score-calculation.md#action-types-and-points).

Select an improvement action to view its details page, and select the **Launch now** link to open the solution to take action.

### Microsoft actions tab

The Microsoft actions tab lists all the actions in the assessment that are managed by Microsoft. The list shows key action details, including: test status, points that contribute to your overall compliance score, associated regulations and standards, applicable solution, action type, and control family. Select an improvement action to view its details page.

Learn more about [how controls and improvement actions are tracked and scored.](compliance-score-calculation.md)

## Accepting updates to assessments

When an update is available for an assessment, you’ll see a notification and have the option to accept the update or defer it for a later time.

### What causes an update

An assessment update occurs when there are underlying template changes that impact scoring. Changes may involve adjusting control mapping or other guidance based on regulatory changes or product changes. Assessment updates can originate from your organization (such as, when a [custom template is modified](compliance-manager-templates.md#modify-a-template)) as well as from Microsoft.

If Microsoft updates a Compliance Manager template that you extended, your assessment will inherit those updates once you accept them. Your assessment will retain the additional attributes you applied to the assessment when you extended it.

Custom assessments that you create do not receive any template updates from Microsoft. Custom assessments can receive improvement action updates, but any Microsoft updates to control mapping between assessments and improvement actions don't apply to custom templates.

> [!NOTE]
> Updates to assessments apply only at the group level. If you have two assessments built from the same template that exist in two different groups, each assessment will have a pending update notification, and you’ll need to accept the update to each assessment in its respective group individually.

#### Where you’ll see assessment update notifications

The assessment details page also shows a **Pending update** label next to the assessment with an update. Select that assessment to get to its details page.

A message near the top of the assessment details page shows that an update is available for that assessment. Select the **Review update** button in the banner to review the specific changes and accept or defer the update.

The assessment details page may also list improvement actions that have a **Pending update** label next to them. Those updates are for specific changes to the improvement actions themselves and need to be accepted separately. Visit [Accepting updates to improvement actions](compliance-manager-improvement-actions.md#accepting-updates-to-improvement-actions) to learn more.

#### Review update to accept or defer

After selecting **Review update** from the assessment details page, a flyout pane appears on the right side of your screen. The flyout pane provides the key details below about the pending update:

- The template title
- Source of the update (Microsoft, your organization, or a specific user)
- The date the update was created
- An overview explaining the update
- Specific details about the changes, including the impact to your compliance score, the amount of progress toward completion of the assessment, and the specific number of changes to improvement actions and controls.

Selecting the **Updated template** link will download an Excel file containing control data for the version of the template with the pending updates. Selecting the **Current template** link downloads a file of the existing template without the changes.

To accept the update and make the changes to your assessment, select **Accept update**. Accepted changes are permanent.

If you select **Cancel**, the update won't be applied to the assessment. However, you’ll continue to see the **Pending update** notification until you accept the update.

**Why we recommend accepting updates**

Accepting updates helps ensure you have the most updated guidance on using solutions and taking appropriate improvement actions to help you meet the requirements of the certification at hand.

**Why you might want to defer an update**

If you’re in the middle of completing an assessment, you may want to ensure you’ve finished work on it before you accept an update to the assessment that could disrupt control mapping. You can defer the update for a later time by selecting **Cancel** on the review update flyout pane.

## Export an assessment report

You can export an assessment to an Excel file for compliance stakeholders in your organization or for external auditors and regulators. On your assessment details page, select the **Generate report** button near the top of the page, which creates an Excel file you can save and share.

The report is a snapshot of the assessment as of the date and time of the export. It contains the details for controls managed by both you and Microsoft, including implementation status, test date, and test results.