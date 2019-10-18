---
title: "Microsoft Compliance Score release notes"
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
description: "Release notes for the public preview of Microsoft Compliance Score, a dashboard in the M365 compliance center that helps simplify and automate risk assessments."
---

# Compliance Score release notes (Preview)

The public preview of Microsoft Compliance Score provides you with early access to upcoming functionality and updates.

Compliance Score is a new feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md) that calculates a personalized, risk-based score to help understand your organization's state of compliance with key standards and regulations.

## Compliance Score and Compliance Manager relationship

Many of the compliance functions handled in Compliance Manager can now be done in Compliance Score, but there remain some functions the user still needs to do in Compliance Manager. Below are points to keep in mind as you wok with Compliance Score and Compliance Manager during public preview.

- **Managing assessments**: users can view assessments and their status details in Compliance Score, yet tasks to manage assessments must be done in Compliance Manager ([view instructions](working-with-compliance-manager.md#assessments)). Such tasks include:
    - Adding assessments
    - Copying information from existing assessments
    - Importing and exporting assessments
    - Archiving assessments
    - Viewing archived assessments
 - **Creating templates for assessments**: users can only create, customize, and export templates—used for building assessments—in Compliance Manager ([view instructions](working-with-compliance-manager.md#templates)).
 - **Setting permissions**: if a global admin sets user permissions in Compliance Manager, those permissions automatically apply to the same level of access in Compliance Score.
- **Transfer of data**: ???
- **Signing in**: if a user is signed in to Compliance Score, then from there selects a link to go to Compliance Manager, the user ??WILL/WILL NOT?? have to sign in again.

## Known issues in Compliance Score (Preview)

The following sections cover known issues to be resolved in upcoming releases of Compliance Score.

### Secure Score

- Secure Score results are not available for some improvement actions in certain Microsoft 365 and Office 365 subscriptions. The Secure Score result is "Could not be detected" in these cases.

- Sometimes Secure Score results are returned for corresponding policies and improvement actions not completed.

- Compliance Score and Secure Score do not cover every feature in Office 365 or Microsoft Intune. The scores are meant to help you better understand your compliance posture so you can make more informed risk-based decisions.

###

### Supported browsers

- The latest versions of Microsoft Edge, Chrome, and Safari are supported.
- There may be instances where updated data does not appear until your browser is refreshed.
- The preview version of Microsoft Edge is not supported but has no known issues.
- Internet Explorer is not supported.
 
### Language support

- Compliance Score is only available in U.S. English.