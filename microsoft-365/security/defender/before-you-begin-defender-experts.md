---
title: Key infrastructure requirements before enrolling in the Microsoft Defender Experts for Hunting service
ms.reviewer:
description: This section outlines the key infrastructure requirements you must meet and important information on data access and compliance
keywords: managed threat hunting service, managed threat hunting, managed detection and response (MDR) service, MTE, Microsoft Threat Experts, MTE-TAN, defender experts notification, Targeted Attack Notification, Microsoft Defender Experts for hunting, threat hunting and analysis.
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
  - m365initiative-defender-endpoint
  - tier1
ms.topic: conceptual
search.appverid: met150
ms.date: 07/26/2022
---

# Before you begin using Defender Experts for Hunting

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

This document outlines the key infrastructure requirements you must meet and important information on data access and compliance you must know before purchasing the Microsoft Defender Experts for Hunting service. Microsoft understands that customers who use our managed services entrust us with their most valued asset, their data.

## Check if your environment meets licensing and access prerequisites

Microsoft Defender Experts for Hunting is a separate service from your existing Defender products. Before enrolling in this service, make sure that you have the necessary license and access.

### Eligibility and licensing

Defender Experts for Hunting customers are assigned two Ask Defender Experts (Experts on Demand) credits on the first of each month, which you can use to submit questions. You can still submit inquiries beyond your initial number of allocated credits. Unused credits expire 90 days from date of assignment or at the end of the subscription term, whichever is shortest.

For more information about Microsoft's commercial licensing terms, visit [this page](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA).

### Access requirements

Anyone from your organization can complete the customer interest form for Microsoft Defender Experts for Hunting service, however, you need to work with your Commercial Executive to transact the SKU. You might need certain roles and permissions to fully access the service capabilities. Refer to [Custom roles in role-based access control for Microsoft 365 Defender](custom-roles.md) for details.

## Understand the service's availability and data access requirements

Defender Experts for Hunting is a managed threat hunting service that proactively hunts for threats across endpoints, email, identity, and cloud apps. To carry out hunting on your behalf, Microsoft experts need access to your Microsoft 365 Defender advanced hunting data. Enrolling in this service means you're granting permission to Microsoft experts to access the said data.

The following sections enumerate additional information about the service's data usage, compliance, and availability. For more information about Microsoft's commitment in valuing and protecting your data, visit the [Trust Center](https://www.microsoft.com/en-us/trust-center/product-overview) then scroll down to **Additional products and services** > **Managed Security Services** > [**Microsoft Defender Expert for Hunting**](https://aka.ms/trustcenter-defenderexperts).

### Data collection, usage, and retention

All data used for hunting from existing Defender services will continue to reside in the customer's original Microsoft 365 Defender service storage location. [Learn more](../../enterprise/o365-data-locations.md)

Defender Experts for Hunting operational data, such as case tickets and analyst notes, are generated and stored in a Microsoft data center in the US region for the length of the service, irrespective of the Microsoft 365 Defender service storage location. Data generated for the reporting dashboard is stored in customer's Microsoft 365 Defender service storage location. Reporting data and operational data will be retained for a grace period of no less than 90 days after a customer leaves the service.

Microsoft experts hunt over [advanced hunting logs](../../security/defender/advanced-hunting-schema-tables.md) in Microsoft 365 Defender advanced hunting tables. The data in these tables depend on the set of Defender services the customer is enabled for (for example, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and Azure Active Directory). Experts also use a large set of internal threat intelligence data to inform their hunting and automation.

### Security and compliance

When you purchase and onboard to Defender Experts for Hunting, you're granting permission to Microsoft experts to access your advanced hunting data.

This service has been developed in alignment with existing security and privacy standards and is working towards several certifications, including ISO 27001 and ISO 27018.

### Availability

This service is available worldwide for customers in our commercial public clouds. It's currently not available to customers in government and sovereign clouds.

### Languages

This service is currently delivered in English language only.

## Apply for Microsoft Defender Experts for Hunting service

If you haven't done so yet, you can complete the customer interest form for Defender Experts for Hunting:

1. Complete the [customer interest form](https://aka.ms/DEX4HuntingCustomerInterestForm). Anyone from your company can apply, but if you're accepted, you need to work with your Commercial Executive to transact the SKU.
2. Enter your name, company name, and company email ID.
3. Select **Submit**. Someone from our sales team will reach out within five business days.


### Next step

- [Start using Defender Experts for Hunting](onboarding-defender-experts-for-hunting.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
