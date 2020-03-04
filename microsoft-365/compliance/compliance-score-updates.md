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

The public preview of [Microsoft Compliance Score](compliance-score.md) provides you with early access to upcoming functionality and updates. This article provides details about future updates to Compliance Score and [Compliance Manager](compliance-manager-overview.md), both of which share the same backend (learn more about the [relationship between Compliance Score and Compliance Manager](compliance-score#relationship-to-compliance-manager)).

## Improved template creation and update processes

The process for importing, modifying, and exporting templates so that you can create your own custom templates will be simplified. The new experience makes it easier for you to bring your own assessments into Compliance Score and keep them up-to-date.

### The current process

When you want to create your own template in Compliance Manager, you currently go to your **Templates** page, select **+ Add template**. Then, as shown in the screen image below, check the box to **Copy from an existing template**, select a template to copy, select dimensions, then upload your template information.

![Compliance Score - dashboard](../media/compliance-score-template-update-old.png "Current template copy process")

In order to modify your template, you must select from among three actions: **Add custom action**, **Attach custom action**, and **Add custom control** and continue further along the process. When there are updates to the underlying (for example, when there's an update to a regulatory framework), you need to export, modify, and import your custom template all over again.

### What's changing

In the next release of Compliance Score and Compliance Manager, a new process will replace the **copy**  and custom control functionality. You will be able to export an existing template, make changes to it, and import it back into Compliance Manager

In the new process, you will simply go to your **Templates** page in Compliance Manager, select **+ Add template**, and on **Template** flyout pane, select the *new* **Create extension from global template** checkbox.

From the drop-down menu, you select the pre-configured template as the basis of your template, then in one step upload an Excel file that contains the customizations for your own controls and actions.

![Compliance Score - dashboard](../media/compliance-score-template-update-new.png "New template creation process")

Each time the original assessment is updated through the versioning process (outlined below), your customized assessment will inherit those updates *and* retain your custom controls.

## Versioning notice and control

The next release of Compliance Score and Compliance Manager will contain the latest updates for all assessment frameworks and provide a clear way for users to understand and accept all future updates. 

Whenever an update is available for an assessment's template or an improvement action, an alert icon notifies you that an update is ready and prompts you to either accept or defer the update.

Below is an example of the versioning alert for an assessment:
![Compliance Score - dashboard](../media/compliance-score-assessment-versioning.png "Assessment version update alert")

Below is an example of the versioning alert for an improvement action:
![Compliance Score - dashboard](../media/compliance-score-action-versioning.png "Action version update alert")

## Common actions will synch status across groups

If your organization has multiple groups of assessments, the behavior of actions that affect your entire organization – in particular, actions marked as type "Technical" – will change. Any duplicate actions across groups will be combined into one single action. That single action will contain all uploaded notes and evidence from the duplicate versions. With this change, actions will behave as they currently do when they belong to the same group; that is, any change made to the action in one group or assessment will now be reflected in all instances. The Implementation Status, Implementation Date, Test Status, and Test Date will reflect the most recently-updated instance of this action.

## Language support

Compliance Score will now be available in the following languages in addition to English: Chinese (Simplified), Chinese (Traditional), French, German, Italian, Japanese, Korean, Portuguese (Brazil), Russian, and Spanish.