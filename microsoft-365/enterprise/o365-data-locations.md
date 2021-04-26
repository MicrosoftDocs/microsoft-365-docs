---
title: "Microsoft 365 data locations"
ms.author: deanw
author: dmwmsft
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
search.appverid:
- MET150
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
ms.custom:
- Ent_TLGs
ms.assetid: 706d5449-45e5-4b0c-a012-ab60501899ad
description: "Determine where your Microsoft 365 customer data is stored worldwide"
---

# Where your Microsoft 365 customer data is stored

The tables below shows where customer data is stored at-rest for Microsoft 365 services across all of Microsoft's global cloud locations. Expand the location of your billing address country to find out where customer data for each service would be stored.

If your business is located in the European Union, see [Data locations for the European Union](EU-data-storage-locations.md) for more information. 

Customers should view tenant specific data location information in your Microsoft 365 Admin Center in **Settings | Org settings | Organization Profile | Data location**. If you [requested to move to a new Geo](request-your-data-move.md), the data location information in the Microsoft 365 admin center may show only your new Geo even though some data may be stored temporarily in your prior Geo during the transition. 

New Microsoft 365 tenants are defaulted to Geo based on the country of the transaction associated with that tenant's first subscription.

Find information about the contractual commitments for the storage location of customer data at rest in the [Microsoft Online Services Terms (OST)](https://go.microsoft.com/fwlink/p/?LinkId=2098215).

For Azure Active Directory data locations, please visit [AAD Data Map](https://go.microsoft.com/fwlink/p/?linkid=2092972).

If Customer’s billing address is outside Europe and Customer has an Office 365 Education subscription, then notwithstanding the “Location of Customer Data at Rest for Core Online Services” section of the OST, Microsoft may provision Customer’s Office 365 tenant in, transfer Customer Data to, and store Customer Data at rest anywhere within Europe or North America.  If Customer’s billing address is in Europe and Customer has an Office 365 Education subscription, then notwithstanding the “Location of Customer Data at Rest for Core Online Services” section of the OST, Microsoft may provision Customer’s Office 365 tenant in, transfer Customer Data to, and store Customer Data at rest anywhere within the European Union.




## FAQ

### How does Microsoft define data?

Review our [definitions for different types of data](https://go.microsoft.com/fwlink/p/?linkid=864390) on the Microsoft Trust Center. In the [Microsoft Online Services Terms](https://go.microsoft.com/fwlink/p/?linkid=862403), Microsoft makes contractual commitments regarding customer data/your data. We refer to core customer data as the customer data that is committed to be stored at rest only within your region according to the [Microsoft Online Services Terms](https://go.microsoft.com/fwlink/p/?linkid=862403).

### Where are the exact addresses of the data centers?

Microsoft does not disclose the exact addresses of its data centers. We established this policy to help secure our data center facilities.  However, we do list city locations. Please see [Data Center Locations](o365-data-locations.md#data-center-locations) to learn more.

### Does the location of your customer data have a direct impact on your end users' experience?

The performance of Microsoft 365 is not simply proportional to a user's distance to data center locations. Microsoft's continued investments in its global cloud network, global cloud infrastructure, and the Microsoft 365 services architecture help provide users with a singular, consistent experience independent of where customer data is stored at rest. If your users are experiencing performance issues, you should troubleshoot those in depth. Microsoft has published guidance for Microsoft 365 customers to plan for and optimize end-user performance on the [Office Support web site](./network-planning-and-performance.md).

### How does Microsoft help me comply with my national, regional, and industry-specific regulations?

To help you comply with national, regional, and industry-specific requirements governing the collection and use of individuals' data, Microsoft 365 offers the most comprehensive set of compliance offerings of any global cloud productivity provider. Please review [our compliance offerings](/compliance/regulatory/offering-home) and more details in the [Microsoft 365 Compliance](https://go.microsoft.com/fwlink/p/?linkid=862317) section on the Microsoft Trust Center. Also, certain Microsoft 365 plans offer further compliance solutions to help you manage your data, comply with legal and regulatory requirements, and monitor actions taken on your data.

### Who can access your data and according to what rules?

 Microsoft implements strong measures to help protect your customer data from inappropriate access or use by unauthorized persons. This includes restricting access by Microsoft personnel and subcontractors, and carefully defining requirements for responding to government requests for customer data. However, you can access your own customer data at any time and for any reason. More details are available on the [Microsoft Trust Center](https://go.microsoft.com/fwlink/p/?linkid=864392).

### Does Microsoft access your data?

Microsoft automates most Microsoft 365 operations while intentionally limiting its own access to customer data. This helps us manage Microsoft 365 at scale and address the risks of internal threats to customer data. By default, Microsoft engineers have no standing administrative privileges and no standing access to customer data in Microsoft 365. A Microsoft engineer may have limited and logged access to customer data for a limited amount of time, but only when necessary for normal service operations and only when approved by a member of senior management at Microsoft (and, for customers who are licensed for the Customer Lockbox feature, by the customer).

### How does Microsoft secure your data?

Microsoft has robust policies, controls, and systems built into Microsoft 365 to help keep your information safe. Review the [Microsoft 365 security section](https://go.microsoft.com/fwlink/p/?linkid=864393) on the Microsoft Trust Center to learn more.

### Does Microsoft 365 encrypt your data?

Microsoft 365 uses service-side technologies that encrypt customer data at rest and in transit. For customer data at rest, Microsoft 365 uses volume-level and file-level encryption. For customer data in transit, Microsoft 365 uses multiple encryption technologies for communications between data centers and between clients and servers, such as Transport Layer Security (TLS) and Internet Protocol Security (IPsec). Microsoft 365 also includes customer-managed encryption features.

### Where can I find data residency information for Microsoft Azure?

Please review the [Products available by region](https://go.microsoft.com/fwlink/p/?linkid=2093451) page to find data residency information for Microsoft Azure.

### What are Multi-Geo Capabilities in Microsoft 365?

[Multi-Geo](https://go.microsoft.com/fwlink/p/?linkid=872033) gives customers the ability to allocate core customer data at rest to our available locations in the Microsoft 365 cloud.   

### What services support Multi-Geo?

[Multi-Geo](https://go.microsoft.com/fwlink/p/?linkid=872033) is available for Exchange Online, OneDrive and SharePoint Online. Microsoft is investigating Multi-Geo for other Microsoft 365 services.

### What are the exceptions for Intune data locations?

Microsoft will not store Intune customer data at rest outside the stated Geo. except if:

- It is necessary for Microsoft to provide customer support, troubleshoot the service, or comply with legal requirements.
- The customer configures an account to enable such storage of customer data, including through the use of the following:

  - Features that are designed to operate globally, such as Content Delivery Network (CDN), which provides a global caching service and stores customer data at edge locations around the world.

  - Azure Active Directory (Azure AD), which may store directory data globally. This does not apply to Azure AD deployments in the United States (where Azure AD data is stored solely in the United States) or in Europe (where Azure AD data is stored in Europe or the United States).
   
  - Preview, beta, or other prerelease services, which typically store customer data in the United States but may store it globally.

Regardless, Microsoft does not control or limit the Geo from which customers or their end users may access customer data. 

## Data Center Locations

The table below defines the data location for various services. When determining the service locations please refer to these tables.

### Data Center Geographies

The following global geographies can store data at rest. The locations where customer data may be stored can change. 

| Global Geographies | Locations where customer data may be stored |
| --- | --- |
| Global Geography 1 – EMEA (Europe, Middle East and Africa) | Austria, Finland, France, Ireland, Netherlands |
| Global Geography 2 – Asia Pacific | Hong Kong, Japan, Malaysia, Singapore, South Korea |
| Global Geography 3 - Americas | Brazil, Chile, United States |

## Country/Region specific Data Center city locations

For country/region specific data centers, the following defines the cities where customer data is stored at rest.

| Country | City |
| --- | --- |
| Australia | Sydney, Melbourne |
| Brazil | Rio, Campinas |
| Canada | Quebec City, Toronto |
| European Union | Austria (Vienna), Finland (Helsinki), France (Paris, Marseille), Ireland (Dublin), Netherlands (Amsterdam) |
| France | Paris, Marseille |
| Germany | Frankfurt, Berlin |
| India | Chennai, Mumbai, Pune |
| Japan | Osaka, Tokyo |
| South Korea | Busan, Seoul |
| Norway | Oslo, Stavanger |
| South Africa | Cape Town, Johannesburg |
| Switzerland | Geneva, Zurich |
| United Arab Emirates | Dubai, Abu Dhabi |
| United Kingdom | Durham, London, Cardiff |
| United States |  Boydton, Cheyenne, Chicago, Des Moines, Quincy, San Antonio, Santa Clara, San Jose |

New Microsoft 365 tenants are defaulted to Geo based on the country of the billing address associated with that tenant's first subscription. To confirm where customer data is stored for existing Office 365 services, please view tenant specific data location information in your Office 365 Admin Center in Settings | Org settings | Organization profile | Data location card. Alternatively, expand the country that your business is based in, from the list below, to find out where customer data would be stored if you were to start using a Microsoft 365 Service today.

## Afghanistan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Aland Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Albania
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Algeria
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## American Samoa
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Andorra
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Angola
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Anguilla
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Antarctica
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Antigua and Barbuda
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Argentina
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Armenia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Aruba
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Australia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Australia |
| OneDrive for Business | Australia |
| SharePoint Online | Australia |
| Skype for Business | Australia |
| Microsoft Teams | Australia |
| Office Online &amp; Mobile | Australia |
| EOP | Australia |
| Intune | Australia |
| MyAnalytics | Australia |
| Planner | Australia |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Australia |
| Stream | Australia |
| Whiteboard | Australia |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Austria
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Azerbaijan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner |  Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Bahamas
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Bahrain
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Bangladesh
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Barbados
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Belarus
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Belgium
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Belize
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Benin
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Bermuda
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Bhutan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Bolivia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Bonaire
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Bosnia and Herzegovina
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner |  Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Botswana
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Bouvet Island
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Brazil
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Brazil |
| OneDrive for Business | Brazil |
| SharePoint Online | Brazil |
| Skype for Business | United States |
| Microsoft Teams | Brazil |
| Office Online &amp; Mobile | Brazil |
| EOP | Brazil |
| Intune | United States |
| MyAnalytics | Brazil |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Brazil |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## British Indian Ocean Territory
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## British Virgin Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Brunei
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Bulgaria
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Burkina Faso
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Burundi
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Cambodia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Cameroon
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Canada
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Canada |
| OneDrive for Business | Canada |
| SharePoint Online | Canada |
| Skype for Business | Canada |
| Microsoft Teams | Canada |
| Office Online &amp; Mobile | Canada |
| EOP | Canada |
| Intune | United States |
| MyAnalytics | Canada |
| Planner | Canada |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Canada |
| Stream | Canada |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Cape Verde
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Cayman Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Central African Republic
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Chad
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Chile
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## China
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Christmas Island
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Cocos (Keeling) Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Colombia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Comoros
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Congo (Brazzaville)
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Congo, (Kinshasa)
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Cook Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Costa Rica
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Cote D'Ivoire
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Croatia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Curacao
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Cyprus
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Czech Republic
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Denmark
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Djibouti
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Dominica
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Dominican Republic
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Ecuador
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Egypt
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## El Salvador
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Equatorial Guinea
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Eritrea
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Estonia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Ethiopia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner |  United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Falkland Islands (Malvinas)
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Faroe Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Federated States of Micronesia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Fiji
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Australia |
| OneDrive for Business | Australia |
| SharePoint Online | Australia |
| Skype for Business | Australia |
| Microsoft Teams | Australia |
| Office Online &amp; Mobile | Australia |
| EOP | Australia |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Australia |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Australia |
| Stream | Australia |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Finland
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## France
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | France |
| OneDrive for Business | France |
| SharePoint Online | France |
| Skype for Business | European Union |
| Microsoft Teams | France |
| Office Online &amp; Mobile | France |
| EOP | France |
| Intune | European Union |
| MyAnalytics | France |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union |
| OneNote Services | France |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## French Guiana
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## French Polynesia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## French Southern Territories
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Gabon
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Gambia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Georgia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Germany
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Germany |
| OneDrive for Business | Germany |
| SharePoint Online | Germany |
| Skype for Business | European Union |
| Microsoft Teams | Germany |
| Office Online &amp; Mobile | Germany |
| EOP | Germany |
| Intune | European Union |
| MyAnalytics | Germany |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union |
| OneNote Services | Germany |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Ghana
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Gibraltar
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Greece
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Greenland
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Grenada
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Guadeloupe
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Guam
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Guatemala
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Guernsey
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Guinea
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Guinea-Bissau
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Guyana
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Haiti
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Heard and McDonald Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Herzegovina
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Holy See (Vatican City State)
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Honduras
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Hong Kong SAR
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Hungary
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Iceland
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## India
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | India |
| OneDrive for Business | India |
| SharePoint Online | India |
| Skype for Business | India |
| Microsoft Teams | India |
| Office Online &amp; Mobile | India |
| EOP | India |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | India |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | India |
| Stream | India |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Indonesia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Iraq
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Ireland
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Isle of Man
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Israel
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Italy
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Jamaica
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Japan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Japan |
| OneDrive for Business | Japan |
| SharePoint Online | Japan |
| Skype for Business | Japan |
| Microsoft Teams | Japan |
| Office Online &amp; Mobile | Japan |
| EOP | Japan |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Japan |
| Planner | Japan |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Japan |
| Stream | Japan |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Jersey
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer |  Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Jordan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Kazakhstan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Kenya
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Kiribati
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## South Korea
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | South Korea |
| OneDrive for Business | South Korea |
| SharePoint Online | South Korea |
| Skype for Business | South Korea |
| Microsoft Teams | South Korea |
| Office Online &amp; Mobile | South Korea |
| EOP | South Korea |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | South Korea |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | South Korea |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Kosovo
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Kuwait
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Kyrgyzstan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Laos
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Latvia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Lebanon
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer |  Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Lesotho
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Liberia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Libya
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Liechtenstein
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Switzerland |
| OneDrive for Business | Switzerland |
| SharePoint Online | Switzerland |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Switzerland |
| Office Online &amp; Mobile | Switzerland |
| EOP | Switzerland |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Switzerland |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Switzerland |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Lithuania
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Luxembourg
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Madagascar
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Malawi
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Malaysia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Maldives
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Mali
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Malta
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Marshall Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Martinique
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Mauritania
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Mauritius
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Mayotte
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Mexico
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Moldova
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Monaco
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Mongolia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Montenegro
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Montserrat
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Morocco
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Mozambique
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Myanmar
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Namibia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Nauru
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Nepal
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Netherlands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Netherlands Antilles
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## New Caledonia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## New Zealand
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Australia |
| OneDrive for Business | Australia |
| SharePoint Online | Australia |
| Skype for Business | Australia |
| Microsoft Teams | Australia |
| Office Online &amp; Mobile | Australia |
| EOP | Australia |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Australia |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Australia |
| Stream | Australia |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Nicaragua
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Niger
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Nigeria
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Niue
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Norfolk Island
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Northern Mariana Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Norway
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Norway |
| OneDrive for Business | Norway |
| SharePoint Online | Norway |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Norway |
| Office Online &amp; Mobile | Norway |
| EOP | Norway |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Norway |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Norway |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | Global Geography 1 – EMEA |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Oman
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Pakistan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Palau
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Palestinian Authority
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Panama
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Papua New Guinea
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Paraguay
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Peru
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Philippines
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Pitcairn
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Poland
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Portugal
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Puerto Rico
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Qatar
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Republic of Macedonia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Réunion
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Romania
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Russian Federation
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Rwanda
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Saint Helena
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Saint Kitts and Nevis
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Saint Lucia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Saint Martin
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Saint Pierre and Miquelon
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Saint Vincent and the Grenadines
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Saint-Barthélemy
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Samoa
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## San Marino
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Sao Tome and Principe
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Saudi Arabia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | Global Geography 1 – EMEA |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Senegal
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Serbia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Seychelles
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Sierra Leone
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Singapore
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Sint Maarten
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Slovakia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Slovenia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Solomon Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Somalia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## South Africa
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | South Africa |
| OneDrive for Business | South Africa |
| SharePoint Online | South Africa |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | South Africa |
| Office Online &amp; Mobile | South Africa |
| EOP | South Africa |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | South Africa |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | South Africa |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## South Georgia and the South Sandwich Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Spain
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Sri Lanka
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Suriname
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Svalbard and Jan Mayen Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Swaziland
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Sweden
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | European Union |
| OneDrive for Business | European Union |
| SharePoint Online | European Union |
| Skype for Business | European Union |
| Microsoft Teams | European Union |
| Office Online &amp; Mobile | European Union |
| EOP | European Union |
| Intune | European Union |
| MyAnalytics | European Union |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union  |
| OneNote Services | European Union |
| Stream | European Union |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## Switzerland
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Switzerland |
| OneDrive for Business | Switzerland |
| SharePoint Online | Switzerland |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Switzerland |
| Office Online &amp; Mobile | Switzerland |
| EOP | Switzerland |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Switzerland |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Switzerland |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | Global Geography 1 – EMEA |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Taiwan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Tajikistan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## United Republic of Tanzania
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Thailand
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Timor-Leste
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Togo
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Tokelau
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Tonga
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Trinidad and Tobago
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Tunisia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Turkey
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Turkmenistan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Turks and Caicos Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Tuvalu
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## U.S. Virgin Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Uganda
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Ukraine
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## United Arab Emirates
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United Arab Emirates |
| OneDrive for Business | United Arab Emirates |
| SharePoint Online | United Arab Emirates |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | United Arab Emirates |
| Office Online &amp; Mobile | United Arab Emirates |
| EOP | United Arab Emirates |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | United Arab Emirates |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | United Arab Emirates |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## United Kingdom
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United Kingdom |
| OneDrive for Business | United Kingdom |
| SharePoint Online | United Kingdom |
| Skype for Business | United Kingdom |
| Microsoft Teams | United Kingdom |
| Office Online &amp; Mobile | United Kingdom |
| EOP | United Kingdom |
| Intune | European Union |
| MyAnalytics | United Kingdom |
| Planner | European Union |
| Sway | United States |
| Yammer | European Union |
| OneNote Services | United Kingdom |
| Stream | United Kingdom |
| Whiteboard | European Union |
| Forms | European Union |
| Workplace Analytics | United States |
</p></details>

## United States
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Uruguay
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 3 – Americas |
| OneDrive for Business | Global Geography 3 – Americas |
| SharePoint Online | Global Geography 3 – Americas |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | Global Geography 3 – Americas |
| EOP | Global Geography 3 – Americas |
| Intune | United States |
| MyAnalytics | Global Geography 3 – Americas |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 3 – Americas |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## US Minor Outlying Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Uzbekistan
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Vanuatu
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Venezuela
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | United States |
| OneDrive for Business | United States |
| SharePoint Online | United States |
| Skype for Business | United States |
| Microsoft Teams | United States |
| Office Online &amp; Mobile | United States |
| EOP | United States |
| Intune | United States |
| MyAnalytics | United States |
| Planner | United States |
| Sway | United States |
| Yammer | United States |
| OneNote Services | United States |
| Stream | United States |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Vietnam
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Wallis and Futuna Islands
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 2 – Asia Pacific |
| OneDrive for Business | Global Geography 2 – Asia Pacific |
| SharePoint Online | Global Geography 2 – Asia Pacific |
| Skype for Business | Global Geography 2 – Asia Pacific |
| Microsoft Teams | Global Geography 2 – Asia Pacific |
| Office Online &amp; Mobile | Global Geography 2 – Asia Pacific |
| EOP | Global Geography 2 – Asia Pacific |
| Intune | Global Geography 2 – Asia Pacific |
| MyAnalytics | Global Geography 2 – Asia Pacific |
| Planner | Global Geography 2 – Asia Pacific |
| Sway | United States |
| Yammer | United States |
| OneNote Services | Global Geography 2 – Asia Pacific |
| Stream | Global Geography 2 – Asia Pacific |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Western Sahara
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Yemen
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | Global Geography 1 – EMEA |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | Global Geography 1 – EMEA |
| Workplace Analytics | United States |
</p></details>

## Zambia
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>

## Zimbabwe
<details><summary>Click to expand</summary><p>

| Service | Location |
| --- | --- |
| Exchange Online | Global Geography 1 – EMEA |
| OneDrive for Business | Global Geography 1 – EMEA |
| SharePoint Online | Global Geography 1 – EMEA |
| Skype for Business | Global Geography 1 – EMEA |
| Microsoft Teams | Global Geography 1 – EMEA |
| Office Online &amp; Mobile | Global Geography 1 – EMEA |
| EOP | Global Geography 1 – EMEA |
| Intune | Global Geography 1 – EMEA |
| MyAnalytics | Global Geography 1 – EMEA |
| Planner | United States |
| Sway | United States |
| Yammer | Global Geography 1 – EMEA |
| OneNote Services | Global Geography 1 – EMEA |
| Stream | Global Geography 1 – EMEA |
| Whiteboard | United States |
| Forms | United States |
| Workplace Analytics | United States |
</p></details>
