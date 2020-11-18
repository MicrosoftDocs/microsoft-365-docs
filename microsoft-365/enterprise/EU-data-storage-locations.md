---
title: "Data locations for the European Union"
ms.author: josephd
author: JoeDavies-MSFT
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
description: "Determine where your Microsoft 365 customer data is stored within the European Union"
---

# Data locations for the European Union

When you use Microsoft 365 services, we start with the assumption that our enterprise customers would like to have their business data stored and processed close to home. Wherever possible, we do just that. To keep your data in datacenters nearest to you, we store your data based on the business location you provide when you create your tenant. To choose storage locations that are meaningful to your organization’s businesses, you may create as many tenants for your organization as you would like.  

With Microsoft 365 you create amazing content, and we protect and secure it. You can access, rectify, restrict the processing of, delete and export your data at any time and from any location. We encrypt it in transit and at rest. Additionally, through our ever-expanding network of datacenters across the globe, we automatically store it in regions close to where your busines is located wherever possible. 

## Your data is your business

Microsoft recognizes the importance of maintaining the privacy and confidentiality of your data. Your data belongs to you, and you can access, modify, or delete it at any time. Microsoft will not use your data without your consent and, when we have your consent, we use your data to provide only the services you have chosen. If you leave one of our services, we ensure your continued ownership of your data, following strict standards and processes to remove the data from our systems. 

>[!Note]
>Customer data (also referred to as “your data” or “your business data”) means all data, including text, sound, video or image files, and software that you provide to Microsoft or that’s provided on your behalf through your use of Microsoft enterprise online services, excluding Microsoft Professional Services. It includes customer content, which is the data you upload for storage or processing and apps you upload for distribution through a Microsoft enterprise cloud service. For example, customer content includes Exchange Online email and attachments, SharePoint Online site content, or instant messaging conversations. 
>

## Data storage and processing

When you use Microsoft 365 services, we start with the assumption that our enterprise customers would like to have their business data stored and processed close to home. Wherever possible, we do just that. To keep your data in datacenters nearest to you, we store your data based on the business location you provide when you create your tenant. To choose storage locations that are meaningful to your organization’s businesses, you may create as many tenants for your organization as you would like.  

### Where EU data is stored

We have datacenters geos in Germany and France that allow you to store data in your country if your business is located there. Our regional European Union data centers are located in Austria, Finland, France, Ireland, and the Netherlands. Your data for the following services will be hosted in the following locations based on which billing address you choose: 

| Service name | Location for tenants created with a billing address in Germany | Location for tenants created with a billing address in France | Location for tenants created with a billing address in the EU outside of Germany and France |
|:-------|:-----|:-------|:-------|
| Exchange Online | Germany | France | European Union |
| OneDrive for Business | Germany | France | European Union |
| SharePoint Online | Germany | France | European Union |
| Skype for Business | European Union | European Union | European Union |
| Microsoft Teams | Germany | France | European Union |
| Office Online & Mobile | Germany | France | European Union |
| Exchange Online Protection | Germany | France | European Union |
| Intune | European Union | European Union | European Union |
| MyAnalytics | Germany | France | European Union |
| Planner | European Union | European Union | European Union |
| Yammer | European Union | European Union | European Union |
| OneNote Services | Germany | France | European Union |
| Stream | European Union | European Union | European Union |
| Whiteboard | European Union | European Union | European Union |
| Forms | European Union | European Union | European Union |
||||| 

Core customer data consists of: 

- Exchange Online mailbox content (email body, calendar entries, and the content of email attachments) 

- SharePoint Online site content and the files stored within those sites
     
- Files uploaded to OneDrive for Business 

Although data locations may change due to load-balancing needs, Microsoft contractually commits to store core customer data in the above locations for the term of your subscription.

### Where EU data is computed

When you initiate the use of any of the above services, the computations needed to provide the service for any service data stored in one of regional European datacenters (or in your country) will take place within that same geographic boundary unless a temporary data transfer (less than 24 hours) is needed to perform the calculation in a Microsoft datacenter located further away. 

If a temporary transfer is required, we will always employ state of the art encryption in the transfer and we will always return your data to your chosen data storage location immediately thereafter. We rely on our compliance with European law through the Standard Contractual Clauses (SCCs) for these temporary transfers, along with our supplemental measures to ensure the data is protected. 

>[!Note]
>Customer data for Sway and Workplace Analytics will be stored and computed in the United States if you elect to use these services.
>

## Technical and Control Measures Used to Protect Your Data

To encrypt your data, Microsoft 365 uses service-side technologies that encrypt customer data at rest and in transit. For customer data at rest, Microsoft 365 uses volume-level and file-level encryption. For customer data in transit, Microsoft 365 uses multiple encryption technologies for communications between data centers and between clients and servers, such as Transport Layer Security (TLS) and Internet Protocol Security (IPsec). Microsoft 365 also includes customer-managed encryption features. 

In addition to the physical and technological protections, Microsoft takes strong measures to help protect your customer data from unauthorized access by Microsoft personnel and subcontractors. Access to customer data by Microsoft operations and support personnel is denied by default. Nearly all service operations performed by Microsoft are fully automated and human involvement is highly controlled and abstracted away from customer data. Only in rare cases does a Microsoft engineer need access to customer data to resolve a customer issue. Access to customer data is restricted, based on business need, by role-based access controls, multifactor authentication, minimization of standing access to production data, and other controls. All access to customer data is strictly logged, and both Microsoft and third parties perform regular audits (as well as sample audits) to attest that any access is appropriate. Customers can use customer-managed keys to further prevent their data from being readable in case of unauthorized access. Both server-side and client-side encryption can rely on customer-managed keys or customer-provided keys. In either case, Microsoft would not have access to encryption keys and cannot decrypt the data. A SOC audit by an AICPA-accredited auditor twice a year to verifies the effectiveness of our security controls in audit scope. The SOC 2 Type 2 attestation report published by the auditor explains under what circumstances access to customer data can occur and how. By far, the most common scenario involves a customer opening a troubleshooting ticket for technical support, and our Professional Services team subsequently obtaining consent to access customer resources that could potentially include customer data. For the majority of support scenarios, access to customer data is not needed. 

We also employ rigorous operational controls and processes to prevent unauthorized physical access to datacenters, including 24×7 video monitoring, trained security personnel and processes, and smart card / biometric multifactor access controls. Since Microsoft 365 data is 1) encrypted, and 2) stored across multiple physical disks, even in the highly unlikely scenario that someone could remove selected physical disks (and knew which disks to remove), the data would be unreadable. Upon end of life, data disks are shredded and destroyed.

## How Microsoft handles government requests

Microsoft has taken a firm public stand on protecting customer data from inappropriate government access, and where necessary, it has advanced its position through the courts. Microsoft believes customers have a right to know when law enforcement requests their email or documents, and we have a right to tell them. The reason is simple – we believe our customers own their data and have the right to control it. Absent extraordinary circumstances, government agents should seek data directly from our enterprise customers, and if they seek our customers’ data from us, they should allow us to tell our customers when demands are made. Unless legally forbidden from doing so, Microsoft will seek to notify customers of law enforcement requests for data access. Microsoft has dedicated resources to evaluate the sufficiency and legality of law enforcement requests for access to data. 

- Non-content data requires subpoena or court order. Non-content data includes basic subscriber information, such as email address, name, state, country, ZIP code, and IP address at time of registration. Other non-content data may include IP connection history, an Xbox gamertag, and credit card or other billing information. Microsoft requires a valid legal demand, such as a subpoena or court order, before Microsoft will consider disclosing non-content data to law enforcement. 

- Content data requires a warrant. Content is what customers create, communicate, and store on or through Microsoft services, such as the words in an email exchanged between friends or business colleagues or the photographs and documents stored on OneDrive or cloud offerings such as Microsoft 365 and Azure. Microsoft requires a warrant (or its local equivalent) before Microsoft will consider disclosing content to law enforcement. This framework applies to the United States and abroad as applicable (Microsoft will adhere to local laws and regulations). Microsoft conducts a local legal review of each request it receives against local laws and standards. Microsoft also periodically reviews its screening processes around the world to ensure local judicial procedures are being followed and its global human rights statement is being applied.
We apply this framework in adherence to local laws and regulations. Microsoft conducts a local legal review of each request it receives against local laws and standards. Microsoft also periodically reviews its screening processes around the world to ensure local judicial procedures are being followed and its global human rights statement is being applied.


## Additional resources
 
- [Trusted data protection](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4FhZn) provides an overview of how Microsoft protects your data when you use Microsoft Online Services and Professional Services. It’s also suggested that you consult the [Microsoft Online Services Terms (OST) and Data Protection Addendum (DPA)](https://www.microsoft.com/licensing/product-licensing/products) that govern your use of these services.
- [DPIA Guidance](../microsoft-365/compliance/gdpr-data-protection-impact-assessments?view=o365-worldwide) for controllers helps you determine whether your organization needs to draft a DPIA and provides “how to” guidance, including customizable DPIA template document and answers a DPIA Service Elements Matrix for many Microsoft 365 services.
- [Learning modules](https://docs.microsoft.com/en-us/learn/modules/audit-incident-management/) provide an in-depth review of how Microsoft 365 safeguards customer data.
- [Microsoft Compliance Offerings](https://docs.microsoft.com/microsoft-365/compliance/offering-home) shows how Microsoft products and services help your organization meet regulatory compliance standards. 

<!--
If you create a subscription today with a billing address in the EU, data for the following services will be stored in the EU. 

Our datacenter geos in Germany and France allow you to store data in-country if your tenant is provisioned in those countries. Our European Union datacenters are located in Austria, Finland, France, Ireland, and the Netherlands.

Whether the data is stored in a EU global geography datacenter or a datacenter geo will depend on which billing address you choose to use when you create the tenant and which services you use.  

 
- **About our EU global geography datacenters:** Data stored in an EU global geography datacenter may be stored in Austria, Finland, France, Iceland, or Netherlands. The locations where customer data may be stored can be changed except for core customer data. 
 
  Core customer data consists of: 

    - Exchange Online mailbox content (email body, calendar entries, and the content of email attachments) 

    - SharePoint Online site content and the files stored within those sites
     
    - Files uploaded to OneDrive for Business 

- **About our datacenter geos:** To support ongoing customer demand and usage growth, we continually build new datacenter geos to add capacity and compute resources. For countries in the two datacenter geos in the EU: Germany and France.  
 
We have datacenters geos in Germany in France 

and regional 

**Table A: Data locations for the EU**
Microsoft contractually commits to store customer data in the EU throughout the term of your subscription. Except for core customer data, locations where customer data may be stored can be changed. 

>[!Note]
>This information applies to Microsoft 365 services based on today’s tenant creation date. To confirm where your data is stored for existing Office 365 services, view your tenant's data location information in your Microsoft 365 admin center in **Settings > Org settings > Organization profile > Data location**.
>

## Compute locations for businesses located in the EU  

When you initiate the use of any of the above services, the computations needed to provide the service for any service data stored in one of regional European datacenters (or in your country) will take place within that same geographic boundary unless a temporary data transfer (less than 24 hours) is needed to perform the calculation in a Microsoft datacenter located further away. 

If a temporary transfer is required, we will always employ state of the art encryption in the transfer and we will always return your data to your chosen data storage location immediately thereafter. We rely on our compliance with European law through the Standard Contractual Clauses (SCCs) for these temporary transfers, along with our supplemental measures to ensure the data is protected.
 
 

Customer data for Intune and 




