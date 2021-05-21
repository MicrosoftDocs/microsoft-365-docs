---
title: "Build and manage assessments in Microsoft Compliance Manager"
f1.keywords:
- NOCSH
ms.author: v-jgriffee
author: v-jgriffee
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

## Introduction to assessments

Compliance Manager helps you create assessments that evaluate your compliance with industry and regional regulations that apply to your organization. Assessments are built upon the framework of assessment templates, which contain the necessary controls, improvement actions, and, where applicable, Microsoft actions for completing the assessment. Setting up the most relevant assessments for your organization can help you implement policies and operational procedures to limit your compliance risk.

All of your assessments are listed on the assessments tab of Compliance Manager. Learn more about [how to filter your view of your assessments and interpret status states](compliance-manager-setup.md#assessments-page).

> [!IMPORTANT]
> The templates available to your organization for building assessments depend on your licensing agreement. [Review licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

## Data Protection Baseline default assessment

To get you started, Microsoft provides a **default** assessment in Compliance Manager for the **Microsoft 365 data protection baseline**. This baseline assessment has a set of controls for key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

This assessment is used to calculate your initial compliance score the first time you come to Compliance Manager, before you configure any other assessments. Compliance Manager collects initial signals from your Microsoft 365 solutions. You’ll see at a glance how your organization is performing relative to key data protection standards and regulations, and see suggested improvement actions to take.

Compliance Manager becomes more helpful as you build and manage your own assessments to meet your organization's particular needs.

## Understand groups before creating assessments

When you create an assessment, you’ll need to assign it to a group. Groups are containers that allow you to organize assessments in a way that is logical to you, such as by year or regulation, or based on your organization's divisions or geographies. This is why we recommend planning a grouping strategy before you create assessments.

Below are examples of two groups and their underlying assessments:

- **FFIEC IS assessment 2020**
  - FFIEC IS
- **Data security and privacy assessments**
  - ISO 27001:2013
  - ISO 27018:2014

When two different assessments in the same group share improvement actions that you manage, any updates you make to an action's implementation details or status will automatically synchronize throughout the group. This synchronization allows you to implement one improvement action and meet several requirements simultaneously.

### Create a group

You can create a group during the process of [creating a new assessment](#to-create-an-assessment). Groups can't be created as standalone entities.

### What to know when working with groups

- A group must contain at least one assessment.
- Group names must be unique within your organization.
- Groups don't have security properties. All permissions are associated with assessments.
- Once you add an assessment to a group, the grouping can't be changed.
- If you add a new assessment to an existing group, common information from assessments in that group are copied to the new assessment.
- Related assessment controls in different assessments within the same group automatically update when completed.
- When a change is made to an improvement that appears in multiple groups, that change is reflected in all instances of that improvement action.
- Groups can contain assessments for the same certification or regulation, but each group can only contain one assessment for a specific product-certification pair. For example, a group can't contain two assessments for Office 365 and NIST CSF. A group can contain multiple assessments for the same product only if the corresponding certification or regulation for each one is different.
- Deleting an assessment breaks the relationship between that assessment and the group.
- Groups can't be manually deleted.

## Create assessments

> [!NOTE]
> Only users who hold a Global Administrator, Compliance Manager Administration, or Compliance Manager Assessor role can create and modify assessments. Learn more about [roles and permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles).

To begin building assessments, follow these steps.

1. Know which group you’ll assign your assessment to, or be prepared to create a new one for this assessment.

2. Open the assessment wizard. You can access this flyout pane from one of two places:
    - Go to your **assessments** page in Compliance Manager and select **Add assessment**; or
    - Find the template you want to use on the **assessment templates** tab, view its details, and select **Create assessment**. This will populate the wizard's template selection field for you.

3. **Select a template**: If you didn't already choose a template in step 2, choose a template to serve as the basis for your assessment. You’ll see the list of templates divided into included and premium categories (see [Template types](compliance-manager-templates.md#template-availability-and-licensing) for more information). Select the radio button next to your chosen template, then select **Next**.

4. **Name and group:** Set these properties to identify your assessment and assign it to a group.
    - **Name**: Enter a name for your assessment in the **Assessment name** field. Assessment names must be unique within groups. If the name of your assessment matches the name of another assessment in any given group, you’ll receive an error asking you to create a different name.
    - **Group**: Assign your assessment to a group. You can either:
        - Select **Use existing group** to assign it to a group you’ve already created; or
        - Select **Create new group** to create a new group and assign this assessment to it:
            - Determine a name for your group and enter it in the field beneath the radio button.
            - You can **copy data from an existing group**, such as implementation and testing details and documents, by selecting the appropriate boxes.

    When finished, select **Next**.

5. **Review and finish:** The last screen of the wizard shows the template, name, and group chosen for the assessment. You can edit any of these settings from the links on the screen, which take you back to the relevant steps in the wizard. When you're ready, select **Create assessment**.

6. The next screen confirms that you’ve successfully created your new assessment. Select **Done** to close the wizard, and your new assessment's details page will appear on the screen.

If you see an **Assessment failed** screen after selecting **Create assessment**, select **Try again** to re-create your assessment.

You can change the name of your assessment after you create it by selecting the **Edit name** button in the upper-right corner of the [assessment's details page](#monitor-assessment-progress-and-controls).

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

## Accept updates to assessments

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
