---
title: "Microsoft 365 compliance extensibility"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 
ms.custom:
- seo-marvel-apr2020
description: "Learn about extending Microsoft 365 compliance solutions by using third-party data connectors and Microsoft Graph APIs."
---

# Microsoft 365 compliance extensibility

Microsoft 365 compliance solutions help organizations intelligently assess their compliance risks, govern and protect sensitive data, and effectively respond to regulatory requirements. Microsoft 365 compliance is rich in extensibility scenarios and enables organizations to adapt, extend, integrate, accelerate, and support their compliance solutions.

There are two key building blocks for compliance extensibility:

- **Data connectors**. Use to import and archive non-Microsoft data so you can apply Microsoft 365 protection and governance capabilities to third-party data.

- **APIs**. Enables programmatic access to Microsoft 365 compliance capabilities.

## Data connectors

Microsoft provides third-party data connectors that can be configured in the Microsoft 365 compliance center. For a list of data connectors provided by Microsoft, see the [Third-party data connectors](archiving-third-party-data.md#third-party-data-connectors) table. The table of third-party data connectors also summarizes the compliance solutions that you can apply to third-party data after you import and archive data in Microsoft 365, and links to the step-by-step instructions for each connector.

To learn more about Microsoft 365 data connectors, see [Archiving third-party data](archiving-third-party-data.md). If a third-party data type isn't supported by the data connectors available in the Microsoft 365 compliance center, you can work with a partner who can provide you with a custom connector. For a list of partners you can work with and the step-by-step process for this method, see [Work with a partner to archive third-party data](work-with-partner-to-archive-third-party-data.md).

### Prerequisites for data connectors

Many of the data connectors available in the Microsoft 365 compliance center to import and archive third-party data require that you prepare and perform configuration tasks in the third-party data source. These prerequisites are documented in detail for each third-party data connector.

For data connectors in the Microsoft 365 compliance center provided by one of Microsoft's partners, your organization will need a business relationship with the partner before you can deploy a connector.

You can find licensing requirements for third-party data connectors in the [Microsoft 365 Compliance Licensing Comparison](/office365/servicedescriptions/downloads/microsoft-365-compliance-licensing-comparison.xlsx) document.

## APIs

Microsoft 365 compliance APIs are available in the Microsoft Information Protection SDK, Microsoft Graph API, and the Office 365 Management Activity API. Some compliance APIs are part of a new set of security and compliance APIs that enable developers for Microsoft 365 customers, independent software vendors, system integrators, and managed security service providers to build high-value security and compliance solutions.

To learn more about how to access Graph APIs, see [Overview of Microsoft Graph](/graph/overview).

### Microsoft Information Protection (MIP) SDK

The MIP SDK exposes the labeling and protection services from Microsoft 365 security and compliance centers to third-party applications and services. Developers can use the SDK to build native support for applying labels and protection to files. Developers can determine which actions should be taken when specific labels are detected, and reason over MIP-encrypted information.

High-level MIP SDK use cases include:

- A line-of-business application that applies classification labels to files on export.

- A CAD/CAM design application that provides native support for MIP labeling.

- A cloud access security broker or data loss prevention solution that can encrypt data with Azure Information Protection.

To learn more about the MIP SDK, prerequisites, additional scenarios, and samples, see [MIP SDK Overview](/information-protection/develop/overview).

### Microsoft Graph API for Teams DLP

[Data loss prevention (DLP)](dlp-microsoft-teams.md) capabilities are widely used in Microsoft Teams particularly as organizations have shifted to remote work. Earlier this year we [announced the public preview](https://developer.microsoft.com/graph/blogs/announcing-change-notifications-for-microsoft-teams-messages/) of the Microsoft Graph Change Notification API for messages in Teams. This API enables developers to build apps that can listen to Microsoft Teams messages in near-real time and then implement DLP scenarios for both customers and partners. Additionally, Microsoft Graph Patch API lets you apply DLP actions to Teams messages.

These two APIs form the Microsoft Graph API for Teams DLP. You can get started by trying out the [sample app](https://github.com/microsoftgraph/csharp-webhook-with-resource-data). For more information about Microsoft Teams messaging webhooks, see the [documentation](/graph/api/subscription-post-subscriptions).

For the licensing requirements for Teams DLP, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#communication-data-loss-prevention-for-teams).

### Microsoft Graph API for eDiscovery (preview)

With [Advanced eDiscovery](overview-ediscovery-20.md), organizations can discover data where it lives, and manage more end-to-end eDiscovery workflows with intelligent machine-learning and analytics capabilities to reduce data to the relevant set – all while the data stays within the Microsoft 365 security and compliance boundary.

Graph APIs for Advanced eDiscovery can be used to create and manage cases, review sets, and review set queries in a scalable and repeatable manner. This enables customers and partners to create apps and workflows to automate common and repetitive processes such as creating cases and managing custodians and legal holds.

The first set of Graph APIs for eDiscovery are available in public preview. We plan to add more capabilities by the end of the calendar year. To learn more about these APIs and other updates for Advanced eDiscovery, see this [blog](https://aka.ms/Ignite2020AeDAA).

For the licensing requirements for Advanced eDiscovery and the API, see the "eDiscovery" section in the [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#ediscovery).

### Microsoft Graph API for Teams Export (preview)

Enterprise Information Archiving (EIA) for Microsoft Teams is a key scenario for our customers as it allows them to solve for regulatory requirements. In addition to our built-in capabilities for archiving content in Microsoft Teams, customers and partners can now use Teams Export APIs to solve for custom application and integration scenarios. The Teams Export APIs support bulk-export (up to 200 requests per second/per app/per tenant) of Teams messages and message attachments. Deleted messages are also accessible by the API for up to 30 days after they are deleted. For more information about these Teams Export APIs and how to use them in your applications, see [Export content with the Microsoft Teams Export APIs](/microsoftteams/export-teams-content).

For the licensing requirements for the use of the Teams Export APIs, see [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

### Microsoft Graph Connector APIs (preview)

With [Microsoft Graph connectors](https://docs.microsoft.com/en-us/microsoftsearch/connectors-overview), organizations can index third-party data so it appears in Microsoft Search results. This feature expands the types of content sources that are searchable in your Microsoft 365 productivity apps and the broader Microsoft ecosystem. The third-party data can be hosted on-premises or in the public or private clouds. Starting with Advanced eDiscovery we are enabling developer preview of built-in compliance value of Microsoft 365 connected apps. This enables compliance for apps integrating into the Microsoft 365 ecosystem to empower our users with seamless compliance experiences.
To learn more about to how to incorporate Microsoft Graph Connector APIs in your apps view this [guidance](https://docs.microsoft.com/en-us/graph/search-index-manage-connections).
