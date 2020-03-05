---
title: "Microsoft Compliance Score updates"
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
description: "Details on future updates for Microsoft Compliance Score (preview), a feature in the M365 compliance center that helps simplify and automate risk assessments."
---

# Microsoft Compliance Score (Preview) updates

 This article provides details about future updates to [Microsoft Compliance Score](compliance-score.md) and [Microsoft Compliance Manager](compliance-manager-overview.md) (learn more about their [relationship](compliance-score#relationship-to-compliance-manager)).

## Improved template creation and update processes

We're simplifying the process for importing, exporting, and modifying templates for assessments. The new experience will make it easier for you to bring your own assessments into Compliance Score and keep them in synch with updates to regulations and certifications.

### The current process

When you want to create a template in Compliance Manager, there are two ways to do it: by copying an existing template, or by importing template data from Excel into a new template. For example, when you go your **Templates** page, you select **+ Add template**, and then create a brand new template by entering a name, selecting dimensions, and uploading a spreadsheet containing every data point comprising the template. Or you have the option to check the **Copy from an existing template** box, select a template to copy, and verify dimensions, as shown in the image below.

![Compliance Score - dashboard](../media/compliance-score-template-update-old.png "Current template copy process")

Customizing your template requires a [multi-step process](/working-with-compliance-manager.md#templates) that begins by selecting **Add custom control** on your template.

### What's changing

We're making it easier for you to create new templates. You can take a pre-configured template provided by Microsoft and add your own actions and controls for greater customization. This customization process will be an easier, one-step **extension** process that allows you to export the template, make all your changes in the same interface, then import your template with all the changes saved. 

In the new process, you will simply go to your **Templates** page in Compliance Manager, select **+ Add template**, and on the **Template** flyout pane, select the **Create extension from global template** checkbox.

This new process replaces the current **Copy from an existing template** and **Add custom control** functions.

![Compliance Score - dashboard](../media/compliance-score-template-update-new.png "New template creation process")

Each time the original assessment is updated through the versioning process (outlined below), your customized assessment will inherit those updates *and* retain your custom controls.

You can also create your own template entirely from scratch using a newly Excel format that is less complex than the currently required spreadsheet.

## Versioning notice and control

The next release of Compliance Score and Compliance Manager will contain the most recent updates for all assessment frameworks and provide a clear way to understand and accept all future updates. ... you will see some guidance updaes; and that is related to frameworks. All assessments will receive the most recent updates.....

Whenever an update is available for an assessment's template or an improvement action, an alert icon notifies you that an update is ready and prompts you to either accept or defer the update.

Below is an example of the versioning alert for an assessment:
![Compliance Score - dashboard](../media/compliance-score-assessment-versioning.png "Assessment version update alert")

Below is an example of the versioning alert for an improvement action:
![Compliance Score - dashboard](../media/compliance-score-action-versioning.png "Action version update alert")

## Common actions will synch status across groups

If your organization has multiple groups of assessments, the behavior of actions that affect your entire organization – in particular, actions marked as type "Technical" – will change. Any duplicate actions across groups will be combined into one single action. That single action will contain all uploaded notes and evidence from the duplicate versions. With this change, actions will behave as they currently do when they belong to the same group; that is, any change made to the action in one group or assessment will now be reflected in all instances. The Implementation Status, Implementation Date, Test Status, and Test Date will reflect the most recently-updated instance of this action.

## Language support

Compliance Score will now be available in the following languages in addition to English: Chinese (Simplified), Chinese (Traditional), French, German, Italian, Japanese, Korean, Portuguese (Brazil), Russian, and Spanish.
