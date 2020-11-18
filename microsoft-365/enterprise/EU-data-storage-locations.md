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

Although current data storage locations for some services may change to accommodate load-balancing needs, Microsoft contractually commits to store core customer data in the above locations for the term of your subscription.

### Where EU data is computed

When you initiate the use of any of the above services, the computations needed to provide the service for any service data stored in one of regional European datacenters (or in your country) will take place within that same geographic boundary unless a temporary data transfer (less than 24 hours) is needed to perform the calculation in a Microsoft datacenter located further away. 

If a temporary transfer is required, we will always employ state of the art encryption in the transfer and we will always return your data to your chosen data storage location immediately thereafter. We rely on our compliance with European law through the Standard Contractual Clauses (SCCs) for these temporary transfers, along with our supplemental measures to ensure the data is protected. 

>[!Note]
>Customer data for Sway and Workplace Analytics will be stored and computed in the United States if you elect to use these services.
>

## How Microsoft protects your data

Microsoft secures your data using multiple layers of security and encryption protocols. Get an overview of Microsoft data security capabilities in the [Microsoft 365 encryption article](../microsoft-365/compliance/encryption).

By default, Microsoft Managed Keys protect your customer data. Data that persists on any physical media is always encrypted using FIPS 140-2 compliant encryption protocols. You can also employ customer-managed keys (CMK), [double encryption](../microsoft-365/compliance/double-key-encryption), and/or hardware security modules (HSMs) for increased data protection.

All data traffic moving between datacenters is also protected using IEEE 802.1AE MAC Security Standards, preventing physical "man-in-the-middle" attacks.

To prevent unauthorized physical access to datacenters, we employ rigorous operational controls and processes that include 24×7 video monitoring, trained security personnel and processes, and smart card or biometric multifactor access controls. Since Microsoft 365 data is 1) encrypted, and 2) stored across multiple physical disks, even in the highly unlikely scenario that someone could remove selected physical disks (and knew which disks to remove), the data would be unreadable. Upon end of life, data disks are shredded and destroyed. If a disk drive used for storage suffers a hardware failure or reaches its end of life, it is securely erased or destroyed. The data on the drive is completely overwritten to ensure the data cannot be recovered by any means. When such devices are decommissioned, they are shredded and destroyed in line with NIST SP 800-88 R1, Guidelines for Media Sanitization. Records of the destruction are retained and reviewed as part of the Microsoft audit and compliance process. All Microsoft 365 services utilize approved media storage and disposal management services.

In addition to the physical and technological protections, Microsoft takes strong measures to help protect your customer data from unauthorized access by Microsoft personnel and subcontractors. Access to customer data by Microsoft operations and support personnel is denied by default. Nearly all service operations performed by Microsoft are fully automated and human involvement is highly controlled and abstracted away from customer data. Only in rare cases does a Microsoft engineer need access to customer data to resolve a customer issue. Access to customer data is restricted, based on business need, by role-based access controls, multifactor authentication, minimization of standing access to production data, and other controls. All access to customer data is strictly logged, and both Microsoft and third parties perform regular audits (as well as sample audits) to attest that any access is appropriate. 

Customers can use customer-managed keys to further prevent their data from being readable in case of unauthorized access. Both server-side and client-side encryption can rely on customer-managed keys or customer-provided keys. In either case, Microsoft would not have access to encryption keys and cannot decrypt the data. A SOC audit by an AICPA-accredited auditor twice a year to verifies the effectiveness of our security controls in audit scope. The SOC 2 Type 2 attestation report published by the auditor explains under what circumstances access to customer data can occur and how. 

By far, the most common scenario involves a customer opening a troubleshooting ticket for technical support, and our Professional Services team subsequently obtaining consent to access customer resources that could potentially include customer data. For the majority of support scenarios, access to customer data is not needed.

To learn more, see [Who can access your data](https://www.microsoft.com/trust-center/privacy/data-access) and on what terms and [Subprocessors and Data Privacy](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4qVL2).

## How Microsoft handles government requests

If a government wants customer data, it must follow applicable legal processes. Microsoft must be served with a warrant or court order for content, or a subpoena for subscriber information or other non-content data. 

- All requests must target specific accounts and identifiers.  
- Microsoft’s legal compliance team reviews all requests to ensure they are valid, rejects those that are not valid, and only provides the data specified.  
- If Microsoft is compelled by law to disclose customer data, you will be promptly notified and provided with a copy of the request, unless Microsoft is legally prohibited from doing so.
- Microsoft conducts a local legal review of each request it receives against local laws and standards. Microsoft also periodically reviews its screening processes around the world to ensure local judicial procedures are being followed and its global human rights statement is being applied.

When governments or law enforcement agencies make a lawful request for customer data, Microsoft is committed to transparency and limits what it discloses. Twice a year, we publish the number of legal demands for customer data that we receive from law enforcement agencies around the world. See [Law Enforcement Requests Report](https://www.microsoft.com/corporate-responsibility/law-enforcement-requests-report). This report does not disclose the specifics of any particular demand, including the customer at issue. Twice a year, we also publish data about the legal demands we receive from the U.S. government. See [US National Security Orders Report](https://www.microsoft.com/corporate-responsibility/us-national-security-orders-report) for the latest report.  

To learn more, see [Frequently Asked Questions](https://blogs.microsoft.com/datalaw/our-practices/) regarding government and law enforcement requests, including questions about the CLOUD Act.

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




