---
title: Step 7. Promote your Microsoft 365 Defender evaluation environment to Production
description: Use this article to promote your evals of MDI, MDO, MDE, and Defender for Cloud Apps to your live environment in Microsoft 365 Defender or M365D.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: bcarter
author: brendacarter
f1.keywords: 
  - NOCSH
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 05/13/2021
---

# Step 7. Promote your Microsoft 365 Defender evaluation environment to production

**Applies to:**
- Microsoft 365 Defender

To promote your Microsoft 365 Defender evaluation environment to production, first purchase the necessary license. Follow the steps in [Create the eval environment](eval-create-eval-environment.md) and purchase the Office 365 E5 license (instead of selecting Start free trial).

Next, complete any other configuration and expand your pilot groups until these have reached full production.

## Microsoft Defender for Identity

Defender for Identity doesn't require any other configuration. Just make sure you've purchased the necessary licenses and installed the sensor on all of your Active Directory domain controllers and Active Directory Federation Services (AD FS) servers.

## Microsoft Defender for Office 365

After successfully evaluating or piloting MDO, it can be promoted to your entire production environment.

1. Purchase and provision the necessary licenses and assign them to your production users.
2. Re-run recommended baseline policy configurations (either Standard or Strict) against your production email domain or specific groups of users.
3. Optionally create and configure any custom MDO policies against your production email domain or groups of users.  However, remember that any assigned baseline policies will always take precedence over custom policies.
4. Update the public MX record for your production email domain to resolve directly to EOP.
5. Decommission any third-party SMTP gateways and disable or delete any EXO connectors associated with this relay.

## Microsoft Defender for Endpoint

To promote Microsoft Defender for Endpoint evaluation environment from a pilot to production, onboard more endpoints to the service using any of the [supported tools and methods](../defender-endpoint/onboard-configure.md).

Use the following general guidelines to onboard more devices to Microsoft Defender for Endpoint.

1. Verify that the device fulfills the [minimum requirements](../defender-endpoint/minimum-requirements.md).
2. Depending on the device, follow the configuration steps provided in the onboarding section of the Defender for Endpoint portal.
3. Use the appropriate management tool and deployment method for your devices.
4. Run a detection test to verify that the devices are properly onboarded and reporting to the service.

## Microsoft Defender for Cloud Apps

Microsoft Defender for Cloud Apps doesn't require any other configuration. Just make sure you've purchased the necessary licenses. If you've scoped the deployment to certain user groups, increase the scope of these groups until you reach production scale.
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
