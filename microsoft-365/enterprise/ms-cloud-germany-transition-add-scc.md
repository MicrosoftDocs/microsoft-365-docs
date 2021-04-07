---
title: "Information about eDiscovery experience during the migration from Microsoft Cloud Deutschland"
ms.author: andyber
author: andybergen
manager: laurawi
ms.date: 12/01/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
f1.keywords:
- CSH
ms.custom:
- Ent_TLGs
description: "Summary: eDiscovery migration steps for the migration from Microsoft Cloud Deutschland."
---
# Information about the eDiscovery experience during the migration from Microsoft Cloud Deutschland
The following sections provide additional information about the eDiscovery experience when moving from Microsoft Cloud Germany (Microsoft Cloud Deutschland) to Office 365 services in the new German datacenter region.

## eDiscovery administration until phase 4
Until phase 4, the Security and Compliance Center will be fully available. All content still remains in the Microsoft Cloud Germany and is manageable by the Microsoft Cloud Germany Security and Compliance Center (https://protection.office.de/).

## eDiscovery experience between phase 4 until the the end of phase 9
From the beginning of phase 4 until phase 9 is completed, eDiscovery searches will fail or return 0 results for SharePoint Online, OneDrive for Business, and Exchange Online locations that have been migrated.

> [!NOTE]
> During migration, customers can continue to create cases, holds, searches, and exports in the [Security & Compliance Center](https://docs.microsoft.com/microsoft-365/compliance/manage-legal-investigations), including [Content Search](https://docs.microsoft.com/microsoft-365/compliance/search-for-content). However, searches against SharePoint Online, OneDrive for Business, and Exchange Online locations that have been migrated will either return 0 results or produce an error.

In the event that a search returns zero results or an error during migration, please take the following action for SharePoint Online: 
- Download sites directly from the SharePoint Online or OneDrive for Business site by following the instructions in [Download files and folders from OneDrive or SharePoint](https://support.office.com/article/download-files-and-folders-from-onedrive-or-sharepoint-5c7397b7-19c7-4893-84fe-d02e8fa5df05). This method will require SharePoint Online administrator permissions or read-only permissions on the site.
- If limits are exceeded, as explained in [Download files and folders from OneDrive or SharePoint](https://support.office.com/article/download-files-and-folders-from-onedrive-or-sharepoint-5c7397b7-19c7-4893-84fe-d02e8fa5df05), customers can use the OneDrive for Business sync client by following the guidance in [Sync SharePoint and Teams files with your computer](https://support.office.com/article/sync-sharepoint-files-with-the-new-onedrive-sync-app-6de9ede8-5b6e-4503-80b2-6190f3354a88).

- For more information, see  [In-Place eDiscovery in Exchange Server](https://docs.microsoft.com/Exchange/policy-and-compliance/ediscovery/ediscovery).


## eDiscovery administration after phase 9

**Applies to:** All customers using eDiscovery

In phase 9, the final steps for moving to the new German datacenter region will be completed. In this phase, all remaining service components will be migrated. 
After phase 9, using the Security and Compliance Center in Microsoft Cloud Germany (protection.office.de) is no longer supported. Please use the new [Security Center](https://security.microsoft.com/) or [Compliance Center](https://compliance.microsoft.com/) instead. All data have been migrated to the new admin portals. 

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
|  All SharePoint Online, OneDrive for Business, and Exchange Online locations have been migrated along with the Security and Compliance Center (SCC). | All eDiscovery activity should be run from the worldwide tenant. Searches will now be 100% successful. Any failures or errors should follow normal support channels. | None |
||||

### eDiscovery Retention Policy
**Applies to:**  All customers who applied a retention policy as part of the pre-migration steps

| Step(s) | Description | Impact |
|:-------|:-------|:-------|
| Remove organization-wide retention policies that were created during pre-migration steps | Customers can remove the organization-wide retention policies that were created during the customers' pre-migration work. | None |
||||
