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

The public preview of Microsoft Compliance Score provides you with early access to upcoming functionality and updates. See below to learn about feature and functionality improvements that impact both Compliance Score and Compliance Manager.

## Improved template creation and update processes

We are improving the template import and export process in Compliance Manager. The new process replaces the existing **Add action**, **Attach action**, and **Add control** functionality. This change will provide a simplified way for you to bring your own assessments into Compliance Score.

In the new process, you can take one of the pre-configured templates and use the **create extension from global template** feature to add your own controls and actions. Each time the original assessment is updated, your customized assessment will inherit those updates *and* retain your custom controls. This new process replaces the **copy** functionality of Compliance Manager.

## Versioning notice and control

We are providing an easy way to understand and accept updates to Compliance Score assessments. At the GA release, all assessments will receive the most recent updates. From that point onward, whenever an update is available for an assessment's template or an improvement action, an alert icon notifies you that an update is ready and prompts you to either accept or defer the update.

## Common actions will synch status across groups

If your organization has multiple groups of assessments, the behavior of actions that affect your entire organization – in particular, actions marked as type "Technical" – will change. Any duplicate actions across groups will be combined into one single action. That single action will contain all uploaded notes and evidence from the duplicate versions. With this change, actions will behave as they currently do when they belong to the same group; that is, any change made to the action in one group or assessment will now be reflected in all instances. The Implementation Status, Implementation Date, Test Status, and Test Date will reflect the most recently-updated instance of this action.

## Language support

Compliance Score will now be available in the following languages in addition to English: Chinese (Simlified), Chinese (Traditional), French, German, Italian, Japanese, Korean, Portuguese (Brazil), Russian, and Spanish.

## Resources

Learn more about Compliance Score.