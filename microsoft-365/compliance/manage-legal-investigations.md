---
title: "Manage legal investigations in Microsoft 365"
description: "Use eDiscovery cases in the Microsoft Purview compliance portal to manage your organization's legal investigation."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
---

# Manage legal investigations in Microsoft 365

Organizations have many reasons to respond to a legal case involving certain executives or other employees in your organization. This might involve quickly finding and retaining for further investigation-specific information in email, documents, instant messaging conversations, and other content locations used by people in their day-to-day work tasks. You can perform these and many other similar activities by using the eDiscovery case tools in the security and compliance center.
  
**Want to know how Microsoft manages its eDiscovery investigations?** Here's a [technical white paper](https://go.microsoft.com/fwlink/?linkid=852161) you can download that explains how we use the same search and investigation tools to manage our internal eDiscovery workflow.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Manage legal investigations with eDiscovery cases

eDiscovery cases let you control who can create, access, and manage eDiscovery cases in your organization. Use cases to add members and control what types of actions they can perform, place a hold on content locations relevant to a legal case, and use the Content Search tool to search the locations on hold for content that might be responsive to your case. Then you can also export and download those results for further investigation by external reviewers.
  
- [Manage your eDiscovery workflow](./get-started-core-ediscovery.md) by creating and using eDiscovery cases for every legal investigation your organization has to undertake.

- [Assign eDiscovery permissions](assign-ediscovery-permissions.md) to control who can create and manage eDiscovery cases in your organization.

- [Set up compliance boundaries](set-up-compliance-boundaries.md) to control the user content locations that eDiscovery managers can search.

- [Search for content](search-for-content.md) in your organization.

### Use scripts for advanced scenarios

Like the previous section that listed scripts for content search scenarios, we've also created some Security & Compliance PowerShell scripts to help you manage eDiscovery cases.
  
- [Create a eDiscovery hold report](create-a-report-on-holds-in-ediscovery-cases.md) that contains information about all holds associated with eDiscovery cases in your organization.

- [Add mailboxes and OneDrive locations](use-a-script-to-add-users-to-a-hold-in-ediscovery.md) for a list of users to an eDiscovery hold.
  
## Manage legal investigations with the eDiscovery (Premium) solution in Microsoft 365

The Microsoft Purview eDiscovery (Premium) solution in Microsoft 365 builds on the existing eDiscovery and analytics capabilities in Office 365. This new solution, called *eDiscovery (Premium)*, provides an end-to-end workflow to preserve, collect, review, analyze, and export content that's responsive to your organization's internal and external investigations. It also lets legal teams manage the entire legal hold notification workflow to communicate with custodians involved in a case.

eDiscovery (Premium) requires an E5 subscription for your Microsoft 365 or Office 365 organization. For more information about licensing, see [Set up eDiscovery (Premium)](get-started-with-advanced-ediscovery.md#step-1-verify-and-assign-appropriate-licenses).

Here's a quick overview of the built-in workflow in eDiscovery (Premium). For more information, see [Manage the eDiscovery (Premium) workflow](create-and-manage-advanced-ediscoveryv2-case.md#manage-the-workflow).

- [Create a case](create-and-manage-advanced-ediscoveryv2-case.md#create-a-case) to get started.

- [Manage custodians](managing-custodians.md) by adding them to a case and placing a legal hold on content in their mailbox, OneDrive account, and Microsoft Teams they're members of.

- [Manage communications](managing-custodian-communications.md) with custodians by automating the legal hold notification process.

- [Index custodian data](processing-data-for-case.md) and fix indexing errors so you can effectively collect data for your investigations.

- [Collect data](collecting-data-for-ediscovery.md) for a case and add [add it to a review set](collecting-data-for-ediscovery.md#add-search-results-to-a-review-set) for further investigation.

- [View](view-documents-in-review-set.md) documents, [query](review-set-search.md) data, and [tag](tagging-documents.md) items in a review set.

- [Analyze case data](analyzing-data-in-review-set.md) with advanced analytics tools.

- [Export case data](exporting-data-ediscover20.md) for review by outside counsel.

- [Manage long-running jobs](managing-jobs-ediscovery20.md) in eDiscovery (Premium).
