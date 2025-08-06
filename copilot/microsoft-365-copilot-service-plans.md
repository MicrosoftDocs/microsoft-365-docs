---
title: Microsoft 365 Copilot service plan diagnostic tool and service plans
description: Enterprise and company IT admins can use the Run Tests Copilot Service Plan Diagnostic to see the service plans assigned to a user's email address or user principal name (UPN). See a list of official service plan names and their associated Copilot service.
f1.keywords:
- NOCSH
ms.author: mandia
author: MandiOhlinger
manager: dansimp
ms.date: 07/15/2025
audience: Admin
ms.reviewer: nirupme
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
- essentials-overview
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Microsoft 365 Copilot service plan diagnostic tool and service plans for IT admins

Microsoft 365 Copilot is an everyday AI tool that helps users with their work tasks, including tasks in their Microsoft 365 apps. To learn about Microsoft 365 Copilot, see [What is Microsoft 365 Copilot?](microsoft-365-copilot-overview.md).

Microsoft 365 Copilot has different features and capabilities that are available in the service plans associated with a Microsoft 365 Copilot license. If users are missing functionality, it's possible the user is missing a service plan.

In the Microsoft 365 admin center, there's a diagnostic tool that shows the service plans assigned to a user account. The diagnostic tool uses the user's email address or user principal name (UPN) to identify and then list all the Microsoft 365 Copilot service plans assigned.

This article shows you how to access & use the self-help diagnostic tool and lists the service plans that you see in the diagnostic tool. Use this information to troubleshoot missing Copilot functionality by checking if the issue is associated with a missing service plan.

This article applies to:

- Microsoft 365 Copilot

## Prerequisites

To use the feature in this article, sign into the Microsoft 365 admin center with the following role-based access control (RBAC) role:

- AI administrator

To learn more, see [Admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

> [!TIP]
> Microsoft recommends you sign in with the least privileged role that you need to complete your task. Typically, the Global Administrator role is too powerful for most tasks, including managing the Copilot feature described in this article.

## Step 1 - Run the diagnostic tool in the Microsoft 365 admin center

Admins can verify the service plans assigned to a user using the [Run Tests: Copilot Service Plan Diagnostic](https://aka.ms/PillarCopilotServicePlan) in the Microsoft 365 admin center.

The tool identifies and lists all the Microsoft 365 Copilot service plans assigned.

1. Sign into the [Microsoft 365 admin center](https://admin.microsoft.com) as an AI administrator.
1. In the left navigation pane, select **Support** > **Help and support**.
1. In the prompt box, enter `copilot missing`. This step opens the diagnostic tool.

    Or, open the diagnostic tool directly at [Run Tests: Copilot Service Plan Diagnostic](https://aka.ms/PillarCopilotServicePlan).
1. Select **Run diagnostics** > Enter the email address or user principal name (UPN) of the user > **Run tests**.

The output identifies and lists all the Microsoft 365 Copilot service plans assigned to the user.

## Step 2 - Review the Microsoft 365 Copilot service plan names

The following table lists the service plan names you see in the diagnostic tool output.

If one of the following service plans isn't listed in the diagnostic output, then review the [Microsoft 365 Copilot feature availability](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot#feature-availability). Check if the feature aligns with the missing Copilot functionality you're trying to verify.

| Feature & Service Plan name| Learn more |
| --- | --- |
| Microsoft Copilot Studio <br/><br/> **Service plan name**: `Copilot Studio in Copilot for M365` | - [Copilot Studio overview](/microsoft-copilot-studio/fundamentals-what-is-copilot-studio) <br/>- [Get access to Copilot Studio](/microsoft-copilot-studio/requirements-licensing-subscriptions) |
| Microsoft Graph Connectors <br/><br/> **Service plan name**: `Graph Connectors in Microsoft 365 Copilot` | - [Build Microsoft Graph connectors for Microsoft 365 Copilot](/microsoft-365-copilot/extensibility/overview-graph-connector) <br/>- [Custom Microsoft Graph connectors for Microsoft 365 Copilot](/microsoft-365-copilot/extensibility/publish) |
| Intelligent Search <br/><br/> **Service plan name**: `Intelligent Search` | [Microsoft 365 Copilot feature availability](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot#feature-availability) |
| Copilot in SharePoint - Includes SharePoint agents and a [rich text editor](/power-apps/maker/model-driven-apps/rich-text-editor-control). <br/><br/> **Service plan name**: `Microsoft 365 Copilot for SharePoint` | - [Get started with SharePoint agents](https://support.microsoft.com/office/get-started-with-sharepoint-agents-69e2faf9-2c1e-4baa-8305-23e625021bcf) <br/>- [Authoring with Copilot in SharePoint: An overview](https://support.microsoft.com/topic/authoring-with-copilot-in-sharepoint-an-overview-a22514c9-7bc5-4c04-a599-455d573a1800) <br/>- [Copilot in SharePoint FAQ](https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-sharepoint-eb1b7668-3d98-4a93-98ef-f0c6dfc694f0) |
| Copilot in Microsoft Teams <br/><br/> **Service plan name**: `Microsoft 365 Copilot in Microsoft Teams` | [Overview of AI in Microsoft Teams for IT admins](/microsoftteams/copilot-ai-agents-overview) <br/><br/> |
| Copilot in Microsoft 365 apps <br/><br/> **Service plan name**: `Microsoft 365 Copilot in Productivity Apps` | [Copilot features in Microsoft 365 apps](microsoft-365-copilot-overview.md#copilot-features-in-microsoft-365-apps) |
| Microsoft 365 Copilot Chat - work <br/><br/> **Service plan name**: `Microsoft Copilot with Graph-grounded chat` | - [Manage Microsoft 365 Copilot Chat](/copilot/manage) <br/>- [Which Copilot is right for me or my organization?](which-copilot-for-your-organization.md) |
| Microsoft 365 Copilot Power Platform connectors <br/><br/> **Service plan name**: `Power Platform Connectors in Microsoft 365 Copilot` | - [Connectors overview](/connectors/overview) <br/>- [Use Power Platform connectors in Copilot Studio](/microsoft-copilot-studio/advanced-connectors) |

## Common issues

- The diagnostic tool and the Microsoft 365 admin center can become unsynchronized. For example, the admin center shows a service plan assigned to a user, but the diagnostic tool shows that the service plan isn't assigned.

  This situation typically affects older user accounts with existing subscriptions and then new service plans are added to the subscription.

  To resolve the synchronization issue:

  1. In the [Microsoft 365 admin center](https://admin.microsoft.com), go to the affected user account and uncheck the associated service plans.
  1. Save your changes.
  1. Re-enable the service plan and save the changes.
  1. Rerun the diagnostic tool and verify that the service plan information is successfully synced.

- If the diagnostic output is missing a service plan (listed in [Step 2 - Review the Microsoft 365 Copilot service plan names](#step-2---review-the-microsoft-365-copilot-service-plan-names)), then review the [Microsoft 365 Copilot feature availability](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot#feature-availability) list.

  Then:

  - Verify that the Copilot feature is included in your license.
  - Assign the missing service plan to the user account.

## Related articles

- [Microsoft 365 Copilot feature availability and service description](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot#feature-availability)
- [Microsoft 365 Copilot overview](microsoft-365-copilot-overview.md)
