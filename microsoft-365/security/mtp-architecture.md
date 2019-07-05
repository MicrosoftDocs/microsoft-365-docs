---
title: Microsoft Threat Protection architecture
description: Learn about the components and the general functionality of Microsoft Threat Protection 
keywords: mtp, microsoft threat protection, architecture, components, functionality, incidents, advanced hunting, automated investigation, secure score
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Microsoft Threat Protection architecture

Microsoft Threat Protection helps secure the modern workplace across its entire attack surface, securing identities, endpoints, cloud apps, and infrastructure. To effectively do that, it leverages the power of services across Microsoft's security stack. 

Utilizing complex signal sharing, incident correlation, and cross-cluster queries, security teams are empowered to better protect valuable assets across an organization.

 Microsoft Threat Protection architecture:

![Image of Microsoft Threat Protection](images/mtp-architecture.png)


This section describes the main components of the platform and their functionalities:
- Microsoft 365 security center
- Signal sources
- Security experiences
- Surfaces



## Microsoft 365 security center
Microsoft 365 security center is the portal where incidents, automated investigations, advanced hunting, and other capabilities are surfaced. It's where security teams can monitor and manage security across Microsoft identities, data, devices, apps, and infrastructure.

## Signal sources
Microsoft Threat Protection gathers signals from various detection engines and applies intelligent correlation to provide security analysts with better context on the full scope of a threat. 

### Security experiences
The following table provides details on what experiences are available in Microsoft 365 security center and what services are integrated to provide further details during an investigation. 




Capability | Microsoft 365 security center | Microsoft Defender Security Center 
:---|:---:
**Investigate incidents** | &#9745; <br> (view page)|  &#9745; <br> (view page) 
&nbsp;&nbsp;&nbsp;&nbsp;Correlated incidents | &#9745; |  X |
&nbsp;&nbsp;&nbsp;&nbsp;Manage incidents |  Manage incidents involving device, email, and identity alerts |  Manage incidents involving device alerts |
&nbsp;&nbsp;&nbsp;&nbsp;Inspect alerts | - Device alerts <br> - Email alerts - opens in Office 365 ATP <br> - Identity alerts - opens in Azure ATP | Device alerts |
**Automated investigation and response** | &#9745; <br> (view page)|  &#9745; <br> (view page) 
&nbsp;&nbsp;&nbsp;&nbsp;Remediate alerts | - Device alerts <br> - Email alerts - opens in Office 365 ATP | - Device alerts <br>
**Advanced hunting** | &#9745; <br> (view page)|  &#9745; <br> (view page) 
&nbsp;&nbsp;&nbsp;&nbsp;Schema coverage | - Windows <br> - Office 365 | Windows
&nbsp;&nbsp;&nbsp;&nbsp; Saved queries | &#9745;  | &#9745; |
&nbsp;&nbsp;&nbsp;&nbsp; Custom detections | X | &#9745; |




