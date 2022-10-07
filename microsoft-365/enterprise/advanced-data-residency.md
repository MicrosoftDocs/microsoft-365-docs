---
title: "Advanced data residency in Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 10/7/2022
audience: ITPro
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: Learn about advanced data residency options in Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Advanced data residency in Microsoft 365

## Overview of Advanced Data Residency

The Microsoft 365 Advanced Data Residency add-on ("ADR") provides eligible customers with expanded coverage of Microsoft 365 workloads and Customer Data, guaranteed data residency for local country datacenter regions, and prioritized tenant migration services.  With Advanced Data Residency, enterprise customers can best address their data residency compliance and tenant location requirements. 

The workloads and related commitments are detailed in their related pages, which includes:

- Exchange Online (EXO) ***[LINK TO ADR COMMITMENT SECTION OF EXO PAGE]***
- SharePoint Online and OneDrive (ODSP) ***[LINK TO ADR COMMITMENT SECTION OF ODSP PAGE]***
- Microsoft Teams ***[LINK TO ADR COMMITMENT SECTION OF TEAMS PAGE]***
- Microsoft Defender for Office (MDO P1) ***[LINK TO ADR COMMITMENT SECTION OF MPO P1 PAGE]***
- Office for the Web (Office Online) ***[LINK TO ADR COMMITMENT SECTION OF OFFICE OF THE WEB PAGE]***
- Viva Connections ***[LINK TO ADR COMMITMENT SECTION OF VIVA CONN. PAGE]***
- Viva Topics ***[LINK TO ADR COMMITMENT SECTION OF VIVA TOPICS PAGE]***
- Microsoft Purview
  - Audit (Standard) ***[LINK TO THIS ADR COMMITMENT SECTION OF PURVIEW PAGE]***
  - Audit (Premium) ***[LINK TO ADR COMMITMENT SECTION OF EXO PAGE]***
  - Data Retention ***[LINK TO ADR COMMITMENT SECTION OF EXO PAGE]***
  - Records Management ***[LINK TO ADR COMMITMENT SECTION OF EXO PAGE]***
  - Sensitivity Labels ***[LINK TO ADR COMMITMENT SECTION OF EXO PAGE]***
  - Data Loss Prevention ***[LINK TO ADR COMMITMENT SECTION OF EXO PAGE]***
  - Office Message Encryption ***[LINK TO ADR COMMITMENT SECTION OF EXO PAGE]***
  - Information Barriers ***[LINK TO ADR COMMITMENT SECTION OF EXO PAGE]***

## Licensing and Purchase

### Licensing Requirements

- Microsoft 365 F1, F3, E3, or E5
- Office 365 F3, E1, E3, or E5
- Exchange Online Plan 1 or Plan 2
- OneDrive for Business Plan 1 or Plan 2
- SharePoint Online Plan 1 or Plan 2

Customers must cover 100% of paid users above with ADR add-on license for tenant to receive data residency for ADR workloads.

Note on mixed tenant exception:

- Mixed/Hybrid Tenant Definition: *a customer is defined as "mixed" or "hybrid" if they have multiple license types including both Commercial/Public Sector (e.g., E3, E5) ***and*** Education (e.g., A1, A3, etc.) licenses in their subscription.*
- Mixed/Hybrid customers have rights to purchase full ADR add-on for only the paid portion of M365 SKUs and not obligated to cover free subscription types. However, they must cover the paid education seats with ADR (M365 A3/A5, O365 A3/A5).

### Data Migration and Manage

If not all of a customer's tenant data covered by the Advanced Data Residency feature is not already stored at rest within their eligible local geography, then a data migration to the local geography will be required.
If all a customer's tenant data covered by the Advanced Data Residency feature is already stored at rest within their eligible local geography, then no data migration to the local geography will be required.

#### Starting Data Migration

After a customer has received their Advanced Data Residency licenses, then the customer will also need to signal they are ready for their data migration to begin if one is necessary. Data migration will not begin until the customer administrator has executed this task. The SLO commitment discussed elsewhere in this documentation does not start being tracked until this task has been executed by the customer.

To signal your tenant is ready for its data migration to begin, if one is necessary, the customer administrator will visit the Data Location section of the M365 Admin Console within the Settings -> Org Settings -> Organization Profile area. From here the customer administrator will be able to see the current location of their data-at-rest, what local geography their data will be migrated to, and a control they may use to signal they wish to move forward with the data migration.

Once the customer signal is received, then they will be provided with their opt-in date and the target date of completion.

In addition to a notification posted to the Message Center upon completion, the data location card in the M365 Admin Console will also be updated as each workload requiring a data location has finished.

#### Migration Expectation

To the best of its ability, Microsoft intends to complete an Advanced Data Residency add-on customer migration within twelve (12) months from the time the customer administrator has signaled they are ready for the migration, meaning at the time of purchase confirmation of ADR.
In some instances, for significantly larger or more complex customers, or for situations outside of Microsoft's control we may require additional time to complete the migration. In those instances, Microsoft will do what is within its power to complete the migration as close to the intended timeline as possible.
Advanced Data Residency add-on customers also receive prioritized migration services for their tenants over the legacy Move Program migration option.

#### During and After your Migration

Data moves are a back-end operation with minimal if any impact to end users. No action is required while Microsoft moves each service and associated data for your tenant to a new local geography.

> [!NOTE]
> Moves occur at different times for each service. As a result, you'll see the described below on reduced functionality for each service happen at different times.

Watch the Microsoft 365 Message Center for confirmation when moves for each workload service is complete.

#### Impact on End Users and Workloads

Data moves are a back-end service operation with minimal impact to end-users. Features that can be impacted are listed on the During and after your data move page. We adhere to the <a href="https://go.microsoft.com/fwlink/p/?LinkId=523897">Microsoft Online Services Service Level Agreement (SLA)</a> for availability so there is nothing that customers need to prepare for or to monitor during the move. Notification of any service maintenance is done if needed.
***Link to Workload Data Residency Capabilities section / EXO page***

#### Features Impacted

Because of the complex nature of the hundreds of services (both standard and customizable) that are available within the many workloads that customers sign up for and use within a typical E3 or E5 license, the migration of customer data from one data center to another could cause minor disruption and/or temporary unavailability of certain services customers use. See the migration sections of each workload in the Workload Data Residency Capabilities section ***Link to Workload section / EXO page, Migration section*** for more information.

#### Status Notification

For customers requiring a data migration, they may monitor the Message Center for updates to be provided as each workload completes its data migration. The data location card in the M365 Admin Console may also be referenced to see if a workload has completed its migration.
Due to the nature of how migrations work, there is no granular status provided to indicate just how close to completion a migration may be.

### FAQ

#### Who can purchase the Advanced Data Residency add-on?
<details><summary>Click to expand</summary>

The Advanced Data Residency ("ADR") add-on is intended for enterprise customers of Microsoft 365 who have comprehensive data residency requirements.  To be eligible to purchase ADR, customers must meet three pre-requisites:

- Active subscription for Microsoft 365 F1/F3/E3/E5, Office 365 F3/E1/E3/E5, Exchange Online, OneDrive for Business, or SharePoint Online.
- Subscription purchased through Microsoft Enterprise Agreement ("EA") or Web Direct channel.
- Billing address located in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, or the United Arab Emirates.
  
Additional geographic and channel availability will be updated as available.

</details>

#### How do enterprise customers purchase the Microsoft 365 Advanced Data Residency add-on?
<details><summary>Click to expand</summary>

Eligible enterprise customers should contact their Microsoft account team or Enterprise Agreement licensing partner to facilitate a purchase of Advanced Data Residency add-on. Web Direct customers should purchase through their online account.
</details>

#### What does the launch of ADR mean for the Move Program?
<details><summary>Click to expand</summary>

The Advanced Data Residency and Move Program efforts will exist simultaneously for a limited andtime and have different customer commitments. The Move Program is limited to Exchange Online, SharePoint Online, OneDrive for Business, and Teams. ADR includes these and additional workloads.  The Move program was terminated with the launch of the Qatar local datacenter and will not be available for any future local datacenters.  Advanced Data Residency customers receive prioritized migration services over Move Program customers. Please see the Migration Expectation section for additional detail.
</details>

#### How can I move my data to my country with Advanced Data Residency? What does the process look like?
<details><summary>Click to expand</summary>

The first step is to purchase the ADR SKU; check with your Microsoft representative to ensure you qualify.  Once you have purchased ADR, you will receive a notification via Message Center (in the tenant admin center) outlining the purchase confirmation and the 12-month SLO (Service Level Objective) commitment to migrate all your customer at-rest data, as it relates to the workloads listed above. Then once a core workload is picked up for migration, which in this case is Exchange Online (EXO), OneDrive and SharePoint Online (ODSP) and Teams, Message Center notifications on the start of data migration will go out, and again at the time of data move completion for each core workload.
</details>

## Related topics

[Moving core data to new Microsoft 365 datacenter geos](moving-data-to-new-datacenter-geos.md)

[How to request your data move](request-your-data-move.md)

[Data move general FAQ](data-move-faq.md)
  
[New datacenter geos for Microsoft Dynamics CRM Online](/power-platform/admin/new-datacenter-regions)
  
[Azure services by region](https://azure.microsoft.com/regions/)

[Teams experience in a Microsoft 365 Multi-Geo-enabled tenancy](/microsoftteams/teams-experience-o365odb-spo-multi-geo)
