---
title: Usage analytics for the Employee Self-Service agent
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 11/05/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn how to access usage analytics for the Employee Self-Service agent.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Usage analytics for the Employee Self-Service agent

Monitoring the usage analytics of the Employee Self-Service agent should be part of the operational governance so that the agent's health and quality can be optimized continuously for end-users.

There are two approaches in consuming analytics:

1. Systematically monitoring agent usage, effectiveness, quality, and satisfaction, which fall within the responsibilities of the service owner and/or creator. [Learn more](/microsoft-copilot-studio/analytics-overview) about Copilot Studio analytics documentation.
1. Review agent usage, satisfaction scores, and other metrics to assess the agent’s return on investment. [Learn more](/viva/insights/org-team-insights/copilot-dashboard) about the Copilot Analytics Dashboard.

## Provide feedback

Feedback about Copilot is collected from Copilot experiences, such as when selecting a thumb's up or thumb's down on a response from Copilot in Microsoft 365 apps. After a user selects one of the thumb options, the feedback pane appears and asks for more information, including what the user liked (thumb's up) or what went wrong (thumb's down).

>[!NOTE]
>If using Copilot for work or school, the IT admin can turn off feedback. If the thumb options don't appear next to Copilot responses or if selecting a thumb doesn't open the feedback pane, your organization's IT admin may have turned off feedback.

You can view feedback in the [Microsoft feedback portal](https://feedbackportal.microsoft.com/feedback). To view feedback submitted to Microsoft, select **My feedback** and sign in. If using Copilot at work or school, your IT admin might not allow use of the feedback portal.

Administrators can view end-user feedback in the **Product feedback** page in the Microsoft admin center (MAC) under the **Health** section.

## Auditing and logging

The Employee Self-Service agent is built on Copilot and Power Platform. You can use auditing capabilities from these platforms to log and monitor usage.

### Audit with Microsoft Purview

Microsoft Purview provides features for a comprehensive audit record of end-user activities when interacting with agents. [Learn how to audit user interactions with agents in Microsoft Purview.](/power-platform/release-plan/2024wave2/microsoft-copilot-studio/audit-user-interactions-agents-purview)

[Audit logs for Copilot and AI activities](/purview/audit-copilot).

### Audit with Azure Application Insights

You can [use Azure Application Insights to capture telemetry for custom Copilot Agents.](/microsoft-copilot-studio/advanced-bot-framework-composer-capture-telemetry?tabs=webApp)

### Security information and event management (SIEM)

For any SIEM integrations, use Application Insights or the Power Platform Dataverse auditing capabilities.

[Manage Dataverse auditing](/power-platform/admin/manage-dataverse-auditing)

[Integrate Microsoft Sentinel and Power Platform to better monitor and protect your low-code solutions.](https://www.microsoft.com/power-platform/blog/power-apps/integrating-microsoft-sentinel-and-power-platform-to-better-monitor-and-protect-your-low-code-solutions/?msockid=1614e9ffd18265002a76fcabd0016456)
