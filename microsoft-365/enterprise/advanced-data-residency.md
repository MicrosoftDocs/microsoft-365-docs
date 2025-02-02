---
title: "Advanced data residency in Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.reviewer: deanw
ms.date: 09/05/2024
audience: ITPro
ms.topic: overview
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
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

The Microsoft 365 Advanced Data Residency add-on (ADR) provides eligible customers with expanded coverage of Microsoft 365 workloads and Customer Data, committed data residency for local country/region datacenter regions, and prioritized tenant migration services. With Advanced Data Residency, enterprise customers can best address their data residency compliance and tenant location requirements.

The following workloads are included in ADR. For more information, see:

- [Exchange Online](m365-dr-workload-exo.md)
- [SharePoint and OneDrive](m365-dr-workload-spo.md)
- [Microsoft Teams](m365-dr-workload-teams.md)
- [Microsoft 365 Copilot](m365-dr-workload-copilot.md)
- [Microsoft Defender for Office P1 and Exchange Online Protection](m365-dr-workload-mdo-p1.md)
- [Office for the Web](m365-dr-workload-office-for-web.md)
- [Viva Connections](m365-dr-workload-viva-connections.md)
- [Viva Topics](m365-dr-workload-viva-topics.md)*
- [Microsoft Purview](m365-dr-workload-purview.md)**
  - [Data Loss Prevention](m365-dr-workload-purview.md#data-security---data-loss-prevention-dlp)
  - [Information Barriers](m365-dr-workload-purview.md#data-security---information-barriers)
  - [Information Protection (MIP)](m365-dr-workload-purview.md#data-security---information-protection-mip)
  - [Audit (Standard)](m365-dr-workload-purview.md#risk--compliance---audit-standard)
  - [Audit (Premium)](m365-dr-workload-purview.md#risk--compliance---audit-premium)
  - [Data Lifecycle Management (DLM)](m365-dr-workload-purview.md#risk--compliance---data-lifecycle-management-dlm)

> [!NOTE]
> *Viva Topics will be retired on February 22, 2025. Therefore, as of October 31, 2024, Viva Topics will no longer be a supported workload in ADR. Starting with the upcoming local region launches in Taiwan and New Zealand, Viva Topics customer data will not be migrated to new local regions, nor will new customers have Viva Topics stored in existing local regions. For more details, please visit [aka.ms/TopicsFebSupport](https://aka.ms/TopicsFebSupport).
> [!NOTE]
> **The Microsoft Purview services list mentioned above includes all services covered as part of the Advanced Data Residency commitment as of November 2024. Additional Microsoft Purview services are not currently supported.

## Licensing and Purchase

### Eligibility

The Advanced Data Residency ("ADR") add-on is intended for Microsoft 365 enterprise customers who have comprehensive data residency requirements. To be eligible to purchase ADR, customers must meet the following prerequisites:

- The _Tenant_ _Default Geography_ must be one of the countries or regions included in the _Local Region Geography_: Australia, Brazil, Canada, France, Germany, India, Israel, Italy, Japan, Mexico, New Zealand, Norway, Poland, Qatar, South Africa, South Korea, Spain, Sweden, Switzerland, Taiwan, United Arab Emirates, and United Kingdom.
- Customers must have licenses for one or more of the following products:
  - Microsoft 365 F1, F3, E3, or E5 (including SKUs without Microsoft Teams)
  - Office 365 F3, E1, E3, or E5 (including SKUs without Microsoft Teams)
  - Exchange Online Plan 1 or Plan 2
  - OneDrive Plan 1 or Plan 2
  - SharePoint Plan 1 or Plan 2
  - Microsoft 365 Business Basic, Standard or Premium (including SKUs without Microsoft Teams)
  - Microsoft Teams Enterprise, EEA, or Essentials

Geographic availability is updated as available.

Customers must cover 100% of paid licenses in the tenant with ADR add-on license for tenant to receive data residency for ADR workloads. See the table for an example.

| ADR-related SKU | Available Licenses | Allocated Licenses | ADR Required Licenses |
| --- | --- | --- | --- |
| Office 365 E3 | 200 | 125 | 200 |
| Microsoft 365 F1 | 1420 | 1100 | 1420 |
| Exchange Online Plan 2 | 25 | 22 | 25 |
| Totals | 1645 | 1247 | 1645 <sup>1</sup> |

If you have 1,645 licenses purchased for ADR, then you have a data residency commitment for your _Local Region Geography_. If you have fewer than 1,645 licenses, then you do NOT have a data residency commitment, and your tenant is subject to being moved out of the _Local Region Geography_.

Customers who purchase Multi-Geo licenses for their tenant don't have to also pay for ADR for the same licenses. You avoid 'double licensing' a single seat for two different data residency programs. For example, if a customer would normally require 15,000 ADR licenses to satisfy the program requirements, but they also have 4,000 Multi-Geo licenses, then they're only required to purchase 11,000 ADR licenses. The two programs combined would cover the normal ADR program requirement of 100% user coverage.

To find out how many ADR licenses, you need go to the Microsoft 365 admin center under **Billing > Your Products** within your tenant and add up the total Purchased Quantity for all ADR-eligible SKUs to get the proper total of ADR licenses required.

### Tenants with a mix of Commercial and Education subscriptions

When a customer has a mix of commercial and education license types including both Commercial/Public Sector (for example, E3, E5) and Education (for example, A1, A3, etc.) licenses in their subscription, the following applies:

- Customers have rights to purchase full ADR add-on for only the paid portion of Microsoft 365 SKUs and aren't obligated to cover free subscription types. However, they must cover the paid education licenses with ADR (Microsoft 365 A3/A5, Office 365 A3/A5 student or faculty).

- ADR for Education products is only available to Volume Licensing / EES (Microsoft Enrollment for Education Solutions) customers; contact your Microsoft account representative for details on how to obtain an ADR Education related SKU.

## Data Migration Management

If any customer tenant data covered by the Advanced Data Residency feature is not stored at rest within the customer's eligible _Local Region Geography_, then a data migration is needed to address customer data residency compliance and tenant location requirements fulfilled by ADR.

### Starting Data Migration

After receiving the Advanced Data Residency licenses and applying them to the customer's tenant, the customer administrator must select the option to initiate the data migration process for ADR workloads that do not currently reside in their _Local Region Geography_. To initiate data migration for a tenant, the customer administrator should visit the "Data location" section in the Microsoft 365 admin center by navigating to **Settings > Org settings > Organization profile > Data location**. From here, the customer administrator can see the current location of the customer's data-at-rest and what _Local Region Geography_ their customer data currently resides in or is eligible to be migrated to upon selection.

#### Microsoft 365 Admin Center Data Location

:::image type="content" alt-text="Screenshot of Microsoft 365 Admin Center Data location View." source="media\data-residency\1-adr-microsoft-365-data-location-card_0624.png" lightbox="media\data-residency\1-adr-microsoft-365-data-location-card_0624.png":::

> [!NOTE]
> The data migration process described in the sections below will not initiate until the customer administrator completes this task.

The following screenshot is an example of the Microsoft 365 admin center Data location view that an ADR customer can expect to see before opting for migration to their _Local Region Geography_.

#### Before Migration Opt-in

:::image type="content" source="media\data-residency\2-adr-microsoft-365-data-location-card-before-move_0624.png" alt-text="Screenshot of Data Location View Before Migration.":::

Once a customer administrator chooses the option to initiate migration, they are provided with confirmation of their opt-in date and migration initiation as shown in the screenshot below.

#### After Migration Opt-in

:::image type="content" source="media\data-residency\3-adr-microsoft-365-data-location-card-move-initiated_0624.png" alt-text="Screenshot of Data Location View Migration Requested.":::

The "Data location" section in the Microsoft 365 admin center (referenced in the screenshots above) displays the most up-to-date location of each workload throughout the data migration process. Customer administrators can also view any Message center notifications related to their migration within the Microsoft 365 admin center by navigating to **Health > Message center**.

### Migration Expectations

Microsoft adheres to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for service availability and uses reasonable efforts to complete an Advanced Data Residency add-on customer data migration within 12 months from the time the customer administrator selects the option to initiate migration. However, large, complex customers, and situations outside of Microsoft's control, may require more time for migration to complete.

Data moves are a back-end service operation with minimal impact to a customer's operations. For information related to specific workloads, customer administrators can refer to the “Migration” sections in the following Workload Data Residency Capabilities pages: [Exchange Online](m365-dr-workload-exo.md#migration), [SharePoint and OneDrive](m365-dr-workload-spo.md#migration-with-advanced-data-residency), [Microsoft Teams](m365-dr-workload-teams.md#migration), [Microsoft 365 Copilot](m365-dr-workload-copilot.md#migration-and-user-experience), [Microsoft Defender for Office P1](m365-dr-workload-mdo-p1.md#migration), [Office for the Web](m365-dr-workload-office-for-web.md#migration), [Viva Connections](m365-dr-workload-viva-connections.md#migration), [Viva Topics](m365-dr-workload-viva-topics.md#migration), [Microsoft Purview](m365-dr-workload-purview.md#migration), and [Other Services](m365-dr-workload-other.md).

### During and After your Migration

No action is needed from the customer while Microsoft moves each ADR workload and associated customer tenant data to the customer's eligible _Local Region Geography_.

Customer administrators can visit the Message center or “Data location” section within the Microsoft 365 admin center throughout the migration process to review any migration notices and see when each workload service completes migration. From the Microsoft 365 admin center, customer administrators can access the Message center by navigating to **Health > Message center** and the "Data location" section by navigating to **Settings > Org settings > Organization profile > Data location**.

The following screenshots are examples of the Microsoft 365 admin center Data location view that an ADR customer can expect to see during and after their migration.

#### During Migration

:::image type="content" source="media\data-residency\4-adr-microsoft-365-data-location-card-move-in-progress_0624.png" alt-text="Screenshot of Data Location View Migration in Progress.":::

#### After Migration

:::image type="content" source="media\data-residency\5-adr-microsoft-365-data-location-card-move-completed_0624.png" alt-text="Screenshot of Data Location View Migration Completed.":::

### Effect on End Users and Workloads

Data moves are a back-end service operation with minimal, if any, effect on end users. Microsoft adheres to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for service availability and notifies customers of any service maintenance done via Message center in the Microsoft 365 admin center.

### Features Affected

Given the complex nature of services included in an E3 or E5 license, the migration of customer data from one data center to another could cause minor disruption or temporary unavailability of certain services. For more information, customer administrators can refer to the "Migration" section of each workload page within [Workload Data Residency Capabilities](m365-dr-workload-exo.md).

### Status Notification

Microsoft does not provide a granular status to indicate progress toward migration completion for individual customer scenarios.

Customer administrators can stay informed of migration updates through Message center notifications and by reviewing the “Data location” section within the Microsoft 365 admin center to see when a workload completes migration to their _Local Region Geography_. From the Microsoft 365 admin center, customer administrators can access the Message center by navigating to **Health > Message center** and the "Data location" section by navigating to **Settings > Org settings > Organization profile > Data location**.

For more information on Migration, customer administrators can refer to the following pages:

[Overview and Definitions - Microsoft 365 Enterprise](m365-dr-overview.md#migrationsmoves)

[Where your Microsoft 365 customer data is stored - Microsoft 365 Enterprise](o365-data-locations.md)

## Related articles

[Legacy Move Program](m365-dr-legacy-move-program.md)

[New datacenter geos for Microsoft Dynamics CRM Online](/power-platform/admin/new-datacenter-regions?branch=main)

[Azure services by region](https://azure.microsoft.com/regions/)

[Teams experience in a Microsoft 365 Multi-Geo-enabled tenancy](/microsoftteams/teams-experience-o365odb-spo-multi-geo?branch=main)
