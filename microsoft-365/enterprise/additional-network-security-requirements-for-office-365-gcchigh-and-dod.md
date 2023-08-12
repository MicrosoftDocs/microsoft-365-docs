---
title: "Additional network security requirements for Office 365 GCC High and DoD"
ms.author: dzazzo
author: dzazzo-msft
manager: dzazzo
ms.date: 05/19/2020
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom: Adm_O365
search.appverid:
- OGA150m
- OGC150
- OGD150
- MOE150
ms.assetid: 
description: "Summary: Office 365 GCC High and DoD have additional network security requirements"
hideEdit: true
---

# Additional network security requirements for Office 365 GCC High and DOD

*This article applies to Office 365 GCC High, Office 365 DOD, Microsoft 365 GCC High, and Microsoft 365 DOD.*

Office 365 GCC High and DOD are secure cloud environments to meet the needs of the United States Government and its suppliers and contractors.  These cloud environments have additional network restrictions on which external endpoints the services are permitted to access.

GCC High and DOD customers planning to use federated identities or hybrid coexistence may require Microsoft to permit inbound and/or outbound access to your existing on-premises deployments.  Examples of these activities include:

* Use of federated identities (with Active Directory Federation Services or similar supported STS)
* Hybrid coexistence with an on-premises Exchange Server or Skype for Business deployment
* Migration of existing user content from an on-premises system

To permit the service to communicate with your on-premises endpoints, you **must** send an email to Office 365 engineering for network changes.

> [!WARNING]
> All requests have a **three-week** SLA and cannot be expedited due to the required security and compliance controls and deployment pipelines.  This includes initial onboarding network requests as well as any changes after you have migrated to the service.  Make sure that your network teams are aware of this timeline and include it in their planning cycles.

Send an email to [Office 365 Government Allow-List Requests](mailto:o365gwlt@microsoft.com) with the following information:

* **To**: [Office 365 Government Allow-List Requests](mailto:o365gwlt@microsoft.com)
* **From**: A tenant administrator - the send email **must** match a Global Administrator contact in your tenant
* **Email subject**: Office 365 GCC High Network Request - contoso.onmicrosoft.us (replace with your tenant name)

The body of your message should include the following data:

* Your Microsoft Online Services tenant name (for example, contoso.onmicrosoft.com, fabrikam.onmicrosoft.us)
* An email distribution list that Microsoft will communicate with for on-going communications related to network changes and/or follow up for invalid subnets
* Indicate whether you plan to use Microsoft Teams hybrid coexistence with your on-premises deployments
* Federated identity system externally accessible URL (for example, sts.contoso.com) and IP address range in CIDR notation (for example,. 10.1.1.0/28)
* On-Premises PKI Certificate Revocation List URL and IP address range in CIDR notation
* Externally accessible URL and IP address range for Exchange Server on-premises deployment in CIDR notation
* Externally accessible URL and IP address range for Skype for Business on-premises deployment in CIDR notation

For security and compliance reasons, keep in mind the following restrictions on your request:

* There's a four subnet limitation per tenant
* Subnets must be in CIDR Notation (for example, 10.1.1.0/28)
* Subnet ranges can’t be larger than /24
* We **cannot** accommodate requests to allow access to commercial cloud services (commercial Office 365, Google G-Suite, Amazon Web Services, etc.)

Once your request has been received and approved by Microsoft, there's a three-week SLA for implementation and can’t be expedited.  You'll receive an initial acknowledgment when we’ve received your request and a final acknowledgment once it has been completed.

