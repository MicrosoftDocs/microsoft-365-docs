---
title: "Advanced data residency in Microsoft 365"
ms.author: v-fahasen
author: fhasen-msft
manager: v-nihmi
ms.reviewer: deanw
ms.date: 02/24/2025
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

The Microsoft 365 Advanced Data Residency add-on (ADR) provides eligible customers with expanded coverage of Microsoft 365 services and Customer Data, committed data residency for local country/region datacenter regions, and prioritized _Tenant_ migration services. With Advanced Data Residency, enterprise customers can best address their data residency compliance and _Tenant_ location requirements.

The following services are included in ADR. For more information, see:

- [Exchange Online](m365-dr-workload-exo.md)
- [SharePoint and OneDrive](m365-dr-workload-spo.md)
- [Microsoft Teams](m365-dr-workload-teams.md)
- [Microsoft 365 Copilot](m365-dr-workload-copilot.md)
- [Microsoft Defender for Office P1 and Exchange Online Protection](m365-dr-workload-mdo-p1.md)
- [Microsoft 365 web apps (formerly "Office for the Web")](m365-dr-workload-office-for-web.md)
- [Viva Connections](m365-dr-workload-viva-connections.md)
- [Microsoft Purview](m365-dr-workload-purview.md)*
  - [Data Loss Prevention](m365-dr-workload-purview.md#data-security---data-loss-prevention-dlp)
  - [Information Barriers](m365-dr-workload-purview.md#data-security---information-barriers)
  - [Information Protection (MIP)](m365-dr-workload-purview.md#data-security---information-protection-mip)
  - [Audit (Standard)](m365-dr-workload-purview.md#risk--compliance---audit-standard)
  - [Audit (Premium)](m365-dr-workload-purview.md#risk--compliance---audit-premium)
  - [Data Lifecycle Management (DLM)](m365-dr-workload-purview.md#risk--compliance---data-lifecycle-management-dlm)

> [!NOTE]
> *The Microsoft Purview services list includes all services covered as part of the Advanced Data Residency commitment as of August 2025. Other Microsoft Purview services aren't currently supported.

## Licensing and Purchase

### Eligibility

The Advanced Data Residency ("ADR") add-on is intended for Microsoft 365 enterprise customers who have comprehensive data residency requirements. To be eligible to purchase ADR, customers must meet the following prerequisites:

- The _Tenant Default Geography_ must be one of the countries or regions included in the _Local Region Geography_: Australia, Brazil, Canada, Chile, France, Germany, India, Indonesia, Israel, Italy, Japan, Malaysia, Mexico, New Zealand, Norway, Poland, Qatar, South Africa, South Korea, Spain, Sweden, Switzerland, Taiwan, United Arab Emirates, and United Kingdom.
- Customers must have licenses for one or more of the following products:
  - Microsoft 365 F1, F3, E3, or E5 (including SKUs without Microsoft Teams)
  - Office 365 F3, E1, E3, or E5 (including SKUs without Microsoft Teams)
  - Exchange Online Plan 1 or Plan 2
  - OneDrive Plan 1 or Plan 2
  - SharePoint Plan 1 or Plan 2
  - Microsoft 365 Business Basic, Standard, or Premium (including SKUs without Microsoft Teams)
  - Microsoft Teams Enterprise, EEA, or Essentials

### Licensing Requirements

Customers must cover 100% of paid licenses in the _Tenant_ with ADR add-on licenses for the _Tenant_ to receive data residency for ADR services.

For example:

| ADR-related SKU | Available Licenses | Allocated Licenses | ADR Required Licenses |
| --- | --- | --- | --- |
| Office 365 E3 | 200 | 125 | 200 |
| Microsoft 365 F1 | 1420 | 1100 | 1420 |
| Exchange Online Plan 2 | 25 | 22 | 25 |
| Totals | 1645 | 1247 | 1645 <sup>1</sup> |

<sup>1</sup> If you have 1,645 licenses purchased for ADR, then you have a data residency commitment for your _Local Region Geography_. If you have fewer than 1,645 licenses, then you do NOT have a data residency commitment, and your tenant is subject to being moved out of the _Local Region Geography_.

Customers who purchase Multi-Geo licenses for their tenant don't have to also pay for ADR for the same licenses. You avoid 'double licensing' a single seat for two different data residency programs. For example, if a customer would normally require 15,000 ADR licenses to satisfy the program requirements, but they also have 4,000 Multi-Geo licenses, then they're only required to purchase 11,000 ADR licenses. The two programs combined would cover the normal ADR program requirement of 100% user coverage.

To view/determine the number of assigned ADR licenses for your _Tenant_, you can access the _Data Location Card_ in the Microsoft 365 admin center by navigating to **Admin > Settings > Org settings > Organization profile > Data location**. This page displays the "Required Seat Count," "License Count," and "License Expiration." For more information, see "What does the "Advanced Data Residency (ADR) License Information" display?" below.

> [!NOTE]
> A new _Data Location Card (DLC)_ experience is rolling out now to Microsoft 365 customer _Tenants_. During the phased rollout, _Tenants_ may see a different _Data Location Card_ view within the Microsoft 365 admin center than the latest enhancements displayed below. Tenant Global Admins can [Learn More about the Data Location Card](m365-dr-data-location.md) in anticipation of the rollout in our updated Microsoft Learn documentation.

:::image type="content" alt-text="Screenshot of Data Location Card Advanced Data Residency (ADR) License Information." source="media\data-residency\m365-dlc-adr-license-information-0725.png" lightbox="media\data-residency\m365-dlc-adr-license-information-0725.png":::

> [!NOTE]
> This information may be delayed by 24-48 hours when changes are made to a _Tenant's_ licensing count.

### Tenants with a mix of Commercial and Education subscriptions

When a customer has a mix of commercial and education license types including both Commercial/Public Sector (for example, E3, E5) and Education (for example, A1, A3) licenses in their subscription, the following applies:

- Customers have rights to purchase full ADR add-on for only the paid portion of Microsoft 365 SKUs and aren't obligated to cover free subscription types. However, they must cover the paid education licenses with ADR (Microsoft 365 A3/A5, Office 365 A3/A5 student or faculty).

- ADR for Education products is only available to Volume Licensing / EES (Microsoft Enrollment for Education Solutions) customers; contact your Microsoft account representative for details on how to obtain an ADR Education related SKU.

## Data Migration Management

If any customer _Tenant_ data covered by the Advanced Data Residency feature isn't stored at rest within the customer's eligible _Local Region Geography_, then a data migration is needed to address customer data residency compliance and _Tenant_ location requirements fulfilled by _ADR_.

### Starting Data Migration

To determine if a _Tenant_ needs to perform a data migration, the Tenant Global Admin should visit the "Data location" section in the Microsoft 365 admin center by navigating to  **Admin > Settings > Org settings > Organization profile > Data location**. From here, the Tenant Global Admin can see the current location of the customer's data-at-rest.

After receiving the Advanced Data Residency licenses and applying them to the customer's _Tenant_, the Tenant Global Admin must select the option displayed on the _Data Location Card_ to initiate the data migration process for ADR services that don't currently reside in their _Local Region Geography_.

#### Microsoft 365 Admin Center Data Location

The following screenshot is an example of the Microsoft 365 admin center Data location view that an ADR customer can expect to see before opting for migration to their _Local Region Geography_.

:::image type="content" alt-text="Screenshot of Microsoft 365 Admin Center Data location View." source="media\data-residency\m365-dlc-mac-view-0725.png" lightbox="media\data-residency\m365-dlc-mac-view-0725.png":::

> [!NOTE]
> The data migration process described in the sections below won't initiate until the Tenant Global Admin completes this task.

#### Before Migration Opt-in

Once a Tenant Global Admin chooses the option to initiate migration, they're provided with confirmation of their opt-in date and migration initiation.

:::image type="content" source="media\data-residency\m365-dlc-move-opt-in-0725.png" alt-text="Screenshot of Data Location View Before Migration Opt-in.":::

#### After Migration Opt-in

The "Data location" section in the Microsoft 365 admin center displays the most up-to-date location of each service throughout the data migration process. Tenant Global Admins can also view any Message center notifications related to their migration within the Microsoft 365 admin center by navigating to **Health > Message center**.

:::image type="content" source="media\data-residency\m365-dlc-move-in-progress-cropped-0725.png" alt-text="Screenshot of Data Location View After Migration Opt-in.":::

### Migration Expectations

Microsoft adheres to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for service availability and uses reasonable efforts to complete an Advanced Data Residency add-on customer data migration within 12 months from the time the Tenant Global Admin selects the option to initiate migration. However, large, complex customers, and situations outside of Microsoft's control, may require more time for migration to complete.

Data moves are a back-end service operation with minimal impact to a customer's operations. For information related to specific services, Tenant Global Admins can refer to the "Migration" sections in the following Service Data Residency Capabilities pages: [Exchange Online](m365-dr-workload-exo.md#migration), [SharePoint and OneDrive](m365-dr-workload-spo.md#migration-with-advanced-data-residency), [Microsoft Teams](m365-dr-workload-teams.md#migration), [Microsoft 365 Copilot](m365-dr-workload-copilot.md#migration-and-user-experience), [Microsoft Defender for Office P1](m365-dr-workload-mdo-p1.md#migration), [Microsoft 365 web apps (formerly known as "Office for the Web"](m365-dr-workload-office-for-web.md#migration), [Viva Connections](m365-dr-workload-viva-connections.md#migration), [Microsoft Purview](m365-dr-workload-purview.md#migration), and [Other Services](m365-dr-workload-other.md).

### During and After your Migration

No action is needed from the customer while Microsoft moves each _ADR_ service and associated customer _Tenant_ data to the customer's eligible _Local Region Geography_.

Tenant Global Admins can visit _Message center_ or access the "Data location" section within the Microsoft 365 admin center throughout the migration process to review any migration notices and see when each service completes migration. From the Microsoft 365 admin center, Tenant Global Admins can access the Message center by navigating to **Health > Message center** and the "Data location" section by navigating to **Admin > Settings > Org settings > Organization profile > Data location**.

The following screenshots are examples of the Microsoft 365 admin center "Data location" view that an _ADR_ customer can expect to see during and after their migration.

#### During Migration

:::image type="content" source="media\data-residency\m365-dlc-move-in-progress-0725.png" alt-text="Screenshot of Data Location View Migration in Progress.":::

#### After Migration

:::image type="content" source="media\data-residency\m365-dlc-move-complete-0725.png" alt-text="Screenshot of Data Location View Migration Completed.":::

### Effect on End Users and Services

Data moves are a back-end service operation with minimal, if any, effect on end users. Microsoft adheres to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for service availability and notifies customers of any service maintenance done via Message center in the Microsoft 365 admin center.

### Features Affected

Given the complex nature of services included in an E3 or E5 license, the migration of customer data from one data center to another could cause minor disruption or temporary unavailability of certain services. For more information, Tenant Global Admins can refer to the "Migration" section of each service page within [Service Data Residency Capabilities](m365-dr-workload-exo.md).

### Status Notification

Microsoft doesn't provide a granular status to indicate progress toward migration completion for individual customer scenarios.

Tenant Global Admins can stay informed of migration updates through Message center notifications and by reviewing the "Data location" section within the Microsoft 365 admin center to see when a service completes migration to their _Local Region Geography_. From the Microsoft 365 admin center, Tenant Global Admins can access the Message center by navigating to **Health > Message center** and the "Data location" section by navigating to **Admin > Settings > Org settings > Organization profile > Data location**.

For more information on Migration and Data Location, Tenant Global Admins can refer to the following pages:

- [Overview and Definitions - Microsoft 365 Enterprise](m365-dr-overview.md#migrationsmoves)

- [Where your Microsoft 365 customer data is stored - Microsoft 365 Enterprise](o365-data-locations.md)

- [Learn More about the Data Location Card - Microsoft 365 Enterprise](m365-dr-data-location.md)

### What does the "Advanced Data Residency (ADR) License Information" display?

The _Data Location Card_ has been updated for _Tenants_ who have purchased licenses for _Advanced Data Residency (ADR)_. _Tenants_ who have active or recently active _ADR_ subscriptions will now see a new field called "Advanced Data Residency (ADR) License Information." This section will display three fields related to a _Tenant’s_ licensing:

1. **Required Seat Count**: This field displays the number of Microsoft 365 seats that require _ADR_ coverage.

1. **License Count**: This field displays the number of active _ADR/ADR-E_ licenses assigned to the _Tenant_.

1. **License Expiration**: This field displays the expiration date of the _ADR_ license assigned to the _Tenant_.

### What happens if a _Tenant_ has insufficient seat coverage for ADR?

The _Data Location Card_ will now display warnings and notifications related to Seat Coverage.

In the event that a _Tenant_ falls below the number of licenses required for ADR coverage, a notification message is displayed with the text, "The Advanced Data Residency (ADR) license may not have sufficient seat coverage. Without full seat coverage, the tenant's data may be relocated outside the local region. Please consult with your Microsoft representatives to understand the requirements regarding sufficient seat coverage. Please procure additional ADR licenses promptly to ensure continued data residency within the Local Regional Geography." A link to _Marketplace_ will also be provided to assist with procurement of _ADR_ licenses.

:::image type="content" source="media\data-residency\m365-dlc-adr-insufficient-seat-coverage-cropped-0725.png" alt-text="Screenshot of Data Location View Insufficient ADR Seat Coverage.":::

If this warning message appears on a _Tenant’s Data Location Card_, Tenant Global Admins should reach out to their Microsoft Representatives to understand if their current agreements are properly reflected and what steps, if any, are required to bring the _Tenant_ back into compliance.

In the event of a substantial discrepancy between the "Required Seat Count" and "License Count" the _Data Location Card_ will update the _Committed Geography_ location to display the most current and accurate commitments in place (if any) after _ADR_ has been removed. At this point, data may be relocated subject to the constraints displayed in the updated _Committed Geography_.

### ADR License Warnings and Notifications Related to License Expiry

The new _Data Location Card_ is designed to help Tenant Global Admins track when _ADR_ licenses are nearing expiry, and will display the following warnings and alerts in relation to license expiry:

**90 days before License Expiration**: A warning statement will appear on the _DLC_ indicating that "The Advanced Data Residency (ADR) licenses are about to expire. Please renew the licenses to maintain ADR coverage and ensure the data remains protected within your Local Regional Geography." A link to _Marketplace_ will also be provided to assist with procurement of _ADR_ licenses.

:::image type="content" source="media\data-residency\m365-dlc-adr-licenses-expiring-cropped-0725.png" alt-text="Screenshot of Data Location View ADR Licenses Expiring.":::

**On License Expiration**: Starting on the day a _Tenant’s_ licenses expired, the _DLC_ will display a message indicating "The Advanced Data Residency (ADR) license has expired. Without a valid ADR license, the tenant’s data may be relocated outside the local region. Please renew promptly to ensure continued data residency within the Local Regional Geography." A link to _Marketplace_ will also be provided to assist with procurement of _ADR_ licenses.

:::image type="content" source="media\data-residency\m365-dlc-adr-licenses-expired-cropped-0725.png" alt-text="Screenshot of Data Location View ADR Licenses Expired.":::

It's important to note that while a _Tenant’s ADR_ licenses have expired, Microsoft will provide a grace period to allow the customer to renew their licenses. During this grace period, the _Tenant’s Data Location Card_ won't display any changes to the _Tenant’s Committed Geography_ and the _Tenant’s_ data won't be relocated.

**After Grace Period**: After the grace period provided, Microsoft will remove the _Durable Commitment on Data Location_ provided by _ADR_, and the _Committed Geography_ location in the _DLC_ will update to display the most current and accurate commitments in place (if any) after _ADR_ has been removed. At this point, data may be relocated, without notification or warning, subject to the constraints displayed in the updated _Committed Geography_.
