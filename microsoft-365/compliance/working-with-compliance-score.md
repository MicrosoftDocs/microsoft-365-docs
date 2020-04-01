---
title: "Working with Microsoft Compliance Score"
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
description: "Learn how to use the workflow tools in Microsoft Compliance Score to help you manage compliance for your organization."
---

# Working with Microsoft Compliance Score (preview)

This article explains how to work with the key elements of Compliance Score. You'll learn how to use **improvement actions** to manage your compliance workflow. You'll also learn how to use the information on your **Solutions** and **Assessments** pages, and how to produce reports.

## Manage your workflow with improvement actions

**Improvement actions** centralize your compliance activities. Each one lists actions you can take to help you align with data protection regulations and standards, with detailed implementation guidance. Actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, notes, and record status updates within the improvement action.

## View your improvement actions

The Compliance Score dashboard shows your **key improvement actions**—the ones with the most available points that address the most important issues.

To view all of your improvement actions on your  **Improvement actions** page, select the **Improvement actions** tab on your dashboard. Or, select **View all improvement actions** underneath the list of key improvement actions on your dashboard.

If you have a long list of actions, it may be helpful to filter your view. Select **Filter** at the upper-right corner of the actions list. When the **Filters** flyout pane appears, select your criteria based on regulations and standards, solution, and group. You can also customize your view by selecting **Group** in the upper-right corner. From the drop-down menu, select to view by group, solution, category, action type, or status.

The default view for this page does not show improvement actions with a test status of **Passed**. To view actions that have passed testing, check the **Passed** box in the **Filters** flyout pane. Only actions with a test status of **Passed** count toward your score.

The improvement actions page shows the following data points for each improvement action:

- **Score impact**: the points by which your overall score will increase when completing the action
- **Regulations**: the regulation or standard pertaining to the action
- **Group**: the group to which you assigned the action
- **Solutions**: the solution where you can go to perform the action
- **Assessments**: the assessment  (which organizes controls to meet a certain compliance objective) in which the action resides
- **Categories**: the related data protection category (such as, protect information, manage devices, etc.)
- **Test status**:
    - **None** - no status update recorded
    - **Not assessed** - testing has not started
    - **Not in scope** - is excluded from Compliance Score calculation and does not increase your score
    - **Partially tested** - testing is not yet complete
    - **Failed high risk** - testing of implementation has failed, and the risk of non-compliance with the applicable standard is high
    - **Passed** - implementation successfully tested
- **Pointed achieved**: shows points achieved out of the maximum that could be earned

### Improvement actions details

Each improvement action has a details page. This page has detailed implementation instructions for completing recommended actions to address the related standards and regulatory requirements listed under the **At a glance** header.

The details page is where you can launch the recommended action. You can also assign the work to another user, update status, and attach notes and documentation.

To view an improvement action's details page:

1. Go to your improvement actions page.
2. Click or tap anywhere in the row of your intended improvement action, which opens its details page.

You can easily view the next or previous improvement action in the list by selecting the up or down arrow in the upper-right corner of the screen. If you filtered your list on the improvement actions page, moving up or down will take you to the next item within that filtered list.

## Assign improvement actions

To begin implementation work on an improvement action, you can do the work yourself or assign it to another user. The assigned person could be:

- A business policy owner
- An IT implementer
- Another employee with responsibility to perform the task

Once the proper person is identified, be sure they hold a sufficient [role](compliance-score-setup.md#set-user-permissions-and-assign-roles) in Compliance Score (compliance administrator, compliance data administrator, security administrator, or global administrator) to perform the work, then take the following steps: 

1. From the improvement actions details page, select **Edit status** near the upper-left section of the screen. 

2. In the edit status flyout pane, click or tap in the **Assigned to** box, which populates a **Suggested people** list of users. You can select the user from the list, or type the email address of the person to whom you want to assign the action.

3. Select **Save and close** to complete the assignment. The assigned user will receive an email that the improvement action has been assigned to them, and they can then open the improvement action from their dashboard.

The assigned user can then perform the recommended actions outlined in the implementation instructions.

## Perform work and store documentation

When you perform implementation work, you can upload files and notes directly to the improvement action in the **Notes and documentation** section.  This environment is a secure, centralized repository to help you demonstrate satisfaction of controls to meet compliance standards and regulations. Any user with read-only access can read content in this section. Only users with editing rights can upload and download files and enter or edit notes.

Fields in the **Notes and documentation** section include:

**Uploaded documents**

- Select **Manage documents** to upload any relevant files.
- When the manage documents flyout pane opens, select **Add document**, then select your file from your system. Accepted file types: 
  - Documents (.doc, .xls, .ppt, .txt, .pdf)
  - Images (.jpg, .png)
  - Video (.mkv)
  - Compressed files (.zip, .rar)
- Once your file resolves in the pane, select **Close,** which automatically saves the file attachment. You will then see the file listed underneath **Uploaded documents.** 
- To download or delete the document, select **Manage documents** from  underneath the list of documents. On the flyout pane, click or tap on the document row to highlight it, then select **Download** or **Delete.**

**Implementation, Test, and Additional notes**

- To add notes in any of these three fields, select **Edit implementation notes** underneath any of these fields.
- When the flyout pane opens, enter notes in the text field, then select **Save and close**.
- To edit notes, select **Edit implementation notes**, make your edits, then select **Save and close**.

There is no character limit in the notes fields. We recommend keeping notes brief so that you can easily view and edit them from the improvement actions details page.

## Change improvement action status

You can record the implementation status and date, and the test status and date, for each improvement action. Below are the available fields and status options:

- **Implementation status**: select from these status options:
    - **Not implemented** - action not yet implemented
    - **Implemented** - action implemented
    - **Alternative implementation** - select this option if you used other third-party tools or took other actions not included in Microsoft recommendations
    - **Planned** - action is planned for implementation
    - **Not in scope** - an option for actions not relevant to your organization; selecting this status excludes the action from scoring; unselecting it will include the action in scoring
- **Implementation date**: available field when implementation status is set to **Implemented** or **Alternative implementation**; toggle through the calendar pop-up to select the date
- **Test status**: select from these options:
    - **Not assessed** - testing has not started
    - **Passed**- implementation successfully tested
    - **Failed low risk** - testing failed, low risk
    - **Failed medium risk** - testing failed, medium risk
    - **Failed high risk** - testing failed, high risk
- **Test date**: toggle through the calendar pop-up to select the date

> [!NOTE]
> Implementation and test status fields can be edited by any user with editing permissions, not just the **Assigned to** user.

## Assign improvement action to assessor for completion

After you complete the work and upload evidence, the next step is to set the implementation status and date, and assign the improvement action to an assessor for validation.

Types of assessors include:

- Internal assessors who perform validation of controls within your organization
- External assessors who examine, verify, and certify compliance—such as third-party independent organizations that audit Microsoft cloud services

The assessor validates the work and examines the documentation, and selects the appropriate test status.

**If the test status is "Passed"**: the action is complete, and the **points achieved** shows the full number of possible points achieved and counted toward your overall compliance score.

**If the test status is any degree of "Failed"**: the action does not meet the requirements, and the assessor can assign it back to the appropriate user for additional work.

## Solutions page

The **Solutions page** is another starting point for working on improvement actions to increase your score. 

To get to your solutions page, select the **Solutions** tab on your dashboard, or select **View all solutions** underneath **Solutions that affect your score** in the upper-right section of your dashboard.

The solutions page shows the share of earned and potential points as organized by solution. Viewing your remaining points and improvement actions from this view helps you understand which solutions need more immediate attention.

### Filtering your solutions view

To filter you view of solutions:

1. Select **Filter** at the top-left corner of your assessments list.
2. On the flyout **Filters** pane, place a check next to the desired criteria (standards and regulations, solution, action type, Compliance Manager group, category).
3. Select the **Apply** button. The filter pane will close and you'll see your filtered view.

You can also modify your view to see assessments by group, product, or regulation by selecting the type of grouping from the **Group** drop-down menu above your assessments list.

### Taking actions from the solutions page

The solutions page displays your organization's solutions that are connected to improvement actions. The table lists each solution's contribution to your overall score, the score-enhancing points achieved and possible within that solution, and the remaining number of improvement actions grouped in that solution that can increase your score. 

There are two ways you can take action from this screen:

1. On the row of your intended solution, under the **Remaining actions** column, click or tap the hyperlinked number. You'll see a filtered view of the improvement actions screen showing untested improvement actions for that solution.

2. On the row of your intended solution, under the **Open solution** column, select **Open**. You'll see the solution or location in the Microsoft 365 and Office 365 security and compliance centers where you can take the recommended action.

## Assessments page

The assessments page lists the assessments you select to track for your organization. Your Compliance Score denominator is determined by all your tracked assessments. The more assessments you add, the more improvement actions you see on your improvement actions page, and the higher your score denominator is.

To get to your assessments page, select the **Assessments** tab on your dashboard.

On this page, you can quickly view important information about each assessment:

- **Status**: the status toward completion of all the improvement actions in the assessment will be listed as either:
    - **Non-compliant**: the improvement actions in the assessment have not been implemented and successfully tested; work has not yet begun
    - **In progress**: work is underway in implementing or testing the improvement actions; for example, an improvement action in the assessment has been assigned for work, is in the process of being implemented and tested
- **Assessment progress**: the percentage of the work done towards final completion of the assessment, as measured by the number of controls successfully tested.
- **Customer-managed actions**: the number of completed actions to satisfy implementation of  your customer-managed controls
- **Microsoft-managed actions**: the number of completed actions to satisfy implementation of Microsoft-managed controls
- **Assessment group**: name of the group you created, in which the assessment resides
- **Related services**: associated Microsoft 365 service
- **Related regulations**: the regulatory standard, policy, or law that the assessment seeks to satisfy

### Default assessments

By default, you will see the Microsoft 365 data protection baseline assessment on the assessments page. Compliance Score also provides several pre-configured assessments ([view the full list](compliance-score.md#templates)). If you want to add more assessments to cover additional regulations and standards, you can do this in Compliance Manager.

### Managing assessments

During public preview, you will go to the Compliance Manager tool to crate, customize, and manage your assessments.

On the **Assessments** page in Compliance Score, select **Manage Assessments in Compliance Manager** at the top of your assessments list. This link takes you to your **Assessments** dashboard in Compliance Manager.

The other link at the top of the assessments list, **Microsoft actions in Compliance Manager**, takes you to your **Controls Info** dashboard in Compliance Manager showing Microsoft controls that contribute to your compliance score.

### Filtering your assessments view

To filter you view of assessments:

1. Select **Filter** at the top-left corner of your assessments list.
2. On the flyout **Filters** pane, place a check next to the desired criteria (standards and regulations, Compliance Manager group).
3. Select the **Apply** button. The filter pane will close and you will see your filtered view.

You can also modify your view to see assessments by group, product, or regulation by selecting the type of grouping from the **Group** drop-down menu above your assessments list.

### Managing improvement actions within an assessment

From the assessment list, under the **Customer-managed actions** column, select the linked text on the row of the intended assessment. This takes you a filtered view of the improvement actions page showing the actions within that assessment.

## Reporting

You can export a report of all your improvement actions in Compliance Score. From the **Improvement actions** page, select **Export** in the upper-left corner of your screen, above your list of actions. This will produce an Excel worksheet with all your improvement actions and the filter categories shown on the **Improvement actions** page.

You can also export a report from Compliance Manager by following these steps:

1. In Compliance Manager, go to your **Controls Info** dashboard.
2. You'll see an **Assessment** tab and a **Template** tab.  
3. To export an assessment: Select the **Assessment** tab. Use the **Group** and **Assessment** drop-down menus to select the assessment you want to export. Select **Export** near the upper right of your screen. An Excel file will download. It includes a list of actions, grouped by control, with your implementation and test details.
4. To export a template: Select the **Template** tab, and choose the template you want to export from the **Template** drop-down menu. Select **Export** near the upper right of your screen. An Excel file will download. It includes a list of actions, grouped by control, with your implementation and test details.
