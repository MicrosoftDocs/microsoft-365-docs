---
title: Data Residency Legacy Move Program
description: Learn about the Data Residency Legacy Move Program
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 09/20/2022
ms.reviewer: dmwmsft
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
---

# Data Residency Legacy Move Program

> [!NOTE]
> Coinciding with the launch of the Microsoft 365 Advanced Data Residency add-on, the Move Program will no longer be offered during the launch of new local datacenter regions.  Our most recent local datacenter region launch in Qatar (August 2022) is the final region to receive Move Program benefits. The following information is still valid for regions that were part of Move Program and all customers currently opted-in for migration will be processed.  For more details, see [the ADR page](advanced-data-residency.md).



## When Can I Request a Move (final opt-in opportunity)

|**Customers with signup country/region in**|**Request period begins**|**Request deadline**|**Migration Commitment**|
|:-----|:-----|:-----|:-----|
| Japan <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| Australia, New Zealand, Fiji <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| India <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| Canada <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| United Kingdom <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| South Korea <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| France <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| United Arab Emirates <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| South Africa <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| Switzerland, Liechtenstein <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| Norway <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| Germany <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| Brazil <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |
| Sweden <br/> | Nov. 1, 2022  <br/> | Apr. 30, 2023  <br/> | May 1, 2025  <br/> |

## Remaining Countries/regions in the Move Program

> [!NOTE]
> Even though the Move Program is officially ending, we still have some in-flight geographies that we will see through to completion, based on the original 24-month migration commitment. Please refer to the table below for the remaining countries/regions and their migration deadlines.

|**Customers with signup country/region in**|**Original Opt-in: migration commitment date**|**Final Opt-in (above): migration commitment date**|
|:-----|:-----|:-----|
| Germany <br/> | May 1, 2023  <br/> | May 1, 2025  <br/> |
| Brazil <br/> | June 1, 2023  <br/> | May 1, 2025  <br/> |
| Sweden <br/> | June 1, 2024  <br/> | May 1, 2025  <br/> |
| Qatar <br/> | March 1, 2025  <br/> | Not Applicable  <br/> |



### Data Residency Option Moving Forward

With the release of Advanced Data Residency, we are only providing a data residency option to eligible Microsoft 365 customers who are covered by the data centers listed in the _Local Region Geography_ on the [Overview and Definitions page](m365-dr-overview.md).

### Migration Expectations

Microsoft will use reasonable efforts to try to complete a legacy Move Program migration for customers who request a migration between November 1st, 2022 and April 30th 2023, by June 2025. Customers who requested a migration in the legacy Move Program prior to November 1st, 2022, will continue being migrated with reasonable efforts by Microsoft towards the intended completion date provided to them previously. However, Microsoft may not be able to complete the migration within this timeframe for all customers. For example, significantly larger or more complex customers or situations outside of Microsoft's control may require additional time to complete the migration. Customers utilizing the Advanced Data Residency feature for a data migration will instead follow the [Advanced Data Residency Migration Expectations](advanced-data-residency.md#migration-expectations).

Data moves are a back-end service operation with minimal impact to end-users. We adhere to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for availability so there is nothing that customers need to prepare for or to monitor during the move. Notification of any service maintenance is done if needed.

## Data move general FAQ

>[!NOTE]
>The following Q&A content relates to Move Program customers **only**.

Here are answers to general questions about moving applicable  customer data at rest to a new datacenter geo.

### How do we define Applicable Customer Data?
<details><summary>Click to expand</summary>

Applicable customer data is a term that refers to a subset of customer data defined in the [Microsoft Online Services Terms](https://aka.ms/ost):

- Exchange Online mailbox content (email body, calendar entries, and the content of email attachments)
- SharePoint Online site content and the files stored within that site
- Files uploaded to OneDrive for Business
- Teams chat data for group and private chats (files in Teams folders or placed in chat are managed by SharePoint Online and OneDrive for Business, respectively)

</details>

### What is in scope for Teams migration?
<details><summary>Click to expand</summary>

In addition to Exchange Online, SharePoint Online, and OneDrive for Business; Microsoft will migrate Teams data to the local datacenter.

- Teams chat messages, including private messages and channel messages.
- Teams images used in chats.

Teams files are stored in SharePoint Online and Teams chat files are stored in OneDrive for Business. Voicemail, calendar, and contacts are stored in Exchange Online. In many cases, Exchange Online, SharePoint Online, and OneDrive for Business are already used by the customer in the local datacenter geo and are also part of the Microsoft 365 migration program for eligible customer countries/regions.

</details>

### At what point is my migration complete so that my _Tenant's_ applicable customer data is being stored at rest in my new geo?
<details><summary>Click to expand</summary>

Due to shared dependencies between Exchange Online and SharePoint Online/OneDrive for Business, any migration cannot be considered
completed until both services are migrated. Exchange Online and SharePoint Online/OneDrive for Business often migrate at separate times and independently from one another. Customer _Tenant_ admins receive confirmation in Message Center when each service migration is completed and can view the data location card in the Admin Center at any time to confirm the applicable customer data at rest location for
each service.

</details>

### How do you make sure my customer data is safe during the move and that I won't experience downtime?
<details><summary>Click to expand</summary>

Data moves are a back-end service operation with minimal impact to end users. Features that can be impacted are listed in [User experience in a Multi-Geo environment](multi-geo-user-experience.md). We adhere to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for availability so there is nothing that customers need to prepare for or to monitor during the move.

All Microsoft 365 services run the same versions in the datacenters, so you can be assured of consistent functionality. Your service is fully supported throughout the process.

</details>

### What is the impact of having different services located in different geos?
<details><summary>Click to expand</summary>

Some of the Microsoft 365 services may be located in different geos for some existing customers and for customers that are in the middle of the move process. Our services run independently of each other and there is no impact on the user experience if this is the case. However, for data residency purposes, a _Tenant_ migration cannot be considered as complete until both Exchange Online and SharePoint Online/OneDrive for Business are migrated to the same datacenter geo.

</details>

### Where is my applicable customer data located?
<details><summary>Click to expand</summary>

Customer _Tenant_ admins can view the data location card in the Admin Center at any time to confirm the applicable customer data at rest location for each service, specifically for their _Tenant_. We also publish the location of datacenter geos, datacenters, and location of Microsoft 365 customer data in [Where your Microsoft 365 customer data is stored](https://office.com/datamaps) as a reference for the current default applicable customer data at rest locations for new _Tenant_. You can verify the location of your customer data at rest via the Data Location section under your Organization Profile in the Microsoft 365 admin center.

</details>

### Do all the services move their data on the same day?
<details><summary>Click to expand</summary>

Each service moves independently and will likely move their data at different times.

</details>

### Can I choose when I want my data to be moved?
<details><summary>Click to expand</summary>

Customers are not able to select a specific date, they cannot delay their move, and we cannot share a specific date or timeframe for the moves.

</details>

### Can you share when my data will be moved?
<details><summary>Click to expand</summary>

Data moves are a back-end operation with minimal impact to end users. The complexity, precision, and scale at which we need to perform data moves within a globally operated and automated environment prohibit us from sharing when a data move is expected to complete for your _Tenant_ or any other single _Tenant_. Customers will receive one confirmation in Message Center per participating service when its data move has completed.

</details>

### What happens if users access services while the data is being moved?
<details><summary>Click to expand</summary>

See [User experience in a Multi-Geo environment](multi-geo-user-experience.md) for a complete list of features that may be limited during portions of the data move for each service.

</details>

### How do I know the move is complete?
<details><summary>Click to expand</summary>

Watch the Microsoft 365 Message Center for confirmation that the move of each service's data is complete. When each service's data is moved, we'll post a completion notice so you'll get three completion notices: one each for Exchange Online, SharePoint Online, and Skype for Business Online. You can also verify the location of your customer data at rest via the Data Location section under your Organization Profile in the Microsoft 365 admin center.

</details>


### What happens if we are in process of email data migration to Microsoft 365 during the Exchange Online move?
<details><summary>Click to expand</summary>

This is a very common scenario and is fully supported. Cloud migration between datacenter geos does not interfere with any on-premises to cloud mailbox migrations.

</details>

### I don't want to wait for Microsoft to move my data. Can I just create a new _Tenant_ and move myself?
<details><summary>Click to expand</summary>

Yes, however the process will not be as seamless as if Microsoft were to perform the data move.

If you create a new _Tenant_ after the new datacenter geo is available, the new _Tenant_ will be hosted in the new geo. This new _Tenant_ is completely separate from your previous _Tenant_ and you would be responsible for moving all user mailboxes, site content, domain names, and any other data. Note that you can't move the _Tenant_ name from one _Tenant_ to another. We recommend that you wait for the move program provided by Microsoft as we'll take care of moving all settings, data, and subscriptions for your users.

</details>

### My customer data has already been moved to a new datacenter geo. Can I move back?
<details><summary>Click to expand</summary>

No, this is not possible. Customers who have been moved to new geo datacenters cannot be moved back. As a customer in any geo, you will experience the same quality of service, performance, and security controls as you did before. [Microsoft 365 Multi Geo](https://aka.ms/multi-geo) is available to some customers as an add-on and lets a single _Tenant_ create multiple satellite geos and move user data to those geos with data residency commitments.

</details>

### Will Microsoft 365 _Tenants_ hosted in the new datacenters be available to users outside of the country/region?
<details><summary>Click to expand</summary>

Yes. Microsoft maintains a large global network with public Internet connections in more than 130 locations in 35 countries/regions around the world with peering agreements with more than 2,700 Internet Service Providers (ISPs). Users will be able to access the datacenters from wherever they are on the Internet.

</details>


### I have public folders deployed in my _Tenant_. What will be the impact on public folder access during or after the move?
<details><summary>Click to expand</summary>

There is no impact to end users accessing public folders during or after the move of public folders. However, the public folders may not be available for administration in the Exchange Admin Center tool till all public folder mailboxes are moved in same region. Please check [this article](https://aka.ms/pfxrf) for more details.

</details>
