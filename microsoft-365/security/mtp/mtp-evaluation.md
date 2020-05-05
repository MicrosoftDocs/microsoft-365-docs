---
title: Evaluate Microsoft Threat Protection 
description: Set up your Microsoft Threat Protection trial lab environment to try out how the  coordinated threat protection solution designed to protect devices, identity, data and applications can help your organization
keywords: Microsoft Threat Protection trial, try Microsoft Threat Protection, evaluate Microsoft Threat Protection, Microsoft Threat Protection evaluation lab, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
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
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Create a Microsoft Threat Protection trial lab environment 

**Applies to:**
- Microsoft Threat Protection

The purpose of creating this trial lab environment is to illustrate the comprehensive, integrated, and intelligent capabilities of Microsoft Threat Protection in detection, prevention, investigation, and response that you can use in your organization. 

This guide takes you through the steps to start your Microsoft Threat Protection evaluation based on the recommended deployment paths. The goal is to help you set up the integrated Microsoft Threat Protection services in a lab environment or as a proof of concept (POC) when presenting to security solution decision makers in your organization. When you’re done running your attack simulations, automated investigation and response, and are satisfied with the results, you can deploy it in your production environment with the help of Microsoft Technical Sales Professionals or experts in your organization. 

This guide will help you:
- Set up your lab server and computers
- Configure Active Directory with users and groups
- Set up and configure Azure ATP, Office ATP, Microsoft Defender ATP, and Microsoft Cloud App Security
- Setup local policies for your server and computers
- Mimic a threat attack to generate a test incident or alert in Microsoft Threat Protection

>[!IMPORTANT]
>For optimum results, follow the lab setup instructions as closely as possible.


## Deployment phases

There are three phases in creating a Microsoft Threat Protection trial lab environment and deploying it:

|Phase | Description | 
|:-------|:-----|
| ![Phase 1: Prepare](../../media/prepare.png)<br>[Phase 1: Prepare](prepare-mtpeval.md)| Learn what you need to consider when deploying Microsoft Threat Protection in a trial lab environment: <br><br>- Stakeholders and sign-off <br> - Environment considerations <br>- Access <br>- Azure Active Directory setup <br> - Configuration order
|  ![Phase 2: Setup](../../media/setup.png) <br>[Phase 2: Setup](setup-mtpeval.md)|  Take the initial steps to access Microsoft 365 Security Center to setup your Microsoft Threat Protection trial lab environment. You will be guided to:<br><br>- Sign up for Microsoft 365 E5 Trial <br>  - Configure domain<br>- Assign Microsoft 365 E5 licenses<br>- Complete the setup wizard in the portal|
|  ![Phase 3: Configure & Onboard](../../media/config-onboard.png) <br>[Phase 3: Configure & Onboard](config-mtpeval.md) | Configure each Microsoft Threat Protection pillar and onboard endpoints. You will be guided to:<br><br>- Configure Office 365 Advanced Threat Protection<br>- Configure Microsoft Cloud App Security<br>- Configure Azure Advanced Threat Protection<br>- Configure Microsoft Defender Advanced Threat Protection 


## In scope

The following is in scope for this trial lab environment guide:
-   Set up Azure Active Directory
-   Set up Microsoft Threat Protection
    -   Sign up for Microsoft 365 E5 Trial
    -   Configure domain
    -   Assign Microsoft 365 E5 licenses
    -   Completing the setup wizard within the portal
-   Configure all Microsoft Threat Protection pillars based on best practices
    -   Office 365 Advanced Threat Protection
    -   Azure Advanced Threat Protection
    -   Microsoft Cloud App Security
    -   Microsoft Defender Advanced Threat Protection

## Out of scope

The following are out of scope of this deployment guide:

-   Configuration of third-party solutions that might integrate with Microsoft
    Defender ATP
-   Penetration testing in production environment

## Next step
|||
|:-------|:-----|
|![Phase 1: Prepare](../../media/prepare.png) <br>[Phase 1: Prepare](prepare-mtpeval.md) | Prepare your Microsoft Threat Protection evaluation lab environment
