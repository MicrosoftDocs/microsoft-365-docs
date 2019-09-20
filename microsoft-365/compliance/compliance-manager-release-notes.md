---
title: "Microsoft Compliance Manager Release Notes"
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

# Release Notes for Compliance Manager (Preview)

The public preview of Compliance Manager provides you with early access to upcoming functionality and updates.

You can use the updated [Compliance Manager](https://servicetrust.microsoft.com/ComplianceManager) tool on the [Service Trust Portal](https://servicetrust.microsoft.com) to track, assign, and verify regulatory compliance activities related to Microsoft cloud services.

## What’s new in Compliance Manager (Preview)

- **Integration with Microsoft Secure Score:** Compliance Manager supports integration with [Microsoft Secure Score](../security/mtp/microsoft-secure-score.md) by mapping customer-managed Actions to more than 50 Secure Score actions. When you complete a mapped action in Secure Score, the corresponding Compliance Manager Action automatically updates.

- **Import custom Assessments:** In addition to built-in Assessments, Compliance Manager now supports importing custom Templates. You can create custom Assessments for any product or service and any standard or regulation.

- **Actions Items:** Action Items are now individual items and many include telemetry collection from the Microsoft Secure Score Graph API. Where possible, technical action recommendations now have links to the applicable configuration page in the Office 365 service.

- **Tenant Management:** New interface for managing new data elements in Compliance Manager (Preview):
    - **Dimensions:** View, add and customize metadata for Templates, Assessments, and Action Items that allow you to create custom pivots for filters.
    - **Owners:** Specify an owner for each Action Item.
    - **Customer Actions:** Manage the complete list of Actions Items included in Compliance Manager (Preview) and enable/disable Secure Score monitoring for Action Items integrated with Secure Score.

- **Updated Compliance Score**: The methodology has changed to support syncing with Microsoft Secure Score. The scoring system removes the Microsoft-managed control credits and focuses solely on the completion of customer-managed controls.

## Known issues in Compliance Manager (Preview)

The following sections cover known issues to be resolved in upcoming releases of Compliance Manager.

### Compliance Score

- For Action Items marked as **Not in Scope**, the score assigned to the Action Item is not excluded from the Compliance Score calculation. Action Items marked **Not in Scope** do not increase your Compliance Score.

### Secure Score

- Secure Score results are not available for some Actions Items in certain Microsoft 365 and Office 365 subscriptions. The Secure Score result is 'Could not be detected' in these cases.
- Sometimes Secure Score results are returned for corresponding policies and Action Items not completed.

### Microsoft-managed Controls

- The test date for Microsoft-managed controls is not appearing in the UI, even when included in the Assessment. To see test date information, you must export the Assessment.

### Customization

- Adding custom Controls enables adding a new control to an existing control family, but it does not allow you to add a new Control Family.
- This release does not support linking Action Items or adding Actions Items or Controls to an Assessment.
- If you create a custom Action, you cannot edit or delete it.

### Control Families Not Shown in Assessments

- When you import a Template, all Assessments based on that Template reflect all Control Families that are part of the Template. But if you add new Control Families to the Template, any existing Assessments will not reflect the changes. Only new Assessments created off the updated Template reflect the changes.

### Filters

- Filtering on Action Items or Controls does not consistently produce correct results.

### Templates

- Archived templates are editable and they should not be editable.
- Locked templates allow for Assessment creation when they should not. Locking a Template is meant to prevent it from being used to create Assessments.

### Export

- Template export to JSON fails when the template status is set to **Imported** or **Pending Approval**.

### Supported browsers

- The latest versions of Microsoft Edge, Chrome, and Safari are supported.
- There may be instances where updated data does not appear until your browser is refreshed.
- The preview version of Microsoft Edge is not supported but has no known issues.
- Internet Explorer is not supported.

### Session timeout

- When a session times out, a “Something went wrong” error may appear. To resolve, go to [Compliance Manager](https://servicetrust.microsoft.com/ComplianceManager) and log in again.
 
### Language support

- All languages are not supported for all webpages. If your local language is unsupported, view in US English.