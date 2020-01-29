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

# Microsoft Compliance Score (Preview) release notes

The public preview of Microsoft Compliance Score provides you with early access to upcoming functionality and updates. Check this page frequently to learn what's new.

Compliance Score is a new feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) that calculates a risk-based score, measuring your progress towards completing recommended actions that help reduce compliance risks.

## What's new

### New templates for assessments

New pre-configured templates for assessments are released into production for Compliance Score (Preview) as they become available. Check the [full list of templates here](compliance-score.md#templates). Recently-added templates include:

- Brazil General Data Protection Law (LGPD)
- IRAP / Australian Government ISM (Preview)
- ISO 27701:2019
- SOC 1
- SOC 2

### Compliance Score relationship to Compliance Manager

Many of the compliance functions handled in Compliance Manager can now be done in Compliance Score. However some functionality still resides only in Compliance Manager, and some previous functionality in Compliance Manager is altered during the public preview period. 

Keep these points in mind as you work with Compliance Score and Compliance Manager during public preview:

- **Managing assessments**: users can view assessments and their status details in Compliance Score. However users can only perform assessment management tasks in Compliance Manager ([view instructions](working-with-compliance-manager.md#assessments)), and tasks are limited to the following:
    - Upload new assessments, but not modify existing assessments. If you need to modify an existing assessment, you will need to upload a new template.
    - Export assessments
    - Archive assessments
    - View archived assessments
 - **Creating templates for assessments**: 
   - Users must go to Compliance Manager to create new templates and export existing templates. 
   - Existing templates cannot be customized. Read instructions for [managing templates in Compliance Manager](working-with-compliance-manager.md#templates).
   - When creating a template, you must include Dimensions for both **Product** and **Certification** to ensure your template displays in Compliance Score.
 - **Setting permissions**: Compliance Score users who were not previously granted permissions in Compliance Manager must have their permissions set in the Microsoft 365 compliance center ([learn more](compliance-score-setup.md#set-user-permissions-and-assign-roles)). Users whose roles were previously set in Compliance Manager can use that same level of access when working in Compliance Score.
- **Transfer of data**: organizations with data residing in Compliance Manger will see that data in Compliance Score, and vice-versa.
- **Signing in to Compliance Manager from Compliance Score**: if a user is signed in to Compliance Score and selects a link to go to Compliance Manager, the user will not have to sign in again. After clicking the link, a new tab opens in your browser featuring a dialogue box. In the top section with the header, “Already a Microsoft cloud services customer? Sign in to your account,” select the **Sign In** button to automatically sign in to Compliance Manager.

## Known issues in Compliance Score (Preview)

The following sections cover known issues to be resolved in upcoming releases of Compliance Score.

### Launch Now links in certain improvement actions

In certain improvement actions, selecting the **Launch Now** link that appears underneath the implementation instructions gives an error. To access the proper destination, which is the SharePoint admin center, follow these steps:

1. Go to the [Microsoft 365 Admin Center](https://admin.microsoft.com).
2. On the left navigation menu, select **Show all**.
3. Under **Admin centers,** select **SharePoint**.

Below are the affected improvement actions, which all reside in the **Protect information** category:
  - Apply encryption to SharePoint Library
  - Classify Data in SharePoint Online
  - Configure External Sharing Links to Expire
  - Enable Versioning for Document Libraries

### Long load times for non-admin users
Compliance Score users who hold roles other than an admin role may experience long load times when trying to a sign in. Refreshing your browser will resolve this issue. (Learn more about [Compliance Score roles](compliance-score-setup.md#set-user-permissions-and-assign-roles).)

### Supported browsers

- The latest versions of Microsoft Edge, Chrome, and Safari are supported.
- There may be instances where updated data does not appear until your browser is refreshed.
- The preview version of Microsoft Edge is not supported but has no known issues.
- Internet Explorer is not supported.
 
### Language support

- Compliance Score is only available in U.S. English.