---
title: Flow Builder privacy and data subject request (DSR) FAQ
description: Frequently asked questions about Flow Builder's privacy and data subject request (DSR) processes.
author: sbasi19
ms.author: ralinga
manager: dansimp
ms.date: 09/19/2025
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.reviewer: cyanderson
ms.update-cycle: 180-days
---

# Flow Builder privacy and data subject request (DSR) FAQ

Flow Builder is a Microsoft 365 Copilot agent that helps users create automation flows using natural language. This FAQ explains how Flow Builder works, how it handles data, and what controls are available to users and administrators.

## What is Flow Builder?

Flow Builder is a Copilot agent that enables users to automate tasks by describing them in natural language. It generates flows using supported Microsoft connectors and displays them directly in the Microsoft 365 Copilot experience.

## How are flows stored, exported, or deleted?

Flows created with Flow Builder are stored in the user's Power Platform environment. These flows are visible within the Flow Builder agent interface in Microsoft 365 Copilot but aren't surfaced in Power Automate.

Users can export or delete flows using standard Power Platform tools. Flows are subject to Microsoft’s Data Subject Request (DSR) processes.

Here are some resources about DSR requests:

- [Responding to DSR delete requests for Microsoft Dataverse customer data](/power-platform/admin/dataverse-privacy-dsr-guide)
- [Responding to DSR delete requests to delete Power Apps customer data](/power-platform/admin/powerapps-privacy-delete-dsr)
- [Export process data](/power-automate/minit/export)

## Is conversation history stored or exportable?

No. Flow Builder doesn't retain conversation history. All interactions are processed in real time and aren't stored in Microsoft 365 Copilot conversation history or backend services.

Because no chat history is stored, there's no conversational data to export or delete under DSR.

To learn more about how Microsoft 365 Copilot handles data, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

## How is Flow Builder managed by administrators?

Administrators can manage Flow Builder in the Microsoft 365 admin center under **Copilot > Agents**. Available controls include:

- Enable or disable the agent
- Assign, block, or remove access
- Control visibility using “Allow users access to agents”

Flow Builder respects tenant-level settings configured in the Microsoft 365 admin center and Power Platform Admin Center (PPAC). These settings determine:

- Whether Flow Builder is enabled
- Whether feedback collection is allowed
- Whether analytics and telemetry are collected
- Which Copilot features are available to users

To learn more about managing Copilot agents and tenant settings, see [Manage Copilot Agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps?view=o365-worldwide&preserve-view=true)

## What connectors are supported?

Flow Builder currently supports the following connectors:

- Recurrence
- Outlook
- Microsoft Teams
- Approvals
- Run a prompt
- SharePoint

Connector availability may vary depending on tenant policies and data loss prevention (DLP) configurations.

## How is user feedback handled and controlled?

Users can submit thumbs-up or thumbs-down ratings and optional comments.

Here are some important points about feedback collection. Feedback data:

- Isn't used to train foundation models
- Isn't linked to individual identities
- Doesn't include content samples
- Can be enabled or disabled by administrators at the tenant level

Feedback collection settings apply consistently across all Flow Builder surfaces. If Flow Builder is embedded in an iframe or accessed through other Microsoft 365 interfaces, feedback controls configured at the tenant level apply to both entry points.

Here's some additional information about feedback collection:

- [Providing feedback about Microsoft Copilot with Microsoft 365 apps](https://support.microsoft.com/en-us/topic/providing-feedback-about-microsoft-copilot-with-microsoft-365-apps-c481c26a-e01a-4be3-bdd0-aee0b0b2a423)
- [Manage feedback for Microsoft 365 apps](/microsoft-365/admin/manage/manage-feedback-ms-org?view=o365-worldwide&preserve-view=true)

## Can usage be audited?

Yes. Organizations can use Microsoft 365 audit logs and Power Platform analytics to monitor usage of Flow Builder.

## Related articles

- [Learn about the new Microsoft Purview portal](/purview/purview-portal)
- [Power Platform Admin Center](https://aka.ms/ppac)
