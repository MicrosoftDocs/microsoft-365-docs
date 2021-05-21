---
title: "Assign and complete improvement actions in Microsoft Compliance Manager"
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
description: "Learn how to perform implementation and testing on controls in Microsoft Compliance Manager. Assign work, store documentation, and export reports."
---

# Assign and complete improvement actions in Compliance Manager

**In this article:** This article explains how to **manage your compliance workflow** with improvement actions. Learn how to **assign improvement actions** for implementation and testing, **manage updates**, and export **reports**.

## Manage compliance workflows with improvement actions

Improvement actions centralize your compliance activities. Each improvement action gives detailed implementation guidance to help you align with data protection regulations and standards. Actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, notes, and record status updates within the action.

All of your improvement actions are listed on the improvement actions page. Learn more about [viewing your improvement actions](compliance-manager-setup.md#improvement-actions-page).

## Improvement actions details page

Each improvement action has a details page showing its current status, the related standards and regulatory requirements, and recommended implementation guidance. [Technical actions](compliance-score-calculation.md#technical-and-non-technical-actions) include a **Launch now** link that takes you to the appropriate solution for implementation. You can attach implementation and testing documentation directly into an improvement action’s details page.

To view an improvement action’s details page:

1. Go to your improvement actions page.
2. Select the row of your intended improvement action, which opens its details page.

You can easily view the next or previous improvement action in the list by selecting the up or down arrow in the upper-right corner of the screen. If you filtered your list on the improvement actions page, moving up or down takes you to the next item within that filtered list.

## Assign improvement actions

To begin implementation work on an improvement action, you can do the work yourself or assign it to another user. The assigned person could be:

- A business policy owner
- An IT implementer
- Another employee with responsibility to perform the task

Once you identify the appropriate assignee, be sure they hold a sufficient [Compliance Manager role](compliance-manager-setup.md#set-user-permissions-and-assign-roles) to perform the work. Then follow the steps below to assign the improvement action:

1. From the improvement actions details page, select **Edit status** near the upper-left section of the screen.

2. In the edit status flyout pane, select the **Assigned to** box to show a **Suggested people** list of users. You can select the user from the list, or type the email address of the person you want to assign it to.

3. Select **Save and close**. The assigned user will receive an email explaining that the improvement action has been assigned to them, with a direct link to the improvement action. 
> [!NOTE]
> US Government Community (GCC) High and Department of Defense (DoD) customers won't receive an email when improvement actions are assigned to them.

The assigned user can then perform the recommended actions.

#### Assign multiple improvement actions to a single user

You can assign multiple improvement actions to one user by following these steps:

1. Go to your Improvement actions page.
2. Select the area to the left of the improvement action's name. A round check icon will appear indicating you've selected that action. Check all the actions you want to assign.
3. Select the **Assign to user** link at the top of the improvement actions table.
4. A pop-up window appears. In the **Assign to** field, start typing the name of the person you want to assign the actions to. You can also select from the list of suggested people.
5. After you populate the **Assign to** field with the assignee's name, select **Assign**.
6. You'll then see your Improvement actions page with the new assignee listed for the actions you just assigned.

## Perform work and store documentation

You can upload files and notes related to implementation and testing work directly to the **Notes and documentation** section. This environment is a secure, centralized repository to help you demonstrate satisfaction of controls to meet compliance standards and regulations. Any user with read-only access can read content in this section. Only users with editing rights can upload and download files and enter or edit notes.

The **Notes and documentation** section contains fields for uploaded documents, implementation notes, test notes, and additional notes.

#### Uploaded documents

- Select **Manage documents** to upload any relevant files.
- When the manage documents flyout pane opens, select **Add document**, then select your file from your system. Accepted file types:
    - Documents (.doc, .xls, .ppt, .txt, .pdf)
    - Images (.jpg, .png)
    - Video (.mkv)
    - Compressed files (.zip, .rar)
- Once your file resolves in the pane select **Close**, which automatically saves the file attachment. You'll then see the file listed underneath **Uploaded documents**.
- To download or delete the document, select **Manage documents** from underneath the list of documents. On the flyout pane, select the document row to highlight it, then select **Download** or **Delete**.

#### Implementation notes, test notes, and additional notes

- To add notes in any of these three fields, select **Edit implementation notes** underneath any of these fields.
- When the flyout pane opens, enter notes in the text field, then select **Save and close**.
- To edit notes, select **Edit implementation notes**, make your edits, then select **Save and close**.

There's no character limit in the notes fields. We recommend keeping notes brief so that you can easily view and edit them from the improvement actions details page.

## Change improvement action status

You can record the implementation status and date, and the test status and date, for each improvement action. The **implementation** and **test status** fields can be edited by any user with editing permissions, not just by the assigned person.

To edit an improvement action’s status, select **Edit status** on the upper-left section of the details page. Below are the available fields and status options:

- **Implementation status**
    - **Not implemented** - action not yet implemented
    - **Implemented** - action implemented
    - **Alternative implementation** - select this option if you used other third-party tools or took other actions not included in Microsoft recommendations
    - **Planned** - action is planned for implementation
    - **Out of scope** – action isn’t relevant to your organization and doesn’t contribute to your score
- **Implementation date**: available to select when implementation status is "implemented" or "alternative implementation"
- **Test status**: available to select when implementation status is "implemented" or "alternative implementation":
    - **Not assessed** – action hasn't been tested
    - **Passed** - implementation has been verified by an assessor
    - **Failed low risk** - testing failed, low risk
    - **Failed medium risk** - testing failed, medium risk
    - **Failed high risk** – testing failed, high risk
    - **Out of scope** – the action is out of scope for the assessment and doesn’t contribute to your score
- **Test date**: toggle through the calendar pop-up to select the date

Common actions synch across groups. When two different assessments in the same group share improvement actions that are managed by you, any updates you make to an action's implementation details or status will automatically synchronize to the same action in any other assessment in the group. This synchronization allows you to implement one improvement action and meet several requirements across multiple regulations.

## Assign improvement action to assessor for completion

After you complete the work, conduct testing, and upload evidence, the next step is to assign the improvement action to an assessor for validation. The assessor validates the work and examines the documentation, and selects the appropriate test status.

**If test status is set to “Passed”**: the action is complete and the points achieved shows the maximum points achieved. The points are then counted toward your overall compliance score.

**If test status is  set to “Failed”**: the action doesn't meet the requirements, and the assessor can assign it back to the appropriate user for additional work.

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

## Export a report

Select **Export** in the upper-left corner of your screen to download an Excel worksheet containing all your improvement actions and the filter categories shown on the improvement actions page.