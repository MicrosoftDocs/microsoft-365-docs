---
title: Overview and Definitions
description: Learn about Data Residency feature Overview and Definitions
ms.author: v-fahasen
author: fhasen-msft
manager: v-nihmi
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/24/2025
ms.reviewer: deanw
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Overview and Definitions

## Definitions

In order to promote clarity in the capability descriptions on data residency functionality in this document, refer to these terms.

### **Table 1: Definitions and Terms**

| Term | Definition |
|:-----|:-----|
|Advanced Data Residency (ADR) |A Microsoft 365 add-on service that guarantees customer data residency for a defined set of services. See [Table 2](m365-dr-overview.md#table-2-available-data-residency-by-service) below. |
|Current Geography |_Current Geography_ refers to the location where _Microsoft 365 Core_ and _Expanded Service_ (ADR-scoped) data is stored for the service. **Note:** In certain scenarios, _Current Geography_ may differ from _Committed Geography_, such as during migration, due to ADR license validity, or at the time-of-service provisioning and activation relative to the availability of the _Local Region Geography_. For detailed information on these cases, visit [Learn More About the Data Location Card](m365-dr-data-location.md). |
|Committed Geography |_Committed Geography_ refers to the location where Microsoft will store in scope customer data at rest for certain Microsoft 365 services. This location is determined by the _Durable Commitments on Data Location_ applicable to the _Tenant_. Visit [Available Data Residency by Country/Region](m365-dr-overview.md#table-3-available-data-residency-by-countryregion) for more information. |
|Data Location Card |The _Data Location Card_ is located within the "Data location" section of the Microsoft 365 admin center portal. Navigate to **Admin** > **Settings** > **Org settings** > **Organization profile** > **Data location**. <br/> <br/> For specific information on how to use the Data Location Card, refer to [Learn More about The Data Location Card](m365-dr-data-location.md). |
|Default Geography |When a _Microsoft Entra ID Tenant_ is created, a country/region is provided by the customer during the sign-up process. This country/region determines the _Default Geography_ for all Microsoft 365 services. In some cases, not all services are able to provision in this single _Default Geography_. See _Microsoft 365 Service provisioning mapping_ below for a description. |
|Durable Commitment on Data Location |One of the four existing methods to ensure that _Tenant_ data location for a particular service does not change. These methods include _[European Union Data Boundary (EUDB)](/privacy/eudb/eu-data-boundary-learn#eu-data-boundary-countries-and-datacenter-locations)_, _[Privacy and Security Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all)_, _[Advanced Data Residency (ADR)](m365-dr-commitments.md)_, and _[Multi-Geo Capabilities](microsoft-365-multi-geo.md)_. |
|Educational (EDU) Tenant |A _Tenant_ that has an active Office 365 Education subscription (i.e., A SKU) and has an EES Licensing Agreement. |
|European Free Trade Association (EFTA) |A regional trade organization and free trade area consisting of four European states - Liechtenstein, Iceland, **Norway**, and **Switzerland**. <br/> <br/> **Note:** Microsoft 365 currently has data centers in the **bold** _EFTA_ countries. |
|European Union (EU) |An international organization comprising 27 European countries. These countries are **Austria**, Belgium, Bulgaria, Croatia, Cyprus, Czechia, Denmark, Estonia, **Finland**, **France**, **Germany**, Greece, Hungary, **Ireland**, **Italy**, Latvia, Lithuania, Luxembourg, Malta, **Netherlands**, **Poland**, Portugal, Romania, Slovakia, Slovenia, **Spain**, and **Sweden**. <br/> <br/> **Note:** Microsoft 365 currently has data centers in the **bold** _European Union_ countries. |
|European Union/EFTA |Data that is stored within the _European Union (EU)_ and/or the _European Free Trade Association (EFTA)_. |
|European Union Data Boundary (EUDB) |_European Union Data Boundary_ commitment. For more information, please see [Microsoft EU Data Boundary Overview - Microsoft Trust Center](https://www.microsoft.com/trust-center/privacy/european-data-boundary-eudb). |
|Future Local Region Geography |Future planned data center regions: Austria, Denmark, Greece, Kuwait, Saudi Arabia, Thailand |
|Geography |_Local Region Geography, Future Local Region Geography_, or _Macro Region Geography_ |
|Legacy Move Program |This program, which is no longer active, was offered to _Tenants_ who had a valid _Default Geography_ which allowed the _Tenant_ to migrate existing data at rest into a _Local Region Geography_. |
|Local Region Geography |Australia, Brazil, Canada, Chile, France, Germany, India, Indonesia, Israel, Italy, Japan, Malaysia, Mexico, New Zealand, Norway, Poland, Qatar, South Africa, South Korea, Spain, Sweden, Switzerland, Taiwan, United Arab Emirates, United Kingdom |
|Macro Region Geography |Macro Region Geography 1 – Europe, Macro Region Geography 2 – Asia Pacific, Macro Region Geography 3 – Americas, Macro Region Geography 4 – European Union/EFTA |
|Macro Region Geography 1 – Europe |Data centers in Austria, Finland, France, Germany, Ireland, Italy, Netherlands, Poland, Spain, Sweden <br/> <br/> **Note:** For _Tenants_ with a _Default Geography_ of Israel, data can be stored in Macro Region Geography 1 – Europe or additional data centers located in their _Default Geography_ (i.e., Israel). <br/> <br/> **Note:** This term is referenced as “Europe” on the _Data Location Card_. |
|Macro Region Geography 2 – Asia Pacific |Data centers in Australia, Hong Kong Special Administrative Region, Indonesia, Japan, Malaysia, New Zealand, Singapore, South Korea <br/> <br/> **Note:** For _Tenants_ with a _Default Geography_ of Taiwan, data can be stored in _Macro Region Geography 2 – Asia Pacific_ or additional data centers located in their _Default Geography_ (i.e., Taiwan). |
|Macro Region Geography 3 – Americas |Data centers in Brazil, Canada, Chile, Mexico, and the United States (USA) <br/> <br/> **Note:** This term is referenced as “Americas” on the _Data Location Card_. |
|Macro Region Geography 4 – European Union/EFTA |Data centers in in Austria, Finland, France, Germany, Ireland, Italy, Netherlands, Poland, Spain, Sweden, Norway, and Switzerland. <br/> <br/> **Note:** This term is referenced as “European Union/EFTA” on the _Data Location Card_. |
|Microsoft Entra ID |Microsoft Entra ID is the new name for [Azure Active Directory](/entra/fundamentals/new-name). |
|Microsoft 365 admin center Data Location |To see the _Primary Provisioned Geography_ for Exchange Online, SharePoint, OneDrive, and Microsoft Teams, refer to the Microsoft 365 admin center by navigating to **Admin > Settings > Org settings > Organization profile > Data location**. |
|Microsoft 365 Core Services |Exchange Online, SharePoint and OneDrive, Microsoft Teams, Microsoft 365 Copilot |
|Microsoft 365 Expanded Services |Microsoft Defender for Office P1 and Exchange Online Protection, Microsoft 365 web apps (formerly known as "Office for the Web"), Viva Connections, Microsoft Purview* |
|Microsoft 365 Multi-Geo Capabilities |_Microsoft 365 Multi-Geo Capabilities_ allows a single _Tenant_ to store customer data-at-rest across multiple geographies rather than be limited to the single _Primary Provisioned Geography_. See the _[Multi-Geo](microsoft-365-multi-geo.md)_ page for more detail. |
|Microsoft 365 Service provisioning country mapping |Refer to [data maps](https://aka.ms/datamaps) to learn where a given service provisions specified customer data, based on the _Tenant Default Geography._ |
|Microsoft 365 Service provisioning mapping |All Microsoft 365 services use the _Default Geography_ to determine where a given _Tenant's_ specified data will be provisioned and stored. |
|Preferred Data Location (PDL) |Used for _Tenants_ with a _Multi-Geo_ subscription. A property set by the Global Tenant Admin that indicates where the user or shared resource's data should be stored at-rest. See the _[Multi-Geo](microsoft-365-multi-geo.md)_ page for more detail. |
|Primary Provisioned Geography |A given Microsoft 365 service uses the _Tenant Default Geography_ combined with the _Microsoft 365 Service provisioning country mapping_ to determine which _Geography_ to provision customer data into.  |
|Privacy and Security Product Terms |For current language, refer to the [Privacy and Security Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all) webpage. |
|Satellite Geography |If a customer subscribes to the _Multi-Geo_ service, then they can set policy at a user level to store in scope customer data in other _Geographies_ outside of the _Tenant Primary Provisioned Geography_. |
|Services |Often used to refer to a Microsoft 365 service such as but not limited to Exchange Online, SharePoint, OneDrive, Microsoft Teams, etc.|
|Tenant |A _Tenant_ represents an organization in _Microsoft Entra ID_. It's a reserved Microsoft Entra service instance that an organization receives and owns when it signs up for a Microsoft cloud service such as Azure or Microsoft 365. Each _Microsoft Entra ID Tenant_ is distinct and separate from other _Microsoft Entra ID Tenants_. |

> [!NOTE]
> *The [Microsoft Purview](m365-dr-workload-purview.md) services covered as part of the _Advanced Data Residency commitment_ (as of July 2025) include [Data Loss Prevention](m365-dr-workload-purview.md#data-security---data-loss-prevention-dlp), [Information Barriers](m365-dr-workload-purview.md#data-security---information-barriers), [Information Protection (MIP)](m365-dr-workload-purview.md#data-security---information-protection-mip), [Audit (Standard)](m365-dr-workload-purview.md#risk--compliance---audit-standard), [Audit (Premium)](m365-dr-workload-purview.md#risk--compliance---audit-premium), and [Data Lifecycle Management (DLM)](m365-dr-workload-purview.md#risk--compliance---data-lifecycle-management-dlm). Additional Microsoft Purview services are not currently supported.

## Overview of Data Residency

Microsoft 365 Cloud services run on our data centers around the world and provide services to customers around the world. Customer data might be stored in multiple data centers. Data residency refers to the geographic location where customer data is stored at rest. Data residency is important for government, public sector, education and regulated commercial entities to help ensure protection of personal and/or sensitive information. In many countries/regions, customers are expected to comply with laws, regulations or industry standards that explicitly govern the location of data storage.

Microsoft makes decisions on where to persistently store customer data based on two factors:

1. The _Default Geography_ of the _Tenant_
1. Available _Geographies_ for a given service

### _Default Geography_ of the _Microsoft Entra ID Tenant_

When a customer creates a new _Microsoft Entra ID Tenant_, the customer enters a country/region during the creation process. This country/region is what defines the _Default Geography_ for the _Tenant_. There are multiple paths to creating _Tenants_. They can be created through Microsoft Entra ID forms, they can be created when trying out new Microsoft 365 services (trials), etc. Once a _Tenant_ is created, the _Default Geography_ can't be changed.

### Available _Geographies_ for a given service

Microsoft 365 services aren't deployed to all Microsoft data centers globally. The larger services, like Exchange Online, SharePoint, OneDrive, and Microsoft Teams are universally deployed to all _Geographies_.  Other services make decisions on where to deploy their services based on the number of customers, regional affiliations, and software architectures. When a customer first uses a service in this category, the provisioning logic uses the _Default Geography_ and the supported _Geographies_ to determine where to provision a given customer.

Over time, a particular service may deploy their software to additional _Geographies_, so the provisioning locations for new customers can change over time. This doesn't necessarily cause customer data to move to a new _Geography_.

You can use the _Data Location Card_ via the Microsoft 365 admin center to understand where your data for a given service is stored. As a Global Tenant Admin, you can find the actual data location by navigating to **Admin > Settings > Org settings > Organization profile > Data location**. Currently, data location details are available for Exchange Online, SharePoint, OneDrive, Microsoft Teams, Microsoft 365 Copilot, Exchange Online Protection, and Viva Connections. Additional data location details can be found on the [Data Maps page](o365-data-locations.md).

Some examples:

**Example 1:** For a _Commercial Tenant_ with a _Default Geography_ of "France" that has a new subscription that includes Exchange Online, SharePoint, OneDrive, and Microsoft Teams, the customer data for those services will be provisioned into the French _Local Region Geography_. Why? Because those services are deployed into the French data centers and the _Tenant_ has "France" as its _Default Geography_.

**Example 2:** For a _Commercial Tenant_ with a _Default Geography_ of "Belgium" that has a new subscription that includes Exchange Online, SharePoint, OneDrive, and Microsoft Teams, the customer data for those services will be provisioned into the _Macro Region Geography 4 – European Union/EFTA_. Why? Because there are no Microsoft 365 data centers in Belgium and the closest compliant _Geography_ is _Macro Region Geography 4 - European Union/EFTA_. With this, _Commercial Tenants_ with a _Default Geography_ of “Belgium” are eligible to reside within the [European Union Data Boundary (EUDB)](/privacy/eudb/eu-data-boundary-learn#eu-data-boundary-countries-and-datacenter-locations).

**Example 3:** For a _Commercial Tenant_ with a _Default Geography_ of "Japan" that has a new subscription that includes Microsoft Forms, the customer data for Forms will be provisioned into _Macro Region Geography 3 - Americas_. Why? Because Forms is only deployed in _Macro Region Geography 3 - Americas_ and _Macro Region Geography 4 – European Union/EFTA_ (_European Union/EFTA Tenants_ only).

**Example 4a:** For a _Commercial Tenant_ with a _Default Geography_ of "Sweden" that has a new subscription that includes Microsoft Viva Engage, the customer data for Viva Engage will be provisioned into _Macro Region Geography 4 – European Union/EFTA_. Why? Because Viva Engage is deployed in _Macro Region Geography 4 – European Union/EFTA_ and Swedish _Tenants_ are best served out of that _Geography_.

**Example 4b:** For a _Commercial Tenant_ with a _Default Geography_ of "Sweden" that has a subscription that includes Microsoft Viva Engage from before Viva Engage was deployed to _Macro Region Geography 4 – European Union/EFTA_, the customer data for Viva Engage will be located in _Macro Region Geography 3 – Americas_. Why? Because, at that time, Viva Engage only had a single deployment for all customers in _Macro Region Geography 3 – Americas_.

### Migrations/Moves

Once a Microsoft 365 service provisions a _Tenant_ into a particular _Geography_, there are three ways that the customer's in scope customer data could move to another _Geography_:

1. If a customer _Tenant_ has a _Default Geography_ that is also a _Local Region Geography_ and has a subscription to the _Advanced Data Residency_ service add-on, then the _Tenant's_ in scope customer data for the _Microsoft 365 Core Services_ and _Microsoft 365 Expanded Services_ will be migrated from its _Current Geography_ to the relevant _Local Region Geography_ that corresponds to the _Tenant's Default Geography_.
1. If a _Tenant_ subscribes to the _Multi-Geo_ service, then the Global Tenant Admin can assign user's in scope customer data for Exchange Online, SharePoint, OneDrive, Microsoft Teams, and Microsoft 365 Copilot to _Satellite Geographies_.
1. In the event that a _Tenant_ does not have a _Durable Commitment on Data location_, the _Tenant's_ in scope customer data is not committed to reside in any particular data center. In these cases, Microsoft will store the _Tenant’s_ in scope customer data in a location that enables it to deliver services effectively to the customer and that data storage location is subject to change without notice.

### Durable Commitments on Data Location

There are three methods for ensuring that the _Tenant_ data location for a particular service doesn't change.

1. _Product Terms_: See the [Product Terms Data Residency page](m365-dr-product-terms-dr.md) for specific details.
1. _Multi-Geo_ subscription: allows customers to assign data location for Exchange Online, SharePoint, OneDrive, Microsoft Teams, and Microsoft 365 Copilot to any supported _Geography_. For more information, see [Multi Geo Data Residency](microsoft-365-multi-geo.md).
1. _Advanced Data Residency_ subscription: provides data residency commitments for a _Core_ and _Expanded_ set of Microsoft 365 services in _Local Region Geographies_. For more information, see the [Advanced Data Residency page](advanced-data-residency.md).

#### **Table 2: Available Data Residency by Service**

| Service Name | Product Terms | Multi-Geo | ADR |
|:-----|:-----|:-----|:-----|
|Exchange Online |X<sup>1</sup> |X<sup>2</sup> |X<sup>3</sup> |
| SharePoint / OneDrive |X<sup>1</sup> |X<sup>2</sup> |X<sup>3</sup> |
| Microsoft Teams |X<sup>1</sup> |X<sup>2</sup> |X<sup>3</sup> |
| Microsoft 365 Copilot |X<sup>1</sup> |X<sup>2</sup> |X<sup>3</sup> |
| Microsoft Defender for Office P1 |- |- |X<sup>3</sup> |
| Microsoft 365 web apps (formerly known as "Office for the Web") |- |- |X<sup>3</sup> |
| Viva Connections |- |- |X<sup>3</sup> |
| Microsoft Purview |- |- |X<sup>3</sup> |

1. Only available in the following countries/regions: Australia, Brazil, Canada, France, Germany, India, Japan, Qatar, South Korea, Norway, South Africa, Sweden, Switzerland, United Arab Emirates, United Kingdom, European Union and the United States.
1. Available in _Local Region Geography_, _Future Local Region Geography_ (when the future data center is launched) and _Regional Geography countries/regions_
1. Only available for _Local Region Geography_ and _Future Local Region Geography_ (when the future data center is launched) countries/regions.
  
> [!NOTE]
> See the [Service Data Residency Capabilities section](m365-dr-workload-exo.md) for more details on these topics.

#### **Table 3: Available Data Residency by Country/Region**

| Country/Region  | Exchange Online | SharePoint, OneDrive | Teams | Microsoft 365 Copilot | MDO P1 | Office for the web | Viva Connections | Purview |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Australia | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Brazil | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Canada | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Chile | M-A | M-A | M-A | M-A | A | A | A | A |
| European Union | P-M | P-M | P-M | P-M | - | - | - | - |
| France | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Germany | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| India | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Indonesia | M-A | M-A | M-A | M-A | A | A | A | A |
| Israel | M-A | M-A | M-A | M-A | A | A | A | A |
| Italy | M-A | M-A | M-A | M-A | A | A | A | A |
| Japan | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Malaysia | M-A | M-A | M-A | M-A | A | A | A | A |
| Mexico | M-A | M-A | M-A | M-A | A | A | A | A |
| New Zealand | M-A | M-A | M-A | M-A | A | A | A | A |
| Norway | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Poland | M-A | M-A | M-A | M-A | A | A | A | A |
| Qatar | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| South Africa | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| South Korea | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Spain | M-A | M-A | M-A | M-A | A | A | A | A |
| Sweden | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Switzerland | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| Taiwan | M-A | M-A | M-A | M-A | A | A | A | A |
| United Arab Emirates | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| United Kingdom | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A |
| United States | P-M | P-M | P-M | P-M | - | - | - | - |

P: Product Terms Data Residency<br>
M: Multi-Geo Data Residency<br>
A: Advanced Data Residency

### Country/Region specific Data Center city locations

The following table displays the various _Geographies_ and the corresponding data center location(s) where Microsoft 365 customers can store data at rest.

#### **Table 4: Geographies and Data Center Locations with available data residency commitments**

|Geography |Data Center Location(s) |
|---------|---------|
|Americas  |Brazil (Campinas, Rio), Canada (Quebec City, Toronto), Chile (Santiago), Mexico (Queretaro), United States (Boydton, Cheyenne, Chicago, Des Moines, Quincy, San Antonio, Santa Clara, San Jose)  |
|Asia Pacific  |Australia (Sydney, Melbourne), India (Chennai, Mumbai, Pune), Japan (Osaka, Tokyo), South Korea (Busan, Seoul), New Zealand (Auckland), Taiwan (Taipei)  |
|Australia  |Melbourne, Sydney  |
|Brazil  |Campinas, Rio  |
|Canada   |Quebec City, Toronto  |
|Chile   |Santiago  |
|Europe   |Austria (Vienna), Finland (Helsinki), France (Marseille, Paris), Germany (Berlin, Frankfurt), Ireland (Dublin), Italy (Milan), Netherlands (Amsterdam), Poland (Warsaw), Spain (Madrid), Sweden (Gävle, Sandviken, Staffanstorp)   |
|European Union/EFTA   |Austria (Vienna), Finland (Helsinki), France (Marseille, Paris), Germany (Berlin, Frankfurt), Ireland (Dublin), Italy (Milan), Netherlands (Amsterdam), Norway (Oslo, Stavanger), Poland (Warsaw), Spain (Madrid), Sweden (Gävle, Sandviken, Staffanstorp), Switzerland (Geneva, Zurich)  |
|France   |Marseille, Paris   |
|Germany   |Berlin, Frankfurt    |
|India  |Chennai, Mumbai, Pune    |
|Indonesia  |Jakarta    |
|Israel  |Tel Aviv    |
|Italy  |Milan    |
|Japan   |Osaka, Tokyo   |
|Malaysia  |Kuala Lumpur    |
|Mexico   |Queretaro    |
|New Zealand    |Auckland   |
|Norway   |Oslo, Stavanger    |
|Poland   |Warsaw    |
|Qatar   |Doha     |
|South Africa    |Cape Town, Johannesburg    |
|South Korea  |Busan, Seoul    |
|Spain   |Madrid    |
|Sweden   |Gävle, Sandviken, Staffanstorp   |
|Switzerland      |Geneva, Zurich   |
|Taiwan      |Taipei   |
|United Arab Emirates  |Abu Dhabi, Dubai    |
|United Kingdom    |Cardiff, Durham, London   |
|United States  |Boydton, Cheyenne, Chicago, Des Moines, Quincy, San Antonio, Santa Clara, San Jose    |

### FAQ

#### How does Microsoft define data?

<details><summary>Select to expand</summary>

Review our [definitions for different types of customer data](https://go.microsoft.com/fwlink/p/?linkid=864390) on the Microsoft Trust Center. In the [Privacy & Security Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all), Microsoft makes contractual commitments regarding customer data/your _Tenant_ and user data. We refer to customer data as the customer data that is committed to be stored at rest only within a _Tenant's_ region according to the [Privacy & Security Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all).

</details>

#### Where are the exact addresses of the data centers?

<details><summary>Select to expand</summary>

Microsoft doesn't disclose the exact addresses of its data centers. We established this policy to help secure our data center facilities. However, we do list city locations. See Table 5 in the [Country/Region-specific Data Center City Locations](m365-dr-overview.md#countryregion-specific-data-center-city-locations) on the Overview and Definitions page to learn more.

</details>

#### Does the location of your customer data have a direct impact on your end users' experience?

<details><summary>Select to expand</summary>

The performance of Microsoft 365 isn't simply proportional to a _Tenant_ user's distance to data center locations. Microsoft's continued investments in its global cloud network, global cloud infrastructure, and the Microsoft 365 services architecture help provide users with a singular, consistent experience independent of where customer data is stored at rest. If your users are experiencing performance issues, you should troubleshoot those in depth. Microsoft has published guidance for Microsoft 365 customers to plan for and optimize end-user performance on the [Office Support web site](network-planning-and-performance.md).

</details>

#### How does Microsoft help me comply with my national, regional, and industry-specific regulations?

<details><summary>Select to expand</summary>

To help a _Tenant_ comply with national, regional, and industry-specific requirements governing the collection and use of individuals' data, Microsoft 365 offers the most comprehensive set of compliance offerings of any global cloud productivity provider. Review [our compliance offerings](/compliance/regulatory/offering-home) and more details in the [Microsoft Purview](https://go.microsoft.com/fwlink/p/?linkid=862317) section on the Microsoft Trust Center. Also, certain Microsoft 365 plans offer further compliance solutions to help a _Tenant_ manage their data, comply with legal and regulatory requirements, and monitor actions taken on their data.

</details>

#### Who can access your data and according to what rules?

<details><summary>Click to expand</summary>

 Microsoft implements strong measures to help protect a _Tenant's_ customer data from inappropriate access or use by unauthorized persons. This includes restricting access by Microsoft personnel and subcontractors, and carefully defining requirements for responding to government requests for customer data. However, you can access your _Tenant's_ customer data at any time and for any reason. More details are available on the [Microsoft Trust Center](https://go.microsoft.com/fwlink/p/?linkid=864392).

</details>

#### Does Microsoft access your data?

<details><summary>Select to expand</summary>

Microsoft automates most Microsoft 365 operations while intentionally limiting its own access to customer data. This helps us manage Microsoft 365 at scale and address the risks of internal threats to customer data. By default, Microsoft engineers have no standing administrative privileges and no standing access to customer data in Microsoft 365. A Microsoft engineer may have limited and logged access to customer data for a limited amount of time, but only when necessary for normal service operations and only when approved by a member of senior management at Microsoft (and, for customers who are licensed for the Customer Lockbox feature, by the customer).

</details>

#### How does Microsoft secure your data?

<details><summary>Select to expand</summary>

Microsoft has robust policies, controls, and systems built into Microsoft 365 to help keep your information safe. Review the [Microsoft 365 security section](https://go.microsoft.com/fwlink/p/?linkid=864393) on the Microsoft Trust Center to learn more.

</details>

#### Does Microsoft 365 encrypt your data?

<details><summary>Select to expand</summary>

Microsoft 365 uses service-side technologies that encrypt customer data at rest and in transit. For customer data at rest, Microsoft 365 uses volume-level and file-level encryption. For customer data in transit, Microsoft 365 uses multiple encryption technologies for communications between data centers and between clients and servers, such as Transport Layer Security (TLS) and Internet Protocol Security (IPsec). Microsoft 365 also includes customer-managed encryption features.

</details>

#### Where can I find data residency information for Microsoft Azure?

<details><summary>Select to expand</summary>

Review the [Product availability by region](https://azure.microsoft.com/explore/global-infrastructure/products-by-region/table) page to find data residency information for Microsoft Azure.

</details>

#### Why do I see my Microsoft 365 service requests for my data at rest connecting to servers in countries outside of my region?

<details><summary>Click to expand</summary>

On occasion, a customer request may be handled by servers in a different region than the location where a _Tenant's_ customer data is stored at rest. This may happen where network routing decisions choose a different server for the request processing, but in these cases such _Tenant's_ customer data is not moved to a new at rest location.

</details>
