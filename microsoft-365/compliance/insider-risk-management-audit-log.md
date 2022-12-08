---
title: Insider risk management audit log
description: Learn about the insider risk management audit log in Microsoft Purview
keywords: Microsoft 365, Microsoft Purview, insider risk, risk management, compliance
ms.localizationpriority: medium
ms.service: O365-seccomp
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection:
- tier1
- purview-compliance
---

# Insider risk management audit log

>[!IMPORTANT]
>Microsoft Purview Insider Risk Management correlates various signals to identify potential malicious or inadvertent insider risks, such as IP theft, data leakage and security violations. Insider risk management enables customers to create policies to manage security and compliance. Built with privacy by design, users are pseudonymized by default, and role-based access controls and audit logs are in place to help ensure user-level privacy.

The insider risk management audit log enables you to stay informed on the actions taken on insider risk management features. This log allows independent review of the actions taken by users assigned to one or more insider risk management role groups. The insider risk management audit log is automatically enabled in your organization and cannot be disabled.

![Insider risk management audit log.](../media/insider-risk-audit-log.png)

The audit log is automatically and immediately updated whenever detected identified risk activities occur. The audit log retains information for 180 days (about six months). After 180 days, data is permanently deleted from the log.

Areas in identified risk activity detection include:

- Policies
- Cases
- Alerts
- Settings
- Users
- Notice templates

To view and export data from the audit log, users must be assigned to the *Insider Risk Management* or *Insider Risk Management Auditors* role groups. To learn more about insider risk management role groups, see [Getting started with insider risk management Step 1: Enabling permissions](insider-risk-management-configure.md#step-1-required-enable-permissions-for-insider-risk-management).

> [!NOTE]
> The insider risk management audit log isn't associated with the Microsoft 365 audit log, as they are independent auditing systems and capture information on separate areas. Disabling Microsoft 365 auditing doesn't impact activity auditing within insider risk management.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## View activity in the insider risk audit log

To view feature activity detected for insider risk management, navigate to, and select the **Insider risk audit log** link in the top-right area of any insider risk management tab. By default, you'll see the following information displayed for insider risk management activities:

- **Activity:** A description of the identified risk activity taken within the insider risk management solution by a user.
- **Category:** The area or item where the identified risk activity was performed. For example, you'll see *Policies* as the category when policy change activities were performed.
- **Activity performed by:** The user name of the user that performed the identified risk activity.
- **Date:** The date and time the identified risk activity was performed. The date and time are the local date and time for your organization.

For more information about a logged activity, select the activity to display the activity details pane. This pane includes additional information about the identified risk activity.

## Columns and filtering

To make it easier for auditors to review audit logs, filtering is supported in the **Insider risk audit log**. For basic filtering, queue columns are available to add to the view to provide different pivots on the files and messages. You can filter identified risk activities by the **Category, Date range,** and **Activity performed by** fields.

To add or remove column headings for the queue, use the **Customize columns** control and select from the column options. These columns map to common conditions supported in the **Insider risk audit log** and are listed later in this article.

## Audit log export

Users assigned to the *Insider Risk Management* or *Insider Risk Management Auditors* role groups can export audit log activity to a .csv (comma-separated values) file by selecting **Export** on the **Insider risk audit log** page. Depending on the audit log activity, some fields may not be included in the filtered queue, and therefore those fields will appear as blank in the exported file.

The file contains audit log activity information for the following fields:

- **Activity performed by:** Name of the user modifying an item value. Users listed here have been assigned to one or more of the following role [insider risk management role groups](insider-risk-management-configure.md#step-1-required-enable-permissions-for-insider-risk-management): *Insider Risk Management*, *Insider Risk Management Admins*, *Insider Risk Management Analysts*, *Insider Risk Management Investigators*. Each role group has different permission levels for managing insider risk features.
- **Activity:** Type of activity taken on an item. Values are *Viewed, Deleted, Added, Edited policy, Case, User, Alert,* and *Settings.*
- **Added**: Objects that were added during the identified risk activity, such as users, file types, or domains.
- **Alert volume**: Level of alert volume defined in insider risk management settings.
- **Amount**: Currently selected custom indicator amounts for a policy.
- **Asset ID**: Asset ID of the priority physical asset the activity was performed on.
- **Category:** Category of the item modified. Values are *Policies, Cases, Users, Alerts, Settings,* and *Notice templates.*
- **Date:** Date and time, listed in your organization's local date and time.
- **Description**: Description input by the user for the object being acted on (such as a policy or a priority user group).
- **DLP policy**: The Microsoft Purview Data Loss Prevention (DLP) policy selected to trigger inclusion in an insider risk management policy.
- **Indicator**: Indicator in the within insider risk settings that the activity was performed on (such as adding or removing an indicator).
- **Notice template**: Notice template that the identified risk activity was performed on.
- **Number of days**: Policy activation window defined in insider risk settings.
- **Number of files**: File volume limit defined in insider risk management settings.
- **Policy template**: Policy template that the indicators acted on belongs to.
- **Previous amount**: Previously selected custom indicator amounts for a policy.
- **Priority user group**: Priority user group the identified risk activity was performed on.
- **Removed**: Objects that were removed during the identified risk activity, such as users, file types, or domains.
- **Sender**: Sender field of the notice template the identified risk activity was performed on.
- **Target policy**: The policy the identified risk activity was performed on (such as adding a user to or removing a user from).
- **Template message body**: The message body of the notice template the identified risk activity was performed on.
- **Template subject**: The subject field of the notice template the identified risk activity was performed on.
- **User:** User the identified risk activity was performed on.