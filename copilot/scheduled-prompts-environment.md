---
title: "Microsoft 365 Environment for Scheduled Prompts"
description: "Learn how the Microsoft 365 environment in Power Platform supports scheduled prompts with automatic provisioning, built-in governance, and permissions management for admins."
#customer intent: As an IT admin, I want to understand how the Microsoft 365 environment supports scheduled prompts so that I can manage it effectively.
ms.author: scotv
author: scotv
manager: scotv
ms.date: 10/23/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
  - m365copilot
  - magic-ai-copilot
  - operations-pod
---

# Microsoft 365 environment for scheduled prompts

The **Microsoft 365** environment is a production Power Platform environment. When users in your tenant first use scheduled prompts, Power Platform automatically creates it. This environment supports runtime operations required by scheduled prompts and is created and governed differently than typical environments.

This article provides details about the environment's characteristics, behavior, permissions, and limitations. As a Power Platform or Microsoft 365 administrator, it can help you understand and manage the environment appropriately.

## Environment provisioning

When a user with a Copilot license uses scheduled prompts for the first time, Power Platform automatically creates the Microsoft 365 environment. It creates the environment in the region closest to the default region of your organization's Microsoft Entra tenant.

You don't need to take any manual steps to create this environment. It only creates one environment per tenant. The name appears as **Microsoft 365** in the Power Platform admin center.

If you delete the environment, and a user creates a scheduled prompt, Power Platform automatically recreates the environment.

## Permissions and access

### App and connection usage

Power Platform creates a security role for the environment named **M365 Copilot Actions Access**. It also assigns this role to the default team, which provides users with the permissions to use scheduled prompts.

> [!NOTE]
> By default, users aren't given **Environment Maker** permissions.

Users don't have direct access to the following functionality:

- Create, execute, or share connections.

- Create apps, flows, custom connectors, dataflows, or bots.

- Runtime operations are strictly limited to Microsoft-owned apps.

### Data loss prevention (DLP)

The Microsoft 365 environment has a fixed DLP policy:

- All connectors are blocked, except for a set of connectors used by scheduled prompts that include:
  - Microsoft 365 Copilot actions
  - Microsoft Teams
  - Outlook (Office 365 Outlook)

> [!IMPORTANT]
> Tenant-level and environment-level DLP policies don't apply to the **Microsoft 365** environment.

## Lifecycle and operations

Power Platform treats the **Microsoft 365** environment as a standard production environment with certain exceptions in lifecycle operations:

- Restore to same org
- Restore from backup
- Copy from other environments
- VNet/private link integration
- Identity configuration

## Frequently asked questions

### What triggers the creation of the Microsoft 365 environment?

Power Platform creates the environment when a Copilot-licensed user in the tenant uses scheduled prompts for the first time.

### What license or app does the user require?

The user must be assigned a Microsoft 365 Copilot license with the Microsoft Copilot with Graph-grounded chat app for the user to be provisioned in the environment.

### Can I delete the Microsoft 365 environment?

Yes. As an admin, you can delete the Microsoft 365 environment through the Power Platform admin center. However, if a user uses scheduled prompts again, Power Platform automatically recreates the environment.

### Does this environment consume storage from my tenant's entitlement?

No. For any storage that this environment uses, Power Platform excludes it from your tenant's capacity calculations. It also doesn't appear on capacity pages.

### Can I apply custom DLP policies to this environment?

No. Power Platform governs this environment with a fixed DLP policy. Tenant or environment-level policies don't apply to this environment.

### Can users create custom apps, flows, or bots in this environment?

No. Power Platform blocks the creation of all apps, flows, and connections by default. It only permits runtime operations by Microsoft-owned apps.

## Related content

- [Manage scheduled prompts for Microsoft 365 Copilot](scheduled-prompts.md)

- [Inventory for scheduled prompts](scheduled-prompts-inventory.md)
