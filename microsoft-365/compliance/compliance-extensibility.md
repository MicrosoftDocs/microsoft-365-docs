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

There are two key building blocks of compliance extensibility:

- **Data connectors**. Use to import and archive non-Microsoft data so you can apply Microsoft 365 protection and governance capabilities to third-party data.

- **APIs**. Enables programmatic access to Microsoft 365 compliance capabilities.

## Data connectors

Microsoft provides third-party data connectors that can be configured in the Microsoft 365 compliance center. For a list of data connectors provided by Microsoft, see the [Third-party data connectors](archiving-third-party-data.md#third-party-data-connectors) table. This table also summarizes the compliance solutions that you can apply to third-party data after you import and archive data in Microsoft 365, and links to the step-by-step instructions for each connector.

To learn more about Microsoft 365 data connectors, see [Archiving third-party data](archiving-third-party-data.md). If a third-party data type isn't supported by the data connectors available in the Microsoft 365 compliance center, you can work with a partner who can provide you with a custom connector. For a list of partners you can work with and the step-by-step process for this method, see [Work with a partner to archive third-party data](work-with-partner-to-archive-third-party-data.md).

### Prerequisites for data connectors

Many of the data connectors available in the Microsoft 365 compliance center to import and archive third-party data require that you prepare and perform configuration tasks in the third-party data source. These prerequisites are documented in detail for each third-party data connector.

During public preview, you can implement a third-party data connector without additional fees or the appropriate licensing. After a data connector is released for general availability, users who benefit from the import and archiving a third-party data will require one of the following Microsoft 365 or Office 365 subscriptions:

- Microsoft 365 E5

- Microsoft 365 A5

- Microsoft 365 E5/A5 Info Protection & Governance

- Microsoft 365 E5 Compliance

- Office 365 E5

- Office 365 Advanced Compliance

## APIs

Microsoft 365 compliance APIs are available in the Microsoft Information Protection SDK, Microsoft Graph API, and the Office 365 Management Activity API. Some compliance APIs are part of a new set of security and compliance APIs that enable developers for Microsoft 365 customers, independent software vendors, system integrators, and managed security service providers to build high-value security and compliance solutions.

To learn more about how to access Graph APIs, see [Overview of Microsoft Graph](https://docs.microsoft.com/graph/overview?view=graph-rest-1.0).

### Microsoft Information Protection (MIP) SDK

The MIP SDK exposes the labeling and protection services from Microsoft 365 security and compliance centers to third-party applications and services. Developers can use the SDK to build native support for applying labels and protection to files. Developers can determine which actions should be taken when specific labels are detected, and reason over MIP-encrypted information.

High-level MIP SDK use cases include:

- A line-of-business application that applies classification labels to files on export.

- A CAD/CAM design application that provides native support for MIP labeling.

- A cloud access security broker or data loss prevention solution that can encrypt data with Azure Information Protection.

To learn more about the MIP SDK, prerequisites, additional scenarios, and samples, see [MIP SDK Overview](https://docs.microsoft.com/information-protection/develop/overview).

### Teams DLP API (preview)

The Teams data loss prevention (DLP) scenario is made possible by Microsoft Graph Change Notification API. This API enables development of apps that can listen to Microsoft Teams messages in near-real time (without polling). This capability enables scenarios that assist with DLP and archiving solutions as well as building bots that listen to messages on which they aren’t @mentioned.

You can get started by trying out the [sample app for change notifications](https://github.com/microsoftgraph/csharp-webhook-with-resource-data). See the [documentation](https://docs.microsoft.com/graph/api/subscription-post-subscriptions?view=graph-rest-beta&tabs=http) for more information about creating Microsoft Teams messaging webhooks.

To learn more about Microsoft Graph APIs, see [Use the Microsoft Graph API](https://docs.microsoft.com/graph/use-the-api).

### Prerequisites for the Teams DLP API

During the public preview, you can use the Teams DLP API without fees, subject to the [Microsoft APIs Terms of Use](https://docs.microsoft.com/legal/microsoft-apis/terms-of-use?context=graph/context). After the API is released for general availability, creating a message subscription for Teams chat messages with application permissions for `/teams/allMessages` and `/chats/allMessages` will require one of the following Microsoft 365 or Office 365 subscriptions:

- Microsoft 365 E5

- Microsoft 365 A5

- Microsoft 365 E5/A5 Info Protection & Governance

- Office 365 E5

- Office 365 A5

- Office 365 Advanced Compliance

Because `/teams/allMessages` and `/chats/allMessages` deliver notifications for all users in an organization, all users must be licensed with the appropriate. Additionally, after release to general availability, Microsoft may require you (or your customers) to pay additional fees based on the amount of data accessed through the API.
