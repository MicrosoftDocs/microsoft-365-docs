---
title: Promote your Microsoft 365 Defender evaluation environment to Production
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

# Promote your Microsoft 365 Defender evaluation environment to production


**Applies to:**
- Microsoft 365 Defender

To promote your Microsoft 365 Defender evaluation environment to production, first purchase the necessary license. Follow the steps in [Create the eval environment](eval-create-eval-environment.md) and purchase the Office 365 E5 license (instead of selecting Start free trial).

Next, complete any additional configuration and expand your pilot groups until these have reached full production. 

## Microsoft Defender for Identity
Defender for Identity doesn't require any additional configuration. Just make sure you've purchased the necessary licenses and installed the sensor on all of your Active Directory domain controllers and Active Directory Federation Services (AD FS) servers. 

## Microsoft Defender for Office 365

After successfully evaluating or piloting MDO, it can be promoted to your entire production environment.
1. Purchase and provision the necessary licenses and assign them to your production users.
2. Re-run recommended baseline policy configurations (either Standard or Strict) against your production email domain or specific groups of users.
3. Optionally create and configure any custom MDO policies against your production email domain or groups of users.  However, remember that any assigned baseline policies will always take precedence over custom policies.
4. Update the public MX record for your production email domain to resolve directly to EOP.
5. Decommission any third-party SMTP gateways and disable or delete any EXO connectors associated with this relay.

## Microsoft Defender for Endpoint

To promote Microsoft Defender for Endpoint evaluation environment from a pilot to production, simply onboard more endpoints to the service using any of the [supported tools and methods](/defender-endpoint/onboard-configure).

Use the following general guidelines to onboard more devices to Microsoft Defender for Endpoint. 

1. Verify that the device fulfills the [minimum requirements](/defender-endpoint/minimum-requirements).
2. Depending on the device, follow the configuration steps provided in the onboarding section of the Defender for Endpoint portal.
3. Use the appropriate management tool and deployment method for your devices.
4.  Run a detection test to verify that the devices are properly onboarded and reporting to the service.


## Microsoft Cloud App Security
Defender for Identity doesn't require any additional configuration. Just make sure you've purchased the necessary licenses.

