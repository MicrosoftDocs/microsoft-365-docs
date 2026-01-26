---
title: Prerequisites - Microsoft 365 Copilot agent governance 
f1.keywords:
ms.author: erikre
author: ErikRe
manager: dansimp
ms.date: 11/12/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
- m365copilot
- magic-ai-copilot
description: Learn about prerequisites for Microsoft 365 Copilot agent governance.
---

# Prerequisites for managing Microsoft 365 Copilot agents

Organizations typically deploy a combination of Microsoft 365 Copilot Chat and Microsoft 365 Copilot. Before you get started, it's important to understand the differences between these two offerings and the licensing involved when deploying and using agents. Agents allow you and your end users to extend Copilot’s knowledge, automate complex workflows, and deliver tailored user experiences.

> [!NOTE]
> Before your organization assigns or deploys an agent, first consider your organization’s objectives, technical requirements, costs, Responsible AI (RAI) considerations, and compliance factors. For more information, see Microsoft 365 Copilot extensibility planning guide.

## Licensing requirements

Microsoft 365 Copilot Chat is available at no additional cost for all Microsoft Entra account users with a Microsoft 365 or Office 365 subscription. Members of your organization can use agents that are available at no additional cost from the Agent Store. You, as the administrator of your organization, would also need to enable these agents. If your organization requires agents that incorporate your organization’s data, you can provide access to [agents](/copilot/agents) that are billed based on metered consumption.

<!-- For more information about Microsoft 365 Copilot Chat, see [Requirements and considerations for Microsoft 365 Copilot Chat admins]().-->

Microsoft 365 Copilot, which includes Microsoft 365 Copilot Chat, requires a Microsoft 365 [Business](https://www.microsoft.com/microsoft-365/business/with-copilot-plans-and-pricing) or [Enterprise](https://www.microsoft.com/microsoft-365/enterprise/microsoft365-plans-and-pricing) plan. It includes AI-powered chat grounded in both web-based and work-based data, as well as the capabilities of Microsoft 365 Copilot Chat. In addition, Microsoft 365 Copilot unlocks embedded Copilot features in Word, Excel, Outlook, and Teams. Additionally, your organization can use [custom agents](/microsoft-365-copilot/extensibility/overview-custom-engine-agent). 

<!-- For more information about deploying Microsoft 365 Copilot, including setting up a Microsoft 365 Copilot rollout plan, see [Minimum requirements to deploy Microsoft 365 Copilot in your organization](). -->

Each Copilot option offers different capabilities. For a list of these capabilities, see [Agent capabilities for Microsoft 365 users](/microsoft-365-copilot/extensibility/prerequisites#agent-capabilities-for-microsoft-365-users).

## Admin permissions

To configure, manage, and deploy agents, you must have the following required user roles and permissions:

- AI Admin
- Global Admin
- Global Reader (view-only, no edit)

When considering administrator permissions, we recommend you use the least privileged role that's needed to complete tasks. The Global Admin role has more permissions than needed for many settings and tasks in Microsoft 365 admin center.

Confirm your admin permissions:

1. Open Microsoft 365 admin center in your browser.
2. Select **Users** > **Active users**.
3. Find and select your user name.
4. Under **Roles**, you’ll find your access role.

> [!NOTE]
> To view the assigned members of the different roles in your tenant, you can select **Roles** > **Role assignments** > *select the role* > **Assigned**.

For more information about roles, see [admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles) and [Understanding Permissions](/microsoft-365/admin/manage/manage-agents-permissions).

### Service admin roles

To help you administer environments and settings for the Microsoft Power Platform, you can assign users to manage the service at the tenant level without having to assign a role that provides access to other services within the tenant.

The Power Platform related service admin roles that you can assign to provide a high level of admin management are the following:

- Dynamics 365 administrator
- Power Platform administrator

For more information, see [Use service admin roles to manage your tenant](/power-platform/admin/use-service-admin-role-manage-tenant). 

## Control Access to Sensitive Roles with Privileged Identity Management

To enhance security and compliance, organizations can use [Microsoft Entra Privileged Identity Management](/entra/id-governance/privileged-identity-management/pim-configure) (PIM) to require approval workflows before granting access to highly sensitive roles, such as AI Administrator or Search Administrator.

With PIM, you can do the following:

- Configure just-in-time (JIT) activation for highly sensitive roles.
- Require multi-step approval from designated approvers related to these highly sensitive roles.
- Enforce [Multi-Factor Authentication](/entra/identity/authentication/concept-mfa-howitworks) (MFA) and conditional access policies during activation.
- Audit and review role assignments to maintain least privilege principles.

PIM ensures that access to critical AI and search-related administrative functions is tightly controlled and monitored. For more information, see [Microsoft Entra Privileged Identity Management](/entra/id-governance/privileged-identity-management/pim-configure).