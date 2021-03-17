---
title: "Tenant Isolation in Microsoft 365"
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
description: This article contains a summary of how Microsoft enforces tenant isolation in cloud services like Microsoft 365.
ms.custom: seo-marvel-apr2020
---

# Tenant Isolation in Microsoft 365

One of the primary benefits of cloud computing is concept of a shared, common infrastructure across numerous customers simultaneously, leading to economies of scale. This concept is called *multi-tenancy*. Microsoft works continuously to ensure that the multi-tenant architectures of our cloud services support enterprise-level security, confidentiality, privacy, integrity, and availability standards.

Based upon the significant investments and experience gathered from [Trustworthy Computing](https://www.microsoft.com/trust-center) and the [Security Development Lifecycle](https://www.microsoft.com/securityengineering/sdl/), Microsoft cloud services were designed with the assumption that all tenants are potentially hostile to all other tenants, and we have implemented security measures to prevent the actions of one tenant from affecting the security or service of another tenant, or accessing the content of another tenant.

The two primary goals of maintaining tenant isolation in a multi-tenant environment are:

1.    Preventing leakage of, or unauthorized access to, customer content across tenants; and
2.    Preventing the actions of one tenant from adversely affecting the service for another tenant

Multiple forms of protection have been implemented throughout Microsoft 365 to prevent customers from compromising Microsoft 365 services or applications or gaining unauthorized access to the information of other tenants or the Microsoft 365 system itself, including:

- Logical isolation of customer content within each tenant for Microsoft 365 services is achieved through Azure Active Directory authorization and role-based access control.
- SharePoint Online provides data isolation mechanisms at the storage level.
- Microsoft uses rigorous physical security, background screening, and a multi-layered encryption strategy to protect the confidentiality and integrity of customer content. All Microsoft 365 datacenters have biometric access controls, with most requiring palm prints to gain physical access. In addition, all U.S.-based Microsoft employees are required to successfully complete a standard background check as part of the hiring process. For more information on the controls used for administrative access in Microsoft 365, see [Microsoft 365 Administrative Access Controls](/compliance/assurance/assurance-administrative-access-controls-overview).
- Microsoft 365 uses service-side technologies that encrypt customer content at rest and in transit, including BitLocker, per-file encryption, Transport Layer Security (TLS) and Internet Protocol Security (IPsec). For specific details about encryption in Microsoft 365, see [Data Encryption Technologies in Microsoft 365](../compliance/office-365-encryption-in-the-microsoft-cloud-overview.md).

Together, the above-listed protections provide robust logical isolation controls that provide threat protection and mitigation equivalent to that provided by physical isolation alone.

## Related Links

- [Isolation and Access Control in Azure Active Directory](microsoft-365-isolation-in-azure-active-directory.md)
- [Tenant Isolation in the Office Graph and Delve](microsoft-365-isolation-in-graph-and-delve.md)
- [Tenant Isolation in Microsoft 365 Search](microsoft-365-isolation-in-microsoft-365-search.md)
- [Tenant Isolation in Office 365 Video](microsoft-365-isolation-in-microsoft-365-video.md)
- [Resource Limits](/compliance/assurance/assurance-resource-limits)
- [Monitoring and Testing Tenant Boundaries](/compliance/assurance/assurance-monitoring-and-testing)
- [Isolation and Access Control in Microsoft 365](microsoft-365-isolation-in-microsoft-365.md)