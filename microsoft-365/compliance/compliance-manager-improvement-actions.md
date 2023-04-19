---
title: "Working with improvement actions in Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/01/2023
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
description: "Learn how to implement and test controls by working with improvement actions in Microsoft Purview Compliance Manager. Assign work, store documentation, and export reports."
---

# Working with improvement actions in Compliance Manager

**In this article:** This article explains how to **manage your compliance workflow** with improvement actions. Learn how to **assign improvement actions** for implementation and testing, **manage updates**, and export **reports**.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Overview

Improvement actions help centralize your compliance activities. Each improvement action suggests an action to take with detailed guidance intended to help you align with data protection regulations and standards. Improvement actions can be assigned to users in your organization to perform implementation and testing work. You can also store notes, documentation, notes, and record status updates within the action. Many improvement actions can be set up for automatic testing and monitoring.

Compliance Manager works within a shared responsibility model where some actions are completed by Microsoft and some actions are completed by the organization in order to meet the requirements of a regulation, standard, or certification. To that end, you’ll see the designation of two types of improvement actions:

1. **Your improvement actions**: your organization manages the implementation, testing, and verification of completion of these actions.

1. **Microsoft actions**: Microsoft manages the implementation and testing; your organization does not work on these actions, but you will see them in the product because controls are usually made up of your actions plus Microsoft actions.

Both types of actions have points that count toward your overall compliance score when completed.

## Action types

Improvement actions are identified and categorized in the ways described below. The way actions are scored depends on their type. See [Compliance Manager scoring](compliance-manager-scoring.md) for more details about how each action types are scored.

##### Technical and non-technical actions

- **Technical actions** are implemented by interacting with the technology of a solution (for example, changing a configuration). The points for technical actions are granted once per action, regardless of how many groups it belongs to.

- **Non-technical** actions are managed by your organization and implemented in ways other than working with the technology of a solution. There are two types of non-technical actions: **documentation** and **operational**. The points for these actions are applied to your compliance score at a group level. This means that if an action exists in multiple groups, you will receive the action’s point value each time you implement it within a group.

##### Mandatory and discretionary actions

- **Mandatory actions** can’t be bypassed, either intentionally or accidentally. An example of a mandatory action is a centrally managed password policy that sets requirements for password length, complexity, and expiration. Users must follow these requirements to access the system.

- **Discretionary actions** rely upon users to understand and adhere to a policy. For example, a policy requiring users to lock their computer when they leave it is a discretionary action because it relies on the user.

##### Preventative, detective, and corrective actions

- **Preventative actions** address specific risks. For example, protecting information at rest using encryption is a preventative action against attacks and breaches. Separation of duties is a preventative action to manage conflict of interest and guard against fraud.

- **Detective actions** actively monitor systems to identify irregular conditions or behaviors that represent risk, or that can be used to detect intrusions or breaches. Examples include system access auditing and privileged administrative actions. Regulatory compliance audits are a type of detective action used to find process issues.

- **Corrective actions** try to keep the adverse effects of a security incident to a minimum, take corrective action to reduce the immediate effect, and reverse the damage if possible. Privacy incident response is a corrective action to limit damage and restore systems to an operational state after a breach.

## Automated implementation and monitoring

While some improvement actions must be manually implemented and tested by your organization, many actions can be automatically implemented, tested, and continuously monitored for you. Compliance Manager automatically identifies settings in your Microsoft 365 environment and your multicloud environment that help determine when certain configurations meet improvement action implementation requirements. There are three types of automation, detailed below.

#### Built-in automation

Compliance Manager has built-in functionality to receive signals from other Microsoft solutions and non-Microsoft services. Compliance Manager detects signals from other Microsoft Purview solutions that your organization may subscribe to, including data lifecycle management, information protection, Microsoft Purview Data Loss Prevention, communication compliance, and insider risk management. Compliance Manager also detects signals from Microsoft Priva (this capability is in preview; [learn more](/privacy/priva/priva-overview#how-priva-works-with-microsoft-purview-risk-and-compliance-solutions)). Over the next few months, we’ll deploy a selection of data connectors built specifically for Compliance Manager will support other non-Microsoft services such as Salesforce and Zoom.

The automation applies specifically to the solution or service and isn’t scoped to any subscription level within your particular cloud service. Rather, Compliance Manager provides guidance for how to complete the action to help you meet the requirements of a control, and a status of passing or failing is detected and reflected back to you. Learn more about [multiservice support in Compliance Manager](compliance-manager-multiservice.md).

#### Microsoft Secure Score automation
Compliance Manager detects signals from complementary improvement actions that are monitored by [Microsoft Secure Score](../security/defender/microsoft-secure-score.md). Using these signals, Compliance Manager can automatically test certain improvement actions in order to provide continuous control assessment. When an improvement action is successfully tested and implemented, you receive the maximum possible points for that action, which gets credited to your overall compliance score.

#### Microsoft Defender for Cloud automation

Integration with Defender for Cloud allows Compliance Manager to facilitate improvement actions and provide continuous monitoring across multiple Microsoft and non-Microsoft cloud services. The cloud infrastructure of this monitoring means that action status can be evaluated and graded at the subscription level for your desired service. You’ll be able to see specific implementation and testing results for each improvement action within each subscription of your service. The overall score you receive for the improvement action is an aggregate of the individual scores of each subscription within that service. Learn more about [Compliance Manager scoring](compliance-manager-scoring.md).

### How to tell which actions are tested automatically

On your **Improvement actions** page, find the Testing source column. If the value is listed as Automatic, then the action is automatically tested by Compliance Manager. If the value is Manual, then the action is tested by your organization. If the value is Parent, then the action inherits the testing status of another action to which it’s linked. Get details below about action [testing source](#testing-source).

### Automation settings when actions are added or updated

When automation becomes available for existing improvement actions, or when new automated improvement actions are added, the default behavior depends on your current settings and whether or not you’ve brought data into an improvement action. When you add your own testing data or evidence into an improvement action, automatic testing is turned off for that action to ensure that Compliance Manager doesn’t overwrite any of your data.

If you've added data to an existing improvement action:
- Automated testing remains **off** by default for the action. You can choose to turn it back on.

If you haven't added data to an improvement action, or when new automated actions are added to Compliance Manager, the testing behavior follows your current settings:
- Automated testing is **on** if your setting is **on** for **all actions** or **per action**.
- Automated testing is **off** if your setting is **off for all actions**.

## Improvement actions details page

All of the improvement actions managed by your organization are listed on the **Improvement actions** tab in Compliance Manager. Each improvement action provides detailed implementation guidance and a link to launch you into the appropriate solution or service.

Select an improvement action from the list on the **Improvement actions** page to view that action’s details page. You can also select an assessment from the **Assessments** page, then go to the **Your improvement actions** tab and select an action from the list. Each improvement action’s details page contains the sections below:

- **Overview**: Contains a **Summary** of basic information such as the implementation and test status, points achieved, associated assessments, and a **Testing source** section for viewing and changing [how the action is tested](#testing-source).

- **Implementation** tab: Contains implementation status, date, notes, detailed instructions, and for [technical actions](compliance-score-calculation.md#technical-and-non-technical-actions) a **Launch now** link taking you to the appropriate solution or service for implementation.

- **Testing** tab: Contains testing status, date, notes, and a link to download a testing history report.

- **Related controls** tab: Lists the controls associated with the improvement action, including the control ID and the associated regulation. Select a control name to view a flyout pane with a detailed description.

- **Evidence** tab: Location where you can upload and view files and links related to implementation and testing work. Learn more about [storing evidence](#storing-evidence).

## Implementation work

### Assigning improvement actions

To begin implementation work on an improvement action, you can do the work yourself or assign it to another user. The assigned person could be a business policy owner, an IT implementer, or another employee with responsibility to perform the task. Once you identify the appropriate assignee, be sure they hold a sufficient [Compliance Manager role](compliance-manager-setup.md#set-user-permissions-and-assign-roles) to perform the work. Then follow the steps below to assign the improvement action:

1. From the improvement actions details page, select **Assign action** on the left of the screen.

2. The **Assign to user** flyout pane shows a **Suggested people** list of users. You can select the user from the list, or type the email address of the person you want to assign it to.

3. Select **Assign**. The assigned user will receive an email explaining that the improvement action has been assigned to them, with a direct link to the improvement action.

> [!NOTE]
> US Government Community (GCC) High and Department of Defense (DoD) customers won't receive an email when improvement actions are assigned to them.

**Assign multiple improvement actions to a single user**:

1. On your **Improvement actions**, select the area to the left of the improvement action's name. A round check icon will appear indicating you've selected that action. Check all the actions you want to assign.
1. Select the **Assign to user** link at the top of the improvement actions table. A pop-up window will appear.
1. In the **Assign to** field, start typing the name of the person you want to assign the actions to. You can also select from the list of suggested people.
1. After populating the **Assign to** field with the assignee's name, select **Assign**.
1. You'll then see your **Improvement actions** page with the new assignee listed for the actions you just assigned.

### Implementation instructions

Implementation work differs based on whether the action is implemented and monitored through Microsoft Defender for Cloud, or whether the action is implemented in Microsoft 365 environment or in non-cloud environments.

#### Defender for Cloud actions

Improvement actions that pertain to cloud services such as Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP) are implemented and monitored using Compliance Manager’s integration with Defender for Cloud (learn more about [multiservice support](compliance-manager-multiservice.md)). The description underneath the **Implementation tab** will state when the action is this type of action.

RESUME HERE….looks like I’ll need a MDC and non-MDC secetions/subheads for each work header here of implementation, testing, related controls (if I put back in), and evidence.

#### Non-MDC actions

...resumption of  old copy....You can record the implementation status and date for each improvement action and add notes for internal reference. These fields can be edited by any user with editing permissions, not just by the assigned person.

To edit an improvement action’s status, select **Edit implementation details** on the details page. Below are the available fields and status options:

- **Implementation status**
  - **Not implemented**: action not yet implemented
  - **Partially implemented**: for automatically tested actions, the action is partially implemented (neither passes nor fails) and receives a partial score
  - **Implemented**: action implemented
  - **Alternative implementation**: select this option if you used other non-Microsoft tools or took other actions not included in Microsoft recommendations
  - **Planned**: action is planned for implementation
  - **Out of scope**: action isn’t relevant to your organization and doesn’t contribute to your score
- **Implementation date**: available to select when implementation status is "implemented" or "alternative implementation"
- **Implementation notes**: text field for notes about your implementation.

There's no character limit in the notes fields. We recommend keeping notes brief so that you can easily view and edit them from the improvement actions details page.

Common actions synchronize across groups. When two different assessments in the same group share improvement actions that are managed by you, any updates you make to an action's implementation details or status will automatically synchronize to the same action in any other assessment in the group. This synchronization allows you to implement one improvement action and meet several requirements across multiple regulations.

## Testing work

In the **Testing** section, you can view the testing status of your improvement action, the testing date, and any notes. A user with editing permissions can select  **Edit testing details** to edit content on the **Testing** tab.

#### Testing status fields

**Test status**: You can edit test status when an improvement action's implementation status is "implemented" or "alternative implementation." Below are the test statuses for manually tested actions:

  - **None**: no work has started on the action
  - **Not assessed**: action hasn't been tested
  - **Passed**: implementation has been verified by an assessor
  - **Failed low risk**: testing failed, low risk
  - **Failed medium risk**: testing failed, medium risk
  - **Failed high risk**: testing failed, high risk
  - **Out of scope**: the action is out of scope for the assessment and doesn’t contribute to your score
  - **In progress**: testing in progress
  - **Remediated**: tbd

Automatically tested actions may also show one of the following states in the **Test status** column on the **Improvement actions** page:
   - **To be detected**: awaiting signals that indicate test status
  - **Could not be detected**: couldn't detect a test status; will be automatically checked again
  - **Partially tested**: action has been partially tested;  neither passes nor fails

> [!NOTE]
> The test status and testing notes for automatically tested improvement actions can't be edited manually. Compliance Manager updates these fields for you.

**Test date**: Toggle through the calendar pop-up to select the testing date.

**Testing notes** and **Additional notes**: Enter notes for your own internal reference in these free text fields.

**Testing history**: The testing history provides a downloaded report of all test status changes for the improvement action.

#### Exporting testing history
You can export a report that will show you a history of all changes in test status for an improvement action. These reports are especially helpful for monitoring progress on actions that are automatically tested, since such actions are regularly or frequently updated based on your tenant's data.

On an improvement action's details page, select the **Testing** tab. Under **Testing history**, select the **Export testing history** button. The report will download as an Excel file.

## Testing source

Compliance Manager provides options for how to test improvement actions. In the **Overview** section of each improvement action, the **Testing Source** area has a drop-down menu from which you can choose how you want the action to be tested: **Manual**, **Automatic**, and **Parent**.

#### Manual
Improvement actions set for manual testing are actions which you manually test and implement. You set the necessary implementation and test status states, and upload any evidence files on the **Documents** tab. For some actions, this is the only available method for testing improvement actions.

#### Automatic
Certain improvement actions can be automatically tested by Compliance Manager. [Get details](compliance-manager-setup.md#testing-source-for-automated-testing) on which improvement actions can and can't be tested automatically.

For those improvement actions that can be automatically tested, you'll see the **Automatic** option for testing source. Compliance Manager will detect signals from other compliance solutions you've set up in your Microsoft 365 environment, as well as any complementary actions that Microsoft Secure Score also monitors. The **Testing logic** field on the **Testing** tab will show what kind of policy or configuration is required in another solution in order for the action to pass and earn points toward your compliance score.

When signals indicate that an improvement action has been successfully implemented, you'll automatically receive the points eligible for that action, which will factor into scores for any related controls and assessments. Learn more about how [continuous assessment affects your compliance score](compliance-score-calculation.md#how-compliance-manager-continuously-assesses-controls).

 Automatic testing is on by default for all eligible improvement actions. You can adjust these settings to automatically test only certain improvement actions, or you can turn off automatic testing for all actions. Learn more about how automated testing works and how to adjust your settings at [Set up automated testing](compliance-manager-setup.md#manage-automated-testing-settings).

When automated testing is turned on, the action’s test date won’t be updated, but its test status will update. When new assessments are created, scores automatically include Microsoft control scores and Secure Score integration.

#### Parent

When you select **Parent** as the testing source for an improvement action, you'll choose another action to which your action will be linked. Your action in effect becomes the "child" to the action that you designate as the "parent." When you designate a parent for an improvement action, that action inherits the implementation and testing details of the parent action. Anytime the parent action's status changes, the child's status will inherit those changes. The child action will also accept all evidence in its **Documents** tab belonging to the parent action, which could override any data that previously existed in the child action's **Documents**.

> [!NOTE]
> Having a testing source of **Parent** doesn't necessarily mean that the action is automatically tested by Compliance Manager. For example, if the parent action's testing source is **manual**, then the child action will take on the status of parent action, which is a manual test and implementation by your organization.

To set up a parent testing source, follow the steps below:

- On an improvement action details page, locate the **Overview** section.
- Under the **Testing Source** header, select **Parent** from the drop-down menu.
- Select **Assign parent**.
- On the **Assign parent improvement action** flyout pane, find the improvement action you want to assign as the parent from the list, or enter the action's name in the search bar near the top. When you identify your intended action, select the checkbox that appears to the left of the action name when you hover over it, then select **Save**.

You'll come back to your action's details page. Under **Testing Source** on the **Overview** section, the new action you designated as the parent is listed under **Parent action**.

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

- **If test status is  set to “Failed”**: the action doesn't meet the requirements, and the assessor can assign it back to the appropriate user for additional work.

Users will need a **Compliance Manager Assessor** role in order to edit improvement action testing notes. You may also want to grant users access only to certain assessments. Learn [how to set permissions](compliance-manager-setup.md#set-user-permissions-and-assign-roles) and [how to grant role-based assess to assessments](compliance-manager-setup.md#role-based-access-to-assessments).

## Accepting updates to improvement actions

When an update is available for an improvement action, you’ll see a notification next to its name. You can either accept the update or defer it for a later time.

#### What causes an update

An update occurs when there are changes related to scoring, automation, or scope. Changes may involve new guidance for improvement actions based on regulatory changes, or could be because of product changes. Only the improvement actions managed by your organizations receive update notifications.

#### Where you’ll see assessment update notifications

When an improvement action is updated, you’ll see a **Pending update** label next to its name on the improvement actions page, and on the details page of its related assessments.

Go to the improvement action’s details page, and select the **Review update** button in the top banner to review details about the changes and accept or defer the update.

#### Review update to accept or defer

After selecting **Review update** from the improvement action details page, a flyout pane appears on the right side of your screen. The flyout pane provides key details about the update, such as the assessments impacted and changes in score and scope.

Select **Accept update** to accept all the changes to the improvement action. **Accepted changes are permanent**.

> [!NOTE]
> When you accept an update to an action, you’re also accepting updates to any other versions or instances of this action. Updates will propagate tenant-wide for technical actions, and will propagate group-wide for non-technical actions.

If you select **Cancel**, the update won’t be applied to the improvement action. However, you’ll continue to see the **Pending update** notification until you accept the update.

**Why we recommend accepting updates**

Accepting updates helps ensure you have the most updated guidance on using solutions and taking appropriate improvement actions to help you meet the requirements of the certification at hand.

**Why you might want to defer an update**

If you’re in the middle of completing an assessment that includes the improvement action, you may want to ensure you’ve finished work on it before you accept the update. You can defer the update for a later time by selecting **Cancel** on the review update flyout pane.

#### Accept all updates at once

If you have multiple updates and want to accept them all at one time, select the **Accept all updates** link at the top of your improvement actions table. A flyout pane will appear which lists the number of actions to be updated. Select the **Accept updates** button to apply all updates.

Note that when you return to your improvement actions page, you may see a message across the top of the page asking you to refresh the page for the updates to be completed.

## Set up alerts for improvement action changes

You can set up alerts to notify you immediately when certain changes to improvement actions occur, such as a change in implementation or test status, or an increase or decrease in score. Getting quick notifications of such changes can help you stay on top of possible compliance risks. Visit [Compliance Manager alerts and alert policies](compliance-manager-alert-policies.md) to learn how to set up alerts.

## Export a report

Select **Export** in the upper left corner of your screen to download an Excel worksheet containing all your improvement actions and the filter categories shown on the improvement actions page.

The exported Excel file is also what you use to update multiple improvement actions at once. Get details about how to edit the export file to [update multiple improvement actions](compliance-manager-update-actions.md).
