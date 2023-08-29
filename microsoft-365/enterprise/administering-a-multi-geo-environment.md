---
title: "Service Behavior in a Multi-Geo Enabled Environment"
ms.reviewer: adwood
ms.date: 08/10/2020
ms.author: mikeplum
author: MikePlumleyMSFT
manager: pamgreen
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
f1.keywords:
- NOCSH
ms.custom: 
- seo-marvel-apr2020
- admindeeplinkSPO
ms.collection: 
- Strat_SP_gtc
- SPO_Content
ms.localizationpriority: medium
description: Admins can learn about how to administer SharePoint and OneDrive services in a multi-geo environment.
---

# Service behavior a Multi-Geo enabled environment

Here's a look at how Microsoft 365 services work in a Multi-Geo environment.

## Administrator experience

The SharePoint admin center has a [**Geo locations** tab](https://go.microsoft.com/fwlink/?linkid=2185076) in the left navigation that features a geo locations map where you can view and manage your geo locations. Use this page to add or delete geo locations for your _Tenant_.

## Audit log search

A unified [Audit log](https://support.office.com/article/0d4d0f35-390b-4518-800e-0c7ec95e946c) for all your _Satellite Geography_ locations is available from the Microsoft 365 audit log search page. You can see all the audit log entries from across geo locations, for example, NAM & EUR users' activities will show up in one org view and then you can apply existing filters to see specific user's activities.

## BCS, Secure Store, Apps

BCS, Secure Store, and Apps all have separate instances in each satellite location, therefore the SharePoint Online administrator should manage and configure these services separately from each satellite location.

## Compliance admin center

There's one central Microsoft Purview compliance portal for a Multi-Geo _Tenant_: [Microsoft Purview admin center](https://compliance.microsoft.com/).

## eDiscovery

By default, an eDiscovery Manager or Administrator of a Multi-Geo _Tenant_ will be able to conduct eDiscovery only in the _Primary Provisioned Geography_ of that _Tenant_. The Office 365 global administrator must assign eDiscovery Manager permissions to allow others to perform eDiscovery and assign a "Region" parameter in their applicable Compliance Security Filter to specify the region for conducting eDiscovery as satellite location, otherwise no eDiscovery will be carried out for the satellite location. To configure the Compliance Security Filter for a Region, see [Configure Office 365 Multi-Geo eDiscovery](multi-geo-ediscovery-configuration.md).

## Exchange Online mailboxes

Users' Exchange Online mailboxes are moved automatically if their PDL is changed. When a new mailbox is created, it's provisioned to the user's PDL or to the central location if no value has been set for the user's PDL.

## Information Protection (IP) Data Loss Prevention (DLP) policy

You can set your IP DLP policies for OneDrive for Business, SharePoint Online, and Exchange Online in the Security and Compliance center, scoping policies as needed to the whole _Tenant_ or to applicable users. For example: If you wish to select a policy for a user in a satellite location, select to apply the policy to a specific OneDrive for Business and enter the user's OneDrive for Business URL. See [Overview of data loss prevention policies](https://support.office.com/article/1966b2a7-d1e2-4d92-ab61-42efbb137f5e) for general guidance in creating DLP policies.

The DLP policies are automatically synchronized based on their applicability to each geo location.

Implementing Information Protection and Microsoft Purview Data Loss Prevention policies to all users in a geo location isn't an option available in the UI, instead you must select the applicable accounts for the policy or apply the policy globally to all accounts.

## Microsoft Power Apps

Power Apps created for the satellite location will use the end point located in the central location for the _Tenant_. Microsoft Power Apps isn't a Multi-Geo service. 

## Microsoft Power Automate

Flows created for the satellite location will use the end point located in the default geo location for the _Tenant_.  Microsoft Power Automate isn't a Multi-Geo service. 

## SharePoint Online storage quota

By default, all geo locations of a multi-geo environment share the available _Tenant_ storage quota.  You can also manage the storage quota by allocating a specific quota for a particular geo location. For more information, see [SharePoint storage quotas in multi-geo environments](sharepoint-multi-geo-storage-quota.md).

## Sharing

Administrators can set and manage sharing policies for each of their locations. The OneDrive for Business and SharePoint Online sites in each geo location will honor only the corresponding geo-specific sharing settings. (For example, you can allow [external sharing](https://support.office.com/article/C8A462EB-0723-4B0B-8D0A-70FEAFE4BE85) for your central location, but not for your satellite location or vice versa.) Note that the sharing settings don't allow configuring sharing limitations between geo locations.

## Microsoft Stream

Videos uploaded to Microsoft Stream in a 1:1 chat are stored in the OneDrive for Business of the person uploading. Meeting recordings are stored in the OneDrive for Business of each attendee who records the meeting.

## Taxonomy

We support a unified [taxonomy](/sharepoint/managed-metadata) for enterprise-managed metadata across geo locations, with the master being hosted in the central location for your company. We recommend that you manage your global taxonomy from the central location and only add location-specific terms to the satellite location's Taxonomy. Global taxonomy terms will synchronize to the satellite locations.

See [Manage metadata in a Multi-Geo tenant](/sharepoint/dev/solution-guidance/multigeo-managedmetadata) for more details and for developer guidance.

## User Profile Application

There's a [user profile application](/sharepoint/manage-user-profiles) in each geo location. Each user's profile information is hosted in their geo location and available to the administrator for that geo location.

If you have custom profile properties, then we recommend that you use the same profile schema across geographies and populate your custom profile properties either in all geo locations or where needed. For guidance regarding how to populate user profile data programmatically, please refer to the [Bulk User Profile Update API](/sharepoint/dev/solution-guidance/bulk-user-profile-update-api-for-sharepoint-online).

See [Work with user profiles in a Multi-Geo tenant](/sharepoint/dev/solution-guidance/multigeo-userprofileexperience) for additional details and for developer guidance.

## Viva Engage

Viva Engage is not a Multi-Geo workload. Viva Engage threads stored in Viva Engage will be placed in the _Tenant's_ central location. Viva Engage is rolling out a file storage change which will store Viva Engage files within SharePoint. Viva Engage files stored in SharePoint will be placed the SharePoint site associated with the Viva Engage group. SharePoint group sites are based on PDL logic as outlined in [SharePoint Sites and Groups](multi-geo-capabilities-in-onedrive-and-sharepoint-online-in-microsoft-365.md#sharepoint-sites-and-groups).
