---
title: "Microsoft 365 environment for Scheduled Prompts"
ms.author: aaroncz
author: aczechowski
manager: scotv
ms.date: 06/02/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
- operations-pod
description: "Learn about how the Microsoft 365 environment supports Scheduled Prompts with built-in governance, permissions, and lifecycle management."
---

# Microsoft 365 environment for Scheduled Prompts

The Microsoft 365 environment is a Production Power Platform environment type that is automatically created when users in your tenant first use Scheduled Prompts. This environment supports runtime operations required by Scheduled Prompts and is provisioned and governed differently than typical environments.

This article provides details about the environment’s characteristics, behavior, permissions, and limitations to help Power Platform and Microsoft 365 administrators understand and manage the environment appropriately.

## Environment provisioning

The Microsoft 365 environment is automatically created when a user with a Copilot license uses Scheduled Prompts for the first time. The environment is created in the region closest to the default region of the Microsoft Entra tenant.

You don't need to take any manual steps to create it. Only one environment is created per tenant, and its name will appear as Microsoft 365 in the Power Platform admin center.

If the environment is deleted and Scheduled Prompts are used again, it's automatically recreated.

## Permissions and access

### App and connection usage

A security role `M365 Copilot Actions Access` is created in the environment and is assigned to the default team which provides users with the permissions to use Scheduled Prompts.

> [!NOTE]
> By default, users aren't given Environment Maker permissions.

Users don't have direct access to:

- Create, execute, or share Connections
- Create Apps, Flows, Custom Connectors, Dataflows, or Bots
- Runtime operations are strictly limited to Microsoft-owned (first-party) apps

### Data loss prevention (DLP)

The Microsoft 365 environment has a fixed DLP policy:

- All connectors are blocked, except for a set of connectors used by Scheduled Prompts that include:
  - Microsoft 365 Copilot Actions
  - Microsoft Teams
  - Outlook (Office 365 Outlook)

> [!IMPORTANT]
> Tenant-level and environment-level DLP policies don't apply to the Microsoft 365 environment.

## Lifecycle and operations

The Microsoft 365 environment is treated as a standard production environment with certain exceptions in lifecycle operations:

- Restore to same org
- Restore from backup
- Copy from other environments
- VNet/private link integration
- Identity configuration

## Frequently asked questions (FAQ)

### What triggers the creation of the Microsoft 365 environment?

The environment is created when a licensed user in the tenant uses Scheduled Prompts for the first time.

### What License or App does the user require?

The user must be assigned a Microsoft 365 Copilot license with the Microsoft Copilot with Graph-grounded chat app for the user to be provisioned in the environment.

### Can the environment be deleted?

Yes. Admins can delete the Microsoft 365 environment through the Power Platform admin center. However, if Scheduled Prompts are used again, the environment is automatically recreated.

### Does this environment consume storage from my tenant’s entitlement?

No. Storage used by this environment is excluded from your tenant’s capacity calculations and doesn't appear on capacity pages.

### Can I apply custom DLP policies to this environment?

No. This environment is governed by a fixed DLP policy, and tenant or environment-level policies do not apply to this environment.

### Can users create custom apps, flows, or bots in this environment?

No. All app, flow, and connection creation are blocked by default. Only runtime operations by Microsoft-owned apps are permitted.
