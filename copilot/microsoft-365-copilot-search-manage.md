---
title: "Manage Microsoft 365 Copilot Search"
author: Efrene
ms.author: efrene
manager: dansimp
ms.date: 06/05/2025
ms.topic: overview
ms.service: microsoft-365-admin
ms.localizationpriority: medium
ms.collection:
- CopilotSearch
- operations-pod
ms.custom: QuickDraft
ms.reviewer: kwekua
audience: admin
ai-usage: ai-assisted
description: Information on how to manage Microsoft 365 Copilot Search.
---

# Manage Microsoft 365 Copilot Search

No action is required by admins to set up Microsoft 365 Copilot Search. If a user has a Microsoft 365 Copilot license, they can access Copilot Search from the **Search** module in the Microsoft 365 Copilot app across web, desktop, and mobile. Users who don't have the Microsoft 365 Copilot app will receive the Microsoft Search experience when clicking the **Search** module in the Microsoft 365 app.

Learn more about [setting up Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-setup) for your users.

For more details on how to manage, customize, and optimize Copilot Search across your organization, learn about the [Microsoft 365 Copilot Search admin experience](/copilot/microsoft-365/microsoft-365-copilot-search-admin-experience).

> [!NOTE]
> Microsoft 365 Copilot Search becomes available in a Targeted release beginning late June 2025. It will become generally available as a Standard release in Q3 2025. Learn more about [Standard and Targeted releases]( /microsoft-365/admin/manage/release-options-in-office-365).

## Copilot Search and third-party systems

Copilot Search can access data in third-party systems as well as Microsoft 365 apps and other systems in the Microsoft Graph. This is achieved through Microsoft 365 Copilot connectors, which allow organizations to ingest data from external platforms like Salesforce, ServiceNow, Confluence, and more.

Learn more about [Microsoft 365 Copilot connectors](/microsoft-365-copilot/extensibility/overview-copilot-connector).

## Privacy and security

Microsoft 365 Copilot Search adheres to the same data protection, privacy standards, and security configurations as Microsoft 365 Copilot. Learn more about [data, privacy, and security in Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-privacy).

## Microsoft 365 Copilot extension

The Microsoft 365 Copilot extension is a cross-browser add-on that enhances your Copilot Search results. This extension brings together information from tickets, files, documents, and tasks across multiple work-related third-party sites, providing highly relevant and personalized search results.

The Microsoft 365 Copilot extension works in the background without any manual steps after installation. It is enabled by your organization through the Microsoft Edge Add-Ons website or the Chrome Web store (extensions). The extension only uses activity from third-party apps or sites configured by your organization and doesn't track your general web browsing. Data captured is stored securely and used only to improve your Copilot Search experience and is not shared with others.

For the preview program, we support the following third-party apps or connectors: ADO, ServiceNow KB, ServiceNow Catalog, ServiceNow Tickets, Jira, Google Drive, Confluence, and GitHub.

Learn more about [Microsoft 365 Copilot extension](/microsoftsearch/crossover-browser).

## Bookmarks and acronyms

Admins can configure authoritative information for their tenants using bookmarks and acronyms for Copilot Search just as they can for Microsoft Search. Curating bookmarks and acronyms helps surface organization-specific answers directly in search results. These features are designed to:

- Promote key resources - [Bookmarks](/microsoftsearch/manage-bookmarks)
- Define internal terminology - [Acronyms](/microsoftsearch/manage-acronyms)
- Improve discoverability and reduce confusion across teams and departments

## Manage access to files and sites

Organizations can restrict end users from searching for files in certain SharePoint sites by enabling Restricted Content Discovery. This setting prevents these sites from appearing in organization-wide search results and Microsoft 365 Copilot answers unless a user owns or has recently interacted with content on those sites.

Learn more about [Restricted Content Discovery in SharePoint](/sharepoint/restricted-content-discovery).

In addition, if you're a SharePoint Administrator or above in Microsoft 365, Restricted SharePoint Search is a setting that helps you maintain a list of SharePoint sites, known as the **allowed** list. With this list, you allow access to these designated sites after checking permissions and applying data governance. The allowed list specifies which SharePoint sites can be included in organization-wide search and Copilot experiences. By default, the Restricted SharePoint Search setting is turned off and the allowed list is empty.

Restricted SharePoint Search allows you to restrict both organization-wide search and Copilot experiences to a curated set of SharePoint sites of your choice. Even if you enable Restricted SharePoint Search, users in your organization are still able to interact with files and content they own or that they have previously accessed in Copilot. 

Learn more about [Restricted SharePoint Search](/sharepoint/restricted-sharepoint-search).

Admins can also manage access to other sensitive organizational data using tools and policies tailored to their needs. Microsoft offers solutions to prevent the oversharing of sensitive data and identify sites with the most sensitive documents.

Learn more about [managing access to files and sites](/microsoftsearch/manage-access-files-sites).
