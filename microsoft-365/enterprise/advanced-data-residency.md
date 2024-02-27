---
title: "Advanced data residency in Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.reviewer: deanw
ms.date: 12/18/2023
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.collection:
- must-keep
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn about advanced data residency options in Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Advanced Data Residency in Microsoft 365

## Overview of Advanced Data Residency

The Microsoft 365 Advanced Data Residency add-on ("ADR") provides eligible customers with expanded coverage of Microsoft 365 workloads and Customer Data, committed data residency for local country/region datacenter regions, and prioritized tenant migration services.  With Advanced Data Residency, enterprise customers can best address their data residency compliance and tenant location requirements.

The following workloads are included in ADR. For more information, see:

- [Exchange Online](m365-dr-workload-exo.md)
- [SharePoint Online and OneDrive for Business](m365-dr-workload-spo.md)
- [Microsoft Teams](m365-dr-workload-teams.md)
- [Microsoft Defender for Office P1 and Exchange Online Protection](m365-dr-workload-mdo-p1.md)
- [Office for the Web](m365-dr-workload-office-for-web.md)
- [Viva Connections](m365-dr-workload-viva-connections.md)
- [Viva Topics](m365-dr-workload-viva-topics.md)
- [Microsoft Purview](m365-dr-workload-purview.md)
  - [Audit (Standard)](m365-dr-workload-purview.md#purview-audit-standard)
  - [Audit (Premium)](m365-dr-workload-purview.md#purview-audit-premium)
  - [Data Retention](m365-dr-workload-purview.md#data-lifecycle-management---data-retention)
  - [Microsoft Purview Records Management](m365-dr-workload-purview.md#data-lifecycle-management---records-management)
  - [Sensitivity Labels](m365-dr-workload-purview.md#information-protection---sensitivity-labels)
  - [Data Loss Prevention](m365-dr-workload-purview.md#information-protection---data-loss-prevention-dlp)
  - [Office Message Encryption](m365-dr-workload-purview.md#information-protection---office-message-encryption)
  - [Information Barriers](m365-dr-workload-purview.md#risk-and-compliance---information-barriers)

## Licensing and Purchase

### Eligibility

The Advanced Data Residency ("ADR") add-on is intended for Microsoft 365 enterprise customers who have comprehensive data residency requirements.  To be eligible to purchase ADR, customers must meet the following prerequisites:

- The _Tenant_ _Default Geography_ must be one of the countries or regions included in the _Local Region Geography_: Australia, Brazil, Canada, France, Germany, India, Israel, Italy, Japan, Poland, Qatar, South Korea, Norway, South Africa, Sweden, Switzerland, United Arab Emirates, and United Kingdom.
- Customers must have licenses one or more of the following products:
  - Microsoft 365 F1, F3, E3, or E5
  - Office 365 F3, E1, E3, or E5
  - Exchange Online Plan 1 or Plan 2
  - OneDrive for Business Plan 1 or Plan 2
  - SharePoint Online Plan 1 or Plan 2
  - Microsoft 365 Business Basic, Standard or Premium

Geographic availability is updated as available.

Customers must cover 100% of paid seats in the tenant with ADR add-on license for tenant to receive data residency for ADR workloads.  See the table for an example.

| ADR-related SKU | Available Seats | Allocated Seats | ADR Required Seats | 
| --- | --- | --- | --- |
| Office 365 E3 | 200 | 125 | 200 |
| Microsoft 365 F1 | 1420 | 1100 | 1420 |
| Exchange Online Plan 2 | 25 | 22 | 25 |
| Totals | 1645 | 1247 | 1645 <sup>1</sup> |

If you have 1645 seats purchased for ADR, then you have a data residency commitment for your _Local Region Geography_.  If you have less than 1645 seats, then you do NOT have a data residency commitment, and your tenant is subject to being moved out of the _Local Region Geography_.

Customers who purchase Multi-Geo seats for their tenant don't have to also pay for ADR for the same seats. You avoid “double licensing” a single seat for two different data residency programs. For example, if a customer would normally require 15,000 ADR seats to satisfy the program requirements, but they also have 4,000 Multi-Geo seats, then they're only required to purchase 11,000 ADR seats. The two programs combined would cover the normal ADR program requirement of 100% user coverage.

To find out how many ADR seats, you need go to **Tenant Admin Center | Billing | Your Products** within your tenant and add up the total Purchase Quantity for all ADR-eligible SKUs to get the proper total of ADR seats required.

### Tenants with a mix of Commercial and Education subscriptions

When a customer has a mix of commercial and education license types including both Commercial/Public Sector (for example, E3, E5) and Education (for example, A1, A3, etc.) licenses in their subscription, the following applies:

- Customers have rights to purchase full ADR add-on for only the paid portion of Microsoft 365 SKUs and aren't obligated to cover free subscription types. However, they must cover the paid education seats with ADR (Microsoft 365 A3/A5, Office 365 A3/A5 student or faculty).

- ADR for Education products is only available to Volume Licensing / EES (Microsoft Enrollment for Education Solutions) customers; contact your Microsoft account representative for details on how to obtain an ADR Education related SKU.

## Data Migration Management

If all of a customer's tenant data covered by the Advanced Data Residency feature isn't already stored at rest within their eligible _Local Region Geography_, then a data migration to the _Local Region Geography_ is required.  If customer tenant data covered by the Advanced Data Residency feature is already stored at rest within their eligible _Local Region Geography_, then no data migration to the _Local Region Geography_ is required.

### Starting Data Migration

After a customer receives their Advanced Data Residency licenses,  the customer needs to signal that they're ready to schedule data migration, if one is necessary. To signal your tenant is ready for its data migration, the customer administrator visits the Data Location section of the Microsoft 365 Admin Console within the **Settings -> Org Settings -> Organization Profile** area. From here the customer administrator is able to see the current location of their data-at-rest and what _Local Region Geography_ their customer data is migrated to.

> [!NOTE]
> Data migration won't be scheduled until the customer administrator has completed this task. The migration expectation discussed elsewhere in this documentation won't start being tracked until this task has been completed.

Once the customer signal is received, they're provided with their opt-in date and the target date of completion.

In addition to a notification posted to the Message Center, the Data Location section in the Microsoft 365 admin center updates as each workload requiring a data migration is complete.

### Migration Expectations

Microsoft uses reasonable efforts to try to complete an Advanced Data Residency add-on customer migration within 12 months from the time the customer administrator signals they're ready for migration. However, Microsoft might not be able to complete the migration within this timeframe for all customers. For example, larger or more complex customers or situations outside of Microsoft's control might require extra time to complete the migration. Advanced Data Residency add-on customers also receive prioritized migration services for their tenants over the legacy Move Program migration option. These migration expectations also apply to all ADR EDU customers as well. Customers utilizing the legacy Move Program for a data migration who don't have the Advanced Data Residency feature, should follow [Legacy Move Program Migration Expectations](m365-dr-legacy-move-program.md#migration-expectations).

Data moves are a back-end service operation with minimal effect on end users. We adhere to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for availability so there's nothing that customers need to prepare for or to monitor during the move. Notification of any service maintenance is sent if needed.

### During and After your Migration

No action is required while Microsoft moves each service and associated customer data for your tenant to the applicable geography.

Watch the Microsoft 365 Message Center for confirmation when moves for each workload service are complete.

### Affect on End Users and Workloads

As mentioned, data moves are a back-end operation with minimal if any effect on end users. We adhere to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for availability so there's nothing that customers need to prepare for or to monitor during the move. Notification of any service maintenance is done if needed.

### Features Affected

Because of the complex nature of services that are available within the workloads that customers sign up for and use within a typical E3 or E5 license, the migration of customer data from one data center to another could cause minor disruption or temporary unavailability of certain services. For more information, see the migration sections of each workload in the [Workload Data Residency Capabilities section](m365-dr-workload-exo.md).

### Status Notification

Customers requiring a data migration can monitor the Message Center for updates. You can also check the Data Location section in the Microsoft 365 Admin console to see if a workload completes its migration.

Due to the nature of how migrations work, there's no granular status provided to indicate just how close to completion a migration might be.

## Related articles

[Legacy Move Program](m365-dr-legacy-move-program.md)
  
[New datacenter geos for Microsoft Dynamics CRM Online](/power-platform/admin/new-datacenter-regions?branch=main)
  
[Azure services by region](https://azure.microsoft.com/regions/)

[Teams experience in a Microsoft 365 Multi-Geo-enabled tenancy](/microsoftteams/teams-experience-o365odb-spo-multi-geo?branch=main)
