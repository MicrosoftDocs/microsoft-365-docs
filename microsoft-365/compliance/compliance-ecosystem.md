

# How to access Microsoft 365 Compliance Extensibility

Microsoft 365 Compliance Solutions help you intelligently assess your compliance risks, govern, and protect sensitive data and effectively respond to regulatory requirements. Microsoft 365 Compliance is rich in extensibility scenarios and enables you to adapt, extend, integrate, accelerate, and support your compliance solutions.

There are two key building blocks of Microsoft 365 Compliance Extensibility:

1.  **Connectors**: Bring non-MSFT data and benefit from all Microsoft 365 protect and govern capabilities

2.  **APIs**: Enable programmatic access to Microsoft 365 Compliance related capabilities

This page provides a list of Connectors and APIs along with their pre-requisites.

## Connectors:

The following table lists the third-party data connectors available in the Microsoft 365 compliance center. The table also summarizes the compliance solutions that you can apply to third-party data after you import and archive in Microsoft 365.

| Third-party data                                                                                                                                                     | Litigation hold                                                                              | eDiscovery                                                                                   | Retention policies                                                                           | Records management                                                                           | Communication compliance                                                                     | Insider risk management                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| [<span class="underline">Bloomberg Message</span>](https://docs.microsoft.com/en-us/microsoft-365/compliance/archive-bloomberg-message-data?view=o365-worldwide)     | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |                                                                                              | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |                                                                                              |
| [<span class="underline">Facebook</span>](https://docs.microsoft.com/en-us/microsoft-365/compliance/archive-facebook-data-with-sample-connector?view=o365-worldwide) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |                                                                                              |                                                                                              |
| [<span class="underline">HR data</span>](https://docs.microsoft.com/en-us/microsoft-365/compliance/import-hr-data?view=o365-worldwide)                               |                                                                                              |                                                                                              |                                                                                              |                                                                                              |                                                                                              | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |
| [<span class="underline">ICE Chat</span>](https://docs.microsoft.com/en-us/microsoft-365/compliance/archive-icechat-data?view=o365-worldwide)                        | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |                                                                                              | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |                                                                                              |
| [<span class="underline">Instant Bloomberg</span>](https://docs.microsoft.com/en-us/microsoft-365/compliance/archive-instant-bloomberg-data?view=o365-worldwide)     | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |                                                                                              |
| [<span class="underline">LinkedIn</span>](https://docs.microsoft.com/en-us/microsoft-365/compliance/archive-linkedin-data?view=o365-worldwide)                       | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |                                                                                              |                                                                                              |
| [<span class="underline">Twitter</span>](https://docs.microsoft.com/en-us/microsoft-365/compliance/archive-twitter-data-with-sample-connector?view=o365-worldwide)   | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) | ![Check mark](c:\\GitHub\\microsoft-365-docs-pr\\microsoft-365\\compliance/media/image1.png) |                                                                                              |                                                                                              |

To learn more about Microsoft 365 data connectors see [Archiving third-party data](https://docs.microsoft.com/en-us/microsoft-365/compliance/archiving-third-party-data?view=o365-worldwide). If a third-party data type isn't supported by the data connectors available in the Microsoft compliance center, you can work with a partner who can provide a custom connector. For a list of partners that you can work with and the step-by-step process for this method, see [Work with a partner to archive third-party data in Microsoft 365](mailto:https://docs.microsoft.com/en-us/microsoft-365/compliance/work-with-partner-to-archive-third-party-data?view=o365-worldwide).

### Prerequisites

Many of the data connectors available in the Microsoft 365 compliance center to import and archive third-party data require that you prepare and perform configuration tasks in the third-party data source. These prerequisites are documented in detail for each third-party data connector. For data connectors in the M365 Compliance Center that are provided by one of Microsoft’s partners, your organization will need a business relationship with the partner before you can deploy those connectors.

You can find licensing requirements for Data Connectors on our service description page [here](https://docs.microsoft.com/en-us/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

APIs:

Microsoft 365 Compliance APIs are made available via a combination of Microsoft Information Protection (MIP) SDK, Microsoft Graph APIs and Office 365 Management (OMA) Activity APIs.

To learn more about how to access Graph APIs you can visit [Graph API](https://docs.microsoft.com/en-us/graph/overview?view=graph-rest-1.0) overview.

### Microsoft Information Protection (MIP) SDK

The MIP SDK exposes the labeling and protection services from Office 365 Security and Compliance Center, to third-party applications and services. Developers can use the SDK to build native support for applying labels and protection to files. Developers can reason over which actions should be taken when specific labels are detected, and reason over MIP-encrypted information.

High-level MIP SDK use cases include:

  - A line-of-business application that applies classification labels to files on export.

  - A CAD/CAM design application provides native support for Microsoft Information Protection labeling.

  - A cloud access security broker or data loss prevention solution reasons over data encrypted with Azure Information Protection.

To learn more about MIP SDK, its prerequisites, additional scenarios, and samples see [MIP SDK Overview](https://docs.microsoft.com/en-us/information-protection/develop/overview).

### Microsoft Graph API for Teams DLP

[Data loss prevention (DLP)](https://docs.microsoft.com/en-us/microsoft-365/compliance/dlp-microsoft-teams?view=o365-worldwide) capabilities are widely used in Microsoft Teams particularly as organizations have shifted to remote work.

Earlier this year we [announced the public preview of the Microsoft Graph Change Notification API for messages in Teams](https://developer.microsoft.com/en-us/graph/blogs/announcing-change-notifications-for-microsoft-teams-messages/). This API enables developers to build apps that can listen to Microsoft Teams messages in near-real time and enable DLP scenario implementations for both customers and ISVs. Additionally, Microsoft Graph Patch API allows applying DLP actions to Teams messages.

Together, these two APIs form the Microsoft Graph API for Teams DLP and today, You can get started by trying out the [sample app](https://github.com/microsoftgraph/csharp-webhook-with-resource-data). See the [documentation](https://docs.microsoft.com/en-us/graph/api/subscription-post-subscriptions?view=graph-rest-beta&tabs=http) for more information about Microsoft Teams messaging webhooks.

You can find licensing requirements for the use of this API for Teams DLP on our service description page [here](https://docs.microsoft.com/en-us/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

### 

### Microsoft Graph API for eDiscovery (Public Preview)

With [Advanced eDiscovery](https://docs.microsoft.com/en-us/microsoft-365/compliance/overview-ediscovery-20?view=o365-worldwide), organizations can discover data where it lives, and manage more end to end eDiscovery workflows with intelligent, machine learning and analytics capabilities to reduce data to the relevant set – all while the data stays within the Microsoft 365 security and compliance boundary.

Graph APIs for Advanced eDiscovery can be used to create and manage three major types of resources: cases, review sets, and review set queries – in a scalable and repeatable manner. This will enable customers and partners to create apps and workflows to automate common and repetitive processes like case creation, custodian management, hold management.

The first set of Graph APIs for eDiscovery are available in public preview. We plan to add more capabilities by the end of the calendar year. In the meantime, learn more about this and other updates available in Advanced eDiscovery [here](https://aka.ms/Ignite2020AeDAA).

You can find licensing requirements for the use of this API for eDiscovery API on our service description page [here](https://docs.microsoft.com/en-us/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).

### Microsoft Graph API for Teams Export (Public Preview)

Enterprise Information Archiving (EIA) for Microsoft Teams is a key scenario for our customers as it allows them to solve for regulatory requirements.

In addition to our built-in capabilities for archiving Microsoft Teams now customers and partners can use Teams Export APIs to solve for custom application and integration scenarios. Teams Export API support bulk export (up to 200 requests per second/Per App/Per tenant) of Teams messages including message attachments. Deleted messages are also accessible via API – up to 30 days from deletion.

Microsoft Graph APIs for Teams Export are available in public preview now. To learn more about these APIs and how to use them in your applications read [this article](https://docs.microsoft.com/microsoftteams/export-teams-content).

You can find licensing requirements for the use of this API for Teams Export on our service description page [here](https://docs.microsoft.com/en-us/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).
