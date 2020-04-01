---
title: "Microsoft Compliance Manager Release Notes"
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
description: "Microsoft Compliance Manager is a free workflow-based risk assessment tool in the Microsoft Service Trust Portal. Compliance Manager enables you to track, assign, and verify regulatory compliance activities related to Microsoft cloud services."
---

# Microsoft Compliance Manager (preview) release notes

The public preview of Compliance Manager provides you with early access to upcoming functionality and updates. This page contains updates on new features and functionality, as well as known issues with the current release.

You can use the [Compliance Manager](https://servicetrust.microsoft.com/ComplianceManager) tool on the [Service Trust Portal](https://servicetrust.microsoft.com) to track, assign, and verify regulatory compliance activities related to Microsoft cloud services.

## Improved template creation and update process

We've updated the process for importing, exporting, and modifying templates for assessments. The new, simplified experience will make it easier for you to bring your own assessments into your workflow and keep them updated.

### The old process

There were two ways of creating a template in Compliance Manager. You could copy an existing template, or import template data from an Excel spreadsheet into a new template. From your **Templates** page, you'd select **+ Add template** to create a brand new template by entering a name, selecting dimensions, and uploading an Excel file with a specific format and schema. Or you could check the **Copy from an existing template** box, select a template to copy, and verify dimensions. Design customization your template required a multi-step process that began by selecting **Add custom control** after creating your template.

### The new process

We made it easier for you to create new templates. In a one-step **extension** process, you can add a spreadsheet with your actions and controls to an existing Microsoft template to make your own customized version. At your **Templates** page in Compliance Manager, select **+ Add template**. On the **Template** flyout pane, select the **Create extension from global template** checkbox. You can add customizations with a new Excel format that is less complex than the previous one. This new process replaces the former **Copy from an existing template** and **Add custom control** functions.

Each time the original assessment is updated through the versioning process outlined below, your customized assessment will inherit those updates and keep your custom controls.

It's also easier to modify your own existing templates. You can export your template, make changes in the same workbook, then import it with your edits saved.

View detailed instructions on [creating templates](working-with-compliance-manager.md#templates) with this new process.

## Versioning notice and control

Your organization received updated assessments in the April 2020 release of Compliance Manager to help you align with certification and regulation updates. Moving forward, we will provide a clear way for you to understand and accept all future updates through **versioning alerts**.

Whenever an update is available for an assessment's template or an improvement action, an alert icon notifies you that an update is ready. When you click on that icon, a pop-up window explains the update and prompts you to accept. Selecting the alert icon reveals a flyout pane explaining the update and prompting you to accept. Learn more about [accepting updates to assessments](working-with-compliance-manager.md#versioning-alerts-for-assessment-updates).

## Common actions will synch status across groups

If your organization has multiple groups of assessments, the behavior of **Technical** actions (that is, actions affecting your entire organization) has changed. Any duplicate actions across groups have been combined into one single action. That single action contains all uploaded notes and evidence from the duplicate versions. With this change, technical actions will now behave as they did when they belonged to the same group. Any change made to the action in one group or assessment will now be reflected in all instances. The **Implementation Status**, **Implementation Date**, **Test Status**, and **Test Date** will reflect the most recent updates.

## Language support

Compliance Manager is now available in the following languages in addition to English: Chinese (Simplified), Chinese (Traditional), French, German, Italian, Japanese, Korean, Portuguese (Brazil), Russian, and Spanish.

## Known issues in Compliance Manager (Preview)

The following section covers known issues in the current release of Compliance Manager.

### Compliance Score

- For Action Items marked as **Not in Scope**, the score assigned to the Action Item isn't excluded from the compliance score calculation. Action Items marked **Not in Scope** don't increase your compliance score.

### Secure Score

- Secure Score results aren't available for some Actions Items in certain Microsoft 365 and Office 365 subscriptions. The Secure Score result is **Could not be detected** in these cases.
- Sometimes Secure Score results are returned for corresponding policies and Action Items not completed.
- For new tenants, Secure Score updates for all actions are automatically turned on. The global administrator can set the Secure Score continuous update switch to off, which turns off updates for all actions.
  - **Note**: when organizations first deploy Microsoft 365 or Office 365, it takes approximately seven days for Secure Score to fully collect data and factor it into your score. During that time, setting the Secure Score continuous update switch to **Off** and manually setting an action to **implemented** will count that action toward your score. After the initial seven days, turning Secure Score continuous update back on will enable continuous monitoring from that point forward.
- When Secure Score updates are turned on, actions are actively monitored by Secure Score, although the action's test date won't be updated to reflect monitoring.
- When new assessments are created, scores automatically include Microsoft-managed control scores and Secure Score integration.
- Any actions that are not supported by Secure Score integration can be manually implemented. A manual implementation will factor into the score for that action's group.

### Export

- Template export to JSON fails when the template status is set to **Imported** or **Pending Approval**.

### Supported browsers

- The latest versions of Microsoft Edge, Chrome, and Safari are supported.
- There may be instances where updated data doesn't appear until your browser is refreshed.
- The preview version of Microsoft Edge isn't supported but has no known issues.
- Internet Explorer isn't supported.

### Session timeout

- When a session times out, a "Something went wrong" error may appear. To resolve, go to [Compliance Manager](https://servicetrust.microsoft.com/ComplianceManager) and log in again.