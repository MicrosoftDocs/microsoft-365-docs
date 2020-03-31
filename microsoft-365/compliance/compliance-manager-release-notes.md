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
description: In this article, you will find release notes containing information about new features and known issues (to be resolve in upcoming releases) in the Microsoft Compliance Manager.
---

# Release Notes for Compliance Manager (Preview)

The public preview of Compliance Manager provides you with early access to upcoming functionality and updates.

You can use the updated [Compliance Manager](https://servicetrust.microsoft.com/ComplianceManager) tool on the [Service Trust Portal](https://servicetrust.microsoft.com) to track, assign, and verify regulatory compliance activities related to Microsoft cloud services.

## What’s new in Compliance Manager (Preview)

- **Role-based access to Compliance Manager:** The default **Guest access** role has been removed. In order for a user to access Compliance Manager, the global admin must [assign each user a permission](compliance-manager-overview.md#permissions).

- **Updated Compliance Score**: Compliance Score now includes scores for Microsoft-managed actions. Your score will increase as a result.

- **Actions Items:** Action Items are now individual items and many include telemetry collection from the Microsoft Secure Score Graph API. Where possible, technical action recommendations now have links to the applicable configuration page in the Office 365 service.

- **Tenant Management:** New interface for managing new data elements in Compliance Manager (Preview):
    - **Dimensions:** View, add and customize metadata for Templates, Assessments, and Action Items that allow you to create custom pivots for filters.
    - **Owners:** Specify an owner for each Action Item.
    - **Customer Actions:** Manage the complete list of Actions Items included in Compliance Manager (Preview) and enable/disable Secure Score monitoring for Action Items integrated with Secure Score.

## Known issues in Compliance Manager (Preview)

The following sections cover known issues to be resolved in upcoming releases of Compliance Manager.

### Compliance Score

- For Action Items marked as **Not in Scope**, the score assigned to the Action Item isn't excluded from the compliance score calculation. Action Items marked **Not in Scope** don't increase your compliance score.

### Secure Score

- Secure Score results aren't available for some Actions Items in certain Microsoft 365 and Office 365 subscriptions. The Secure Score result is **Could not be detected** in these cases.
- Sometimes Secure Score results are returned for corresponding policies and Action Items not completed.
- For new tenants, Secure Score updates for all actions is automatically turned on. The global administrator can set the Secure Score continuous update switch to off, which turns off updates for all actions.
  - **Note**: when organizations first deploy Microsoft 365 or Office 365, it takes approximately seven days for Secure Score to fully collect data and factor it into your score. During that time, setting the Secure Score continuous update switch to **Off** and manually setting an action to **implemented** will count that action toward your score. After the initial seven days, turning Secure Score continuous update back on will enable continuous monitoring from that point forward.
- When Secure Score updates are turned on, actions are actively monitored by Secure Score, although the action’s test date won't be updated to reflect monitoring.
- When new assessments are created, scores automatically include Microsoft-managed control scores and Secure Score integration.
- Any actions that are not supported by Secure Score integration can be manually implemented. A manual implementation will factor into the score for that action's group.

### Microsoft-managed controls

- The test date for Microsoft-managed controls isn't appearing in the UI, even when included in the Assessment. To see test date information, you must export the Assessment.

### Customization

- Adding custom Controls enables adding a new control to an existing control family, but it doesn't allow you to add a new Control Family.
- This release doesn't support linking Action Items or adding Actions Items or Controls to an Assessment.
- If you create a custom Action, you can't edit or delete it.

### Control Families Not Shown in Assessments

- When you import a Template, all Assessments based on that Template reflect all Control Families that are part of the Template. But if you add new Control Families to the Template, any existing Assessments won't reflect the changes. Only new Assessments created off the updated Template reflect the changes.

### Templates

- When creating a template, you must include Dimensions for both **Product** and **Certification** to ensure your template displays in Compliance Score.
- Archived templates are editable and they shouldn't be editable.
- Locked templates allow for Assessment creation when they shouldn't. Locking a Template is meant to prevent it from being used to create Assessments.

### Export

- Template export to JSON fails when the template status is set to **Imported** or **Pending Approval**.

### Supported browsers

- The latest versions of Microsoft Edge, Chrome, and Safari are supported.
- There may be instances where updated data doesn't appear until your browser is refreshed.
- The preview version of Microsoft Edge isn't supported but has no known issues.
- Internet Explorer isn't supported.

### Session timeout

- When a session times out, a “Something went wrong” error may appear. To resolve, go to [Compliance Manager](https://servicetrust.microsoft.com/ComplianceManager) and log in again.
 
### Language support

- All languages aren't supported for all webpages. If your local language is unsupported, view in US English.
