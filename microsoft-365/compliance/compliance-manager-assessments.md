---
title: "Build and manage assessments in Microsoft Purview Compliance Manager"
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
description: "Build assessments in Microsoft Purview Compliance Manager to help you meet the requirements of regulations and certifications that are important to your organization."
---

# Build and manage assessments in Compliance Manager

**In this article:** Learn how to customize Compliance Manager for your organization by creating and managing **assessments**. This article walks you through how to create assessments, how to organize them into **groups**, working with **controls**, accepting **updates**, and exporting assessment **reports**.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Introduction to assessments

Compliance Manager helps you create assessments that evaluate your compliance with industry and regional regulations that apply to your organization. Assessments are built upon the framework of assessment templates, which contain the necessary controls, improvement actions, and, where applicable, Microsoft actions for completing the assessment. Setting up the most relevant assessments for your organization can help you implement policies and operational procedures to limit your compliance risk.

All of your assessments are listed on the assessments tab of Compliance Manager. Learn more about [how to filter your view of your assessments and interpret status states](compliance-manager-setup.md#assessments-page).

> [!IMPORTANT]
> The templates available to your organization for building assessments depend on your licensing agreement. [Review licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).

## Data Protection Baseline default assessment

To get you started, Microsoft provides a **default** assessment in Compliance Manager for the **Microsoft 365 data protection baseline**. This baseline assessment has a set of controls for key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

This assessment is used to calculate your initial compliance score the first time you come to Compliance Manager, before you configure any other assessments. Compliance Manager collects initial signals from your Microsoft 365 solutions. You'll see at a glance how your organization is performing relative to key data protection standards and regulations, and see suggested improvement actions to take.

Compliance Manager becomes more helpful as you build and manage your own assessments to meet your organization's particular needs.

## Understand groups before creating assessments

When you create an assessment, you'll need to assign it to a group. Groups are containers that allow you to organize assessments in a way that is logical to you, such as by year or regulation, or based on your organization's divisions or geographies. This is why we recommend planning a grouping strategy before you create assessments.

Below are examples of two groups and their underlying assessments:

- **FFIEC IS assessment 2020**
  - FFIEC IS
- **Data security and privacy assessments**
  - ISO 27001:2013
  - ISO 27018:2014

Different assessments within a group or groups may share improvement actions. Improvement actions may be changes you make within technical solutions mapped to your tenant, like turning on two-factor authentication, or to non-technical actions you perform outside the system, like instituting a new workplace policy. Any updates in details or status that you make to a technical improvement action will be picked up by assessments across all groups. Non-technical improvement action updates will be recognized by assessments within the group where you apply them. This allows you to implement one improvement action and meet several requirements simultaneously.

### Create a group

You can create a group while creating a new assessment. Groups can't be created as standalone entities.

### What to know when working with groups

- A group must contain at least one assessment.
- Group names must be unique within your organization.
- Groups don't have security properties. All permissions are associated with assessments.
- Once you add an assessment to a group, the grouping can't be changed.
- If you add a new assessment to an existing group, common information from assessments in that group are copied to the new assessment.
- Related assessment controls in different assessments within the same group automatically update when completed.
- Groups can contain assessments for the same certification or regulation, but each group can only contain one assessment for a specific product-certification pair. For example, a group can't contain two assessments for Office 365 and NIST CSF. A group can contain multiple assessments for the same product only if the corresponding certification or regulation for each one is different.
- Deleting an assessment breaks the relationship between that assessment and the group.
- Groups can't be deleted.

## Understand templates before creating assessments

Assessment templates contain the controls and action recommendations for assessments, based on certifications for different privacy regulations and standards. Your organization starts out with one **included** template available to use, and may be able to use additional **premium** templates for free depending on your licensing agreement. Your organization may  purchase additional **premium** templates.

Each template exists in two versions: one for use with Microsoft 365 (or other Microsoft products as available), and a universal version that can be tailored to assess other products that you use. You can choose the appropriate template type for the product you want to assess.

Get more details more about templates at [Learn about assessment templates in Compliance Manager](compliance-manager-templates.md).

## Create assessments

> [!NOTE]
> Only users who hold a Global Administrator, Compliance Manager Administration, or Compliance Manager Assessor role can create and modify assessments. Learn more about [roles and permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles).

Before you begin, be sure you know which group you'll assign it to, or be prepared to create a new group for this assessment. Read details about [groups and assessments](#understand-groups-before-creating-assessments).

To create an assessment, you'll use a guided process to select a template and designate the associated product. On your **Assessments** page, we suggest starting with **Add Recommended Assessments**, which helps you identify and quickly set up the most relevant assessments for your organization all at once. You can also set up assessments one at a time by selecting **Add assessment**. Follow the steps below to begin building assessments.

#### Create assessments based on recommendations for your org type

Compliance Manager can indicate which assessments may be most relevant to your organization. When you provide basic information about your organization's industry and locations, we'll recommend which templates to use from our library of over 300 templates. Simply choose among the recommended templates for quick setup of multiple assessments all at once.

To create one or more assessments based on our recommendations, select **Add Recommended Assessments** from your **Assessments** page and follow these steps:

- Select one or more industries that identify your organization, then select **Next**
- Select one or more regions for your organization's location, then select **Next**
- On the **Choose assessment** screen, select the dropdown arrow next to **Recommended templates** to see the list of assessments we think apply to your organization. Check the boxes next to the templates you want to use for creating assessments, then select **Next**.
- Review your final selections and select **Add Recommended Assessments** to create your new assessments.

#### Create an assessment using a guided process

1. From your **Assessments** page, select **Add assessment**. This will put you into the assessment creation wizard.

2. On the **Base template** screen, select **Select template** to choose the template for your assessment.

3. On the flyout pane, choose the template for the regulation or certification on which to base the assessment. The list of templates divided into included and premium categories ([get details](compliance-manager-templates.md#template-availability-and-licensing)). The **Activated/Licensed templates** counter at the top of the flyout pane shows you how may templates you're using out of the total number available or your organization to use ([learn more](compliance-manager-templates.md#active-and-inactive-templates).) Select the radio button next to your chosen template, then select **Save**. You'll return to your **Base template** screen where you can review template details, then continue by selecting **Next**.

4. **Product, name, and group:** Set these properties to identify your assessment, choose which product it will be evaluating, and assign it to a group.

    - **Product**: Select the product you want your assessment to apply to. If you are using a Microsoft template, such as one designed for Microsoft 365, this field will be populated for you to indicate the appropriate product and cannot be changed. If you're using a universal template, select whether you're creating this assessment for a new product or a custom product you have already defined in Compliance Manager. If you choose a new product, enter its name. Note that you cannot select a pre-defined Microsoft product when using a universal template.
    - **Assessment name**: Enter a name for your assessment in the **Assessment name** field. Assessment names must be unique within groups. If the name of your assessment matches the name of another assessment in any given group, you'll receive an error asking you to create a different name.
    - **Group**: Assign your assessment to a group. You can either:
        - Select **Use existing group** to assign it to a group you've already created; or
        - Select **Create new group** to create a new group and assign this assessment to it:
            - Determine a name for your group and enter it in the field beneath the radio button.
            - You can **copy data from an existing group**, such as implementation and testing details and documents, by selecting the appropriate boxes.

    When finished, select **Next**.

5. **Review and finish:** Review your selections and make any necessary edits. When you're satisfied ready, select **Create assessment**.

The next screen confirms the assessment was created. When you select **Done**, you'll be taken to your new assessment's details page.

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
  - **Passed** - all improvement actions have a test status of "passed," or at least one is passed and the rest are "out of scope"
  - **Failed** - at least one improvement action has a test status of "failed"
  - **None** - all improvement actions have not been tested
  - **Out of scope** - all improvement actions are out of scope for this assessment
  - **In progress** - improvement actions have a status other than the ones listed above, which could include "in progress," "partial credit," or "undetected"
- **Control ID**: the control's identification number, assigned by its corresponding regulation, standard, or policy
- **Points achieved**: the number of points earned by completing actions, out of the total number of achievable points
- **Your actions**: the number of your actions completed out of the total number of actions to be done
- **Microsoft actions**: the number of actions completed by Microsoft

To view a control's details, select it from its row in the table. The control details page shows a graph indicating the test status of the actions within that control. A table below the graph shows key improvement actions for that control.

Select an improvement action from the list to drill into the improvement action's details page. The details page shows test status and implementation notes, and launch into the recommended solution.

### Your improvement actions tab

The tab for your improvement actions lists all the controls in the assessment that are managed by your organization. The status bar details the aggregated test status of your improvement actions in the assessment so you can quickly gauge what has been tested and what still needs to be done. Beneath the bar is the full list of improvement actions and key details, including: test status, the number of potential and earned points, associated regulations and standards, applicable solution, action type, and control family. Learn more about [how actions contribute to your compliance score](compliance-score-calculation.md#action-types-and-points).

Select an improvement action to view its details page, and select the **Launch now** link to open the solution to take action.

### Microsoft actions tab

The Microsoft actions tab appears for assessments based on templates that support Microsoft products. It lists all the actions in the assessment that are managed by Microsoft. The list shows key action details, including: test status, points that contribute to your overall compliance score, associated regulations and standards, applicable solution, action type, and control family. Select an improvement action to view its details page.

Learn more about [how controls and improvement actions are tracked and scored.](compliance-score-calculation.md)

## Accept updates to assessments

When an update is available for an assessment, you'll see a notification and have the option to accept the update or defer it for a later time.

Updates are available for assessments based on Microsoft templates, such as those designed for use with Microsoft 365. If your organization is using universal templates for assessing other products, inheritance may not be supported. For more information, see [Extend assessment templates](compliance-manager-templates-extend.md).

### What causes an update

An assessment update occurs when there are underlying template changes that impact scoring. Changes may involve adjusting control mapping or other guidance based on regulatory changes or product changes. Assessment updates can originate from your organization (such as when a [custom template is modified](compliance-manager-templates-modify.md)) as well as from Microsoft.

If Microsoft updates a Compliance Manager template that you extended, your assessment will inherit those updates once you accept them. Your assessment will retain the additional attributes you applied to the assessment when you extended it.

Custom assessments that you create do not receive any template updates from Microsoft. Custom assessments can receive improvement action updates, but any Microsoft updates to control mapping between assessments and improvement actions don't apply to custom templates.

> [!NOTE]
> Updates to assessments apply only at the group level. If you have two assessments built from the same template that exist in two different groups, each assessment will have a pending update notification, and you'll need to accept the update to each assessment in its respective group individually.

#### Where you'll see assessment update notifications

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

Selecting the **Updated template** command will download an Excel file containing control data for the version of the template with the pending updates. Selecting the **Current template** command downloads a file of the existing template without the updates.

To accept the update and make the changes to your assessment, select **Accept update**. Accepted changes are permanent.

If you select **Cancel**, the update won't be applied to the assessment. However, you'll continue to see the **Pending update** notification until you accept the update.

**Why we recommend accepting updates**

Accepting updates helps ensure you have the most updated guidance on using solutions and taking appropriate improvement actions to help you meet the requirements of the certification at hand.

**Why you might want to defer an update**

If you're in the middle of completing an assessment, you may want to ensure you've finished work on it before you accept an update to the assessment that could disrupt control mapping. You can defer the update for a later time by selecting **Cancel** on the review update flyout pane.

## Export an assessment report

You can export an assessment to an Excel file for compliance stakeholders in your organization or for external auditors and regulators. On your assessment details page, select the **Generate report** button near the top of the page, which creates an Excel file you can save and share.

The report is a snapshot of the assessment as of the date and time of the export. It contains the details for controls managed by both you and Microsoft, including implementation status, test date, and test results.

## Delete an assessment

Deleting an assessment removes it from the list on your assessments page. Note these important points about deleting assessments:

- **Deleting an assessment is permanent; you cannot get it back.** If you want to use the same assessment again, you'll need to re-create it.
- If the improvement actions in the assessment don't appear in any other assessment, they'll be deleted when the assessment is deleted.
- We recommend [exporting a report](#export-an-assessment-report) of the assessment before you permanently delete it.

To delete an assessment, follow the steps below:

1. From your **assessments** page, select the assessment you wish to delete to open that assessment's details page.

2. Select **Delete assessment** in the upper-right corner of your screen.

3. A window will appear asking you to confirm that you want to permanently delete the assessment. Select **Delete assessment** to close the window. You'll get a confirmation window that your assessment was deleted from Compliance Manager.

> [!NOTE]
> You can't delete all of your assessments. Organizations need at least one assessment for Compliance Manager to function properly. If the assessment you want to delete is the only one, add another assessment before deleting the other assessment.
