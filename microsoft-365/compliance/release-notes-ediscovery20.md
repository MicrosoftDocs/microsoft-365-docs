---
title: "Release notes for Advanced eDiscovery"
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
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: "This article contains the release notes for Advanced eDiscovery."
---

# Release notes for Advanced eDiscovery

The Public Preview program for Advanced eDiscovery is the way to get early access to the upcoming functionality and updates. To get early access to the newest features, just create and use an Advanced eDiscovery case in the Security & Compliance Center. See [Create a new case](create-new-ediscovery-case.md).

## Known issues

**Microsoft Forms**

- The data corresponding to a form created before January 31, 2019 will not be searchable when using the Search tool in Advanced eDiscovery to search custodian mailboxes. Forms created after this date will be available to search.

- A form created by a user can still receive responses even after the user who created the Form is deleted. However, the corresponding data for those responses (that occurred after the custodian mailbox was deleted) will not be searchable when using the Search tool in Advanced eDiscovery to search custodian mailboxes.
 
**Microsoft Sway**

- If a user edits a sway just prior to the deletion of the user account for the owner of that sway, then those changes may not be be searchable when using the Search tool in Advanced eDiscovery to search custodian mailboxes. Sway blocks changes to to a sway as soon as it receives a signal that the account was deleted. However, there's a small chance that a sway can be edited before this signal is received.

## Issues fixed in this release

- DCR: Exception handling for unindexed items and orphaned items
- DCR: Hold notifications
- DCR: Custodians in eDiscovery

## What’s new

- **Redesigned navigation in the Security & Compliance Center** – Advanced eDiscovery has a new look and feel. Use Advanced eDiscovery to manage more of your case workflow.

- **Case management** – There’s additional support for new case types. You can also select and save your recent and favorite cases. Track and monitor activity within and across cases using new dashboards.

- **Custodian management** – Add and remove users as data custodians within a case.

- **Exchange, OneDrive, and Teams Integration** – Automatically add a user’s current mailbox, OneDrive for Business account, and Microsoft Teams sites to a case. 

- **Custodian communications** – Send and manage legal hold notifications on behalf of your organization.

- **Custodian portal** – New portal for custodians to access their active hold notices.

- **Deep indexing** – Re-crawl partially indexed items on demand.

- **Error remediation** – Remediate or download processing errors; this include remediation support for large file types, password protected files, and more. 

- **Improvements to search** – Create a search by identifying custodians and/or locations.

- **Review sets** – Manage, track, and audit static sets of documents.

- **Review** – Use a native, text, and near-native view to review documents added to your review set.

- **Redact, tag, and annotate** – Redact text, apply tags, and make annotations as you review documents.
  
- **Analytics-powered review**– Leverage Advanced eDiscovery analytics to find, search, and cull results within a review set.

- **Jobs** – Track status of long-running processes.

- **New audit activities** – Track and view new audit activity for Advanced eDiscovery.
