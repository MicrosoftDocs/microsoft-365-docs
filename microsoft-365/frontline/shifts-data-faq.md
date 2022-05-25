---
title: Shifts data FAQ
author: lanachin
ms.author: v-lanachin
ms.reviewer: aaku
manager: samanro
ms.topic: article
audience: admin
ms.service: msteams
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
description: Get answers to frequently asked questions about Shifts data, including where Shifts data is stored, data retention, retrieval, and encryption. 
f1.keywords:
- NOCSH
localization_priority: Normal
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_FLW
  - microsoftcloud-healthcare
appliesto: 
  - Microsoft Teams
ms.custom: seo-marvel-mar2020
---

# Shifts data FAQ

This article covers frequently asked questions about Shifts data, including where Shifts data is stored, data retention, retrieval, and encryption.

## Where is Shifts data stored?

Shifts data is stored in one of three geographies (geos): Asia Pacific (APAC), the European Union (EU), or the United States. Each geo stores data in at least two Azure data center regions for High Availability (HA) and Disaster Recovery (DR). Today, the United States/North America geo uses data centers in North Central and South Central United States. To learn more, see [Where is Microsoft 365 customer data stored](/microsoft-365/enterprise/o365-data-locations).

Currently, Shifts offers data residency in Australia, Canada, France, Japan, and the United Kingdom. We're actively working to expand support to more locations.

## Can I choose where Shifts data is stored?

When you first set up Teams, you choose a country or region, which is set at the subscription level. Shifts honors this selection and uses the locale and region that's set in Teams if we support that region. If we aren't yet in that region, we store data in a nearby region that we support. In the future, we plan to migrate existing data, if stored in a nearby region, to the region that's provisioned in Teams.

## Can I access and export or delete a user's personal data in Shifts?

Shifts is General Data Protection Regulation (GDPR) compliant. A formal request by a person (known as a data subject) to take an action on their personal data is called a Data Subject Request (DSR). You can find and act on personal data in Shifts in response to a DSR.

You can use the Content Search eDiscovery tool in the Microsoft Purview compliance portal to search for and export schedule and time clock data to Excel. For all other Shifts data, you can take screenshots of the data.

To learn more, see [Office 365 Data Subject Requests for the GDPR and CCPA](/microsoft-365/compliance/gdpr-dsr-office365).

## What happens to Shifts data if I turn off Shifts for my organization?

Turning off Shifts in your organization *does not* delete data. If you turn off Shifts, and then later turn on Shifts, your Shifts data will still be available.

If you delete your tenant, all Shifts data is deleted after the retention period ends.

There's no option to delete only Shifts data. If you delete a team in Teams, Shifts schedule data that's associated with that team is deleted after the retention period ends. To learn more, see [Data retention, deletion, and destruction in Microsoft 365](/compliance/assurance/assurance-data-retention-deletion-and-destruction-overview).

## Can I recover a Shifts schedule that was deleted?

You can recover a deleted schedule if the Microsoft 365 group that backs it (or the team in Teams) is restored.

By default, a deleted Microsoft 365 group is retained for 30 days. This 30-day period is called "soft-delete" because you can still restore the group. To learn more, see [Restore a deleted Microsoft 365 group](/microsoft-365/admin/create-groups/restore-deleted-group?tabs=admin-center).

## Can I use custom retention policies for Shifts data?

Currently, Shifts doesn't support custom retention policies.

To learn more about retention policies in Teams, see [Learn about retention for Teams](/microsoft-365/compliance/retention-policies-teams) and [Manage retention policies for Teams](../../retention-policies.md).

## Can I retrieve Shifts data for a user whose license was revoked?

Today, we don't offer the ability to retrieve data for a user whose license was revoked. This capability is something we're working towards.

## What type of encryption does Shifts use for data at rest and in transit?

Shifts data is encrypted at rest by Azure Cosmos DB and Azure Storage. To learn more, see [Azure data encryption at rest](/azure/security/fundamentals/encryption-atrest) and
[Data encryption in Azure Cosmos DB](/azure/cosmos-db/database-encryption-at-rest).

Shifts follows Microsoft 365 guidelines for encryption of data in transit. To learn more, see [Encryption for data-in-transit](/compliance/assurance/assurance-encryption-in-transit).

Shifts encryption of data at rest and in transit are verified yearly by the SOC2 compliance audit.

## Can I access immutable copies of Shifts data?

We don't store immutable copies of Shifts data. For example, a manager can make changes to a schedule, such as add notes, change shift times, assign tasks, and so on.

## Can Shifts data be edited?

There are certain aspects of Shifts that can't be changed and certain aspects that can be changed. For example, shift details such as notes and colors can be edited similar to how they can be changed in the Shifts app. Shift requests can't be edited unless the request is withdrawn.

To see which what fields have been changed, you can search the Microsoft 365 audit log for Shifts events. To learn more about the events that are logged for Shifts activities in the Microsoft 365 audit log, see [Shifts in Teams activities](../../audit-log-events.md#shifts-in-teams-activities).

## My organization uses a workforce management system for scheduling. Can we integrate with and access Shifts data?

Shifts Graph APIs let you integrate Shifts data with external workforce management (WFM) systems. To learn more, see [Shifts Graph APIs](/graph/api/resources/shift).

We also offer managed Shifts connectors and open-source Shifts connectors. With these connectors, you can integrate your WFM system directly with Shifts. To learn more about Shifts connectors and supported WFM systems, see [Shifts connectors](shifts-connectors.md).

## Can Shifts data be deleted permanently after a specified period of time?

Today, we don't delete your Shifts data at all. Using [Shifts Graph APIs](/graph/api/resources/shift), it's possible to [create an app using Power Apps](/powerapps/maker/) to retain data for a specified period of time. However, we don't support this natively.

## Can Shifts data be moved in a tenant-to-tenant migration?

Shifts data can be migrated from one tenant to another tenant upon specific request. Keep in mind that tenant-to-tenant migration isn't supported out-of-the-box but can be raised as a customer request.

## Related articles

- [Shifts for Teams](../shifts-for-teams-landing-page.md)
- [Manage the Shifts app](manage-the-shifts-app-for-your-organization-in-teams.md)
