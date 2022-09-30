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
ms.date: 09/23/2022
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
|Regional Geography  <br/> |Regional Geography 1 – EMEA, Regional Geography – Asia Pacific, Regional Geography - Americas  <br/> |
|Regional Geography 1 - EMEA  <br/> |Data centers in Austria, Finland, France, Ireland, Netherlands, Sweden  <br/> |
|Regional Geography 2 - Asia Pacific  <br/> |Data centers in Hong Kong, Japan, Malaysia, Singapore, South Korea  <br/> |
|Regional Geography 3 - Americas  <br/> |Data centers in Brazil, Chile, United States  <br/> |
|Local Geography  <br/> |Data centers in Australia, Brazil, Canada, France, Germany, India, Japan, Qatar, South Korea, Norway, South Africa, Sweden, Switzerland, United Arab Emirates, United Kingdom  <br/> |
|Expanded Local Geography  <br/> |Poland, Israel, Spain, Mexico, Malaysia, Austria, Chile, New Zealand, Denmark, Greece, Taiwan  <br/> |
|Geography  <br/> |Local Geography, Expanded Local Geography, or Regional Geography  <br/> |
|Satellite Geography  <br/> |If a customer subscribes to the Multi Geo service, then they can cause defined user customer data to be stored in other Geographies outside of the tenant Primary Provisioned Geography  <br/> |
|AAD  <br/> |Azure Active Directory  <br/> |
|Tenant  <br/> |A tenant represents an organization in Azure Active Directory. It's a reserved Azure AD service instance that an organization receives and owns when it signs up for a Microsoft cloud service such as Azure or Microsoft 365. Each Azure AD tenant is distinct and separate from other Azure AD tenants  <br/> |
|Default Geography  <br/> |When an AAD tenant is created, a country is provided by the customer during the sign-up process.  This country will determine the default Geography for all M365 services.  In some cases, not all services are able to provision in this single default geography. See M365 Service provisioning mapping below for a description.  <br/> |
|M365 Service provisioning mapping  <br/> |All M365 Services will use the Default Geography to determine where a given tenant's specified data will be provisioned and stored.  <br/> |
|M365 Service provisioning country mapping  <br/> |Please refer to [data maps](https://aka.ms/datamaps) to learn where a given service will provision specified customer data, based on the tenant Default Geography.  <br/> |
|Primary Provisioned Geography  <br/> |A given M365 service will use the tenant Default Geography combined with the M365 Service provisioning country mapping to determine which Geography to provision customer data into.   <br/> |
|M365 Admin Center Data Location  <br/> |To see the Primary Provisioned Geography for Exchange Online, SharePoint Online and Microsoft Teams refer to Office 365 Admin Center in Settings; Org settings; Organization profile; Data location card.  <br/> |
|M365 Multi-Geo Capabilities  <br/> |M365 Multi-Geo Capabilities allows a single tenant to store customer data-at-rest across multiple geographies rather than be limited to the single Primary Provisioned Geography. Please see the Multi-Geo description for more detail.  <br/> |
|Preferred Data Location (PDL)  <br/> |Used for tenants with a Multi-Geo subscription.  A property set by the administrator that indicates where the user or shared resource's s data should be stored at-rest.  Please see the Multi-Geo description for more detail.  <br/> |
|Advanced Data Residency (ADR)  <br/> |A new M365 add-on service that guarantees data residency for a defined set of services. See section 3  <br/> |
|Privacy and Security Product Terms  <br/> |Privacy and Security Terms for M365 services provides some data location related commitments.  The document can be found here.  The extract of the relevant section is:<br>**Office 365 Services.** If Customer provisions its tenant in Australia, Brazil, Canada, the European Union, France, Germany, India, Japan, Norway, Qatar, South Africa, South Korea, Sweden, Switzerland, the United Kingdom, the United Arab Emirates, or the United States, Microsoft will store the following Customer Data at rest only within that Geo: (1) Exchange Online mailbox content (e-mail body, calendar entries, and the content of e-mail attachments), (2) SharePoint Online site content and the files stored within that site, and (3) files uploaded to OneDrive for Business|
|Workloads  <br/> |Often used to refer to a M365 service such as but not limited to Exchange Online, SharePoint Online, Teams, etc.|

## Overview of Data Residency

Microsoft 365 Cloud services run on our data centers around the world and provide services to customers around the world.  Customer data may be stored in multiple data centers.  Data residency refers to the geographic location where data is stored at rest. Data residency is important for government, public sector, education and regulated commercial entities to help ensure protection of personal and/or sensitive information.  In many countries, customers are expected to comply with laws, regulations or industry standards that explicitly govern the location of data storage.

Microsoft makes decisions on where to persistently store customer data based on two factors:
  1.    The Default Geography of the tenant
  2.    Available Geographies for a given service

***Default Geography of the AAD tenant***
When a customer creates a new AAD tenant, the user will enter a country during the creation process.  This country is what defines the Default Geography for the tenant.  There are multiple paths to creating tenants.  They can be created through AAD forms, they can be created when trying out new M365 services (trials), etc.  Once a tenant is created, the Default Geography cannot be changed.

**Available Geographies for a given service**
M365 services are not deployed to all Microsoft data centers globally.  The larger services, like Exchange Online, SharePoint Online and Teams are universally deployed to all Geographies.   Other services make decisions on where to deploy their services based on the number of customers, regional affiliations, and software architectures.  When a customer first uses a service in this category, the provisioning logic will use the Default Geography and the supported Geographies to determine where to provision a given customer.

>[!NOTE]
>Over time, a particular service may deploy their software to additional Geographies, so the provisioning locations for new customers can change over time, and this does not necessarily cause customer data to be moved to a new Geography.

At any given time, there is a M365 Service provisioning country mapping that should be referenced to understand where your service data will be provisioned if you start to use the service for the first time.  This mapping can be found in section 7.  It is important to understand that this mapping does not reflect where "your" data is at any given time.  Your data could have been provisioned earlier, at a time when the mapping was different from what it is today.  The primary option for you to understand your actual data location is to refer to the M365 Admin Center Data Location, though there are a limited number of services exposed there.  If it is critical for you to understand where your data is stored, for a given service, reach out to your Microsoft contact or create a case with Microsoft Support.

Some examples:

**Example 1:** For a tenant with the sign up country as "France" that has a new subscription that includes Exchange Online, SharePoint Online and Microsoft Teams, then the customer data for those services will be provisioned  into the French Local Geography. Why?  Because those services are deployed into the French data centers and the tenant has a France sign up country?

**Example 2:**  For a tenant with the sign up country as "Belgium" that has a new subscription that includes Exchange Online, SharePoint Online and Microsoft Teams, then the customer data for those services will be provisioned  into the Regional Geography 1 – EMEA.  Why?  Because there are no M365 data centers in Belgium and the closest Geography is Regional Geography 1 - EMEA.

**Example 3:** For a tenant with the sign up country as "Japan" that has a new subscription that includes Microsoft Forms, then the customer data for Forms will be provisioned  into the Regional Geography 3 - Americas.  Why?  Because Forms is only deployed in Regional Geography 3 - Americas and Regional Geography 1 – EMEA (EU tenants only).

**Example 4a:** For a tenant with the sign up country as "Sweden" that has a new subscription that includes Microsoft Yammer, then the customer data for Yammer will be provisioned  into the Regional Geography 1 - EMEA.  Why?  Because Yammer is deployed in Regional Geography 1 - EMEA and Swedish tenants are best served out of that Geography.

**Example 4b:** For a tenant with the sign up country as "Sweden" that has a subscription that includes Microsoft Yammer from before Yammer was deployed  to Regional Geography 1 - EMEA , then the customer data for Yammer will be located in Regional Geography 3 - Americas.  Why?  Because, at that time, Yammer only had a single deployment for all customers at that time in Regional Geography 3 - Americas.

**Migrations/Moves**
Once a M365 service provisions a tenant into a particular Geography, there are five ways that this data could be moved to another Geography:

1) The M365 service decides to move the data to a new Geography for service operations reasons, if there are no other policies in place to prevent the move.
2) For Local Geographies that have Microsoft data centers, and for tenants that have the same country, there are options to migrate data from the Regional Geographies into the Local Geographies.  This option is typically only available for 6 months after a Local Geography has been established.
3) If a tenant subscribes to the Multi Geo service, then users data for Exchange Online, SharePoint Online and Microsoft Teams can be assigned to Satellite Geographies.
4) If a tenant has sign up country as a Local Geography or Expanded Geography, and has a subscription to the Advanced Data Residency service add-on, then the tenant data for the included services will be migrated from the Regional Geography to the relevant Local Geography.
5) At times Microsoft reopens Migration opt in from Regional Geography to the relevant Local Geographies or Expanded Local Geographies.

**Durable commitments on data location**

There are three methods for ensuring that the tenant data location for a particular service does not change.

1) Product Terms: Exchange Online, SharePoint Online, OneDrive for Business and Microsoft Teams provisioned in any Local Geography, or the European Union or the United States have a commitment for data residency expressed in the Product Terms.  For more information see ***Section 2: MUST PROVIDE PAGE LINK***
2) Multi Geo subscription: allows customers to assign data location for Exchange Online, SharePoint Online, OneDrive for Business and Microsoft Teams to any supported Geography.  For more information see ***Section 4: MUST PROVIDE PAGE LINK***
3) Advanced Data Residency subscription will guarantee data residency for an expanded set of M365 services in any Local Geography or Expanded Local Geography.  For more information see ***Section 3: MUST PROVIDE PAGE LINK***

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

### Country/Region specific Data Center city locations

The following Regional Geographies can store data at rest.

**Table 4 Regional Geographies**

|**Regional Geographies** |**Locations where customer data may be stored**  |
|---------|---------|
|Regional Geography 1 - EMEA (Europe, Middle East and Africa) |  Austria, Finland, France, Ireland, Netherlands, Sweden  |
|Regional Geography 2 - Asia Pacific |  Hong Kong, Japan, Malaysia, Singapore, South Korea  |
|Regional Geography 3 - Americas | Brazil, Chile, United States  |

**Table 5 Current Local Geographies and Region specific Data Center locations**

|Column1  |Column2  |
|---------|---------|
|Australia   |Sydney, Melbourne   |
|Brazil   |Rio, Campinas   |
|Canada	  |Quebec City, Toronto    |
|European Union	  |Austria (Vienna), Finland (Helsinki), France (Paris, Marseille), Ireland (Dublin), Netherlands (Amsterdam), Sweden (Gävle, Sandviken, Staffanstorp)     |
|France	  |Paris, Marseille     |
|Germany	 |Frankfurt, Berlin       |
|India   |Chennai, Mumbai, Pune        |
|Japan	 |Osaka, Tokyo      |
|South Korea   |Busan, Seoul        |
|Norway	 |Oslo, Stavanger       |
|Qatar	 |Doha          |
|South Africa	   |Cape Town, Johannesburg        |
|Sweden	 |Gävle, Sandviken, Staffanstorp      |
|Switzerland		   |Geneva, Zurich     |
|United Arab Emirates    |Dubai, Abu Dhabi        |
|United Kingdom	   |Durham, London, Cardiff      |
|United States    |Boydton, Cheyenne, Chicago, Des Moines, Quincy, San Antonio, Santa Clara, San Jose       |
