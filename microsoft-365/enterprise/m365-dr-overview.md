---
title: Overview and Definitions
description: Data Residency feature Overview and Definitions
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 10/6/2022
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Overview and Definitions

## Definitions

To provide clarity to the descriptions below on data residency functionality and behavior, it is necessary to have clear terms and definitions in order to better understand the capabilities that Microsoft provides in this area.

**Table 1: Definitions and Terms**

| **Term** | **Definition** |
|:-----|:-----|
|Macro Region Geography  <br/> |Macro Region Geography 1 – EMEA, Macro Region Geography – Asia Pacific, Macro Region Geography - Americas  <br/> |
|Macro Region Geography 1 - EMEA  <br/> |Data centers in Austria, Finland, France, Ireland, Netherlands, Sweden  <br/> |
|Macro Region Geography 2 - Asia Pacific  <br/> |Data centers in Hong Kong, Japan, Malaysia, Singapore, South Korea  <br/> |
|Macro Region Geography 3 - Americas  <br/> |Data centers in Brazil, Chile, United States  <br/> |
|Local Region Geography  <br/> |Australia, Brazil, Canada, France, Germany, India, Japan, Qatar, South Korea, Norway, South Africa, Sweden, Switzerland, United Arab Emirates, United Kingdom  <br/> |
|Expanded Local Region Geography  <br/> |Poland, Indonesia, Israel, Spain, Mexico, Malaysia, Austria, Chile, New Zealand, Denmark, Greece, Taiwan  <br/> |
|Geography  <br/> |_Local Region Geography, Expanded Local Region Geography_, or _Macro Region Geography_  <br/> |
|Satellite Geography  <br/> |If a customer subscribes to the Multi Geo service, then they can cause defined user customer data to be stored in other Geographies outside of the tenant Primary Provisioned Geography  <br/> |
|AAD  <br/> |Azure Active Directory  <br/> |
|Tenant  <br/> |A tenant represents an organization in Azure Active Directory. It's a reserved Azure AD service instance that an organization receives and owns when it signs up for a Microsoft cloud service such as Azure or Microsoft 365. Each Azure AD tenant is distinct and separate from other Azure AD tenants  <br/> |
|Default Geography  <br/> |When an _AAD tenant_ is created, a country is provided by the customer during the sign-up process.  This country will determine the default Geography for all M365 services.  In some cases, not all services are able to provision in this single default geography. See _M365 Service provisioning mapping_ below for a description.  <br/> |
|M365 Service provisioning mapping  <br/> |All M365 Services will use the Default Geography to determine where a given tenant's specified data will be provisioned and stored.  <br/> |
|M365 Service provisioning country mapping  <br/> |Please refer to [data maps](https://aka.ms/datamaps) to learn where a given service will provision specified customer data, based on the _tenant Default Geography._  <br/> |
|Primary Provisioned Geography  <br/> |A given M365 service will use the _tenant Default Geography_ combined with the _M365 Service provisioning country mapping_ to determine which Geography to provision customer data into.   <br/> |
|M365 Admin Center Data Location  <br/> |To see the _Primary Provisioned Geography_ for Exchange Online, SharePoint Online and Microsoft Teams refer to Office 365 Admin Center in Settings; Org settings; Organization profile; Data location card.  <br/> |
|M365 Multi-Geo Capabilities  <br/> |M365 Multi-Geo Capabilities allows a single tenant to store customer data-at-rest across multiple geographies rather than be limited to the single Primary Provisioned Geography. Please see the Multi-Geo description for more detail.  <br/> |
|Preferred Data Location (PDL)  <br/> |Used for tenants with a Multi-Geo subscription.  A property set by the administrator that indicates where the user or shared resource's s data should be stored at-rest.  Please see the Multi-Geo description for more detail.  <br/> |
|Advanced Data Residency (ADR)  <br/> |A new M365 add-on service that guarantees customer data residency for a defined set of services. See section 3  <br/> |
|Privacy and Security Product Terms  <br/> |Privacy and Security Terms for M365 services provides some customre data location related commitments.  The document can be found <a href="https://www.microsoft.com/licensing/terms/en-US/product/PrivacyandSecurityTerms/EAEAS" target="_blank">here</a>.  The extract of the relevant section is:<br>**Office 365 Services.** If Customer provisions its tenant in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, the United Arab Emirates, or the United States, Microsoft will store the following Customer Data at rest only within that Geo: (1) Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments), (2) SharePoint Online site content and the files stored within that site, and (3) files uploaded to OneDrive for Business|
|Workloads  <br/> |Often used to refer to a M365 service such as but not limited to Exchange Online, SharePoint Online, Teams, etc.|

## Overview of Data Residency

Microsoft 365 Cloud services run on our data centers around the world and provide services to customers around the world.  Customer data may be stored in multiple data centers.  Data residency refers to the geographic location where customer data is stored at rest. Data residency is important for government, public sector, education and regulated commercial entities to help ensure protection of personal and/or sensitive information.  In many countries, customers are expected to comply with laws, regulations or industry standards that explicitly govern the location of data storage.

Microsoft makes decisions on where to persistently store customer data based on two factors:
  1.    The _Default Geography_ of the tenant
  2.    Available _Geographies_ for a given service

***Default Geography of the AAD tenant***
When a customer creates a new AAD tenant, the customre will enter a country during the creation process.  This country is what defines the _Default Geography_ for the tenant.  There are multiple paths to creating tenants.  They can be created through AAD forms, they can be created when trying out new M365 services (trials), etc.  Once a tenant is created, the _Default Geography_ cannot be changed.

**Available Geographies for a given service**
M365 services are not deployed to all Microsoft data centers globally.  The larger services, like Exchange Online, SharePoint Online and Teams are universally deployed to all _Geographies_.   Other services make decisions on where to deploy their services based on the number of customers, regional affiliations, and software architectures.  When a customer first uses a service in this category, the provisioning logic will use the _Default Geography_ and the supported _Geographies_ to determine where to provision a given customer.

>[!NOTE]
>Over time, a particular service may deploy their software to additional _Geographies_, so the provisioning locations for new customers can change over time, and this does not necessarily cause customer data to be moved to a new _Geography_.

At any given time, there is a _M365 Service provisioning country mapping_ that should be referenced to understand where your service data will be provisioned if you start to use the service for the first time.  This mapping can be found in section 7.  It is important to understand that this mapping does not reflect where "your" data is at any given time.  Your data could have been provisioned earlier, at a time when the mapping was different from what it is today.  The primary option for you to understand your actual data location is to refer to the M365 Admin Center Data Location, though there are a limited number of services exposed there.  If it is critical for you to understand where your data is stored, for a given service, reach out to your Microsoft contact or create a case with Microsoft Support.

Some examples:

**Example 1:** For a tenant with the sign-up country as "France" that has a new subscription that includes Exchange Online, SharePoint Online and Microsoft Teams, then the customer data for those services will be provisioned into the French _Local Geography_. Why?  Because those services are deployed into the French data centers and the tenant has a France sign up country?

**Example 2:**  For a tenant with the sign up country as "Belgium" that has a new subscription that includes Exchange Online, SharePoint Online and Microsoft Teams, then the customer data for those services will be provisioned into the _Macro Region Geography 1 – EMEA_.  Why?  Because there are no M365 data centers in Belgium and the closest Geography is _Macro Region Geography 1 - EMEA_.

**Example 3:** For a tenant with the sign up country as "Japan" that has a new subscription that includes Microsoft Forms, then the customer data for Forms will be provisioned  into the _Macro Region Geography 3 - Americas_.  Why?  Because Forms is only deployed in _Macro Region Geography 3 - Americas_ and _Macro Region Geography 1 – EMEA_ (EU tenants only).

**Example 4a:** For a tenant with the sign up country as "Sweden" that has a new subscription that includes Microsoft Yammer, then the customer data for Yammer will be provisioned  into the _Macro Region Geography 1 - EMEA_.  Why?  Because Yammer is deployed in _Macro Region Geography 1 - EMEA_ and Swedish tenants are best served out of that _Geography_.

**Example 4b:** For a tenant with the sign up country as "Sweden" that has a subscription that includes Microsoft Yammer from before Yammer was deployed to _Macro Regional Geography 1 - EMEA_, then the customer data for Yammer will be located in _Macro Region Geography 3 - Americas_.  Why?  Because, at that time, Yammer only had a single deployment for all customers at that time in _Macro Region Geography 3 - Americas_.

**Migrations/Moves**
Once a M365 service provisions a tenant into a particular _Geography_, there are five ways that this data could be moved to another _Geography_:

1) The M365 service decides to move the data to a new _Geography_ for service operations reasons, if there are no other policies in place to prevent the move.
2) For _Local Geographies_ that have Microsoft data centers, and for tenants that have the same country, there are options to migrate data from the _Regional Geographies_ into the _Local Geographies_.  This option is typically only available for 6 months after a _Local Geography_ has been established.
3) If a tenant subscribes to the _Multi-Geo_ service, then users data for Exchange Online, SharePoint Online and Microsoft Teams can be assigned to _Satellite Geographies_.
4) If a tenant has sign up country as a _Local Geography_ or _Expanded Geography_ and has a subscription to the _Advanced Data Residency_ service add-on, then the tenant data for the included services will be migrated from the _Regional Geography_ to the relevant _Local Geography_.
5) At times Microsoft reopens Migration opt in from _Regional Geography_ to the relevant _Local Geographies_ or _Expanded Local Geographies_.

**Durable commitments on data location**

There are three methods for ensuring that the _tenant_ data location for a particular service does not change.

1) Product Terms: Exchange Online, SharePoint Online, OneDrive for Business and Microsoft Teams provisioned in any _Local Geography_, or the European Union or the United States have a commitment for customer data residency expressed in the <a href="https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all" target="_blank">Product Terms</a>.  For more information see the <a href="https://review.learn.microsoft.com/en-us/microsoft-365/enterprise/m365-dr-product-terms-dr?view=o365-worldwide&branch=kvice-ADR-new" target="_blank">Product Terms Data Residency page</a>.
2) _Multi Geo_ subscription: allows customers to assign data location for Exchange Online, SharePoint Online, OneDrive for Business and Microsoft Teams to any supported Geography.  For more information see <a href="https://review.learn.microsoft.com/en-us/microsoft-365/enterprise/microsoft-365-multi-geo?view=o365-worldwide&branch=kvice-ADR-new" target="_blank">Multi Geo Data Residency</a>.
3) _Advanced Data Residency_ subscription will guarantee data residency for an expanded set of M365 services in any _Local Region Geography_ or _Expanded Local Region Geography_.  For more information see the <a href="https://review.learn.microsoft.com/en-us/microsoft-365/enterprise/advanced-data-residency?view=o365-worldwide&branch=kvice-ADR-new" target="_blank">Advanced Data Residency page</a>.

**Table 2: Available Data Residency by Workload**

|**Service Name**|**Product Terms**|**Multi-Geo**|**ADR**|
|:-----|:-----|:-----|:-----|
|Exchange Online <br/> |X<sup>1</sup>  <br/> |X<sup>2</sup>  <br/> |X<sup>3</sup>  <br/> |
| SharePoint Online / OneDrive for Business <br/> |X<sup>1</sup>  <br/> |X<sup>2</sup>  <br/> |X<sup>2</sup>  <br/> |
| Microsoft Teams <br/> |X<sup>1</sup>  <br/> |X<sup>2</sup>  <br/> |X<sup>2</sup>  <br/> |
| Microsoft Defender for Office P1 <br/> |-  <br/> |-  <br/> |X<sup>2</sup>  <br/> |
| Office for the Web <br/> |-  <br/> |-  <br/> |X<sup>2</sup>  <br/> |
| Viva Connections <br/> |-  <br/> |-  <br/> |X<sup>2</sup>  <br/> |
| Viva Topics <br/> |-  <br/> |-  <br/> |X<sup>2</sup>  <br/> |
| Microsoft Purview <br/> |-  <br/> |-  <br/> |X<sup>2</sup>  <br/> |

1. Only available for _Local Geography_ countries, European Union and the United States.
2. Available in _Local Geography, Expanded Local Geography_ and _Regional Geography countries/regions_
3. Only available for _Local Geography_ and _Expanded Local Geography countries_

>[!NOTE]
>See ***Section 5 Workload Data Residency Capabilities PAGE LINK*** for more details

**Table 3: Available Data Residency by Country**

| Exchange Online  | SharePoint Online  | Teams  | MDO P1  | Office for the web  | Viva Connections  | Viva Topics  |  Purview  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Australia  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| Brazil  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| Canada  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| European Union  | P-M  | P-M  | P-M  | -  | -  | -  | -  | -  |
| France  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| Germany  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| India  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| Japan  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| Qatar  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| South Korea  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| Norway  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| South Africa  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| Sweden  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| Switzerland  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| United Arab Emirates  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| United Kingdom  | P-M-A  | P-M-A  | P-M-A  | A  | A  | A  | A  | A  |
| United States  | P-M  | P-M  | P-M  | -  | -  | -  | -  | -  |
| Poland (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Israel (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Spain (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Mexico (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Malaysia (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Austria (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Chile (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| New Zealand (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Denmark (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Greece (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |
| Taiwan (future)  | M-A  | M-A  | M-A  | A  | A  | A  | A  | A  |

P=Product Terms Data Residency<br>
M=Multi-Geo Data Residency<br>
A=Advanced Data Residency

### Country/Region specific Data Center city locations

The following Regional Geographies can store data at rest.

**Table 4 Regional Geographies**

|**Regional Geographies** |**Locations where customer data may be stored**  |
|---------|---------|
|Macro Region Geography 1 - EMEA (Europe, Middle East and Africa) |  Austria, Finland, France, Ireland, Netherlands, Sweden  |
|Macro Region Geography 2 - Asia Pacific |  Hong Kong, Japan, Malaysia, Singapore, South Korea  |
|Macro Region Geography 3 - Americas | Brazil, Chile, United States  |

**Table 5 Current Local Geographies and Region specific Data Center locations**

|Column1  |Column2  |
|---------|---------|
|Australia   |Sydney, Melbourne   |
|Brazil   |Rio, Campinas   |
|Canada      |Quebec City, Toronto    |
|European Union      |Austria (Vienna), Finland (Helsinki), France (Paris, Marseille), Ireland (Dublin), Netherlands (Amsterdam), Sweden (Gävle, Sandviken, Staffanstorp)     |
|France      |Paris, Marseille     |
|Germany     |Frankfurt, Berlin       |
|India   |Chennai, Mumbai, Pune        |
|Japan     |Osaka, Tokyo      |
|South Korea   |Busan, Seoul        |
|Norway     |Oslo, Stavanger       |
|Qatar     |Doha          |
|South Africa       |Cape Town, Johannesburg        |
|Sweden     |Gävle, Sandviken, Staffanstorp      |
|Switzerland           |Geneva, Zurich     |
|United Arab Emirates    |Dubai, Abu Dhabi        |
|United Kingdom       |Durham, London, Cardiff      |
|United States    |Boydton, Cheyenne, Chicago, Des Moines, Quincy, San Antonio, Santa Clara, San Jose       |
