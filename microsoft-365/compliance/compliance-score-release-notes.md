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

**In this article:** This page shows **what's new** in the public preview of [Microsoft Compliance Score](compliance-score.md), which provides you with early access to new functionality.

## Assessment creation and management functionality

The July 2020 release adds functionality for users to create, delete, and manage their assessments directly in Compliance Score. Previously, all assessment management resided in Compliance Manager. When you create or modify an assessment in Compliance Score, the updates will surface in Compliance Manager. Likewise, any assessment work performed in Compliance Manager will surface in Compliance Score. Learn how to [manage assessments in Compliance Score](compliance-score-assessments.md). Note that template creation and modification is still managed in Compliance Manager.

## New templates for assessments

New ready to use templates for assessments are released in Compliance Score as they become available. Check the [full list of templates here](compliance-score-templates.md). Recently added:

- Dubai Information Security Resolution (DGISR)

## Compliance Score relationship to Compliance Manager

Many of the functions handled in Compliance Manager can now be done in Compliance Score. However some functions still live in Compliance Manager. Keep these points in mind as you work with Compliance Score and Compliance Manager during public preview:

 - **Creating templates for assessments**: 
   - Users must go to Compliance Manager to [create new templates and modify existing templates](working-with-compliance-manager.md#templates).
   - New templates must include Dimensions for both **Product** and **Certification**.
 - **Setting permissions**: Compliance Score users who didn't already have permissions in Compliance Manager need their permissions set in the Microsoft 365 compliance center ([learn more](compliance-score-setup.md#set-user-permissions-and-assign-roles)).
- **Transfer of data**: organizations with data in Compliance Manager will see that data in Compliance Score, and the same is true the other way around.
- **Signing in to Compliance Manager from Compliance Score**: if a user is signed in to Compliance Score and selects a link to go to Compliance Manager, the user won't have to sign in again. After clicking the link, a new tab opens in your browser featuring a dialogue box. In the top section with the header, "Already a Microsoft cloud services customer? Sign in to your account," select the **Sign In** button to automatically sign in to Compliance Manager.

## Known issues in Compliance Score (Preview)

The following sections cover known issues to be resolved in upcoming releases of Compliance Score.

### Long load times for non-admin users
Compliance Score users who hold roles other than an admin role may experience long load times when trying to a sign in. Refreshing your browser will resolve this issue. Learn more about [Compliance Score roles](compliance-score-setup.md#set-user-permissions-and-assign-roles).

### Supported browsers

- The latest versions of Microsoft Edge, Chrome, and Safari are supported.
- Updated data sometimes doesn't appear until your browser is refreshed.
- Internet Explorer is not supported.
