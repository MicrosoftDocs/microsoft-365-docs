---
title: Data Residency for Other Microsoft 365 Services
description: Learn about Data Residency for Other Microsoft 365 Services
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.subservice: advanced-data-residency
ms.topic: article
f1.keywords:
- NOCSH
ms.reviewer: deanw
ms.date: 09/24/2024
ms.custom:
- it-pro
ms.localizationpriority: medium
ms.collection:
- M365-subscription-management
- must-keep
---

# Data Residency for Other Microsoft 365 Services

>[!NOTE]
>Unless otherwise stated in the [Microsoft Product Terms](https://www.microsoft.com/licensing/terms/product/PrivacyandSecurityTerms/all), the following Microsoft 365 services do not have specific commitments for data residency. You can use the following guidance to determine where your data may be provisioned at this time. 

Use the following guidance to determine where your data is located. Reference your _tenant Default Geography_.

<a name='azure-active-directory-aad'></a>

## Microsoft Entra ID

Refer to [Microsoft Entra Data Locations](https://aka.ms/aaddatamap).

## Forms

Tenants in EU member Countries/regions maintain data in Macro Region Geography 1 – EMEA. All other tenants have customer data stored in the United States, except Australia. For customers in Australia, Microsoft Forms customer data is stored at rest in Australia for all new tenants using Forms and existing tenants that haven't previously used Forms.

## Intune

Refer to endpoint.microsoft.com, Tenant Administration | Tenant Status for existing tenants. If you don't have an existing tenant, create a trial tenant and provision Intune. Microsoft won't store Intune customer data at rest outside the stated geo, except if:

- It's necessary for Microsoft to provide customer support, troubleshoot the service, or comply with legal requirements.
- The customer configures an account to enable such storage of customer data, including by using the following:
  - Features that are designed to operate globally, such as Content Delivery Network (CDN), which provides a global caching service and stores customer data at edge locations around the world.
  - If you're using the Remote Help feature, the Helper and Sharer's information might be sent outside of the stated Geo for 48 hours.
  - If you are using Intune's enrollment and compliance notification features to send emails to end-users, the emails will be processed within the respective country for sovereign cloud customers, in EMEA for customers located in EMEA, and in North America for all other customers.
- For Microsoft Entra ID: Refer to [Microsoft Entra Data Locations](https://aka.ms/aaddatamap).
- Preview, beta, or other prerelease services, which typically store customer data in the United States but might store it globally. Regardless, Microsoft doesn't control or limit the Geo from which customers or their end users might access customer data. Similarly, where customer data in other services is subsequently integrated into Intune, the originating customer data will continue to be stored subject to the other service's own Geo commitments (if any); only the copy of the customer data integrated into Intune will be stored in the stated Geo for Intune.

## Office for Mobile

Customer data for this service comes from other services, like Exchange Online and SharePoint Online. There's no customer data stored outside of those services with the exception of the mobile device.

## OneNote Services

OneNote stores customer data in OneDrive. It does however have an API that can cause persistent caches to be made outside of the Geography where OneDrive stores customer data.

## Planner

See the [Static data location information for select workloads](#static-data-location-information-for-select-workloads) section.

>[!NOTE]
>Premium plans are stored as described in Project for the Web.


## Project for the web

See [Power Apps for Data Residency](#power-apps-for-microsoft-365).


## Power Apps for Microsoft 365

Refer to [Dynamics 365 availability and data locations | Microsoft Learn](/dynamics365/get-started/availability).

## Stream

You can find this information from the "?" option in the Stream UI, if you have it running and then click on "About Microsoft Stream" and see where your data is stored. If needed, create a trial tenant.

## Viva Glint

The data region for Viva Glint is determined by the default geography of the tenant, not individual users, and is stored in US or EU data centers based on central tenant location. If the central tenant location is *outside* the US or EU, the data for Viva Glint is stored in the US data center.

## Viva Goals

### Summary

Service documentation: [Introduction to Microsoft Viva Goals ](/viva/goals/intro-to-ms-viva-goals)

Capability summary: Microsoft Viva Goals is a goal-alignment solution that connects teams to your organization’s strategic priorities, unites them around your mission and purpose, and drives business results. Viva Goals enables individuals and companies to organize and track their goals through “Objectives and Key Results” (OKRs). Viva Goals immerses everyone in the company’s purpose and top priorities and creates a culture of engaged employees focused on achieving common goals.

### Data Residency Available

Starting December 5, 2022, Viva Goals [Customer Data](/privacy/eudb/eu-data-boundary-learn) for new tenants in the [European Union Data Boundary (EUDB)](/privacy/eudb/eu-data-boundary-learn#eu-data-boundary-countries-and-datacenter-locations) and in the United Kingdom will be stored in data centers located in the EU. All other tenants will have their Viva Goals Customer Data stored in data centers located in the United States. Tenants aren't provided with a choice for the specific deployment region for data storage. 

To be considered a tenant in the EUDB:

1. The tenant must have a _default geography_ in a EUDB country or select a country in EUDB country as their residence during free trial sign-up; and
1. The tenant must not purchase a Multi-Geo offering

### Migration

Customers based in EU and UK who signed up for Viva Goals prior to December 5, 2022, have now been migrated to EU data centers. 

## Viva Insights – Advanced, Mgr, Leader

Refer to [Viva Insights data residency for advanced insights, managers, and leaders](/viva/insights/advanced/setup-maint/data-residency).

## Viva Insights – Personal

Customer data is processed and stored in the employee's Exchange Online mailbox. Data residency for Personal insights in Viva Insights is based on the employee's mailbox location. For more information, see [Personal insights in Viva Insights privacy guide for admins](/viva/insights/personal/overview/privacy-guide-admins?branch=main#summary-of-key-points).

## Viva Learning

See the [Static data location information for select workloads](#static-data-location-information-for-select-workloads) section.

## Whiteboard

Refer to [Manage data for Microsoft Whiteboard | Microsoft Learn](/microsoft-365/whiteboard/manage-data-organizations).

## Viva Engage

Refer to [Data Residency - Viva Engage | Microsoft Learn](/viva/engage/manage-security-and-compliance/data-residency).

## Static data location information for select workloads

1. Macro Region Geography 1 – EMEA / European Union
1. Macro Region Geography 2 - Asia Pacific
1. Macro Region Geography 3 – Americas
1. Australia
1. Canada
1. Japan
1. India
1. United Kingdom
1. France

| Country Code | Countries/Regions | Viva Insights Advanced | Viva Learning | Planner |
| --- | --- | --- | --- | --- |
| AF | Afghanistan | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| AX | Aland Islands | APC<sup>2</sup>| AMER<sup>3</sup>| EUR<sup>1</sup>|
| AL | Albania | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| DZ | Algeria | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| AS | American Samoa | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| AD | Andorra | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| AO | Angola | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| AI | Anguilla | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| AQ | Antarctica | AMER<sup>3</sup>| EUR<sup>1</sup>| AMER<sup>3</sup>|
| AG | Antigua and Barbuda | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| AR | Argentina | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| AM | Armenia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| AW | Aruba | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| AU | Australia | AUS<sup>4</sup>| AUS<sup>4</sup>| AUS<sup>4</sup>|
| AT | Austria | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| AZ | Azerbaijan | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BS | Bahamas | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| BH | Bahrain | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BD | Bangladesh | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| BB | Barbados | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| BY | Belarus | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BE | Belgium | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BZ | Belize | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| BJ | Benin | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BM | Bermuda | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| BT | Bhutan | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| BO | Bolivia | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| BQ | Bonaire | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| BA | Bosnia and Herzegovina | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BW | Botswana | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BV | Bouvet Island | AMER<sup>3</sup>| EUR<sup>1</sup>| AMER<sup>3</sup>|
| BR | Brazil | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| IO | British Indian Ocean Territory | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| VG | British Virgin Islands | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| BN | Brunei Darussalam | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| BG | Bulgaria | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BF | Burkina Faso | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| BI | Burundi | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| KH | Cambodia | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| CM | Cameroon | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| CA | Canada | AMER<sup>3</sup>| Canada<sup>5</sup>| CAN<sup>5</sup>|
| CV | Cabo Verde | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| KY | Cayman Islands | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| CF | Central African Republic | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| TD | Chad | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| CL | Chile | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| CN | China | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| CX | Christmas Island | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| CC | Cocos (Keeling) Islands | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| CO | Colombia | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| KM | Comoros | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| CG | Congo (Brazzaville) | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| CD | Congo, (Kinshasa) | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| CK | Cook Islands | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| CR | Costa Rica | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| CI | Côte d'Ivoire | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| HR | Croatia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| CW | Curaçao | AMER<sup>3</sup>| EUR<sup>1</sup>| AMER<sup>3</sup>|
| CY | Cyprus | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| CZ | Czech Republic | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| DK | Denmark | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| DJ | Djibouti | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| DM | Dominica | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| DO | Dominican Republic | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| EC | Ecuador | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| EG | Egypt | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SV | El Salvador | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| GQ | Equatorial Guinea | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| ER | Eritrea | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| EE | Estonia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| ET | Ethiopia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| FK | Falkland Islands | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| FO | Faroe Islands | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| FM | Federated States of Micronesia | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| FJ | Fiji | APC<sup>2</sup>| APC<sup>2</sup>| AUS<sup>4</sup>|
| FI | Finland | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| FR | France | EUR<sup>1</sup>| France<sup>9</sup>| EUR<sup>1</sup>|
| GF | French Guiana | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| PF | French Polynesia | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| TF | French Southern Territories | AMER<sup>3</sup>| EUR<sup>1</sup>| AMER<sup>3</sup>|
| GA | Gabon | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GM | Gambia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GE | Georgia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| DE | Germany | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GH | Ghana | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GI | Gibraltar | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GR | Greece | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GL | Greenland | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| GD | Grenada | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| GP | Guadeloupe | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| GU | Guam | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| GT | Guatemala | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| GG | Guernsey | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GN | Guinea | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GW | Guinea-Bissau | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GY | Guyana | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| HT | Haiti | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| HM | Heard and Mcdonald Islands | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| VA | Holy See (Vatican City State) | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| HN | Honduras | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| HK | Hong Kong SAR | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| HU | Hungary | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| IS | Iceland | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| IN | India | APC<sup>2</sup>| APC<sup>2</sup>| IND<sup>7</sup>|
| ID | Indonesia | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| IQ | Iraq | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| IE | Ireland | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| IM | Isle of Man | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| IL | Israel | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| IT | Italy | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| JM | Jamaica | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| JP | Japan | APC<sup>2</sup>| APC<sup>2</sup>| JPN<sup>6</sup>|
| JE | Jersey | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| JO | Jordan | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| KZ | Kazakhstan | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| KE | Kenya | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| KI | Kiribati | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| KP | Korea (North) | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| KR | Korea (South) | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| XK | Kosovo | EUR<sup>1</sup>| AMER<sup>3</sup>| EUR<sup>1</sup>|
| KW | Kuwait | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| KG | Kyrgyzstan | EUR<sup>1</sup>| APC<sup>2</sup>| EUR<sup>1</sup>|
| LA | Lao PDR | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| LV | Latvia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| LB | Lebanon | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| LS | Lesotho | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| LR | Liberia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| LY | Libya | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| LI | Liechtenstein | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| LT | Lithuania | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| LU | Luxembourg | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MO | Macao, SAR | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| MG | Madagascar | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MW | Malawi | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MY | Malaysia | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| MV | Maldives | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| ML | Mali | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MT | Malta | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MH | Marshall Islands | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| MQ | Martinique | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| MR | Mauritania | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MU | Mauritius | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| YT | Mayotte | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MX | Mexico | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| MC | Monaco | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MD | Moldova | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MN | Mongolia | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| ME | Montenegro | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MS | Montserrat | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| MA | Morocco | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MZ | Mozambique | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MM | Myanmar | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| NA | Namibia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| NR | Nauru | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| NP | Nepal | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| NL | Netherlands | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| AN | Netherlands Antilles | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| NC | New Caledonia | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| NZ | New Zealand | APC<sup>2</sup>| APC<sup>2</sup>| AUS<sup>4</sup>|
| NI | Nicaragua | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| NE | Niger | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| NG | Nigeria | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| NU | Niue | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| NF | Norfolk Island | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| MP | Northern Mariana Islands | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| NO | Norway | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| OM | Oman | EUR<sup>1</sup>| APC<sup>2</sup>| EUR<sup>1</sup>|
| PK | Pakistan | EUR<sup>1</sup>| APC<sup>2</sup>| EUR<sup>1</sup>|
| PW | Palau | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| PS | Palestinian Authority | APC<sup>2</sup>| EUR<sup>1</sup>| APC<sup>2</sup>|
| PA | Panama | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| PG | Papua New Guinea | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| PY | Paraguay | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| PE | Peru | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| PH | Philippines | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| PN | Pitcairn | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| PL | Poland | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| PT | Portugal | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| PR | Puerto Rico | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| QA | Qator | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| MK | Republic of North Macedonia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| RE | Réunion | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| RO | Romania | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| RU | Russian Federation | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| RW | Rwanda | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SH | Saint Helena | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| KN | Saint Kitts and Nevis | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| LC | Saint Lucia | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| PM | Saint Pierre and Miquelon | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| VC | Saint Vincent and Grenadines | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| BL | Saint-Barthélemy | AMER<sup>3</sup>| EUR<sup>1</sup>| AMER<sup>3</sup>|
| MF | Saint-Martin (French part) | AMER<sup>3</sup>| EUR<sup>1</sup>| AMER<sup>3</sup>|
| WS | Samoa | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| SM | San Marino | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| ST | São Tomé and Príncipe | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SA | Saudi Arabia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SN | Senegal | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| RS | Serbia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SC | Seychelles | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SL | Sierra Leone | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SG | Singapore | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| SX | Sint Maarten | AMER<sup>3</sup>| EUR<sup>1</sup>| AMER<sup>3</sup>|
| SK | Slovakia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SI | Slovenia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SB | Solomon Islands | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| SO | Somalia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| ZA | South Africa | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GS | South Georgia and the South Sandwich Islands | AMER<sup>3</sup>| EUR<sup>1</sup>| AMER<sup>3</sup>|
| SS | South Sudan | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| ES | Spain | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| LK | Sri Lanka | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| SR | Suriname | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| SJ | Svalbard and Jan Mayen Islands | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SZ | Swaziland | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| SE | Sweden | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| CH | Switzerland | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| TW | Taiwan | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| TJ | Tajikistan | EUR<sup>1</sup>| APC<sup>2</sup>| EUR<sup>1</sup>|
| TH | Thailand | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| TL | Timor-Leste | APC<sup>2</sup>| EUR<sup>1</sup>| APC<sup>2</sup>|
| TG | Togo | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| TK | Tokelau | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| TO | Tonga | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| TT | Trinidad and Tobago | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| TN | Tunisia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| TR | Türkiye | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| TM | Turkmenistan | EUR<sup>1</sup>| APC<sup>2</sup>| EUR<sup>1</sup>|
| TC | Turks and Caicos Islands | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| TV | Tuvalu | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| UG | Uganda | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| UA | Ukraine | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| AE | United Arab Emirates | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| GB | United Kingdom | EUR<sup>1</sup>| UK<sup>8</sup>| EUR<sup>1</sup>|
| TZ | United Republic of Tanzania | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| US | United States of America | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| UY | Uruguay | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| UM | US Minor Outlying Islands | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| UZ | Uzbekistan | EUR<sup>1</sup>| APC<sup>2</sup>| EUR<sup>1</sup>|
| VU | Vanuatu | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| VE | Venezuela (Bolivarian Republic) | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| VN | Vietnam | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| VI | Virgin Islands, US | AMER<sup>3</sup>| AMER<sup>3</sup>| AMER<sup>3</sup>|
| WF | Wallis and Futuna Islands | APC<sup>2</sup>| APC<sup>2</sup>| APC<sup>2</sup>|
| YE | Yemen | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| ZM | Zambia | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
| ZW | Zimbabwe | EUR<sup>1</sup>| EUR<sup>1</sup>| EUR<sup>1</sup>|
