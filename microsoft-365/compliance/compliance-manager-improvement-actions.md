---
title: "Working with improvement actions in Microsoft Purview Compliance Manager"
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
description: "Learn how to implement and test controls by working with improvement actions in Microsoft Purview Compliance Manager. Automate testing, store documentation, and export reports."
---

# Working with improvement actions in Compliance Manager

**In this article:** This article explains how to **manage your compliance workflow** with improvement actions. Learn how to **assign improvement actions** for implementation and testing, set action **testing source**, **accept updates**, and export **reports**.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Overview

Improvement actions help centralize your compliance activities. Each improvement action recommends an action to take, with detailed guidance intended to help you align with data protection regulations and standards. Improvement actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, add notes, and record status updates within the action. Many improvement actions come with automatic testing and monitoring.

## Automated testing and monitoring

While some improvement actions must be manually tested by your organization, many actions can be automatically tested and monitored for you. Compliance Manager automatically identifies settings in your Microsoft 365 environment and your multicloud environment that help determine when certain configurations meet improvement action implementation requirements. Compliance Manager utilizes three types of automation, explained below.

#### Built-in automation

Compliance Manager has built-in functionality to receive signals from other Microsoft solutions and non-Microsoft services. Compliance Manager detects signals from other Microsoft Purview solutions that your organization may subscribe to, including Data Lifecycle Management, Information Protection, Data Loss Prevention, Communication Compliance, and Insider Risk Management. Compliance Manager also detects signals from Microsoft Priva (this capability is in preview). The automation applies specifically to the solution and isn’t scoped to cloud services. Learn more about [automatic testing settings](compliance-manager-setup.md#testing-source-for-automated-testing).

#### Microsoft Secure Score automation

Compliance Manager detects signals from complementary improvement actions that are monitored by Microsoft Secure Score. Through these signals, Compliance Manager can automatically test certain improvement actions in order to provide continuous control assessment. When an improvement action is successfully tested and implemented, you receive the maximum possible points for that action, which gets credited to your overall compliance score.

#### Microsoft Defender for Cloud automation

Integration with Defender for Cloud allows Compliance Manager to facilitate improvement actions and provide continuous monitoring across multiple Microsoft and non-Microsoft cloud services, such as Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP). The cloud infrastructure of this monitoring means that action status can be evaluated and graded at the subscription level of the intended service. You can see specific implementation and testing results for each improvement action within each subscription of your service. The overall score you receive for the improvement action is an aggregate of the individual scores of each subscription within that service. Learn more about [multicloud support](compliance-manager-multicloud.md) and [scoring](compliance-score-calculation.md).

#### Connectors

We're rolling out a selection of connectors built specifically for Compliance Manager to support other non-Microsoft services. Connectors for Salesforce and Zoom are available now, with more connectors releasing soon. Learn more at [Working with connectors in Compliance Manager](compliance-manager-connectors.md).

## Improvement actions details page

All of the improvement actions managed by your organization are listed on the **Improvement actions** tab. Each improvement action provides detailed implementation guidance and a link to launch you into the appropriate solution or service. 

Select an improvement action from the list to view its details page. You can also select an assessment, then go to the **Your improvement actions** tab and select an action from the list. Each improvement action’s details page contains the sections below:

- **Overview**: Contains a **Summary** of basic information such as the implementation and test status, points achieved, and associated assessments; and a **Testing source** section for viewing and changing [how the action is tested](#testing-source).

- **Implementation** tab: Contains implementation status, date, notes, detailed instructions, and for [technical actions](compliance-score-calculation.md#technical-and-non-technical-actions), a **Launch now** link taking you to the appropriate solution or service for implementation.

- **Testing** tab: Contains testing status, date, notes, and a link to download a testing history report.

- **Related controls** tab: Lists the controls associated with the improvement action, including the control ID and the associated regulation. Select a control name to view a flyout pane with a detailed description.

- **Evidence** tab: Location where you can upload and view files and links related to implementation and testing work.

## Implementation and testing

### Assign improvement actions

To begin implementation work on an improvement action, you can do the work yourself or assign it to another user. The assigned person could be a business policy owner, an IT implementer, or another employee with responsibility to perform the task. Once you identify the appropriate assignee, be sure they hold a sufficient [Compliance Manager role](compliance-manager-setup.md#set-user-permissions-and-assign-roles) to perform the work. Then follow the steps below to assign the improvement action:

1. From the improvement actions details page, select **Assign action** on the left of the screen.

2. The **Assign to user** flyout pane shows a **Suggested people** list of users. You can select the user from the list, or type the email address of the person you want to assign it to.

3. Select **Assign**. The assigned user receives an email explaining that the improvement action has been assigned to them, with a direct link to the improvement action.

> [!NOTE]
> US Government Community (GCC) High and Department of Defense (DoD) customers won't receive an email when improvement actions are assigned to them.

##### Assign multiple improvement actions to a single user

You can assign multiple improvement actions to one user by following these steps:

1. Go to your Improvement actions page.
2. Select the area to the left of the improvement action's name. A round check icon appears, indicating you've selected that action. Check all the actions you want to assign.
3. Select the **Assign to user** link at the top of the improvement actions table.
4. A pop-up window appears. In the **Assign to** field, start typing the name of the person you want to assign the actions to. You can also select from the list of suggested people.
5. After you populate the **Assign to** field with the assignee's name, select **Assign**.
6. You'll then see your **Improvement actions** page with the new assignee listed for the actions you assigned.

### Implementation work

Implementation guidance varies depending on whether you go to Microsoft Defender for Cloud to perform the work to complete the action. Learn more about [multicloud support](compliance-manager-multicloud.md).

##### Actions for services supported by Defender for Cloud

Improvement actions that pertain to cloud services such as Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP) are implemented and monitored using Compliance Manager’s integration with Defender for Cloud. The action description on the **Implementation** tab indicates that implementation occurs through Defender for Cloud, with a link taking you there to perform the work.

These infrastructure cloud actions can be of two types:

- Technical actions, which are monitored and tested by Defender for Cloud automatically; and
- Non-technical actions, which pertain to Defender for Cloud but require manual testing.

The **Implementation** tab shows a list of all related subscriptions, indicating subscription type, the number of virtual resources completed, points achieved, and the assessments in which the action appears. Select a subscription from the list to view more details in a flyout pane.

To begin implementation, first locate the action’s **Testing source** to determine if the action is automatic or manual. Then review the subscriptions listed for the action. Each subscription has its own test status.

**For manual actions**:

- Review the **How to implement** guidance and perform the necessary steps. This may involve non-technical work that takes place offline.
- Then attest to the completion of this work in Compliance Manager and/or Defender for Cloud by completing the implementation and testing status fields.
    > [!NOTE]
    > Manual actions don’t synchronize status between Compliance Manager and Defender for Cloud. You can update the status in either location, however the statuses won't synch.
-  Each subscription needs to have its status updated. Each subscription contains a single virtual resource, which represents the subscription itself.

**For automatic actions**:

- For each subscription listed on the **Implementation** tab, view the **Virtual resources completed** column.
- If a subscription shows that there are virtual resources that aren't complete, select the subscription and on the flyout pane, select the **Virtual resources** tab.
- Inspect the status of each resource to determine which require ones require remediation.
- For the resources needing remediation, review the **How to implement guidance** on the action’s **Implementation** tab. Then select the Defender for Cloud link to make the necessary changes in Defender for Cloud.

Updates to the improvement action’s status shows within 24 hours.

##### Actions not implemented through Defender for Cloud

The implementation guidance on the **Implementation** tab provides instructions and a link into the related solution. You can record the implementation status and date for each improvement action and add notes for internal reference. These fields can be edited by any user with editing permissions, not just by the assigned person.

To edit an improvement action’s status, select **Edit implementation details** on the details page. Below are the available fields and status options:

- **Implementation status**: Select one:
  - **Not implemented** 
  - **Implemented**
  - **Alternative implementation**: Select this option if you used other non-Microsoft tools or took other actions not included in Microsoft recommendations.
  - **Planned** 
  - **Out of scope**: Not relevant to your organization and doesn’t contribute to your score.
- **Implementation date**: Available to select when implementation status is "implemented" or "alternative implementation."
- **Implementation notes**: No character limit. We recommend keeping notes brief so that you can easily view and edit them from the improvement actions details page.

Common actions synchronize across groups. When two different assessments in the same group share improvement actions that are managed by you, any updates you make to an action's implementation details or status will automatically synchronize to the same action in any other assessment in the group. This synchronization allows you to implement one improvement action and meet several requirements across multiple regulations.

### Testing work

From the **Testing** tab, you can view the testing status of your improvement action, the testing date, and any notes. A user with editing permissions can select  **Edit testing details** to edit content on the **Testing** tab.

##### Actions for Defender for Cloud-supported services

The **Testing** tab on these actions displays a list of each subscription and its testing details. Select a subscription to view its testing details flyout pane. If the action is manually tested, you can edit test status, test date, and notes. You can’t edit test status and notes for automatically tested actions.

#### Testing status fields

You can edit test status when an improvement action's implementation status is "implemented" or "alternative implementation. Below are the test status for manually tested actions:

  - **None**: no work has started on the action
  - **Not assessed**: action hasn't been tested
  - **Passed**: implementation has been verified by an assessor
  - **Failed low risk**
  - **Failed medium risk**
  - **Failed high risk**
  - **Out of scope**: the action is out of scope for the assessment and doesn’t contribute to your score
  - **In progress**

Automatically tested actions may also show one of the following states in the **Test status** column on the **Improvement actions** page:
   - **To be detected**: awaiting signals that indicate test status
  - **Could not be detected**: couldn't detect a test status; will be automatically checked again
  - **Partially tested**: action has been partially tested;  neither passes nor fails

> [!NOTE]
> The test status and testing notes for automatically tested improvement actions can't be edited manually. Compliance Manager updates these fields for you.

#### Exporting testing history
You can export a report that shows you a history of all changes in test status for an improvement action. These reports are especially helpful for monitoring progress on [actions that are automatically tested](#testing-source), since such actions are regularly or frequently updated based on your tenant's data.

On an improvement action's details page, select the **Testing** tab. Under **Testing history**, select the **Export testing history** button. The report downloads as an Excel file.

## Testing source

Compliance Manager provides options for how to test improvement actions. In the **Overview** section of each improvement action, the **Testing Source** area has a drop-down menu from which you can choose how you want the action to be tested: **Manual**, **Automatic**, and **Parent**.

> [!NOTE]
> Testing source can’t be changed on actions for services supported by Defender for Cloud. If you don’t agree with an automated testing result, you can go to the related assessment in Defender for Cloud to alter the testing logic and scope.

#### Manual
Improvement actions set for manual testing are actions that you manually test and implement. You set the necessary implementation and test status states, and upload any evidence files on the **Documents** tab. For some actions, this is the only available method for testing improvement actions.

#### Automatic
Certain improvement actions can be automatically tested by Compliance Manager. [Get details](compliance-manager-setup.md#testing-source-for-automated-testing) on which improvement actions can and can't be tested automatically.

For those improvement actions that can be automatically tested, you'll see the **Automatic** option for testing source. Compliance Manager detects signals from other compliance solutions and cloud services. The **Testing logic** field on the **Testing** tab shows what kind of policy or configuration is required in another solution or service in order for the action to pass. When signals indicate that an improvement action has been successfully implemented, you automatically receive the eligible points for that action, which factor into scores for any related controls and assessments. Learn more about [scoring](compliance-score-calculation.md).

 Automatic testing is on by default for all eligible improvement actions. You can adjust these settings to automatically test only certain improvement actions, or you can turn off automatic testing for all actions. Learn more about how automated testing works and how to adjust your settings at [Set up automated testing](compliance-manager-setup.md#manage-automated-testing-settings).

When automated testing is turned on, the action’s test date won’t be updated, but its test status will update. When new assessments are created, scores automatically include Microsoft control scores and Secure Score integration.

#### Parent

When you select **Parent** as the testing source for an improvement action, you choose another action to which your action will be linked. Your action in effect becomes the "child" to the action that you designate as the "parent." When you designate a parent for an improvement action, that action inherits the implementation and testing details of the parent action. Anytime the parent action's status changes, the child's status inherits those changes. The child action will also accept all evidence in its **Documents** tab belonging to the parent action, which could override any data that previously existed in the child action's **Documents**.

> [!NOTE]
> Having a testing source of **Parent** doesn't necessarily mean that the action is automatically tested by Compliance Manager. For example, if the parent action's testing source is **manual**, then the child action will take on the status of parent action, which is a manual test and implementation by your organization.

To set up a parent testing source, follow the steps below:

- On an improvement action details page, locate the **Overview** section.
- Under the **Testing Source** header, select **Parent** from the drop-down menu.
- Select **Assign parent**.
- On the **Assign parent improvement action** flyout pane, find the improvement action you want to assign as the parent from the list, or enter the action's name in the search bar near the top. When you identify your intended action, select the checkbox that appears to the left of the action name when you hover over it, then select **Save**.

You come back to your action's details page. Under **Testing Source** on the **Overview** section, the new action you designated as the parent is listed under **Parent action**.

## Storing evidence

You can upload evidence related to implementation and testing work, in the form of files or links, directly to the **Evidence** tab. This environment is a secure, centralized repository to help you demonstrate satisfaction of controls to meet compliance standards and regulations. Any user with read-only access can read content in this section. Only users with editing rights can upload, download, and delete evidence.

#### Upload evidence

- From the improvement action's details page, go to the **Evidence** tab and select **Add evidence**.
- On the **Add evidence** flyout pane, choose whether to add a **Document** or **Link**. The accepted file types for **Document** are:
  - Documents (.doc, .xls, .ppt, .txt, .pdf)
  - Images (.jpg, .png)
  - Video (.mkv)
  - Compressed files (.zip, .rar)
- Browse to select the file you want to upload. If uploading a link, enter a name for the link and its URL. When done, select **Add**. Your item will now display in the **Evidence** tab.

#### Evidence deletion

You can delete evidence when the improvement action hasn't yet reached a pass or fail status. To delete evidence files or links, select the action menu (the three dots) to the right of the item's name and select **Delete**. Confirm the deletion when prompted.

When an improvement action has a test status of **Passed,** **Failed (low, medium, or high risk)**, or **Out of scope**, evidence files and links can no longer be deleted.

## Assign improvement action to assessor for completion

After you complete the work, conduct testing, and upload evidence, the next step is to assign the improvement action to an assessor for validation. The assessor validates the work and examines the documentation, and selects the appropriate test status.

- **If test status is set to “Passed”**: the action is complete and the points achieved shows the maximum points achieved. The points are then counted toward your overall compliance score.

- **If test status is  set to “Failed”**: the action doesn't meet the requirements, and the assessor can assign it back to the appropriate user for more work.

Users need a **Compliance Manager Assessor** role in order to edit improvement action testing notes. You may also want to grant users access only to certain assessments. Learn [how to set permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles) and [how to grant role-based access to assessments and regulations](compliance-manager-setup.md#role-based-access-to-assessments-and-regulations).

## Accepting updates to improvement actions

When an update is available for an improvement action, you see a notification next to its name. You can either accept the update or defer it for a later time.

##### What causes an update

An update occurs when there are changes related to scoring, automation, or scope. Changes may involve new guidance for improvement actions based on regulatory changes, or could be because of product changes. Only the improvement actions managed by your organizations receive update notifications.

##### Where you see assessment update notifications

When an improvement action is updated, you see a **Pending update** label next to its name on the improvement actions page, and on the details page of its related assessments.

Go to the improvement action’s details page, and select the **Review update** button in the top banner to review details about the changes and accept or defer the update.

##### Review update to accept or defer

When you select **Review update** from the improvement action details page, a flyout pane appears on the right side of your screen. The flyout pane provides key details about the update, such as the assessments impacted and changes in score and scope.

Select **Accept update** to accept all the changes to the improvement action. **Accepted changes are permanent**.

> [!NOTE]
> When you accept an update to an action, you’re also accepting updates to any other versions or instances of this action. Updates will propagate tenant-wide for technical actions, and will propagate group-wide for non-technical actions.

If you select **Cancel**, the update won’t be applied to the improvement action. However, you continue to see the **Pending update** notification until you accept the update.

- **Why we recommend accepting updates**: Accepting updates helps ensure you have the most updated guidance on using solutions and taking appropriate improvement actions to help you meet the requirements of the certification at hand.

- **Why you might want to defer an update**: If you’re in the middle of completing an assessment that includes the improvement action, you may want to ensure you’ve finished work on it before you accept the update. You can defer the update for a later time by selecting **Cancel** on the review update flyout pane.

##### Accept all updates at once

If you have multiple updates and want to accept them all at one time, select the **Accept all updates** link at the top of your improvement actions table. A flyout pane appears which lists the number of actions to be updated. Select the **Accept updates** button to apply all updates.

When you return to your improvement actions page, you may see a message across the top of the page asking you to refresh the page for the updates to be completed.

## Set up alerts for improvement action changes

You can set up alerts to notify you immediately when certain changes to improvement actions occur, such as a change in implementation or test status, or an increase or decrease in score. Getting quick notifications of such changes can help you stay on top of possible compliance risks. Visit [Compliance Manager alerts and alert policies](compliance-manager-alert-policies.md) to learn how to set up alerts.

## Export a report

Select **Export** in the upper left corner of your screen to download an Excel worksheet containing all your improvement actions and the filter categories shown on the improvement actions page.

The exported Excel file is also what you use to update multiple improvement actions at once. Get details about how to edit the export file to [update multiple improvement actions](compliance-manager-update-actions.md).