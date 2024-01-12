---
title: Key infrastructure requirements before enrolling in the Microsoft Defender Experts for Hunting service
ms.reviewer:
description: This section outlines the key infrastructure requirements you must meet and important information on data access and compliance
keywords: managed threat hunting service, defender experts eligibility, managed detection and response (MDR) service, defender experts notifications, apply for defender experts service, dex, defender experts notification, Microsoft Defender Experts for hunting, threat hunting and analysis, managed response
ms.service: defender-experts
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
ms.date: 11/10/2023
---

# Before you begin using Defender Experts for Hunting

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

This document outlines the key infrastructure requirements you must meet and important information on data access and compliance you must know before purchasing the Microsoft Defender Experts for Hunting service. Microsoft understands that customers who use our managed services entrust us with their most valued asset, their data.

## Check if your environment meets licensing and access prerequisites

Microsoft Defender Experts for Hunting is a separate service from your existing Defender products. Before enrolling in this service, make sure that you have the necessary license and access.

### Eligibility and licensing

To enable us to get started with this threat hunting service, we require the following licensing prerequisites:

- Microsoft Defender for Endpoint P2 must be licensed and enabled on eligible devices
- Microsoft Defender Antivirus must be licensed and enabled in active mode on devices onboarded to Defender for Endpoint (required for endpoint detection and response capabilities)
- Microsoft Entra ID P1 must be licensed for all users and enabled (required for enabling secure service provider access)

The following products are also eligible to get Defender Experts for Hunting coverage, and you must have their appropriate product licenses to get started with the service:

- Microsoft Defender for Office 365 P2
- Microsoft Defender for Identity
- Microsoft Defender for Cloud Apps

The following product is **not** covered by this service:

- Microsoft Defender for IoT

### Server coverage

Defender Experts for Hunting also covers servers—whether on premises or on a hyperscale cloud service provider—that have Defender for Endpoint deployed on them with a Microsoft Defender for Server license. For Defender Experts coverage, a server is considered as a user account for billing. The service doesn't cover Microsoft Defender for Cloud.
[Learn more about specific hardware and software requirements](/microsoft-365/security/defender-endpoint/minimum-requirements)

### Ask Defender Experts

Defender Experts for Hunting customers are assigned 10 **Ask Defender Experts** credits, which you can use to submit questions, at the start of each calendar quarter. Unused credits from the current quarter roll up to the next one. You can use up to 20 credits only per quarter. All unused credits expire by the end of the calendar year or at the end of your subscription term, whichever comes first.

[Learn more about Microsoft's commercial licensing terms](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA)

### Access requirements

Anyone from your organization can complete the customer interest form for Microsoft Defender Experts for Hunting service, however, you need to work with your Commercial Executive to transact the SKU. You might need certain roles and permissions to fully access the service capabilities. Refer to [Custom roles in role-based access control for Microsoft Defender XDR](custom-roles.md) for details.

## Understand the service's availability and data access requirements

Defender Experts for Hunting is a managed threat hunting service that proactively hunts for threats across endpoints, email, identity, and cloud apps. To carry out hunting on your behalf, Microsoft experts need access to your Microsoft Defender XDR advanced hunting data. Enrolling in this service means you're granting permission to Microsoft experts to access the said data.

The following sections enumerate additional information about the service's data usage, compliance, and availability. For more information about Microsoft's commitment in valuing and protecting your data, visit the [Trust Center](https://www.microsoft.com/en-us/trust-center/product-overview) then scroll down to **Additional products and services** > **Managed Security Services** > [**Microsoft Defender Expert for Hunting**](https://aka.ms/trustcenter-defenderexperts).

### Data collection, usage, and retention

All data used for hunting from existing Defender services will continue to reside in the customer's original Microsoft Defender XDR service storage location. [Learn more](../../enterprise/o365-data-locations.md)

Defender Experts for Hunting operational data, such as case tickets and analyst notes, are generated and stored in a Microsoft data center in the US region for the length of the service, irrespective of the Microsoft Defender XDR service storage location. Data generated for the reporting dashboard is stored in customer's Microsoft Defender XDR service storage location. Reporting data and operational data will be retained for a grace period of no more than 90 days after a customer's subscription expires. If the customer terminates their subscription, data will be deleted within 30 days. 

Microsoft experts hunt over [advanced hunting logs](../../security/defender/advanced-hunting-schema-tables.md) in Microsoft Defender XDR advanced hunting tables. The data in these tables depend on the set of Defender services the customer is enabled for (for example, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, and Microsoft Entra ID). Experts also use a large set of internal threat intelligence data to inform their hunting and automation.

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
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
