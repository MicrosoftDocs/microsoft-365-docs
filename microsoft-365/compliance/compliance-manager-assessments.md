---
title: "Build and manage assessments in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/23/2023
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
description: "Build assessments in Microsoft Purview Compliance Manager that help your organization track and manage compliance activities in a multicloud environment."
---

# Build and manage assessments in Compliance Manager

**In this article:** Learn how to customize Compliance Manager for your organization by creating and managing **assessments**. This article walks you through how to create assessments, how to organize them into **groups**, working with **controls**, accepting **updates**, and exporting assessment **reports**.

**New**: With integrated connectors, you can now can build assessments for services other than Microsoft to help you manage compliance across your digital estate. See [Set up connectors](#set-up-connectors) below for details.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Introduction to assessments

Compliance Manager assessments help your organization evaluate  its compliance with industry and regional regulations. Setting up the most relevant assessments for your organization can help you implement policies and operational procedures to limit your compliance risk. Ready-to-use regulatory templates for over 360 regulations  contain the necessary controls and improvement actions for completing the assessment.

All of your assessments are listed on the Assessments tab of Compliance Manager. You can create one assessment that covers multiple services. For example, you can create a single EU GDPR assessment that covers Microsoft 365, Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP) and. Your assessment details page shows a breakdown of control progress by service to help you evaluate how you’re doing across all your services. Learn more about [monitoring assessment progress from the assessment details page](#monitor-assessment-progress-and-controls).

> [!IMPORTANT]
> The regulations that are available for your organization's use by default depend on your licensing agreement. [Review licensing details](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-compliance-manager).

#### Data Protection Baseline default assessment

To get you started, Microsoft provides a **default** assessment for the **Microsoft 365 data protection baseline**. This baseline assessment has a set of controls for key regulations and standards for data protection and general data governance. This baseline draws elements primarily from NIST CSF (National Institute of Standards and Technology Cybersecurity Framework) and ISO (International Organization for Standardization), as well as from FedRAMP (Federal Risk and Authorization Management Program) and GDPR (General Data Protection Regulation of the European Union).

This assessment is used to calculate your initial compliance score the first time you come to Compliance Manager, before you configure any other assessments. Compliance Manager collects initial signals from your Microsoft 365 solutions. You'll see at a glance how your organization is performing relative to key data protection standards and regulations, and see suggested improvement actions to take. Compliance Manager becomes more helpful as you build and manage your own assessments to meet your organization's particular needs.

## Initial steps before creating assessments

Listed below are details about steps and information that will help you prepare for creating an assessment:

- Plan a [grouping strategy](#groups-for-assessments) for your assesssments.
- Understand [regulatory templates](compliance-manager-templates.md), which contain the controls and action recommendations for assessments.
- Set up [connectors](#set-up-connectors) if you're assessing non-Microsoft services.

## Groups for assessments

When you create an assessment, you must assign it to a group. Groups are containers that allow you to organize assessments in a way that is logical to you, such as by year or regulation, or based on your organization's divisions or geographies. This is why we recommend planning a grouping strategy before you create assessments. Below are examples of two groups and their underlying assessments:

- **FFIEC IS assessment 2020**
  - FFIEC IS
- **Data security and privacy assessments**
  - ISO 27001:2013
  - ISO 27018:2014

Different assessments within a group or groups may share improvement actions. Improvement actions may be changes you make within technical solutions mapped to your tenant, like turning on two-factor authentication, or to non-technical actions you perform outside the system, like instituting a new workplace policy. Any updates in details or status that you make to a technical improvement action will be picked up by assessments across all groups. Non-technical improvement action updates will be recognized by assessments within the group where you apply them. This allows you to implement one improvement action and meet several requirements simultaneously.

#### What to know when working with groups

- You can create a group during the process of creating an assessment.
- Groups can't be standalone entities. A group must contain at least one assessment.
- Group names must be unique within your organization.
- Groups don't have security properties. All permissions are associated with assessments.
- Once you add an assessment to a group, the grouping can't be changed.
- If you add a new assessment to an existing group, common information from assessments in that group are copied to the new assessment.
- Related assessment controls in different assessments within the same group automatically update when completed.
- Groups can contain assessments for the same certification or regulation, but each group can only contain one assessment for a specific product-certification pair. For example, a group can't contain two assessments for Office 365 and NIST CSF. A group can contain multiple assessments for the same product only if the corresponding certification or regulation for each one is different.
- Deleting an assessment breaks the relationship between that assessment and the group.
- Groups can't be deleted.

## Set up connectors

Compliance Manager has an integrated set of connectors to build assessments that cover non-Microsoft services like Salesforce and Zoom. Visit [Working with connectors](compliance-manager-connectors.md) to learn more and start the setup process.

## Create assessments

> [!NOTE]
> Only users who hold a Global Administrator, Compliance Manager Administration, or Compliance Manager Assessor role can create and modify assessments. Learn more about [roles and permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles).

Before you begin, be sure you know which group you'll assign it to, or be prepared to create a new group for this assessment. Read details about [groups and assessments](#groups-for-assessments). To create an assessment, you'll use a guided process to select a regulation and designate services.

#### Create an assessment using a guided process

1. From your **Assessments** page, select **Add assessment** to begin the assessment creation wizard.

1. On the **Base your assessment on a regulation** page, select **Select regulation** to choose the regulatory template for the assessment. The **Select regulation** flyout page will open.

1. Use the search box to find your desired regulation, then select the check bubble to the left of the regulation name. Select **Save**, confirm your selection, then select **Next**.

1. On the **Add name and group** page, enter values in the following fields:

    - **Assessment name**: Assessment names must be unique. If the name matches another assessment in any group, you’ll receive an error asking you to create a different name.
    - **Assessment group**: Assign your assessment to a group in one of two ways:
        - **Use existing group** to assign it to a group you've already created; or
        - **Create new group** that you'll assign this assessment to. Enter a name for this group. You also have the option to **Copy data from an existing group**, such as implementation and testing details and documents, by selecting the appropriate boxes.

    When finished, select **Next**.

1. On the **Select services** page, designate which services this assessment applies to (learn more about [multicloud support](compliance-manager-multicloud.md)) using the **Select services** command. The flyout pane shows which services are available for your chosen regulation. Place a check next to your desired services, then select **Add**. Then select **Next**.

1. If you selected a service that has more than one subscription covered by Microsoft Defender for Cloud, you arrive at a sub-step for  **Select service subscriptions**. Select **Manage subscriptions**. On the flyout pane, a tab for each service displays a list of all subscriptions within that service. All subscriptions are selected by default, but you can remove any by selecting the **X** next to the name. On the **Select services** page, select **Next**.

1. **Review and finish:** Review all your selections and make any necessary edits. When you're satisfied with the settings, select **Create assessment**.

The next screen confirms the assessment was created. When you select **Done**, you are taken to your new assessment's details page. If you see an **Assessment failed** screen after selecting **Create assessment**, select **Try again** to re-create your assessment.

#### Edit an assessment

After creating an assessment, you can edit it to update its name and add or remove services and subscriptions. To update an assessment:

1. From the assessment details page, select the ellipses in the upper right corner and select **Edit assessment**. The assessment update wizard will open.

1. You can update the assessment name on the **Update assessment name** page, or leave it as-is, then select **Next**.

1. On the **Select services** page, add or remove services, then select **Next**.

1. On the **Select service subscriptions** page, select **Manage subscriptions** to make any changes to your subscriptions. Then select **Next**.

1. Review your updates, then select **Modify assessment** to save your changes.

## Monitor assessment progress and controls

Each assessment has a details page that gives an at-a-glance view of your progress in completing the assessment. The page shows how your services are performing, and the status of controls and improvement actions. Expand the **Overview** section at the left side of the page to see basic details about the assessment, including its group, regulation, associated services, completion status, and a description.

The **Progress** tab shows the percentage of progress toward assessment completion. The progress bar displays a breakdown showing the number of points achieved within each service covered by the assessment. Get details on each service by [viewing service details](#assessment-progress-by-service). See all controls within the assessment and their current status on the [Controls tab](#controls-tab). Quickly access the status of all your improvement actions for the assessment the [Your improvement actions tab](#your-improvement-actions-tab). The actions handled by Microsoft for the assessment are listed on the [Microsoft actions tab](#microsoft-actions-tab).

#### Assessment progress by service

The **Service** section on the assessment’s **Progress** tab helps you understand how you’re doing with respect to a regulation with each of your services individually, even at the subscription level, and collectively across your organization. The assessment gets its data on available subscriptions and improvement action status from Microsoft Defender for Cloud. Any errors associated with subscription accessibility should be addressed in your Defender for Cloud. See [Configure cloud settings](compliance-manager-cloud-settings.md) for more information.

Select the **View service details** command, located next to or under the **Assessment progress** bar graph or in the upper-right command bar, to view a flyout pane with more details. The **View service details** flyout pane lists each service and its progress toward completing the assessment. Selecting **View** next to a service name displays another pane that lists each subscription within the service and its status.

On a service's details panel, you see the list of subscriptions within the service that are covered by the assessment. The **Service progress** counter indicates the number of points achieved so far by improvement actions pertaining to the service for the assessment out of the total number of achievable points.

You can add more subscriptions to the service that you want the assessment to cover by [editing the assessment](#edit-an-assessment).

#### Controls tab

The **Controls** tab displays detailed information for each control in the assessment. The **Control status breakdown** chart shows the status of controls by family (for example, Configuration Management and Incident Response) so you can see at a glance which groupings of controls need attention. The table underneath the breakdown chart lists all controls. You can filter the list by control family, status, and service. The table shows the following details about each control:

- **Control title**
- **Status**: The test status of the improvement actions within the control:
  - **Passed**: All improvement actions have a test status of "passed," or at least one is passed and the rest are "out of scope."
  - **Failed** At least one improvement action has a test status of "failed."
  - **None**: All improvement actions haven't been tested.
  - **Out of scope**: All improvement actions are out of scope for this assessment.
  - **In progress**: Improvement actions have a status other than the ones listed above, which could include "in progress," "partial credit," or "undetected."
- **Control ID**: The control's identification number, assigned by its corresponding regulation, standard, or policy.
- **Points achieved**: The number of points earned by completing actions, out of the total number achievable.
- **Your improvement actions**: The number of your actions completed out of the total number to be done.
- **Microsoft actions**: The number of actions completed by Microsoft.

Select a control from the list to view its details page. A graph indicates the test status of the improvement actions within the control. A table below the graph lists the improvement actions for that control. Select an improvement action from the list to drill into the improvement action's details page, from where you can manage implementation and testing. Get details about [working with improvement actions](compliance-manager-improvement-actions.md).

#### Your improvement actions tab

The **Improvement actions** tab on the assessment details page lists all your improvement actions for the control. The status bar chart details the aggregated test status of your improvement actions in the assessment so you can quickly gauge what has been tested and what still needs to be done. Hover over or select a test status label to highlight only that status on the bar.

Beneath the bar, a table lists all the actions and key details, including: service, test status, the number of potential and earned points, associated regulations and standards, applicable solution, action type, and control family.

Filter by **Service** to view actions related to a service and their progress. From the table, select an improvement action to go to its details page, from where you can manage implementation and testing.
Get details about [working with improvement actions](compliance-manager-improvement-actions.md).

#### Microsoft actions tab

The Microsoft actions tab appears for assessments based on templates that support Microsoft products. It lists all the actions in the assessment that are managed by Microsoft. The list shows key action details, including: service, test status, points that contribute to your overall compliance score, associated regulations and standards, applicable solution, action type, and control family. Select an improvement action to view its details page.

## Grant user access to individual assessments

When you assign users a Compliance Manager role in the Microsoft Purview compliance portal, they can view or edit data within all assessments by default (review the [Compliance Manager role types](compliance-manager-setup.md#role-types)). You can restrict user access to only certain assessments by managing user roles from within an assessment. Restricting access in this way can help ensure that users who play a role in overseeing compliance with particular regulations or standards have access only to the data and information they need to perform their duties. (You can also set [user access for regulations](compliance-manager-templates.md#grant-user-access-to-regulations), which allows users to access all assessments created for that regulation.)

External users who need access for auditing or other purposes can also be assigned a role for viewing assessments and editing test data. You provide access to external individual by assigning them an Azure Active Directory (AD) role. Learn more about [assigning Azure AD roles](compliance-manager-setup.md#setting-permissions-in-azure-ad).

#### Steps for granting access

Follow the steps to grant user access to an assessment.

1. From your **Assessments** page, find the assessment you want to grant access to. Select it to open its details page.

1. In the upper-right corner, select **Manage user access**.

1. A **Manage user access** flyout pane appears. It has three tabs, one for each role of Readers, Assessors, and Contributors. Navigate to the tab for the role you want your user to hold for this assessment.  Users who currently have access to the assessment will have a blue box with a check mark to the left of their name.

1. Select the **+ Add** command for the role tab you're on: **Add reader**, or **Add assessor** or **Add contributor**.

1. Another flyout pane appears which lists all the users in your organization. You can select the checkbox next to the username you want to add, or you can enter their name in the search bar and select the user from there. You can select multiple users at once.

1. After making all your selections, select **Add**.
    > [!NOTE]
    > If you assign a role to someone who already has an existing role, the new role assignment you choose will override their existing role. In this case, you'll see a confirmation box asking you to confirm the change in role.

1. The flyout pane closes and you arrive back at your assessment details page. A confirmation message at the top confirms the new role assignment for that assessment.

#### Steps for removing access

You can remove a user's access to individual assessments by following the steps below:

1. On the assessment's details page, select **Manage user access**.
1. On the **Manage user access** flyout pane, go the tab corresponding to the user's role you want to remove.

1. Find the user whose role you want to remove. Check the circle to the left of their name, then select the **Remove** command just below the role tab. To remove all users at once, simply select the **Remove all** command without checking the circle next to every user's name.

1. A **Remove access?** dialog appears, asking you to confirm the removal. Select **Remove access** to confirm the role removal.

1. Select **Save** on the flyout pane. The users' roles will now be removed from the assessment.

Learn how to get a broad [view of all users with access to assessments](compliance-manager-setup.md#user-access).

##### Note about multiple roles

- A user can have one role that applies to an assessment, while also holding another role that applies broadly to overall Compliance Manager access.

    - For example, if you've assigned a user a **Compliance Manager Reader** role in Microsoft Purview compliance portal **Permissions,** you can also assign that user a **Compliance Manager Assessor** role for a specific assessment. In effect, the user holds the two roles at the same time, but their ability to edit data will be limited to the assessment to which they've been assigned the **Assessor** role.
    - Removing an assessment-based role won't remove the user's overall Compliance Manager role if they have one. If you want to change a user's overall role, you have to change it from the **Permissions** page in the Microsoft Purview compliance portal.

- For an individual assessment, one user can only hold one assessment-based role at a time.
    - For example, if a user holds a reader role for a GDPR assessment and you want to change them to a contributor role, you'll first need to remove their reader role, and then re-assign them the reader role.

> [!NOTE]
> Admins whose permissions for Compliance Manager were set in Azure AD won't appear on the **Manage user access** flyout pane. This means that if a user has access to one or more assessments, and their role is Global Administrator, Compliance Administrator, Compliance Data Administrator, or Security Administrator, they won't appear on this pane. Learn more about [setting Compliance Manager permissions and roles](compliance-manager-setup.md#set-user-permissions-and-assign-roles).

## Accept updates to assessments

When an update is available for an assessment, you'll see a notification and have the option to accept the update or defer it for a later time. Updates are available for assessments based on the regulatory templates provided in Compliance Manager. If your organization is using universal templates for assessing other products, inheritance may not be supported.

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

When you select **Review update** from the assessment details page, a flyout pane appears on the right side of your screen. The flyout pane provides the key details below about the pending update:

- The template title
- Source of the update (Microsoft, your organization, or a specific user)
- The date the update was created
- An overview explaining the update
- Specific details about the changes, including the impact to your compliance score, the amount of progress toward completion of the assessment, and the specific number of changes to improvement actions and controls.

Selecting the **Updated template** command will download an Excel file containing control data for the version of the template with the pending updates. Selecting the **Current template** command downloads a file of the existing template without the updates.

To accept the update and make the changes to your assessment, select **Accept update**. Accepted changes are permanent.

If you select **Cancel**, the update won't be applied to the assessment. However, you'll continue to see the **Pending update** notification until you accept the update.

- **Why we recommend accepting updates**: Accepting updates helps ensure you have the most updated guidance on using solutions and taking appropriate improvement actions to help you meet the requirements of the certification at hand.

- **Why you might want to defer an update**: If you're in the middle of completing an assessment, you may want to ensure you've finished work on it before you accept an update to the assessment that could disrupt control mapping. You can defer the update for a later time by selecting **Cancel** on the review update flyout pane.

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
