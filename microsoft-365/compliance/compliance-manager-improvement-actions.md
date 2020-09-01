---
title: "Assign and complete improvement actions in Microsoft Compliance Manager"
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
description: "Learn how perform implementation and testing on controls in Microsoft Compliance Manager. Assign work, store documentation, and export reports."
---

# Assign and complete improvement actions in Compliance Manager

**In this article:** This article explains how to **manage your compliance workflow** with improvement actions. Learn how to **assign improvement actions** for implementation and testing, assign them to assessors for completion, and export **reports**.

## Manage compliance workflows with improvement actions

Improvement actions centralize your compliance activities. Each improvement action gives detailed implementation guidance to help you align with data protection regulations and standards. Actions can be assigned to users in your organization to perform implementation and testing work. You can also store documentation, notes, and record status updates within the improvement action.

All of your improvement are listed on the improvement actions page. Learn more about [how to filter your view of your improvement actions and interpret status states](compliance-score-setup.md#improvement-actions-page).

## Improvement actions details page

Each improvement action has a details page showing its current status and the related standards and regulatory requirements. Detailed implementation guidance includes a **Launch now** link taking you into the appropriate solution for implementation. You can attach implementation and testing documentation directly into an improvement action's details page.

To view an improvement action’s details page:

1. Go to your improvement actions page.
2. Select the row of your intended improvement action, which opens its details page.

You can easily view the next or previous improvement action in the list by selecting the up or down arrow in the upper-right corner of the screen. If you filtered your list on the improvement actions page, moving up or down takes you to the next item within that filtered list.

## Assign improvement actions

To begin implementation work on an improvement action, you can do the work yourself or assign it to another user. The assigned person could be:

- A business policy owner
- An IT implementer
- Another employee with responsibility to perform the task

Once you identify the appropriate assignee, be sure they hold a sufficient [role in Compliance Score](compliance-score-setup.md#set-user-permissions-and-assign-roles) (compliance administrator, compliance data administrator, security administrator, or global administrator) to perform the work, then take the following steps:

1. From the improvement actions details page, select **Edit status** near the upper-left section of the screen.

2. In the edit status flyout pane, select the **Assigned to** box to show a **Suggested people** list of users. You can select the user from the list, or type the email address of the person you want to assign it to.

3. Select **Save and close**. The assigned user will receive an email that the improvement action has been assigned to them, and they can then open the improvement action from their dashboard.

The assigned user can then perform the recommended actions.

## Perform work and store documentation

You can upload files and notes related to implementation and testing work directly to the **Notes and documentation** section. This environment is a secure, centralized repository to help you demonstrate satisfaction of controls to meet compliance standards and regulations. Any user with read-only access can read content in this section. Only users with editing rights can upload and download files and enter or edit notes.

Fields in the **Notes and documentation** section include:

### Uploaded documents

- Select **Manage documents** to upload any relevant files.
- When the manage documents flyout pane opens, select **Add document**, then select your file from your system. Accepted file types:
    - Documents (.doc, .xls, .ppt, .txt, .pdf)
    - Images (.jpg, .png)
    - Video (.mkv)
    - Compressed files (.zip, .rar)
- Once your file resolves in the pane select **Close**, which automatically saves the file attachment. You'll then see the file listed underneath **Uploaded documents**.
- To download or delete the document, select **Manage documents** from underneath the list of documents. On the flyout pane, click or tap on the document row to highlight it, then select **Download** or **Delete**.

### Implementation notes, test notes, and additional notes

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
    - **Not in scope** – action isn’t relevant to your organization and doesn’t contribute to your score
- **Implementation date**: available to select when implementation status is "implemented" or "alternative implementation"
- **Test status**: available to select when implementation status is "implemented" or "alternative implementation":
    - **Not assessed** – action has not been tested
    - **Passed**- implementation has been verified by an assessor
    - **Failed low risk** - testing failed, low risk
    - **Failed medium risk** - testing failed, medium risk
    - **Failed high risk** – testing failed, high risk
    - **Not in scope** – the action is out of scope for the assessment and doesn’t contribute to your score
- **Test date**: toggle through the calendar pop-up to select the date

Common actions synch across groups. When two different assessments in the same group share improvement actions that are managed by you, any updates you make to an action's implementation details or status will automatically synchronize to the same action in any other assessment in the group. This synchronization allows you to implement one improvement action and meet several requirements across multiple regulations.

## Assign improvement action to assessor for completion

After you complete the work, conduct testing, and upload evidence, the next step is to assign the improvement action to an assessor for validation.

Types of assessors include:

- Internal assessors who perform validation of controls within your organization
- External assessors who examine, verify, and certify compliance, such as third-party independent organizations that audit Microsoft cloud services

The assessor validates the work and examines the documentation, and selects the appropriate test status.

**If test status is set to “Passed”**: the action is complete and the points achieved shows the maximum points achieved. The points are then counted toward your overall compliance score.

**If test status is  set to “Failed”**: the action does not meet the requirements, and the assessor can assign it back to the appropriate user for additional work.

## Accepting updates to improvement actions

text

### What causes an update

text

### Where you’ll see assessment update notifications

text

### Review update to accept or defer

text

## Export a report

Select **Export** in the upper-left corner of your screen to download an Excel worksheet containing all your improvement actions and the filter categories shown on the improvement actions page.