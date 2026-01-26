---
title: App Builder privacy and data subject request (DSR) FAQ
description: Frequently asked questions about App Builder's privacy and data subject request (DSR) processes.
author: anuitz
ms.author: anuitz
manager: tapanm
ms.date: 10/23/2025
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.reviewer: mkaur
ms.update-cycle: 180-days
---

# App Builder privacy and data subject request (DSR) FAQ

App Builder is a Microsoft 365 Copilot agent that helps users create apps using natural language. This FAQ explains how App Builder works, how it handles data, and what controls are available to users and administrators. 

## What is App Builder?

App Builder is a Copilot agent that enables users to create interactive reports, data visualizations, and personal and team productivity tools by describing their needs using natural language. It generates apps with data stored in Lists in a SharePoint Site associated with the app and displays them directly in the Microsoft 365 Copilot experience.

## How are apps stored, exported, or deleted?

Apps created with App Builder are stored in a specific Power Platform environment designated for these apps for the tenant. These apps are visible within the App Builder agent interface in Microsoft 365 Copilot, but the environment is hidden from all but tenant admins. 

Users can delete apps within the App Builder interface. Apps are subject to Microsoft’s Data Subject Request (DSR) processes. 

Resources about DSR requests:

- [Responding to DSR delete requests to delete Power Apps customer data](/power-platform/admin/powerapps-privacy-delete-dsr)


## Is conversation history stored or exportable?

Yes, conversations with App Builder are retained in the Microsoft 365 conversation history. 

To learn more about how Microsoft 365 Copilot handles data, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).


## How is App Builder managed by administrators?

Administrators can manage App Builder in the Microsoft 365 admin center under **Copilot > Agents**. Available controls include:

- Enable or disable the agent
- Assign, block, or remove access
- Control visibility using **Allow users access to agents**

App Builder respects tenant-level settings configured in the Microsoft 365 admin center and Power Platform Admin Center. These settings determine:

- Whether App Builder is enabled
- Whether feedback collection is allowed
- Whether analytics and telemetry are collected
- Which Copilot features are available to users

To learn more about managing Copilot agents and tenant settings, see [Manage Copilot Agents](/microsoft-365/admin/manage/manage-copilot-agents-integrated-apps?view=o365-worldwide&preserve-view=true).

## Where is the data for App Builder apps stored?

App Builder saves data either in the app or in SharePoint lists. You manage those lists in the app’s SharePoint site, which you can administer from the SharePoint admin center. The site behaves like any site you create directly in SharePoint. For more information, see [Manage sites in the SharePoint admin center](/sharepoint/manage-sites-in-new-admin-center).


## What connectors are supported?

App Builder currently supports the SharePoint connector.

## How is user feedback handled and controlled?

Users can submit thumbs-up or thumbs-down ratings and optional comments.
Here are some important points about feedback collection. Feedback data:

- Isn't used to train foundation models
- Can be enabled or disabled by administrators at the tenant level

User feedback is managed alongside other Microsoft Copilot user feedback, see more:
- [Providing feedback about Microsoft Copilot with Microsoft 365 apps](https://support.microsoft.com/topic/providing-feedback-about-microsoft-copilot-with-microsoft-365-apps-c481c26a-e01a-4be3-bdd0-aee0b0b2a423)

- [Manage feedback for Microsoft 365 apps](/microsoft-365/admin/manage/manage-feedback-ms-org?view=o365-worldwide&preserve-view=true)


## Can usage be audited?

Yes. Organizations can use Microsoft 365 audit logs and Power Platform analytics to monitor usage of App Builder.

## Related articles

- [Get started with App Builder in Microsoft 365 Copilot](https://support.microsoft.com/topic/build-apps-with-microsoft-365-copilot-a50c7eb7-ed36-45b5-baa4-b24e70f3b550)

