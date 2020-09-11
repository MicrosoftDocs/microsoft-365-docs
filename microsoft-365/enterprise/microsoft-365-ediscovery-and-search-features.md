---
title: "Microsoft 365 eDiscovery and search features overview"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
- SPO_Content
f1.keywords:
- NOCSH
description: "An overview of the eDiscovery feature and other search features within Microsoft 365 for audit use and transparency."
---

# Microsoft 365 eDiscovery and search features overview

## eDiscovery

The eDiscovery feature provides a single place for administrators, compliance officers, and other authorized users to conduct a comprehensive investigation into Microsoft 365 user activity. Security officers with the appropriate permissions perform searches and place holds on content. The search results are the same results you get from a Content Search, except eDiscovery cases are created for any applied holds. The results from eDiscovery searches are encrypted for security, and you can analyze exported data with [Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/overview-ediscovery-20).

## Content Search

[Content Search](https://support.office.com/article/Run-a-Content-Search-in-the-Office-365-Security-Compliance-Center-61852fd9-fe8a-4880-a339-cb19ed3bff4a) is a eDiscovery search tool that provides improved scaling and performance capabilities over previous eDiscovery search tools. You use Content Search to search mailboxes, public folders, SharePoint Online sites, and OneDrive for Business locations. Content Search supports large searches. There are no limits on the number of mailboxes and sites that you can search. There are also no limits on the number of searches that run at the same time. After you run a search, the number of content sources and an estimated number of search results are displayed in the details pane on the search page. You can preview the results, or export them to a local computer. If your organization has a Microsoft 365 E5 subscription, you can [prepare the results](https://support.office.com/article/Run-a-Content-Search-in-the-Office-365-Security-Compliance-Center-61852fd9-fe8a-4880-a339-cb19ed3bff4a#prepare) for analysis using the powerful analytics features of [Microsoft 365 Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/overview-ediscovery-20).

## Audit log Search

In addition to tracking changes in their Microsoft 365 organization, you can view audit reports and export audit logs. Once auditing is enabled for as Microsoft 365 tenant, user and administrative activity are recorded in event logs and made searchable. For example, you can use mailbox audit logging to track actions performed on a mailbox by users other than the mailbox owner. Compliance officers can use the search and filter capabilities for specific user activities. For example, to identify users that viewed or downloaded a specific document, if administrators have performed user management activities, or to view changes in tenant configuration in the past 90 days. Search results contain valuable forensic information about specific activities conducted by a user or an administrator. See [Search the audit log](https://docs.microsoft.com/microsoft-365/compliance/search-the-audit-log-in-security-and-compliance) for a description of the user and administrative activities logged in Microsoft 365.

Events from SharePoint Online and OneDrive for Business are displayed in the log within 30 minutes of occurrence. Events from Exchange Online appear in the audit logs within 24 hours of occurrence. Login events from Azure AD are available within minutes of occurrence, and other directory events from Azure AD are available within 24 hours of occurrence. You can export vents in audit log search results for further analysis. A maximum of 50,000 entries from single audit log search are exported. To export more entries that this limit, reduce the date range or run multiple audit log searches.

The following table details some of the information displayed in activity reports. See the [detailed properties in the audit log](https://docs.microsoft.com/microsoft-365/compliance/detailed-properties-in-the-office-365-audit-log) for more information about properties collected by each Microsoft 365 workload.

| Property | Description |
|----------------|----------------------------------------------------------------------------------------------------------------------|
| Date | Date and time of the event |
| User | User who performed the action |
| ClientIP | IPv4 or IPv6 address of the device used when the activity was logged. |
| CreationTime | Date and time in Coordinated Universal Time (UTC) when the user performed the activity. |
| EventSource | Identifies that an event occurred. Possible values are SharePoint and ObjectModel. |
| ID | ID of the report entry. The ID uniquely identifies the report entry. |
| Operation | Name of the user or activity, which corresponds to the value selected in the Display results for this user activity. |
| OrganizationId | GUID for the organization's Microsoft 365 service where the event occurred. |
| UserAgent | Information about the user's browser, provided by the browser. |
| UserId | User who performed the action (specified in the Operation property) that resulted in the record being logged. |
| UserType | Type of user that performed the operation. The following values indicate the user type. |
|  | 0   Indicates a regular user. |
|  | 2   Indicates an administrator in your Microsoft 365 organization. |
|  | 3   Indicates a Microsoft datacenter administrator or datacenter system account. |
| Workload | Microsoft 365 service where the activity occurred. Possible values for this property are: |
|  | Exchange Online |
|  | SharePoint Online |
|  | OneDrive for Business |
|  | Azure Active Directory Reports |

For detailed steps to search Microsoft 365 audit logs, see [Search the audit log in the Security & Compliance Center](https://docs.microsoft.com/microsoft-365/compliance/search-the-audit-log-in-security-and-compliance).

## Search unified audit log

Use the Audit Log Search feature to search the unified audit log. Microsoft 365 also provides the ability to search this log using remote PowerShell. The [Search-UnifiedAuditLog cmdlet](https://docs.microsoft.com/powershell/module/exchange/search-unifiedauditlog) in Exchange Online PowerShell is used to search the unified audit log of events relating to user operations from Exchange Online, SharePoint Online, OneDrive for Business, and Azure AD.

You can search for all events in a specified date range, or you can filter the results based on specific criteria, such as a specific action, the user who performed the action, or the target object. Administrators can use up to three simultaneously running Exchange Online PowerShell sessions to split up large date range searches.