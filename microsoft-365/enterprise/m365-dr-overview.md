---
title: Overview and Definitions
description: Learn about Data Residency feature Overview and Definitions
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 02/29/2024
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
|Macro Region Geography |Macro Region Geography 1 – EMEA, Macro Region Geography 2 – Asia Pacific, Macro Region Geography 3 - Americas |
|Macro Region Geography 1 - EMEA |Data centers in Austria, Finland, France, Ireland, Italy, Netherlands, Poland, Spain, Sweden <br/> <br/> **Note:** For tenants with a default geography of Israel; data can be stored in Macro Region Geography 1 – EMEA or additional datacenters located in their default geography (i.e., Israel). |
|Macro Region Geography 2 - Asia Pacific |Data centers in Australia, Hong Kong Special Administrative Region, Japan, Malaysia, New Zealand, Singapore, South Korea <br/> <br/> **Note:** For tenants with a default geography of Taiwan; data can be stored in Macro Region Geography 2 – Asia Pacific or additional datacenters located in their default geography (i.e., Taiwan). |
|Macro Region Geography 3 - Americas |Data centers in Brazil, Chile, Mexico, United States |
|Local Region Geography |Australia, Brazil, Canada, France, Germany, India, Israel, Italy, Japan, Mexico, New Zealand, Norway, Poland, Qatar, South Africa, South Korea, Spain, Sweden, Switzerland, Taiwan, United Arab Emirates, United Kingdom |
|Future Local Region Geography | Future planned data center regions: Indonesia, Malaysia, Austria, Chile, Denmark, Greece, Saudi Arabia |
|Geography |_Local Region Geography, Future Local Region Geography_, or _Macro Region Geography_ |
|Satellite Geography |If a customer subscribes to the Multi Geo service, then they can set policy at a user level to store customer data in other Geographies outside of the _Tenant_ _Primary Provisioned Geography_ |
|Microsoft Entra ID |Microsoft Entra ID is the new name for [Azure Active Directory](/entra/fundamentals/new-name) |
|Tenant |A _Tenant_ represents an organization in Microsoft Entra ID. It's a reserved Microsoft Entra service instance that an organization receives and owns when it signs up for a Microsoft cloud service such as Azure or Microsoft 365. Each Microsoft Entra ID _Tenant_ is distinct and separate from other Microsoft Entra ID Tenants |
|Default Geography |When a _Microsoft Entra ID Tenant_ is created, a country/region is provided by the customer during the sign-up process. This country/region determines the default Geography for all Microsoft 365 services. In some cases, not all services are able to provision in this single _Default Geography_. See _Microsoft 365 Service provisioning mapping_ below for a description. |
|Microsoft 365 Service provisioning mapping |All Microsoft 365 Services use the _Default Geography_ to determine where a given _Tenant's_ specified data will be provisioned and stored. |
|Microsoft 365 Service provisioning country mapping |Refer to [data maps](https://aka.ms/datamaps) to learn where a given service provisions specified customer data, based on the _Tenant Default Geography._ |
|Primary Provisioned Geography |A given Microsoft 365 service uses the _Tenant Default Geography_ combined with the _Microsoft 365 Service provisioning country mapping_ to determine which _Geography_ to provision customer data into.  |
|Microsoft 365 admin center Data Location |To see the _Primary Provisioned Geography_ for Exchange Online, SharePoint, OneDrive, and Microsoft Teams refer to Microsoft 365 admin center in **Admin > Settings > Org Settings > Organization Profile > Data Location**. |
|Microsoft 365 Multi-Geo Capabilities |Microsoft 365 Multi-Geo Capabilities allows a single _Tenant_ to store customer data-at-rest across multiple geographies rather than be limited to the single _Primary Provisioned Geography_. See the Multi-Geo description for more detail. |
|Preferred Data Location (PDL) |Used for _Tenants_ with a Multi-Geo subscription. A property set by the administrator that indicates where the user or shared resource's data should be stored at-rest. See the Multi-Geo description for more detail. |
|Advanced Data Residency (ADR) |A new Microsoft 365 add-on service that guarantees customer data residency for a defined set of services. See section 3 |
|Privacy and Security Product Terms |Privacy and Security Terms for Microsoft 365 services provides some customer data location related commitments. The document can be found <a href="https://www.microsoft.com/licensing/terms/en-US/product/PrivacyandSecurityTerms/EAEAS" target="_blank">here</a>. The extract of the relevant section (on November 1, 2022) is:<br>**Office 365 Services.** If Customer provisions its _Tenant_ in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, the United Arab Emirates, or the United States, Microsoft stores the following Customer Data at rest only within that Geo: (1) Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments), (2) SharePoint site content and the files stored within that site, (3) files uploaded to OneDrive, and (4) Microsoft Teams chat messages (including private messages, channel messages, meeting messages and images used in chats), and for customers using Microsoft Stream (on SharePoint), meeting recordings, and (5) any stored content of interactions with Microsoft 365 Copilot to the extent not included in the preceding commitments.|
|Workloads |Often used to refer to a Microsoft 365 service such as but not limited to Exchange Online, SharePoint, OneDrive, Microsoft Teams, etc.|

## Overview of Data Residency

Microsoft 365 Cloud services run on our data centers around the world and provide services to customers around the world. Customer data might be stored in multiple data centers. Data residency refers to the geographic location where customer data is stored at rest. Data residency is important for government, public sector, education and regulated commercial entities to help ensure protection of personal and/or sensitive information. In many countries/regions, customers are expected to comply with laws, regulations or industry standards that explicitly govern the location of data storage.

Microsoft makes decisions on where to persistently store customer data based on two factors:

1. The _Default Geography_ of the _Tenant_
1. Available _Geographies_ for a given service

<a name='default-geography-of-the-aad-tenant'></a>

### _Default Geography_ of the Microsoft Entra ID _Tenant_

When a customer creates a new Microsoft Entra ID _Tenant_, the customer enters a country/region during the creation process. This country/region is what defines the _Default Geography_ for the _Tenant_. There are multiple paths to creating _Tenants_. They can be created through Microsoft Entra ID forms, they can be created when trying out new Microsoft 365 services (trials), etc. Once a _Tenant_ is created, the _Default Geography_ can't be changed.

### Available Geographies for a given service

Microsoft 365 services aren't deployed to all Microsoft data centers globally. The larger services, like Exchange Online, SharePoint, OneDrive, and Microsoft Teams are universally deployed to all _Geographies_.  Other services make decisions on where to deploy their services based on the number of customers, regional affiliations, and software architectures. When a customer first uses a service in this category, the provisioning logic uses the _Default Geography_ and the supported _Geographies_ to determine where to provision a given customer.

Over time, a particular service may deploy their software to additional _Geographies_, so the provisioning locations for new customers can change over time. This doesn't necessarily cause customer data to move to a new _Geography_.

You can use the Microsoft 365 admin center to understand where your data for a given service is stored. As a _Tenant_ administrator you can find the actual data location by navigating to **Admin > Settings > Org Settings > Organization Profile > Data Location**. Currently the data location is available for Exchange Online, SharePoint, OneDrive, Microsoft Teams, Microsoft 365 Copilot, Exchange Online Protection, Viva Connections and Viva Topics. In addition to this resource, see the [Data Maps page](o365-data-locations.md).

Some examples:

**Example 1:** For a _Tenant_ with the sign-up country/region as "France" that has a new subscription that includes Exchange Online, SharePoint, OneDrive and Microsoft Teams, then the customer data for those services will be provisioned into the French _Local Region Geography_. Why? Because those services are deployed into the French data centers and the _Tenant_ has a France sign up country/region.

**Example 2:** For a _Tenant_ with the sign-up country/region as "Belgium" that has a new subscription that includes Exchange Online, SharePoint, OneDrive and Microsoft Teams, then the customer data for those services will be provisioned into the _Macro Region Geography 1 – EMEA_. Why? Because there are no Microsoft 365 data centers in Belgium and the closest Geography is _Macro Region Geography 1 - EMEA_.

**Example 3:** For a _Tenant_ with the sign-up country/region as "Japan" that has a new subscription that includes Microsoft Forms, then the customer data for Forms will be provisioned into the _Macro Region Geography 3 - Americas_. Why? Because Forms is only deployed in _Macro Region Geography 3 - Americas_ and _Macro Region Geography 1 – EMEA_ (EU _Tenants_ only).

**Example 4a:** For a _Tenant_ with the sign-up country/region as "Sweden" that has a new subscription that includes Microsoft Viva Engage, then the customer data for Viva Engage will be provisioned into the _Macro Region Geography 1 - EMEA_. Why? Because Viva Engage is deployed in _Macro Region Geography 1 - EMEA_ and Swedish _Tenants_ are best served out of that _Geography_.

**Example 4b:** For a _Tenant_ with the sign-up country/region as "Sweden" that has a subscription that includes Microsoft Viva Engage from before Viva Engage was deployed to _Macro Regional Geography 1 - EMEA_, then the customer data for Viva Engage will be located in _Macro Region Geography 3 - Americas_. Why? Because, at that time, Viva Engage only had a single deployment for all customers in _Macro Region Geography 3 - Americas_.

### Migrations/Moves

Once a Microsoft 365 service provisions a _Tenant_ into a particular _Geography_, there are three ways that this data could move to another _Geography_:

1. The Microsoft 365 service decides to move the data to a new _Geography_ for service operations reasons, if there are no other policies in place to prevent the move.
1. If a _Tenant_ subscribes to the _Multi-Geo_ service, then _Tenants_ user's data for Exchange Online, SharePoint, OneDrive, Microsoft Teams and Microsoft 365 Copilot can be assigned to _Satellite Geographies_. 
1. If a _Tenant_ has sign up country/region as a _Local Region Geography_ and has a subscription to the _Advanced Data Residency_ service add-on, then the _Tenant_ data for the included services will be migrated from the _Regional Geography_ to the relevant _Local Region Geography_.

### Durable commitments on data location

There are three methods for ensuring that the _Tenant_ data location for a particular service doesn't change.

1. Product Terms: Exchange Online, SharePoint, OneDrive, Microsoft Teams and Microsoft 365 Copilot provisioned in Australia, Brazil, Canada, France, Germany, India, Japan, Qatar, South Korea, Norway, South Africa, Sweden, Switzerland, United Arab Emirates, United Kingdom, European Union and the United States have a commitment for customer data residency expressed in the [Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all). For more information, see the [Product Terms Data Residency page](m365-dr-product-terms-dr.md).
1. _Multi Geo_ subscription: allows customers to assign data location for Exchange Online, SharePoint, OneDrive, Microsoft Teams and Microsoft 365 Copilot to any supported _Geography_. For more information, see [Multi Geo Data Residency](microsoft-365-multi-geo.md).
1. _Advanced Data Residency_ subscription provides data residency commitments for an expanded set of Microsoft 365 services in any _Local Region Geography_. For more information, see the [Advanced Data Residency page](advanced-data-residency.md).
#### **Table 2: Available Data Residency by Workload**

| Service Name | Product Terms | Multi-Geo | ADR |
|:-----|:-----|:-----|:-----|
|Exchange Online |X<sup>1</sup> |X<sup>2</sup> |X<sup>3</sup> |
| SharePoint / OneDrive |X<sup>1</sup> |X<sup>2</sup> |X<sup>3</sup> |
| Microsoft Teams |X<sup>1</sup> |X<sup>2</sup> |X<sup>3</sup> |
| Microsoft 365 Copilot |X<sup>1</sup> |X<sup>2</sup> |X<sup>3</sup> |
| Microsoft Defender for Office P1 |- |- |X<sup>3</sup> |
| Office for the Web |- |- |X<sup>3</sup> |
| Viva Connections |- |- |X<sup>3</sup> |
| Viva Topics |- |- |X<sup>3</sup> |
| Microsoft Purview |- |- |X<sup>3</sup> |

1. Only available in the following countries/regions: Australia, Brazil, Canada, France, Germany, India, Japan, Qatar, South Korea, Norway, South Africa, Sweden, Switzerland, United Arab Emirates, United Kingdom, European Union and the United States.
1. Available in _Local Region Geography_, _Future Local Region Geography_ (when the future data center is launched) and _Regional Geography countries/regions_
1. Only available for _Local Region Geography_ and _Future Local Region Geography_ (when the future data center is launched) countries/regions.
  
> [!NOTE]
> See the [Workload Data Residency Capabilities section](m365-dr-workload-exo.md) for more details on these topics.

#### **Table 3: Available Data Residency by Country/Region**

| Country/Region  | Exchange Online | SharePoint, OneDrive | Teams | Microsoft 365 Copilot | MDO P1 | Office for the web | Viva Connections | Viva Topics | Purview |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Australia | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Brazil | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Canada | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| European Union | P-M | P-M | P-M | P-M | - | - | - | - | - |
| France | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Germany | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| India | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Israel | M-A | M-A | M-A | M-A | A | A | A | A | A |
| Italy | M-A | M-A | M-A | M-A | A | A | A | A | A |
| Japan | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Mexico | M-A | M-A | M-A | M-A | A | A | A | A | A |
| New Zealand | M-A | M-A | M-A | M-A | A | A | A | A | A |
| Norway | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Poland | M-A | M-A | M-A | M-A | A | A | A | A | A |
| Qatar | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| South Africa | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| South Korea | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Spain | M-A | M-A | M-A | M-A | A | A | A | A | A |
| Sweden | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Switzerland | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| Taiwan | M-A | M-A | M-A | M-A | A | A | A | A | A |
| United Arab Emirates | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| United Kingdom | P-M-A | P-M-A | P-M-A | P-M-A | A | A | A | A | A |
| United States | P-M | P-M | P-M | P-M | - | - | - | - | - |

P: Product Terms Data Residency<br>
M: Multi-Geo Data Residency<br>
A: Advanced Data Residency

### Country/Region specific Data Center city locations

The following Regional Geographies can store data at rest.

#### **Table 4: Current Local Geographies and Region specific Datacenter locations**

|Country/Region |Datacenter Location |
|---------|---------|
|Australia  |Sydney, Melbourne  |
|Brazil  |Rio, Campinas  |
|Canada   |Quebec City, Toronto  |
|European Union   |Austria (Vienna), Finland (Helsinki), France (Paris, Marseille), Ireland (Dublin), Italy (Milan), Netherlands (Amsterdam), Poland (Warsaw), Spain (Madrid), Sweden (Gävle, Sandviken, Staffanstorp)   |
|France   |Paris, Marseille   |
|Germany   |Frankfurt, Berlin    |
|India  |Chennai, Mumbai, Pune    |
|Israel  |Tel Aviv    |
|Italy  |Milan    |
|Japan   |Osaka, Tokyo   |
|South Korea  |Busan, Seoul    |
|Spain   |Madrid    |
|Mexico   |Queretaro    |
|New Zealand    |Auckland   |
|Norway   |Oslo, Stavanger    |
|Poland   |Warsaw    |
|Qatar   |Doha     |
|South Africa    |Cape Town, Johannesburg    |
|Sweden   |Gävle, Sandviken, Staffanstorp   |
|Switzerland      |Geneva, Zurich   |
|Taiwan      |Taipei   |
|United Arab Emirates  |Dubai, Abu Dhabi    |
|United Kingdom    |Durham, London, Cardiff   |
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

Review the [Products available by region](https://go.microsoft.com/fwlink/p/?linkid=2093451) page to find data residency information for Microsoft Azure.

</details>

#### Why do I see my Microsoft 365 service requests for my data at rest connecting to servers in countries outside of my region?

<details><summary>Click to expand</summary>

On occasion, a customer request may be handled by servers in a different region than the location where a _Tenant's_ customer data is stored at rest. This may happen where network routing decisions choose a different server for the request processing, but in these cases such _Tenant's_ customer data is not moved to a new at rest location.

</details>
