---
title: "Advanced data residency in Microsoft 365"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 
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

# Advanced Data Residency in Microsoft 365

## Overview of Advanced Data Residency and Commitments

### Overview:

The Microsoft 365 Advanced Data Residency add-on ("ADR") provides eligible customers with expanded coverage of Microsoft 365 workloads and Customer Data, committed data residency for local country datacenter regions, and prioritized tenant migration services.  With Advanced Data Residency, enterprise customers can best address their data residency compliance and tenant location requirements.

### Eligibility:

1. Tenant has a sign-up country included in _Local Region Geography_ or _Expanded Local Region Geography_,
1. Tenant has a valid Advanced Data Residency subscription for all tenant users in the tenancy, and
1. The applicable Microsoft 365 product subscription customer data is provisioned in Local Geography or Expanded Local Geography.

### Microsoft 365 Advanced Data Residency Commitments

The workloads and their respective commitments are detailed below:

| **Microsoft 365 Products** | **Advanced Data Residency Commitment** |
| --- | --- |
| Exchange Online | Mailbox content, (e-mail body, calendar entries, and the content of e-mail attachments. This includes all types of mailboxes, including user mailboxes, resource mailboxes, archive mailboxes. |
| SharePoint Online and OneDrive for Business | Site content and the files stored within that site, and files uploaded to OneDrive for Business. |
| Microsoft Teams | Chat messages (including private messages, channel messages, meeting messages and images used in chats), and for customers using Microsoft Stream (on SharePoint), meeting recordings. |
| Microsoft Defender for Office (MDO P1)  and  Exchange Online Protection (EOP) | MDO P1 does not store any customer data within its service. 
EOP service configuration data and policies, quarantined email and attachments, Junk email, grading analysis, block lists (url, tenant, user), spam domains, reports, alerts. |
| Office for the Web | --- |
| Viva Connections | Dashboard and Feed have content sourced from SharePoint Online, Exchange Online and Microsoft Teams and is stored in accordance with their respective data residency commitments. |
| Viva Topics | - All the topics and customer data snippets discovered are stored within the relevant Geographies in Exchange Online Substrate (site or arbitration mailboxes, and Substrate).<br>- Machine Learning ("ML") models are trained on public web data, and as such do not contain any customer data from your tenant. In the future it's possible we will use customer data to improve accuracy of the ML models, in which case the data handling of ML models will follow the same policies as any other customer data (including data residency, retention, access control, sensitivity).<br>- The administration configuration data is stored in the relevant Geographies. |
| Microsoft Purview |  |

>[!NOTE]
>If you have purchased the Multi-Geo subscription for your tenancy, then your customer data will be stored at rest in more than one Geography based on your configuration.

## Licensing and Purchase

### Licensing Requirements

- Microsoft 365 F1, F3, E3, or E5
- Office 365 F3, E1, E3, or E5
- Exchange Online Plan 1 or Plan 2
- OneDrive for Business Plan 1 or Plan 2
- SharePoint Online Plan 1 or Plan 2

Customers must cover 100% of paid users above with ADR add-on license for tenant to receive data residency for ADR workloads.

#### Mixed/Hybrid Tenants:

A customer is defined as "mixed" or "hybrid" if they have multiple license types including both Commercial/Public Sector (e.g., E3, E5) **and** Education (e.g., A1, A3, etc.) licenses in their subscription.

Mixed/Hybrid customers have rights to purchase full ADR add-on for only the paid portion of M365 SKUs and not obligated to cover free subscription types. However,  they must cover the paid education seats with ADR (M365 A3/A5, O365 A3/A5).

### Data Migration and Manage

If all of a customer's tenant data covered by the Advanced Data Residency feature is not already stored at rest within their eligible local geography, then a data migration to the local geography will be required.  If all of a customer's tenant data covered by the Advanced Data Residency feature is already stored at rest within their eligible local geography, then no data migration to the local geography will be required.

#### Starting Data Migration

After a customer has received their Advanced Data Residency licenses, then the customer will need to signal they are ready for their data migration to begin, if one is necessary. To signal your tenant is ready for its data migration, the customer administrator will visit the Data Location section of the M365 Admin Console within the Settings -> Org Settings -> Organization Profile area. From here the customer administrator will be able to see the current location of their data-at-rest and what local geography their customer data will be migrated to, Please Note: Data migration will not begin until the customer administrator has executed this task. Further, the migration expectation discussed elsewhere in this documentation does willnot start being tracked until this task has been executed by the customer administrator.

Once the customer signal is received, they will be provided with their opt-in date and the target date of completion.

In addition to a notification posted to the Message Center upon completion, the Data Location card in the Microsoft 365 Admin Console will also be updated as each workload requiring a data migration is complete.

#### Migration Expectation

Microsoft will use reasonable efforts to try to complete an Advanced Data Residency add-on customer migration within twelve (12) months from the time the customer administrator has signaled they are ready for migration. However, Microsoft may not be able to complete the migration within this timeframe for all customers. For example, significantly larger or more complex customers or situations outside of Microsoft's control may require additional time to complete the migration. Advanced Data Residency add-on customers also receive prioritized migration services for their tenants over the legacy Move Program migration option.

#### During and After your Migration

Data moves are a back-end operation with minimal if any impact to end users. No action is required while Microsoft moves each service and associated customer data for your tenant to the applicable geography.

> [!NOTE]
> Moves occur at different times for each service. As a result, you'll see the described below on reduced functionality for each service happen at different times.

Watch the Microsoft 365 Message Center for confirmation when moves for each workload service is complete.

#### Impact on End Users and Workloads

Data moves are a back-end service operation with minimal impact to end-users. Features that can be impacted are listed on the During and after your data move page. We adhere to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for availability so there is nothing that customers need to prepare for or to monitor during the move. Notification of any service maintenance is done if needed.

#### Features Impacted

Because of the complex nature of the hundreds of services (both standard and customizable) that are available within the many workloads that customers sign up for and use within a typical E3 or E5 license, the migration of customer data from one data center to another could cause minor disruption and/or temporary unavailability of certain services customers use. See the migration sections of each workload in the [Workload Data Residency Capabilities section](https://review.learn.microsoft.com/en-us/microsoft-365/enterprise/m365-dr-workload-exo?view=o365-worldwide&branch=kvice-ADR-new) for more information.

#### Status Notification

For customers requiring a data migration, they may monitor the Message Center for updates to be provided as each workload completes its data migration. The Data Location card in the M365 Admin Console may also be referenced to see if a workload has completed its migration.
Due to the nature of how migrations work, there is no granular status provided to indicate just how close to completion a migration may be.

### FAQ

#### Who can purchase the Advanced Data Residency add-on?
<details><summary>Click to expand</summary>

The Advanced Data Residency ("ADR") add-on is intended for enterprise customers of Microsoft 365 who have comprehensive data residency requirements.  To be eligible to purchase ADR, customers must meet three pre-requisites:

- Active subscription(s) for Microsoft 365 F1/F3/E3/E5, Office 365 F3/E1/E3/E5, Exchange Online, OneDrive for Business, or SharePoint Online.
- Subscription(s) are purchased through Microsoft Enterprise Agreement ("EA") or Web Direct channel.
- Billing address located in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, or the United Arab Emirates.
  
Additional geographic and channel availability will be updated as available.

</details>

#### How do enterprise customers purchase the Microsoft 365 Advanced Data Residency add-on?
<details><summary>Click to expand</summary>

Eligible enterprise customers should contact their Microsoft account team or Enterprise Agreement licensing partner to facilitate a purchase of Advanced Data Residency add-on. Web Direct customers should purchase through their online account.
</details>

#### What does the launch of ADR mean for the Move Program?
<details><summary>Click to expand</summary>

The Advanced Data Residency and Move Program efforts will exist simultaneously for a limited time and have different customer commitments. The Move Program is limited to Exchange Online, SharePoint Online, OneDrive for Business, and Microsoft Teams. ADR includes these and additional workloads.  The Move program was terminated with the launch of the Qatar local datacenter and will not be available for any future local datacenters.  Advanced Data Residency customers receive prioritized migration services over Move Program customers. Please see the Migration Expectation section for additional detail.
</details>

#### How can I move my data to my country with Advanced Data Residency? What does the process look like?
<details><summary>Click to expand</summary>

The first step is to purchase the ADR SKU; check with your Microsoft representative to ensure you qualify.  Once you have purchased ADR, you will receive a notification via Message Center (in the tenant admin center) outlining the purchase confirmation.  After you confirm readiness to begin migrations 12-month expectation to migrate all your customer at-rest data, as it relates to the workloads listed above, will begin. From there all workloads migrating customer data will provide notifications to the tenant admin via Message Center (two messages each; one at the start and end of the migration process).
</details>

## Related topics

[Legacy Move Program](https://review.learn.microsoft.com/en-us/microsoft-365/enterprise/m365-dr-legacy-move-program?view=o365-worldwide&branch=kvice-ADR-new)
  
[New datacenter geos for Microsoft Dynamics CRM Online](https://learn.microsoft.com/power-platform/admin/new-datacenter-regions)
  
[Azure services by region](https://azure.microsoft.com/regions/)

[Teams experience in a Microsoft 365 Multi-Geo-enabled tenancy](https://learn.microsoft.com/microsoftteams/teams-experience-o365odb-spo-multi-geo)
