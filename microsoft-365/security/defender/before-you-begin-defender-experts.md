---
title: Before you begin using Defender Experts for Hunting
ms.reviewer:
description: This section outlines the key infrastructure requirements you must meet and important information on data access and compliance
keywords: managed threat hunting service, managed threat hunting, managed detection and response (MDR) service, MTE, Microsoft Threat Experts, MTE-TAN, targeted attack notification, Targeted Attack Notification, Microsoft Defender Experts for hunting, threat hunting and analysis.
search.product: Windows 10
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Before you begin using Defender Experts for Hunting

> [!IMPORTANT]
> Some information relates to pre-released products which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

This section outlines the key infrastructure requirements you must meet and important information on data access and compliance you must know before enrolling in the Microsoft Defender Experts for Hunting service. Microsoft understands that customers who use our managed services entrust us with their most valued asset, their data.

## Check if your environment meets licensing and access prerequisites

Microsoft Defender Experts for Hunting is a separate service from your existing Defender products. Before enrolling in this service, make sure that you have the necessary license and access. 

### Eligibility and licensing

Customers of Defender Experts for Hunting will be assigned two Experts on Demand credits on the first of each month, which may be used to submit questions. Unused credits expire 90 days from date of assignment or at the end of the subscription term, whichever is shortest.

Refer to [Microsoft's commercial licensing terms](https://www.microsoft.com/licensing/terms/productoffering/Microsoft365/MCA) for more information.

### Access requirements

Anyone from your organization can complete the customer interest form for Microsoft Defender Experts for Hunting service, however, you need to work with your Commercial Executive to transact the SKU.

## Understand the service's availability and data access requirements

Defender Experts for Hunting is a managed threat hunting service that proactively hunts for threats across endpoints, email, identity, and cloud apps. To carry out hunting on your behalf, Microsoft experts need access to your Microsoft 365 Defender advanced hunting data. Enrolling in this service means you are granting permission to Microsoft experts to access the said data.

The following enumerates additional information about the service's data usage, compliance, and availability. For more information about Microsoft's commitment in valuing and protecting your data, visit the [Trust Center](https://aka.ms/trustcenter-dex4hunting).

### Data collection, usage, and retention

All data used for hunting from existing Defender services will continue to reside in the customer's original Microsoft 365 Defender service storage location. Learn more 

Defender Experts for Hunting operational data, such as case tickets and analyst notes, are generated and stored in a Microsoft data center in the US region for the length of the service, irrespective of the Microsoft 365 Defender service storage location. Data generated for reporting dashboard is stored in customer's Microsoft 365 Defender service storage location. Reporting data and operational data will be retained for a grace period of no less than 90 days after a customer leaves the service.  

Microsoft experts hunt over advanced hunting logs in Microsoft 365 Defender advanced hunting tables. The data in these tables depend on the set of Defender services the customer is enabled for (for example, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, Microsoft Defender for Cloud Apps, Azure Active Directory). Experts also leverage a large set of internal threat intelligence data to inform their hunting and automation. 

### Security and compliance

When you purchase and onboard to Defender Experts for Hunting, you are granting permission to Microsoft experts to access the customer's advanced hunting data.

This service has been developed in alignment with existing security and privacy standards and is working towards several certifications, including ISO 27001 and ISO 27018. 

### Availability

Defender Experts for Hunting is available worldwide for customers in our commercial public clouds. This service is currently not available to customers in government and sovereign clouds. 

### Languages 

Defender Experts for Hunting is currently delivered in English language only.

## Apply for Microsoft Defender Experts for Hunting service

If you haven't done so yet, you can complete the customer interest form for Defender Experts for Hunting:

- Complete the [Customer Interest Form](https://customervoice.microsoft.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbR_xMkpZdsClLjYwQYYo1uONURTgyU0EzQUQyUjFFVEtIVFozT1ZUUlZDTyQlQCN0PWcu). Anyone from your company can apply, but if you are accepted, you need to work with your Commercial Executive to transact the SKU .
- Enter your company email ID.
- Select **Submit**. Someone from our sales team will reach out within 5 business days.


### What's next

- [Start using Defender Experts for Hunting](onboarding-defender-experts-for-hunting.md)