---
title: "Copilot in Microsoft 365 Admin Centers"
description: "Learn how to use Copilot in Microsoft 365 admin centers to automate tasks, navigate features, and gain actionable insights with natural language queries."
#customer intent: As an admin, I want to understand how to use Copilot in Microsoft 365 admin centers so that I can simplify and streamline admin tasks.
f1.keywords:
- NOCSH
author: kwekuako
ms.author: kwekua
manager: scotv
ms.date: 10/23/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection:
  - scotvorg
  - M365-subscription-management
  - Adm_O365
  - Adm_TOC
  - m365copilot
  - magic-ai-copilot
  - operations-pod
appliesto:
- ✅ Microsoft 365 Copilot
---

# Copilot for admins in Microsoft 365 admin centers

Copilot for admins uses generative AI to make you more productive by simplifying administration of Microsoft 365, Microsoft 365 Copilot and agents. It helps you focus on more strategic priorities and helps you perform administrative tasks across different Microsoft 365 services.

It helps admins perform tasks across different Microsoft 365 services via a single unified surface, using natural language interactions, contextual guidance, and proactive suggestions.

## Before you begin

All users with an admin role can use Copilot for Admins in the M365 admin centers, if the tenant has at least one paid Copilot license. For more information about admin roles, see [About administrator roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles) and [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference)

To use it in Copilot Chat, users need to be a member of an admin role and also have a Copilot license assigned to that account or have PayGo setup. For more information about Copilot licensing, see [License options for Microsoft 365 Copilot](microsoft-365-copilot-licensing.md).

## Get started

To use Copilot in Microsoft 365 admin centers, follow these steps:

1. Sign in to the [Microsoft 365 admin center](https://admin.microsoft.com/), or one of the specialized admin centers like [Teams](https://admin.teams.microsoft.com/Teams/), SharePoint, or [Exchange](https://admin.cloud.microsoft/exchange#/homepage/).

2. Select the Copilot button in the upper right shell to launch Copilot in Microsoft 365 admin centers.

    :::image type="content" source="media/admin-center-copilot.png" alt-text="Screenshot of the Copilot control system dashboard page showing a selection of the Copilot button in the top right.":::

## Use Copilot for admins in Microsoft 365 Copilot Chat

1. Sign in to [Microsoft 365 Copilot Chat](https://m365.cloud.microsoft/chat/) and select **Microsoft 365 Admin** agent in the left navigation pane.

    :::image type="content" source="media/microsoft-365-admin-agent.png" alt-text="Screenshot of the Microsoft 365 admin agent page showing a selection of the Microsoft 365 admin agent.":::

1. If you don't find the agent in the left navigation pane, select **All agents**, search for **Microsoft 365 Admin**, and select **Add**.
1. You can also use the agent in any apps you use such as Word, Excel, and PowerPoint.

## Capabilities in Copilot for admins

You can use Copilot to help manage your organization and focus on what's important. Following section provides an overview of the capabilities available in Copilot for Admins.

|Capability|Description|
|---|---|
|Admin recap|Use admin recap to get a personalized and concise summary of key insights and trends across admin areas, such as Service Health, Message Center, Groups and more to save valuable time. <br/><br/> Example prompts: <br/><br/> - Recap relevant info from across the admin center <br/><br/> :::image type="content" source="media/quick-recap.png" alt-text="Screenshot of the Copilot prompt and response page showing the question: Recap relevant info from Microsoft 365 admin center."::: |
|Get admin help and support|Get support for any challenges or questions related to administering Microsoft 365 for your tenant. <br/><br/> Example prompts: <br/><br/> - How do I view Copilot usage across my organization? <br/><br/> - How do I restore a deleted user? <br/><br/> - How do I set up multifactor authentication? <br/><br/> :::image type="content" source="media/setup-mfa.png" alt-text="Screenshot: Copilot prompt and response page showing the question: How do I set up multifactor authentication?"::: |
|Message Center and Service health|Surfaces general status of Microsoft services, tenant health status, health advice, and recommendations. <br/><br/> Example prompts: <br/><br/> - Show me the health of Teams? <br/><br/> - Are there any service issues right now? <br/><br/> :::image type="content" source="media/service-issues.png" alt-text="Screenshot of the Copilot prompt and response page showing the question: Are there any service issues right now?" ::: |
|Search for users and groups|Search your users and groups based on natural language queries. Copilot returns a list where you can view the results in active users or group lists and export them to a CSV file for further analysis. <br/><br/> Example prompts: <br/><br/> - Show me users in Australia with an assigned Teams license? <br/><br/> - Identify all groups in my organization with an owner. <br/><br/> - Show me all the users who are not using Copilot in the last 30 days. |
|Get relevant licensing information and assign licenses|Search for specific license details such as assigned licenses, pending license requests, available licenses etc. and get detailed answers. <br/><br/> **Coming soon**: You can also assign licenses to users within Copilot for admins. You’ll be asked for confirmation before executing the action on your behalf. <br/><br/> Example prompts: <br/><br/> - Show me users without a Copilot license? <br/><br/> - How many Copilot licenses are available? |
|Search and analyze Teams insights|Search and analyze Teams data using natural language queries. Copilot lets you quickly find users, groups, and policies without complex filters. Results are displayed in familiar admin views, such as active users or policy lists, and can be exported to a CSV file for deeper analysis or reporting. <br/><br/> Example prompts: <br/><br/> - Find all users with a Calling Plan license but no phone number assigned. <br/><br/> - Find all users whose name starts with *A*, who have the Global Messaging Policy assigned. <br/><br/> - Search and return a list of all policies where the meeting recording is turned **Off**. <br/><br/> - Search for all users with no custom meeting policy assigned. |
|Manage and troubleshoot Teams policies|Manage and troubleshoot Teams policies effortlessly. Copilot helps you diagnose policy-related issues that impact messaging, meetings, or external collaboration in Teams. Common scenarios include users unable to record meetings, blocked features, or conflicting policy settings. <br/><br/> Example prompts: <br/><br/> - Why is an external user unable to join a meeting organized by **user email or user principal name**? <br/><br/> - Why can’t **user principal name or Id** record meetings? |
|Troubleshoot Teams meetings|Quickly identify and resolve meeting quality issues in Teams. Copilot helps you investigate poor meeting or call quality by analyzing telemetry and surfacing likely causes such as network issues, device problems, or bandwidth constraints. <br/><br/> Example prompts: <br/><br/> - Analyze the call quality of for their meeting with Meeting ID. Were there any quality issues? <br/><br/> - List the most common quality issues in meetings for the last 30 days. <br/><br/> - List all users who experienced quality issues in meeting for last 30 days. |
|**Coming soon**: Agents management|View and manage your Copilot agents within Copilot for admins. You can drill down into various details of the agents such as security and compliance and deploy agents to users in your organization. <br/><br/> Example prompts: <br/><br/> - Show me a list of all available agents and its availability? <br/><br/> - Tell me more about Researcher agent and if there is any risk in enabling it. |
|**Coming soon**: Prompt scheduling for your frequent tasks|For your administrative tasks such as generating usage reports on a weekly basis, viewing pending license requests & available licenses etc. you can schedule prompts to run at a specific cadence so that the prompt automatically runs, curates the data that you are looking for & notifies you about it. |
|Policy troubleshooting|Troubleshoot scenarios such as a user being able or unable to join or start a meeting, or bypass the lobby. Address queries related to the functionality of Teams features, including, Chats, webinars, messages, presenting.  |

## Frequently asked questions

### How do I enable Copilot for admins in Microsoft 365 admin centers?

Copilot in admin centers is automatically enabled for all admin users if the tenant has at least one Copilot license. To use Copilot for admins in Copilot Chat, the user must have a Copilot license assigned.

### How do I disable Copilot for admins?

If you would like to exclude certain admins from this feature, add them to a custom security group. Create a security group with the following name: `CopilotForM365AdminExclude`. You don't need to specify a description or configure other settings. Microsoft 365 admin centers disable the Copilot experience for any admin users in this group.

If you would like to exclude certain admins from this feature, add them to a custom security group. Create a security group with the following name: `CopilotForM365AdminExclude`. You don't need to specify a description or configure other settings. Microsoft 365 admin centers disable the Copilot experience for any admin users in this group. [Visit this page](https://admin.cloud.microsoft/?#/copilot/settings/UserAccess/:/CopilotSettings/AdminCopilotSetting) to enable or disable Copilot for Admins in admin centers.

### Which admin roles can use Copilot for admins?

The feature is available to all admin users. It respects role-based access controls in the admin center and only shows information and controls that the user has access to. Copilot doesn't make any configuration changes on your behalf.

### Does Copilot for admins support audit logging?

Yes. Copilot in Microsoft 365 admin centers aligns with Microsoft's commitment to providing enterprise-grade compliance capabilities for all Copilot products. These capabilities include features such as auditing, eDiscovery, legal hold, and data retention controls.

Yes. It aligns with Microsoft's commitment to providing enterprise-grade compliance capabilities for all Copilot products. These capabilities include features such as auditing, eDiscovery, legal hold, and data retention controls.

> [!IMPORTANT]
> To maintain your security and privacy, Copilot doesn't make any configuration changes on your behalf unless you explicitly provide consent for it. For more information, see [Data, privacy, and security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).
