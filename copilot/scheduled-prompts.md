---
title: Manage scheduled prompts for Microsoft 365 Copilot
description: Discover how to manage scheduled prompts in Microsoft 365 Copilot, enabling automated workflows while maintaining control over privacy and permissions.
#customer intent: As an admin, I want to manage scheduled prompts for Microsoft 365 Copilot so that I can control their availability and ensure compliance with organizational policies.
f1.keywords:
- NOCSH
ms.author: aaroncz
author: aczechowski
manager: scotv
ms.date: 09/16/2025
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

Scheduled prompts in Microsoft 365 Copilot let users automate Copilot prompts to run at set times and frequencies in Microsoft Teams, Office.com chat, and Microsoft Outlook for the web and desktop. As an admin, you can manage scheduled prompts for your organization to control their availability and ensure compliance with organizational policies.

## Before you begin

You need the following license to manage scheduled prompts:

- Microsoft 365 Copilot license (in the Copilot subscription)

Before you start using the scheduled prompts feature, make sure that *optional connected experiences* are enabled for your users. Optional connected experiences are enabled by default, but you can check by reviewing the **Allow the use of additional optional connected experiences in Office** policy setting in [Cloud Policy service for Microsoft 365](/microsoft-365-apps/admin-center/overview-cloud-policy).

## Admin controls for scheduled prompts

If you don't want this feature available to your organization, use [Cloud Policy](https://config.office.com/officeSettings/officePolicies) to set the **Allow the use of additional optional connected experiences in Office** policy setting to **Disabled**. For more information, see [Admin controls for optional connected experiences](/microsoft-365-apps/privacy/optional-connected-experiences#admin-controls-for-optional-connected-experiences).

If you disable optional connected experiences, no one in your organization can see scheduled prompts in Copilot. This action also turns off other features in Microsoft 365 apps that your organization uses. For a list of those features, see [Overview of optional connected experiences in Office](/microsoft-365-apps/privacy/optional-connected-experiences).

> [!NOTE]
> Even if you enable optional connected experiences, users can individually turn off optional connected experiences. Users control these experiences by changing their account privacy settings. For more information, see [Your privacy settings](/microsoft-365-apps/privacy/optional-connected-experiences#your-privacy-settings).

The Microsoft 365 environment in Power Platform supports scheduled prompts. This environment is automatically created when a user creates a scheduled prompt for the first time. To learn more, see [Microsoft 365 environment for Scheduled Prompts](scheduled-prompts-environment.md).

## Disable scheduled prompts

If someone in your organization uses scheduled prompts, and then you disable the feature, the following behaviors apply:

- Users can't manage previously scheduled prompts.
- Sessions for previously run scheduled prompts continue to exist.
- Previously scheduled prompts continue to run until their schedule finishes.
- If you disable optional connected experiences, users can't see the scheduled prompts icon or the prompt management menu.

## Inventory scheduled prompts

With the **Power Platform Administrator** role, you can use a PowerShell script to inventory the scheduled prompts created by users in your organization. For more information, see [Inventory for scheduled prompts](scheduled-prompts-inventory.md).

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

## User controls for scheduled prompts

:::image type="content" source="media/scheduled-prompts-save.png" alt-text="Screenshot showing the setup text for a new scheduled prompt in Copilot." lightbox="media/scheduled-prompts-save.png":::

Your users can find the scheduled prompts feature by hovering over a prompt they submit to Copilot. When a user selects the **Save** button to confirm the scheduled prompt, Copilot sends the user's prompt information to the Power Automate and Power Platform system. For this data flow, the [Power Automate terms of service and privacy policy](/power-platform/admin/wp-compliance-data-privacy) apply.

To manage their scheduled prompts, users can follow these steps:

1. In the Copilot chat window, select the dropdown menu from the ellipsis (**...**), then select **Scheduled prompts**.
1. Select the prompt management pane.
1. From there, users can view and delete their scheduled prompts.

Users signed in with their work or school account can also turn off optional connected experiences, even if their admin has the setting on. For more details, see [Your privacy settings with optional connected experiences](/microsoft-365-apps/privacy/optional-connected-experiences).

:::image type="content" source="media/scheduled-prompts-active.png" alt-text="Screenshot showing the options to schedule a prompt for Microsoft 365 Copilot." lightbox="media/scheduled-prompts-active.png":::

Users can schedule up to 10 prompts to run at specific times, with responses delivered to the Chat pane of their Microsoft 365 Copilot Chat experience. These prompts can run on a recurring basis, ensuring users receive necessary information aligned with their workflow. Responses from scheduled prompts are bolded and have a recurring icon to help users identify them easily.

For more information about prompts for your users, see [Learn about Copilot prompts](https://support.microsoft.com/topic/learn-about-copilot-prompts-f6c3b467-f07c-4db1-ae54-ffac96184dd5).

## Legacy prompts

With the general availability of the new scheduled prompts feature, we transitioned to a new backend that no longer relies on Power Automate flows.

As a result, scheduled prompts created during the public preview continue to run until their set expiration, but don't appear in the new management pane. To view or manage these legacy prompts, use Power Automate directly.
