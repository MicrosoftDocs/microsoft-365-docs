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

The public preview of Microsoft Compliance Score provides you with early access to upcoming functionality and updates. This article provides more details about future updates to [Compliance Score](compliance-score.md) and [Compliance Manager](compliance-manager-overview.md).

## Improved template creation and update processes

The process for creating a custom template based off of pre-configured templates in Compliance Manager will be simplified. This new streamlined experience replaces a multi-step process and provides a simplified way for you to bring your own assessments into Compliance Score.

**The current process**

Right now, when you want to create your own template in Compliance Manager, you must go to your **Templates** page, select **+ Add template**, select a template to copy from, then upload your template information. This screen is show in image below:

![Compliance Score - dashboard](../media/compliance-score-template-update-old.png "Current template update process view")

Then when you want to modify the template you created, you must select from among three actions: **Add custom action**, **Attach custom action**, and **Add custom control** and continue further along the process.

**The updated process**

This new process replaces the **copy** functionality of Compliance Manager. In the new process, you will go to your **Templates** page and select **+ Add Template**, and on **Template** flyout pane select the new **Create extension from global template** checkbox. From the drop-down menu, you select the pre-configured template as the basis of your template, then in one step upload an Excel file that contains the customizations for your own controls and actions. Each time the original assessment is updated (through the versioning process outlined below), your customized assessment will inherit those updates *and* retain your custom controls.

![Compliance Score - dashboard](../media/compliance-score-template-update-new.png "Updated template update process view")

## Versioning notice and control

We are providing an easy way to understand and accept updates to Compliance Score assessments. At the GA release, all assessments will receive the most recent updates. From that point onward, whenever an update is available for an assessment's template or an improvement action, an alert icon notifies you that an update is ready and prompts you to either accept or defer the update.

## Common actions will synch status across groups

If your organization has multiple groups of assessments, the behavior of actions that affect your entire organization – in particular, actions marked as type "Technical" – will change. Any duplicate actions across groups will be combined into one single action. That single action will contain all uploaded notes and evidence from the duplicate versions. With this change, actions will behave as they currently do when they belong to the same group; that is, any change made to the action in one group or assessment will now be reflected in all instances. The Implementation Status, Implementation Date, Test Status, and Test Date will reflect the most recently-updated instance of this action.

## Language support

Compliance Score will now be available in the following languages in addition to English: Chinese (Simlified), Chinese (Traditional), French, German, Italian, Japanese, Korean, Portuguese (Brazil), Russian, and Spanish.

## Resources

Learn more about Compliance Score.