---
title: Promote Microsoft Defender for Office to Production
description: Set up your Microsoft 365 Defender trial lab or pilot environment to try out and experience the security solution designed to protect devices, identity, data, and applications in your organization.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: 
author: 
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: conceptual
ms.technology: m365d
---

# Promote Microsoft Defender for Office to production




**Applies to:**
- Microsoft 365 Defender

After successfully evaluating or piloting MDO, it can be promoted to your entire production environment.
1. Purchase and provision the necessary licenses and assign them to your production users.
1. Re-run recommended baseline policy configurations (either Standard or Strict) against your production email domain or specific groups of users.
1. Optionally create and configure any custom MDO policies against your production email domain or groups of users.  However, remember that any assigned baseline polies will always take precedence over custom policies.
1. Update the public MX record for your production email domain to resolve directly to EOP.
1. Decommission any third-party SMTP gateways and disable or delete any EXO connectors associated with this relay.
