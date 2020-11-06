---
title: Evaluate Microsoft 365 Defender 
description: Set up your Microsoft 365 Defender trial lab or pilot environment to try out and experience the security solution designed to protect devices, identity, data, and applications in your organization.
keywords: Microsoft Threat Protection trial, try Microsoft Threat Protection, evaluate Microsoft Threat Protection, Microsoft Threat Protection evaluation lab, Microsoft Threat Protection pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365solution-overview
- m365solution-evalutatemtp
ms.topic: conceptual
---

# Create a Microsoft 365 Defender trial lab or pilot environment 

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

The purpose of creating this trial lab or pilot environment is to illustrate the comprehensive and integrated Microsoft 365 Defender capabilities. Experience how this intelligent security solution detects, prevents, automatically investigates, and responds to advanced threats your organization. 

This guide takes you through the steps to start your Microsoft 365 Defender evaluation based on the recommended deployment paths. The goal is to help you set up the security solution either in a lab environment with a trial account, or in a pilot environment in production with a full license. Preparing your trial lab or pilot environment can help you present security operation use cases to decision makers in your organization. When you’re done running your attack simulations and are satisfied with the results, you can fully deploy and operationalize it in your organization with the help of Microsoft Technical Sales Professionals or experts in your organization. 

This guide will help you:
- Set up your lab server and computers
- Configure Active Directory with users and groups
- Set up and configure Microsoft Defender for Identity, Microsoft Defender for Office 365, Microsoft Defender for Endpoint, and Microsoft Cloud App Security
- Set up local policies for your server and computers
- Mimic a threat attack to generate a test incident or alert in Microsoft 365 Defender

>[!IMPORTANT]
>For optimum results, follow the lab setup instructions as closely as possible.


## Deployment phases

There are three phases in creating a Microsoft 365 Defender trial lab environment and deploying it:

|Phase | Description | 
|:-------|:-----|
| ![Phase 1: Prepare](../../media/prepare.png)<br>[Phase 1: Prepare](prepare-mtpeval.md)| Learn what you need to consider when deploying Microsoft 365 Defender in a trial lab or pilot environment: <br><br>- Stakeholders and sign-off <br> - Environment considerations <br>- Access <br>- Azure Active Directory setup <br> - Configuration order
|  ![Phase 2: Setup](../../media/setup.png) <br>[Phase 2: Setup](setup-mtpeval.md)|  Take the initial steps to access Microsoft 365 Security Center to set up your Microsoft 365 Defender trial lab or pilot environment. You'll be guided to:<br><br>- Sign up for Microsoft 365 E5 Trial <br>  - Configure domain<br>- Assign Microsoft 365 E5 licenses<br>- Complete the setup wizard in the portal|
|  ![Phase 3: Configure & Onboard](../../media/config-onboard.png) <br>[Phase 3: Configure & Onboard](config-mtpeval.md) | Configure each Microsoft 365 Defender pillar and onboard endpoints. You'll be guided to:<br><br>- Configure Microsoft Defender for Office 365<br>- Configure Microsoft Cloud App Security<br>- Configure Microsoft Defender for Identity<br>- Configure Microsoft Defender for Endpoint


## In scope

The following tasks are in scope for this guide:
-   Set up Azure Active Directory
-   Set up Microsoft 365 Defender
    -   Sign up for Microsoft 365 E5 Trial or use your full license if you're running a pilot
    -   Configure domain
    -   Assign Microsoft 365 E5 licenses
    -   Completing the setup wizard within the portal
-   Configure all Microsoft 365 Defender pillars based on best practices
    -   Microsoft Defender for Office 365
    -   Microsoft Defender for Identity
    -   Microsoft Cloud App Security
    -   Microsoft Defender for Endpoint

## Out of scope

The following are out of scope of this deployment guide:

-   Configuration of third-party solutions that might integrate with Microsoft 365 Defender
-   Penetration testing in production environment

## Next step
![Phase 1: Prepare](../../media/prepare.png) <br>[Phase 1: Prepare](prepare-mtpeval.md) 
<br> Prepare your Microsoft 365 Defender trial lab or pilot environment
