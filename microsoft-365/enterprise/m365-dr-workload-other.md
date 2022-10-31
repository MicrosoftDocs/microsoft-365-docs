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

### Azure Active Directory (AAD)

Please refer to [Azure Active Directory Data Locations](https://aka.ms/aaddatamap).

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
Customer data is processed and stored in the employee's Exchange Online mailbox. Data residency for Personal insights in Viva Insights is based on the employee's mailbox location. For more information, see [Personal insights in Viva Insights privacy guide for admins](https://learn.microsoft.com/viva/insights/personal/overview/privacy-guide-admins?branch=main#summary-of-key-points).

### Viva Learning
Please see the [Static data location information for select workloads](#static-data-location-information-for-select-workloads) section.

### Whiteboard
Please refer to [Manage data for Microsoft Whiteboard | Microsoft Learn](/whiteboard/manage-data-organizations).

### Yammer
Please refer to [Data Residency - Yammer | Microsoft Learn](/yammer/manage-security-and-compliance/data-residency).

## Static data location information for select workloads

| CountyCode | County Name | Viva Insights Advanced | Viva Learning | Planner |
| --- | --- | --- | --- | --- |
| AF | Afghanistan | APC | APC | APC |
| AX | Aland Islands | APC | AMER | EUR |
| AL | Albania | EUR | EUR | EUR |
| DZ | Algeria | EUR | EUR | EUR |
| AS | American Samoa | APC | APC | APC |
| AD | Andorra | EUR | EUR | EUR |
| AO | Angola | EUR | EUR | EUR |
| AI | Anguilla | AMER | AMER | AMER |
| AQ | Antarctica | AMER | EUR | AMER |
| AG | Antigua and Barbuda | AMER | AMER | AMER |
| AR | Argentina | AMER | AMER | AMER |
| AM | Armenia | EUR | EUR | EUR |
| AW | Aruba | AMER | AMER | AMER |
| AU | Australia | APC | AUS | AUS |
| AT | Austria | EUR | EUR | EUR |
| AZ | Azerbaijan | EUR | EUR | EUR |
| BS | Bahamas | AMER | AMER | AMER |
| BH | Bahrain | EUR | EUR | EUR |
| BD | Bangladesh | APC | APC | APC |
| BB | Barbados | AMER | AMER | AMER |
| BY | Belarus | EUR | EUR | EUR |
| BE | Belgium | EUR | EUR | EUR |
| BZ | Belize | AMER | AMER | AMER |
| BJ | Benin | EUR | EUR | EUR |
| BM | Bermuda | AMER | AMER | AMER |
| BT | Bhutan | APC | APC | APC |
| BO | Bolivia | AMER | AMER | AMER |
| BQ | Bonaire | AMER | AMER | AMER |
| BA | Bosnia and Herzegovina | EUR | EUR | EUR |
| BW | Botswana | EUR | EUR | EUR |
| BV | Bouvet Island | AMER | EUR | AMER |
| BR | Brazil | AMER | AMER | AMER |
| IO | British Indian Ocean Territory | APC | APC | APC |
| VG | British Virgin Islands | AMER | AMER | AMER |
| BN | Brunei Darussalam | APC | APC | APC |
| BG | Bulgaria | EUR | EUR | EUR |
| BF | Burkina Faso | EUR | EUR | EUR |
| BI | Burundi | EUR | EUR | EUR |
| KH | Cambodia | APC | APC | APC |
| CM | Cameroon | EUR | EUR | EUR |
| CA | Canada | AMER | AMER | CAN |
| CV | Cape Verde | EUR | EUR | EUR |
| KY | Cayman Islands | AMER | AMER | AMER |
| CF | Central African Republic | EUR | EUR | EUR |
| TD | Chad | EUR | EUR | EUR |
| CL | Chile | AMER | AMER | AMER |
| CN | China | APC | APC | APC |
| CX | Christmas Island | APC | APC | APC |
| CC | Cocos (Keeling) Islands | APC | APC | APC |
| CO | Colombia | AMER | AMER | AMER |
| KM | Comoros | EUR | EUR | EUR |
| CG | Congo (Brazzaville) | EUR | EUR | EUR |
| CD | Congo, (Kinshasa) | EUR | EUR | EUR |
| CK | Cook Islands | APC | APC | APC |
| CR | Costa Rica | AMER | AMER | AMER |
| CI | Côte d'Ivoire | EUR | EUR | EUR |
| HR | Croatia | EUR | EUR | EUR |
| CW | Curaçao | AMER | EUR | AMER |
| CY | Cyprus | EUR | EUR | EUR |
| CZ | Czech Republic | EUR | EUR | EUR |
| DK | Denmark | EUR | EUR | EUR |
| DJ | Djibouti | EUR | EUR | EUR |
| DM | Dominica | AMER | AMER | AMER |
| DO | Dominican Republic | AMER | AMER | AMER |
| EC | Ecuador | AMER | AMER | AMER |
| EG | Egypt | EUR | EUR | EUR |
| SV | El Salvador | AMER | AMER | AMER |
| GQ | Equatorial Guinea | EUR | EUR | EUR |
| ER | Eritrea | EUR | EUR | EUR |
| EE | Estonia | EUR | EUR | EUR |
| ET | Ethiopia | EUR | EUR | EUR |
| FK | Falkland Islands (Malvinas) | AMER | AMER | AMER |
| FO | Faroe Islands | EUR | EUR | EUR |
| FM | Federated States of Micronesia | APC | APC | APC |
| FJ | Fiji | APC | APC | AUS |
| FI | Finland | EUR | EUR | EUR |
| FR | France | EUR | EUR | EUR |
| GF | French Guiana | AMER | AMER | AMER |
| PF | French Polynesia | APC | APC | APC |
| TF | French Southern Territories | AMER | EUR | AMER |
| GA | Gabon | EUR | EUR | EUR |
| GM | Gambia | EUR | EUR | EUR |
| GE | Georgia | EUR | EUR | EUR |
| DE | Germany | EUR | EUR | EUR |
| GH | Ghana | EUR | EUR | EUR |
| GI | Gibraltar | EUR | EUR | EUR |
| GR | Greece | EUR | EUR | EUR |
| GL | Greenland | AMER | AMER | AMER |
| GD | Grenada | AMER | AMER | AMER |
| GP | Guadeloupe | AMER | AMER | AMER |
| GU | Guam | APC | APC | APC |
| GT | Guatemala | AMER | AMER | AMER |
| GG | Guernsey | EUR | EUR | EUR |
| GN | Guinea | EUR | EUR | EUR |
| GW | Guinea-Bissau | EUR | EUR | EUR |
| GY | Guyana | AMER | AMER | AMER |
| HT | Haiti | AMER | AMER | AMER |
| HM | Heard and Mcdonald Islands | AMER | AMER | AMER |
| VA | Holy See (Vatican City State) | EUR | EUR | EUR |
| HN | Honduras | AMER | AMER | AMER |
| HK | Hong Kong, SAR China | APC | APC | APC |
| HU | Hungary | EUR | EUR | EUR |
| IS | Iceland | EUR | EUR | EUR |
| IN | India | APC | APC | APC |
| ID | Indonesia | APC | APC | APC |
| IQ | Iraq | EUR | EUR | EUR |
| IE | Ireland | EUR | EUR | EUR |
| IM | Isle of Man | EUR | EUR | EUR |
| IL | Israel | EUR | EUR | EUR |
| IT | Italy | EUR | EUR | EUR |
| JM | Jamaica | AMER | AMER | AMER |
| JP | Japan | APC | APC | JPN |
| JE | Jersey | EUR | EUR | EUR |
| JO | Jordan | EUR | EUR | EUR |
| KZ | Kazakhstan | EUR | EUR | EUR |
| KE | Kenya | EUR | EUR | EUR |
| KI | Kiribati | APC | APC | APC |
| KP | Korea (North) | APC | APC | APC |
| KR | Korea (South) | APC | APC | APC |
| XK | Kosovo | EUR | AMER | EUR |
| KW | Kuwait | EUR | EUR | EUR |
| KG | Kyrgyzstan | EUR | APC | EUR |
| LA | Lao PDR | APC | APC | APC |
| LV | Latvia | EUR | EUR | EUR |
| LB | Lebanon | EUR | EUR | EUR |
| LS | Lesotho | EUR | EUR | EUR |
| LR | Liberia | EUR | EUR | EUR |
| LY | Libya | EUR | EUR | EUR |
| LI | Liechtenstein | EUR | EUR | EUR |
| LT | Lithuania | EUR | EUR | EUR |
| LU | Luxembourg | EUR | EUR | EUR |
| MO | Macao, SAR China | APC | APC | APC |
| MG | Madagascar | EUR | EUR | EUR |
| MW | Malawi | EUR | EUR | EUR |
| MY | Malaysia | APC | APC | APC |
| MV | Maldives | APC | APC | APC |
| ML | Mali | EUR | EUR | EUR |
| MT | Malta | EUR | EUR | EUR |
| MH | Marshall Islands | APC | APC | APC |
| MQ | Martinique | AMER | AMER | AMER |
| MR | Mauritania | EUR | EUR | EUR |
| MU | Mauritius | EUR | EUR | EUR |
| YT | Mayotte | EUR | EUR | EUR |
| MX | Mexico | AMER | AMER | AMER |
| MC | Monaco | EUR | EUR | EUR |
| MD | Moldova | EUR | EUR | EUR |
| MN | Mongolia | APC | APC | APC |
| ME | Montenegro | EUR | EUR | EUR |
| MS | Montserrat | AMER | AMER | AMER |
| MA | Morocco | EUR | EUR | EUR |
| MZ | Mozambique | EUR | EUR | EUR |
| MM | Myanmar | APC | APC | APC |
| NA | Namibia | EUR | EUR | EUR |
| NR | Nauru | APC | APC | APC |
| NP | Nepal | APC | APC | APC |
| NL | Netherlands | EUR | EUR | EUR |
| AN | Netherlands Antilles | AMER | AMER | AMER |
| NC | New Caledonia | APC | APC | APC |
| NZ | New Zealand | APC | APC | AUS |
| NI | Nicaragua | AMER | AMER | AMER |
| NE | Niger | EUR | EUR | EUR |
| NG | Nigeria | EUR | EUR | EUR |
| NU | Niue | APC | APC | APC |
| NF | Norfolk Island | APC | APC | APC |
| MP | Northern Mariana Islands | APC | APC | APC |
| NO | Norway | EUR | EUR | EUR |
| OM | Oman | EUR | APC | EUR |
| PK | Pakistan | EUR | APC | EUR |
| PW | Palau | APC | APC | APC |
| PS | Palestinian Authority | APC | EUR | APC |
| PA | Panama | AMER | AMER | AMER |
| PG | Papua New Guinea | APC | APC | APC |
| PY | Paraguay | AMER | AMER | AMER |
| PE | Peru | AMER | AMER | AMER |
| PH | Philippines | APC | APC | APC |
| PN | Pitcairn | APC | APC | APC |
| PL | Poland | EUR | EUR | EUR |
| PT | Portugal | EUR | EUR | EUR |
| PR | Puerto Rico | AMER | AMER | AMER |
| QA | Qator | EUR | EUR | EUR |
| MK | Republic of Macedonia | EUR | EUR | EUR |
| RE | Réunion | EUR | EUR | EUR |
| RO | Romania | EUR | EUR | EUR |
| RU | Russian Federation | EUR | EUR | EUR |
| RW | Rwanda | EUR | EUR | EUR |
| SH | Saint Helena | EUR | EUR | EUR |
| KN | Saint Kitts and Nevis | AMER | AMER | AMER |
| LC | Saint Lucia | AMER | AMER | AMER |
| PM | Saint Pierre and Miquelon | AMER | AMER | AMER |
| VC | Saint Vincent and Grenadines | AMER | AMER | AMER |
| BL | Saint-Barthélemy | AMER | EUR | AMER |
| MF | Saint-Martin (French part) | AMER | EUR | AMER |
| WS | Samoa | APC | APC | APC |
| SM | San Marino | EUR | EUR | EUR |
| ST | Sao Tome and Principe | EUR | EUR | EUR |
| SA | Saudi Arabia | EUR | EUR | EUR |
| SN | Senegal | EUR | EUR | EUR |
| RS | Serbia | EUR | EUR | EUR |
| SC | Seychelles | EUR | EUR | EUR |
| SL | Sierra Leone | EUR | EUR | EUR |
| SG | Singapore | APC | APC | APC |
| SX | Sint Maarten | AMER | EUR | AMER |
| SK | Slovakia | EUR | EUR | EUR |
| SI | Slovenia | EUR | EUR | EUR |
| SB | Solomon Islands | APC | APC | APC |
| SO | Somalia | EUR | EUR | EUR |
| ZA | South Africa | EUR | EUR | EUR |
| GS | South Georgia and the South Sandwich Islands | AMER | EUR | AMER |
| SS | South Sudan | EUR | EUR | EUR |
| ES | Spain | EUR | EUR | EUR |
| LK | Sri Lanka | APC | APC | APC |
| SR | Suriname | AMER | AMER | AMER |
| SJ | Svalbard and Jan Mayen Islands | EUR | EUR | EUR |
| SZ | Swaziland | EUR | EUR | EUR |
| SE | Sweden | EUR | EUR | EUR |
| CH | Switzerland | EUR | EUR | EUR |
| TW | Taiwan, Republic of China | APC | APC | APC |
| TJ | Tajikistan | EUR | APC | EUR |
| TH | Thailand | APC | APC | APC |
| TL | Timor-Leste | APC | EUR | APC |
| TG | Togo | EUR | EUR | EUR |
| TK | Tokelau | APC | APC | APC |
| TO | Tonga | APC | APC | APC |
| TT | Trinidad and Tobago | AMER | AMER | AMER |
| TN | Tunisia | EUR | EUR | EUR |
| TR | Turkey | EUR | EUR | EUR |
| TM | Turkmenistan | EUR | APC | EUR |
| TC | Turks and Caicos Islands | AMER | AMER | AMER |
| TV | Tuvalu | APC | APC | APC |
| UG | Uganda | EUR | EUR | EUR |
| UA | Ukraine | EUR | EUR | EUR |
| AE | United Arab Emirates | EUR | EUR | EUR |
| GB | United Kingdom | EUR | EUR | EUR |
| TZ | United Republic of Tanzania | EUR | EUR | EUR |
| US | United States of America | AMER | AMER | AMER |
| UY | Uruguay | AMER | AMER | AMER |
| UM | US Minor Outlying Islands | APC | APC | APC |
| UZ | Uzbekistan | EUR | APC | EUR |
| VU | Vanuatu | APC | APC | APC |
| VE | Venezuela (Bolivarian Republic) | AMER | AMER | AMER |
| VN | Vietnam | APC | APC | APC |
| VI | Virgin Islands, US | AMER | AMER | AMER |
| WF | Wallis and Futuna Islands | APC | APC | APC |
| EH | Western Sahara | EUR | EUR | EUR |
| YE | Yemen | EUR | EUR | EUR |
| ZM | Zambia | EUR | EUR | EUR |
| ZW | Zimbabwe | EUR | EUR | EUR |
