---
title: "Microsoft 365 isolation controls"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: Learn how isolation controls work within Microsoft 365, allowing services to inter-operate or remain autonomous as needed.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 isolation controls 

Microsoft continuously works to ensure that the multi-tenant architecture of Microsoft 365 supports enterprise-level security, confidentiality, privacy, integrity, local, international, and availability [standards](https://www.microsoft.com/TrustCenter/Compliance?service=Office#Icons). The scale and the scope of services provided by Microsoft make it difficult and non-economical to manage Microsoft 365 with significant human interaction. Microsoft 365 services are provided through multiple globally distributed data centers, each highly automated with few operations requiring a human touch or any access to customer content. Our staff supports these services and data centers using automated tools and highly secure remote access. 

Microsoft 365 is composed of multiple services that provide important business functionality and contribute to the entire Microsoft 365 experience. Each of these services is self-contained and designed to integrate with one another.

Microsoft 365 is designed with the following principles:

 - **[Service-Oriented Architecture](/previous-versions/aa480021(v=msdn.10)):** designing and developing software in the form of interoperable services providing well-defined business functionality.
 - **[Operational Security Assurance](https://www.microsoft.com/download/details.aspx?id=40872):** a framework that incorporates the knowledge gained through various capabilities that are unique to Microsoft, including the Microsoft [Security Development Lifecycle](https://www.microsoft.com/sdl/default.aspx), the [Microsoft Security Response Center](https://technet.microsoft.com/library/dn440717.aspx), and deep awareness of the cybersecurity threat landscape.

Microsoft 365 services inter-operate with each other, but are designed and implemented so they can be deployed and operated as autonomous services, independent of each other. Microsoft segregates duties and areas of responsibility for Microsoft 365 to reduce opportunities for unauthorized or unintentional modification or misuse of the organization's assets. Microsoft 365 teams have defined roles as part of a comprehensive role-based access control mechanism.

## Customer content isolation

All customer content in a tenant is isolated from other tenants and from operations and systems data used in the management of Microsoft 365. Multiple forms of protection are implemented throughout Microsoft 365 to minimize the risk of compromise of any Microsoft 365 service or application. Multiple forms of protection also prevent unauthorized access to the information of tenants or the Microsoft 365 system itself.

For information about how Microsoft implements logical isolation of tenant data within Microsoft 365, see [Tenant Isolation in Microsoft 365](microsoft-365-tenant-isolation-overview.md).