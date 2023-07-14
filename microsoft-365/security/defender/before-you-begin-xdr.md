---
title: Before you begin using Defender Experts for XDR
ms.reviewer:
description: To enable us to get started with this managed service, we require the following licensing prerequisites
keywords: XDR, Xtended detection and response, defender experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, service delivery manager, Microsoft Defender Experts for hunting, threat hunting and analysis, Microsoft XDR service
search.product: Windows 10
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: met150
ms.date: 11/17/2022
---

# Before you begin

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

This document outlines the key prerequisites you must meet and essential information you must know before purchasing the Microsoft Defender Experts for XDR service.

## Eligibility and licensing

Defender Experts for XDR is a separate service from your existing Defender products. To enable us to get started with this managed service, we require the following licensing prerequisites:
- Microsoft Defender for Endpoint P2 must be licensed and enabled on eligible devices
- Microsoft Defender Antivirus must be licensed and enabled in active mode on devices onboarded to Defender for Endpoint (required for endpoint detection and response capabilities)
- Azure Active Directory (Azure AD) Premium P1 must be licensed for all users and enabled (required for enabling secure service provider access)

Aside from the requirements stated previously, to get Defender Experts for XDR coverage for the following eligible products, you must have their appropriate product licenses:
- Microsoft Defender for Office 365 P2
- Microsoft Defender for Identity
- Microsoft Defender for Cloud Apps

Defender Experts for XDR is a managed extended detection and response (XDR) service. To get native XDR coverage, we recommend deploying the full Microsoft 365 Defender suite.

As part of the service's built-in [Microsoft Defender Experts for Hunting](defender-experts-for-hunting.md), you're also assigned two **Ask Defender Experts** credits on the first of each month, which you may use to submit questions. You can still submit inquiries beyond the initial number of allocated credits. Unused credits expire 90 days from date of assignment or at the end of the subscription term, whichever is shortest.

[Learn more about Microsoft's commercial licensing terms](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).


## Access requirements

Work with your Commercial Executive to transact the Defender Experts for XDR SKU.

Defender Experts for XDR requests for certain roles and permissions for you to fully access the service capabilities. [Learn more](dex-xdr-permissions.md).

## Service availability and data protection

Defender Experts for XDR is a managed extended detection and response service that proactively hunts for threats across endpoints, email, identity, and cloud apps. To carry out hunting on your behalf, Microsoft experts need access to your Microsoft 365 Defender advanced hunting data. Purchasing this service means you're granting permission to Microsoft experts to access the said data.

The following sections enumerate additional information about the service's data usage, compliance, and availability. For more information about Microsoft's commitment in valuing and protecting your data, visit the [Trust Center](https://www.microsoft.com/en-us/trust-center/product-overview) then scroll down to **Additional products and services** > **Managed Security Services** > **[Microsoft Defender Experts](https://aka.ms/trustcenter-defenderexperts)**.

### Data collection, usage, and retention

All data used for hunting from existing Defender services will continue to reside in the customer's original Microsoft 365 Defender service storage location. [Learn more](/microsoft-365/enterprise/o365-data-locations).

Defender Experts for XDR operational data, such as case tickets and analyst notes, are generated and stored in a Microsoft data center in the US region for the length of the service, irrespective of the Microsoft 365 Defender service storage location. Data generated for the reporting dashboard is stored in customer's Microsoft 365 Defender service storage location. Reporting data and operational data will be retained for a grace period of no less than 90 days after a customer leaves the service.

Microsoft experts hunt over [advanced hunting logs](advanced-hunting-schema-tables.md) in Microsoft 365 Defender advanced hunting tables. The data in these tables depend on the set of Defender services the customer is enabled for (for example, Defender for Endpoint, Defender for Office 365, Defender for Identity, Defender for Cloud Apps, and Azure AD). Experts also use a large set of internal threat intelligence data to inform their hunting and automation.

### Security and compliance

When you purchase and onboard to Defender Experts for XDR, you're granting permission to Microsoft experts to access your advanced hunting data.

This service has been developed in alignment with existing security and privacy standards and is working towards several certifications, including ISO 27001 and ISO 27018.

### Availability
This service is available worldwide for our customers in our commercial public clouds. If you're interested to learn more, reach out to your Microsoft account team.

### Language
This service is currently delivered in English language only.

### Next step

[Get started with Microsoft Defender Experts for XDR](get-started-xdr.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
