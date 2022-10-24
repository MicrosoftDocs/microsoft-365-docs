---
title: Data Residency for Other Microsoft 365 Services
description: Learn about Data Residency for Other Microsoft 365 Services
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.service: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.date: 
ms.reviewer: 
ms.custom:
- it-pro
ms.collection:
- M365-subscription-management
---

# Data Residency for Other Microsoft 365 Services

## Data Residency commitments available

Use the following guidance to determine where your data is located. Please reference your _tenant_ _Default Geography_.

### Forms
Tenants in EU member Countries maintain data in _Macro Region Geography 1 – EMEA_. All other tenants have customer data stored in the United States.

### Intune
Refer to endpoint.microsoft.com, Tenant Administration | Tenant Status for existing tenants. If you do not have an existing tenant, create a trial tenant and provision Intune.

- Microsoft will not store Intune customer data at rest outside the stated geo, except if:
- It is necessary for Microsoft to provide customer support, troubleshoot the service, or comply with legal requirements.
- The customer configures an account to enable such storage of customer data, including through the use of the following:
- Features that are designed to operate globally, such as Content Delivery Network (CDN), which provides a global caching service and stores customer data at edge locations around the world.
- Azure Active Directory (Azure AD), which may store directory data globally. This does not apply to Azure AD deployments in the United States (where Azure AD data is stored solely in the United States) or in Europe (where Azure AD data is stored in Europe or the United States).
- Preview, beta, or other prerelease services, which typically store customer data in the United States but may store it globally. Regardless, Microsoft does not control or limit the Geo from which customers or their end users may access customer data. Similarly, where customer data in other services is subsequently integrated into Intune, the originating customer data will continue to be stored subject to the other service's own Geo commitments (if any); only the copy of the customer data integrated into Intune will be stored in the stated Geo for Intune.

### Office for Mobile
Customer data for this service comes from other services, like Exchange Online and SharePoint Online. There is no customer data stored outside of those services with the exception of the mobile device.

### OneNote Services
OneNote stores customer data in OneDrive for Business. It does however have an API that can cause persistent caches to be made outside of the Geography where OneDrive for Business stores customer data.

### Planner
Please see the [Static data location information for select workloads](#static-data-location-information-for-select-workloads) section.

### Power Apps for Microsoft 365
Please refer to [Dynamics 365 availability and data locations | Microsoft Learn](/dynamics365/get-started/availability).

### Stream
You can find this information from the "?" option in the Stream UI, if you have it running and then click on "About Microsoft Stream" and see where your data is stored. If needed, create a trial tenant.

### Viva Insights – Advanced, Mgr, Leader
Please see the [Static data location information for select workloads](#static-data-location-information-for-select-workloads) section.  The data region for Manager/Leader and Advanced is determined by the _Default Geography_ of the _tenant_, not individual users.

### Viva Insights – Personal
Customer data is processed and stored in the employee's Exchange Online mailbox. Data residency for Personal insights in Viva Insights is based on the employee's mailbox location. For more information, see [Personal insights in Viva Insights privacy guide for admins](https://learn.microsoft.com/en-us/viva/insights/personal/overview/privacy-guide-admins?branch=main#summary-of-key-points).

### Viva Learning
Please see the [Static data location information for select workloads](#static-data-location-information-for-select-workloads) section.

### Whiteboard
Please refer to [Manage data for Microsoft Whiteboard | Microsoft Learn](/whiteboard/manage-data-organizations).

### Yammer
Please refer to [Data Residency - Yammer | Microsoft Learn](/yammer/manage-security-and-compliance/data-residency).

## Static data location information for select workloads

| **CountyCode** | **County Name** | **Viva Insights Advanced** | **Viva Learning** | **Planner** |
| --- | --- | --- | --- | --- |
| AF | Afghanistan | | | APC |
| AX | Aland Islands | | | EUR |
| AL | Albania | | | EUR |
| DZ | Algeria | | | EUR |
| AS | American Samoa | | | APC |
| AD | Andorra | | | EUR |
| AO | Angola | | | EUR |
| AI | Anguilla | | | NAM |
| AQ | Antarctica | | | NAM |
| AG | Antigua and Barbuda | | | NAM |
| AR | Argentina | | | LAM |
| AM | Armenia | | | EUR |
| AW | Aruba | | | NAM |
| AU | Australia | | | AUS |
| AT | Austria | | | EUR |
| AZ | Azerbaijan | | | EUR |
| BS | Bahamas | | | NAM |
| BH | Bahrain | | | EUR |
| BD | Bangladesh | | | APC |
| BB | Barbados | | | NAM |
| BY | Belarus | | | EUR |
| BE | Belgium | | | EUR |
| BZ | Belize | | | NAM |
| BJ | Benin | | | EUR |
| BM | Bermuda | | | NAM |
| BT | Bhutan | | | APC |
| BO | Bolivia | | | LAM |
| BQ | Bonaire | | | NAM |
| BA | Bosnia and Herzegovina | | | EUR |
| BW | Botswana | | | EUR |
| BV | Bouvet Island | | | NAM |
| BR | Brazil | | | LAM |
| IO | British Indian Ocean Territory | | | APC |
| VG | British Virgin Islands | | | NAM |
| BN | Brunei Darussalam | | | APC |
| BG | Bulgaria | | | EUR |
| BF | Burkina Faso | | | EUR |
| BI | Burundi | | | EUR |
| KH | Cambodia | | | APC |
| CM | Cameroon | | | EUR |
| CA | Canada | | | CAN |
| CV | Cape Verde | | | EUR |
| KY | Cayman Islands | | | NAM |
| CF | Central African Republic | | | EUR |
| TD | Chad | | | EUR |
| CL | Chile | | | LAM |
| CN | China | | | APC |
| CX | Christmas Island | | | APC |
| CC | Cocos (Keeling) Islands | | | APC |
| CO | Colombia | | | NAM |
| KM | Comoros | | | EUR |
| CG | Congo (Brazzaville) | | | EUR |
| CD | Congo, (Kinshasa) | | | EUR |
| CK | Cook Islands | | | APC |
| CR | Costa Rica | | | NAM |
| CI | Côte d'Ivoire | | | EUR |
| HR | Croatia | | | EUR |
| CU | Cuba - USA embargoed nation | | | NAM |
| CW | Curaçao | | | LAM |
| CY | Cyprus | | | EUR |
| CZ | Czech Republic | | | EUR |
| DK | Denmark | | | EUR |
| DJ | Djibouti | | | EUR |
| DM | Dominica | | | NAM |
| DO | Dominican Republic | | | NAM |
| EC | Ecuador | | | NAM |
| EG | Egypt | | | EUR |
| SV | El Salvador | | | NAM |
| GQ | Equatorial Guinea | | | EUR |
| ER | Eritrea | | | EUR |
| EE | Estonia | | | EUR |
| ET | Ethiopia | | | EUR |
| FK | Falkland Islands (Malvinas) | | | NAM |
| FO | Faroe Islands | | | EUR |
| FM | Federated States of Micronesia | | | APC |
| MD | Federated States of Micronesia | | | EUR |
| FJ | Fiji | | | AUS |
| FI | Finland | | | EUR |
| FR | France | | | EUR |
| GF | French Guiana | | | NAM |
| PF | French Polynesia | | | APC |
| TF | French Southern Territories | | | NAM |
| GA | Gabon | | | EUR |
| GM | Gambia | | | EUR |
| GE | Georgia | | | EUR |
| DE | Germany | | | EUR |
| GH | Ghana | | | EUR |
| GI | Gibraltar | | | EUR |
| GR | Greece | | | EUR |
| GL | Greenland | | | NAM |
| GD | Grenada | | | NAM |
| GP | Guadeloupe | | | NAM |
| GU | Guam | | | APC |
| GT | Guatemala | | | NAM |
| GG | Guernsey | | | EUR |
| GN | Guinea | | | EUR |
| GW | Guinea-Bissau | | | EUR |
| GY | Guyana | | | NAM |
| HT | Haiti | | | NAM |
| HM | Heard and Mcdonald Islands | | | NAM |
| VA | Holy See (Vatican City State) | | | EUR |
| HN | Honduras | | | NAM |
| HK | Hong Kong, SAR China | | | APC |
| HU | Hungary | | | EUR |
| IS | Iceland | | | EUR |
| IN | India | | | APC |
| ID | Indonesia | | | APC |
| IQ | Iraq | | | EUR |
| IE | Ireland | | | EUR |
| IR | Islamic Republic of Iran - USA embargoed nation | | | APC |
| IM | Isle of Man | | | EUR |
| IL | Israel | | | EUR |
| IT | Italy | | | EUR |
| JM | Jamaica | | | NAM |
| JP | Japan | | | JPN |
| JE | Jersey | | | EUR |
| JO | Jordan | | | EUR |
| KZ | Kazakhstan | | | EUR |
| KE | Kenya | | | EUR |
| KI | Kiribati | | | APC |
| KP | Korea (North) | | | APC |
| KR | Korea (South) | | | APC |
| XK | Kosovo | | | EUR |
| KW | Kuwait | | | EUR |
| KG | Kyrgyzstan | | | EUR |
| LA | Lao PDR | | | APC |
| LV | Latvia | | | EUR |
| LB | Lebanon | | | EUR |
| LS | Lesotho | | | EUR |
| LR | Liberia | | | EUR |
| LY | Libya | | | EUR |
| LI | Liechtenstein | | | EUR |
| LT | Lithuania | | | EUR |
| LU | Luxembourg | | | EUR |
| MO | Macao, SAR China | | | APC |
| MG | Madagascar | | | EUR |
| MW | Malawi | | | EUR |
| MY | Malaysia | | | APC |
| MV | Maldives | | | APC |
| ML | Mali | | | EUR |
| MT | Malta | | | EUR |
| MH | Marshall Islands | | | APC |
| MQ | Martinique | | | NAM |
| MR | Mauritania | | | EUR |
| MU | Mauritius | | | EUR |
| YT | Mayotte | | | EUR |
| MX | Mexico | | | NAM |
| MC | Monaco | | | EUR |
| MN | Mongolia | | | APC |
| ME | Montenegro | | | EUR |
| MS | Montserrat | | | NAM |
| MA | Morocco | | | EUR |
| MZ | Mozambique | | | EUR |
| MM | Myanmar | | | APC |
| NA | Namibia | | | EUR |
| NR | Nauru | | | APC |
| NP | Nepal | | | APC |
| NL | Netherlands | | | EUR |
| AN | Netherlands Antilles | | | NAM |
| NC | New Caledonia | | | APC |
| NZ | New Zealand | | | AUS |
| NI | Nicaragua | | | NAM |
| NE | Niger | | | EUR |
| NG | Nigeria | | | EUR |
| NU | Niue | | | APC |
| NF | Norfolk Island | | | APC |
| MP | Northern Mariana Islands | | | APC |
| NO | Norway | | | EUR |
| OM | Oman | | | EUR |
| PK | Pakistan | | | EUR |
| PW | Palau | | | APC |
| PS | Palestinian Territory | | | APC |
| PA | Panama | | | NAM |
| PG | Papua New Guinea | | | APC |
| PY | Paraguay | | | LAM |
| PE | Peru | | | LAM |
| PH | Philippines | | | APC |
| PN | Pitcairn | | | APC |
| PL | Poland | | | EUR |
| PT | Portugal | | | EUR |
| PR | Puerto Rico | | | NAM |
| QA | Qator | | | EUR |
| MK | Republic of Macedonia | | | EUR |
| RE | Réunion | | | EUR |
| RO | Romania | | | EUR |
| RU | Russian Federation | | | EUR |
| RW | Rwanda | | | EUR |
| SH | Saint Helena | | | EUR |
| KN | Saint Kitts and Nevis | | | NAM |
| LC | Saint Lucia | | | NAM |
| PM | Saint Pierre and Miquelon | | | NAM |
| VC | Saint Vincent and Grenadines | | | NAM |
| BL | Saint-Barthélemy | | | NAM |
| MF | Saint-Martin (French part) | | | NAM |
| WS | Samoa | | | APC |
| SM | San Marino | | | EUR |
| ST | Sao Tome and Principe | | | EUR |
| SA | Saudi Arabia | | | EUR |
| SN | Senegal | | | EUR |
| RS | Serbia | | | EUR |
| SC | Seychelles | | | EUR |
| SL | Sierra Leone | | | EUR |
| SG | Singapore | | | APC |
| SX | Sint Maarten | | | NAM |
| SK | Slovakia | | | EUR |
| SI | Slovenia | | | EUR |
| SB | Solomon Islands | | | APC |
| SO | Somalia | | | EUR |
| ZA | South Africa | | | EUR |
| GS | South Georgia and the South Sandwich Islands | | | NAM |
| SS | South Sudan | | | EUR |
| ES | Spain | | | EUR |
| LK | Sri Lanka | | | APC |
| SD | SUDAN - USA embargoed nation | | | EUR |
| SR | Suriname | | | NAM |
| SJ | Svalbard and Jan Mayen Islands | | | EUR |
| SZ | Swaziland | | | EUR |
| SE | Sweden | | | EUR |
| CH | Switzerland | | | EUR |
| SY | Syrian Arab Republic (Syria) - USA embargoed nation | | | APC |
| TW | Taiwan, Republic of China | | | APC |
| TJ | Tajikistan | | | EUR |
| TH | Thailand | | | APC |
| TL | Timor-Leste | | | APC |
| TG | Togo | | | EUR |
| TK | Tokelau | | | APC |
| TO | Tonga | | | APC |
| TT | Trinidad and Tobago | | | NAM |
| TN | Tunisia | | | EUR |
| TR | Turkey | | | EUR |
| TM | Turkmenistan | | | EUR |
| TC | Turks and Caicos Islands | | | NAM |
| TV | Tuvalu | | | APC |
| UG | Uganda | | | EUR |
| UA | Ukraine | | | EUR |
| AE | United Arab Emirates | | | EUR |
| GB | United Kingdom | | | EUR |
| TZ | United Republic of Tanzania | | | EUR |
| US | United States of America | | | NAM |
| UY | Uruguay | | | LAM |
| UM | US Minor Outlying Islands | | | APC |
| UZ | Uzbekistan | | | EUR |
| VU | Vanuatu | | | APC |
| VE | Venezuela (Bolivarian Republic) | | | NAM |
| VN | Viet Nam | | | APC |
| VI | Virgin Islands, US | | | NAM |
| WF | Wallis and Futuna Islands | | | APC |
| EH | Western Sahara | | | EUR |
| YE | Yemen | | | EUR |
| ZM | Zambia | | | EUR |
| ZW | Zimbabwe | | | EUR |
