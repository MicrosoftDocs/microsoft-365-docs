---
title: "Microsoft Compliance Score release notes"
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
description: "Release notes and known issues for Microsoft Compliance Score (preview), a feature in the M365 compliance center that helps simplify and automate risk assessments."
---

# Microsoft Compliance Score (preview) release notes

The public preview of Microsoft Compliance Score provides you with early access to upcoming functionality and updates. Check this page frequently to learn what's new.

Compliance Score is a new feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) that calculates a risk-based score, measuring your progress towards completing recommended actions that help reduce compliance risks.

## New templates for assessments

New pre-configured templates for assessments are released into production for Compliance Score (Preview) as they become available. Check the [full list of templates here](compliance-score.md#templates). Recently added templates include:

- Brazil General Data Protection Law (LGPD)
- IRAP / Australian Government ISM (Preview)
- ISO 27701:2019
- SOC 1
- SOC 2

## Improvements in managing assessments

The latest release of Compliance Manager in April 2020 includes updates simplifying how you create and customize assessments and keep them updated. View the [Compliance Manager release notes](compliance-manager-release-notes.md) for details.

## Language support

Compliance Score is now available in the following languages in addition to English: Chinese (Simplified), Chinese (Traditional), French, German, Italian, Japanese, Korean, Portuguese (Brazil), Russian, and Spanish.

## Common actions will synch status across groups

If your organization has multiple groups of assessments, the behavior of **Technical** actions (that is, actions affecting your entire organization) has changed. Any duplicate actions across groups have been combined into one single action. That single action contains all uploaded notes and evidence from the duplicate versions. With this change, technical actions will now behave as they did when they belonged to the same group. Any change made to the action in one group or assessment will now be reflected in all instances. The **Implementation Status**, **Implementation Date**, **Test Status**, and **Test Date** will reflect the most recent updates.

## Compliance Score relationship to Compliance Manager

Many of the functions handled in Compliance Manager can now be done in Compliance Score. However some functionality still resides only in Compliance Manager, and some previous functionality in Compliance Manager is altered during the public preview period. 

Keep these points in mind as you work with Compliance Score and Compliance Manager during public preview:

- **Managing assessments**: users can view assessments and their status details in Compliance Score. However users can only do assessment management tasks in Compliance Manager ([view instructions](working-with-compliance-manager.md#assessments)). Examples of those tasks include:
    - Create and modify assessments
    - Export assessments
    - Archive assessments
    - View archived assessments
 - **Creating templates for assessments**: 
   - Users must go to Compliance Manager to create new templates and modify existing [templates](working-with-compliance-manager.md#templates). 
   - When creating a template, you must include Dimensions for both **Product** and **Certification** to ensure your template displays in Compliance Score.
 - **Setting permissions**: Compliance Score users who didn't already have permissions in Compliance Manager need their permissions set in the Microsoft 365 compliance center ([learn more](compliance-score-setup.md#set-user-permissions-and-assign-roles)).
- **Transfer of data**: organizations with data in Compliance Manger will see that data in Compliance Score, and the same is true the other way around.
- **Signing in to Compliance Manager from Compliance Score**: if a user is signed in to Compliance Score and selects a link to go to Compliance Manager, the user won't have to sign in again. After clicking the link, a new tab opens in your browser featuring a dialogue box. In the top section with the header, "Already a Microsoft cloud services customer? Sign in to your account," select the **Sign In** button to automatically sign in to Compliance Manager.

## Known issues in Compliance Score (Preview)

The following sections cover known issues to be resolved in upcoming releases of Compliance Score.

### Long load times for non-admin users
Compliance Score users who hold roles other than an admin role may experience long load times when trying to a sign in. Refreshing your browser will resolve this issue. (Learn more about [Compliance Score roles](compliance-score-setup.md#set-user-permissions-and-assign-roles).)

### Supported browsers

- The latest versions of Microsoft Edge, Chrome, and Safari are supported.
- Updated data sometimes doesn't appear until your browser is refreshed.
- Internet Explorer is not supported.
