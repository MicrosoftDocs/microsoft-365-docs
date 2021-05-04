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



## Your data is your business

Microsoft recognizes the importance of maintaining the privacy and confidentiality of your business data. Your data belongs to you, and you can access, modify, or delete it at any time. Microsoft will not use your data without your consent and, when we have your consent, we use your data to provide only the services you have chosen. If you leave one of our services, we ensure your continued ownership of your data, following strict standards and processes to remove the data from our systems. 

>[!Note]
>Customer data (also referred to as “your data” or “your business data”) means all data, including text, sound, video or image files, and software that you provide to Microsoft or that’s provided on your behalf through your use of Microsoft enterprise online services, excluding Microsoft Professional Services. It includes customer content, which is the data you upload for storage or processing and apps you upload for distribution through a Microsoft enterprise cloud service. For example, customer content includes Exchange Online email and attachments, SharePoint Online site content, or instant messaging conversations. 
>

## Data storage and processing

When you use Microsoft 365 services, we start with the assumption that our enterprise customers would like to have their business data stored and processed close to home. Wherever possible, we do just that. To keep your data in datacenters nearest to you, we store your data based on the business location you provide when you create your tenant. To choose storage locations that are meaningful to your organization’s businesses, you may create as many tenants for your organization as you would like.  

### Where EU data is stored

We have datacenter geos in Germany and France that allow you to store data in your country if your business is located there. Our regional European Union data centers are located in Austria, Finland, France, Ireland, and the Netherlands. Your data for the following services will be hosted in the following locations based on which billing address you choose: 

| Service name | Location for tenants created with a billing address in France | Location for tenants created with a billing address in Germany | Location for tenants created with a billing address in all other EU countries |
|:-------|:-----|:-------|:-------|
| Exchange Online | France | Germany | European Union |
| OneDrive for Business | France | Germany | European Union |
| SharePoint Online | France | Germany | European Union |
| Skype for Business | European Union | European Union | European Union |
| Microsoft Teams | France | Germany | European Union |
| Office Online & Mobile | France | Germany | European Union |
| Exchange Online Protection | France | Germany | European Union |
| Intune | European Union | European Union | European Union |
| MyAnalytics | France | Germany | European Union |
| Planner | European Union | European Union | European Union |
| Yammer | European Union | European Union | European Union |
| OneNote Services | France | Germany | European Union |
| Stream | European Union | European Union | European Union |
| Whiteboard | European Union | European Union | European Union |
| Forms | European Union | European Union | European Union |
||||| 

>[!Note]
>If you have an Office 365 Education subscription with a billing address in France or Germany, your data may be stored in our regional European Union datacenters. For the locations of tenant data outside of the EU, see [Where your Microsoft 365 customer data is stored](o365-data-locations.md).
>



### Where EU data is computed

When you initiate the use of any of the above services, the computations needed to provide the service for your data stored in one of our regional European datacenters (or in your country) will take place within that same geographic boundary unless a temporary data transfer is needed to perform the computation in a Microsoft datacenter located further away. 

If a temporary transfer is required, we will always employ state of the art encryption in the transfer and we will always return your data to your chosen data storage location immediately thereafter. We rely on our compliance with European law through the Standard Contractual Clauses (SCCs) for these temporary transfers, along with our supplemental measures to ensure the data is protected. 

To learn more, see [European Union Model Clauses](/compliance/regulatory/offering-EU-Model-Clauses).

>[!Note]
>Customer data for Sway and Workplace Analytics will be stored and computed in the United States if you elect to use these services.
>

>[!Note]
>Microsoft 365 services may query and store portions of tenant directory/identity data information in regions other than the EU where necessary to facilitate certain scenarios. For example, in scenarios of cross regional e-mail routing, call routing and authentication, Microsoft 365 systems may need some information about EU recipients to route these requests properly. Microsoft 365 systems also depend on Azure Active Directory for identity and authentication functions. To learn more, see  [Identity data storage for European customers in Azure Active Directory](/azure/active-directory/fundamentals/active-directory-data-storage-eu).
>

## How Microsoft protects your data

### Security measures

Microsoft secures your data using multiple layers of security and encryption protocols. Get an overview of Microsoft data security capabilities in the [Microsoft 365 encryption article](../compliance/encryption.md).

By default, Microsoft Managed Keys protect your customer data. Data that persists on any physical media is always encrypted using FIPS 140-2 compliant encryption protocols. You can also employ customer-managed keys (CMK), [double encryption](../compliance/double-key-encryption.md), and/or hardware security modules (HSMs) for increased data protection.

In addition, Microsoft by default uses the [Transport Layer Security (TLS)](https://wikipedia.org/wiki/Transport_Layer_Security) protocol to encrypt data when it’s traveling between the cloud services and customers. Microsoft Services negotiate a TLS connection with client systems that connect to Microsoft 365 services. 

To prevent unauthorized physical access to datacenters, we employ rigorous operational controls and processes that include 24×7 video monitoring, trained security personnel and processes, and smart card or biometric multifactor access controls. Upon end of life, data disks are shredded and destroyed. If a disk drive used for storage suffers a hardware failure or reaches its end of life, it is securely erased or destroyed. The data on the drive is completely overwritten to ensure the data cannot be recovered by any means. When such devices are decommissioned, they are shredded and destroyed in line with NIST SP 800-88 R1, Guidelines for Media Sanitization. Records of the destruction are retained and reviewed as part of the Microsoft audit and compliance process. All Microsoft 365 services utilize approved media storage and disposal management services.

### Technical controls

In addition to the physical and technological protections, Microsoft takes strong measures to help protect your customer data from unauthorized access by Microsoft personnel and subcontractors. Access to customer data by Microsoft operations and support personnel is denied by default. Nearly all service operations performed by Microsoft are fully automated and human involvement is highly controlled and abstracted away from customer data. 

Only in rare cases does a Microsoft engineer need access to customer data. Typically this is only necessary if you request Microsoft’s assistance to resolve a customer issue. Access to customer data is highly restricted by role-based access controls, multifactor authentication, data minimization and other controls. All access to customer data is strictly logged, and both Microsoft and third parties perform regular audits (as well as sample audits) to attest that any access is appropriate.

Customers can use customer-managed keys to further prevent their data from being readable in case of unauthorized access. Both server-side and client-side encryption can rely on customer-managed keys or customer-provided keys. In either case, Microsoft would not have access to encryption keys and cannot decrypt the data. A SOC audit by an AICPA-accredited auditor twice a year to verifies the effectiveness of our security controls in audit scope. The SOC 2 Type 2 attestation report published by the auditor explains under what circumstances access to customer data can occur and how. 

In addition to storing and processing your data when you use the online services, Microsoft generates service data to monitor system health and to perform service operations such as troubleshooting. As a privacy protective measure, Microsoft generates and relies upon pseudonymous identifiers in this service generated data to be able to distinguish one user from another without identifying the actual users. Pseudonymous identifiers do not directly identify a person, and the information that enables mapping pseudonymous identifiers to actual users is protected as part of your data.

To learn more, see [Who can access your data](https://www.microsoft.com/trust-center/privacy/data-access) and on what terms and [Subprocessors and Data Privacy](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4qVL2).

## How Microsoft handles government requests

If a government wants customer data, it must follow applicable legal processes. Microsoft must be served with a warrant or court order for content, or a subpoena for subscriber information or other non-content data. 

- All requests must target specific accounts and identifiers.  
- Microsoft’s legal compliance team reviews all requests to ensure they are valid, rejects those that are not valid, and only provides the data specified.  
- If Microsoft is compelled by law to disclose customer data, you will be promptly notified and provided with a copy of the request, unless Microsoft is legally prohibited from doing so.
- Microsoft conducts a local legal review of each request it receives against local laws and standards. Microsoft also periodically reviews its screening processes around the world to ensure local judicial procedures are being followed and its global human rights statement is being applied.

For more information on Microsoft’s commitment to challenge orders in line with the EU’s GDPR, see [New Steps to Defend Your Data](https://blogs.microsoft.com/on-the-issues/2020/11/19/defending-your-data-edpb-gdpr/). 

When governments or law enforcement agencies make a lawful request for customer data, Microsoft is committed to transparency and limits what it discloses. Twice a year, we publish the number of legal demands for customer data that we receive from law enforcement agencies around the world. See [Law Enforcement Requests Report](https://www.microsoft.com/corporate-responsibility/law-enforcement-requests-report). This report does not disclose the specifics of any particular demand, including the customer at issue. Twice a year, we also publish data about the legal demands we receive from the U.S. government. See [US National Security Orders Report](https://www.microsoft.com/corporate-responsibility/us-national-security-orders-report) for the latest report.  

To learn more, see [Frequently Asked Questions](https://blogs.microsoft.com/datalaw/our-practices/) regarding government and law enforcement requests, including questions about the CLOUD Act.

## Additional resources
 
- [Trusted data protection](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4FhZn) provides an overview of how Microsoft protects your data when you use Microsoft Online Services and Professional Services. It’s also suggested that you consult the [Microsoft Online Services Terms (OST) and Data Protection Addendum (DPA)](https://www.microsoft.com/licensing/product-licensing/products) that govern your use of these services.
- [Office 365 Data Subject Requests for the GDPR](/compliance/regulatory/gdpr-dsr-Office365) helps you find and act on personal data or personal information to respond to DSRs using Microsoft 365 products, services, and administrative tools. 
- [Data Protection Impact Assessments: Guidance for Data Controllers Using Microsoft Office 365](/compliance/regulatory/gdpr-dpia-office365) helps you determine whether your organization needs to draft a DPIA, provides “how to” guidance, includes a customizable DPIA template document, and provides a DPIA Service Elements Matrix for many Microsoft 365 services.
- [Learn how modules](/learn/paths/audit-safeguard-customer-data/) are designed for people in audit, compliance, risk, and legal roles who seek an overall understanding  provide an in-depth review of how Microsoft 365’s fundamental security and privacy practices to safeguard customer data.
- [Microsoft Compliance Offerings](/compliance/regulatory/offering-home) shows how Microsoft 365 services help your organization meet regulatory compliance standards.