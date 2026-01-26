---
title: Manage Scheduled Prompts for Microsoft 365 Copilot
description: "Learn how to manage scheduled prompts in Microsoft 365 Copilot. Configure admin controls, maintain compliance, and automate workflows effectively."
#customer intent: As an admin, I want to manage scheduled prompts for Microsoft 365 Copilot so that I can control their availability and ensure compliance with organizational policies.
f1.keywords:
- NOCSH
ms.author: scotv
author: scotv
manager: scotv
ms.date: 10/23/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
- operations-pod
---

# Manage scheduled prompts for Microsoft 365 Copilot

Microsoft 365 Copilot scheduled prompts let users automate Copilot interactions at specified times and frequencies across Microsoft Teams, Office.com chat, and Microsoft Outlook. As an admin, you can manage these scheduled prompts to control availability and ensure organizational compliance.

## Before you begin

To manage scheduled prompts, you need the Microsoft 365 Copilot license in the Copilot subscription.

Also make sure to enable optional connected experiences for your users. This feature is enabled by default, but some organizations disable it. To confirm, review your cloud policy settings for the following setting: **Allow the use of additional optional connected experiences in Office**. For more information, see [Cloud Policy service for Microsoft 365](/microsoft-365-apps/admin-center/overview-cloud-policy).

## Admin controls for scheduled prompts

If you don't want this feature available to your organization, use [Cloud Policy](https://config.office.com/officeSettings/officePolicies) to set the **Allow the use of additional optional connected experiences in Office** policy setting to **Disabled**. For more information, see [Admin controls for optional connected experiences](/microsoft-365-apps/privacy/optional-connected-experiences#admin-controls-for-optional-connected-experiences).

If you disable optional connected experiences, no one in your organization can see scheduled prompts in Copilot. This action also turns off other features in Microsoft 365 apps that your organization uses. For a list of those features, see [Overview of optional connected experiences in Office](/microsoft-365-apps/privacy/optional-connected-experiences).

> [!NOTE]
> Even if you enable optional connected experiences, users can individually turn off optional connected experiences. Users control these experiences by changing their account privacy settings. For more information, see [Your privacy settings](/microsoft-365-apps/privacy/optional-connected-experiences#your-privacy-settings).

The Microsoft 365 environment in Power Platform supports scheduled prompts. This environment is automatically created when a user creates a scheduled prompt for the first time. To learn more, see [Microsoft 365 environment for scheduled prompts](scheduled-prompts-environment.md).

### Behaviors after you disable scheduled prompts

If someone in your organization uses scheduled prompts, and then you disable optional connected experiences, the following behaviors apply:

- Users can't see the scheduled prompts icon or the prompt management menu.
- Users can't manage previously scheduled prompts.
- Sessions for previously run scheduled prompts continue to exist.
- Previously scheduled prompts continue to run until their schedule finishes.

## Inventory scheduled prompts

With the **Power Platform Administrator** role, you can use a PowerShell script to inventory the scheduled prompts that users in your organization create. For more information, see [Inventory for scheduled prompts](scheduled-prompts-inventory.md).

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## What's the user experience for scheduled prompts?

For more information about the user experience in Microsoft 365 Copilot, see [Schedule Copilot prompts](https://support.microsoft.com/topic/29dfd5fb-211a-4515-88a6-730b8074e489).

## Legacy prompts

The scheduled prompts feature no longer relies on Power Automate flows. If you scheduled a prompt during the public preview, it continues to run in Power Automate until it expires. You don't see these prompts in the Microsoft 365 Copilot scheduled prompts page. To view or manage these legacy prompts, use [Power Automate](https://make.powerautomate.com/).

## Related content

- [Microsoft 365 environment for scheduled prompts](scheduled-prompts-environment.md)

- [Inventory for scheduled prompts](scheduled-prompts-inventory.md)
