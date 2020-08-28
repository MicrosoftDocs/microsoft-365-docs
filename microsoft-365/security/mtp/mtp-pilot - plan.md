---
title: Planning your pilot Microsoft Threat Protection project 
description: Run your pilot Microsoft Threat Protection project to effectively determine the benefit and adoption of Microsoft Threat Protection (MTP)
keywords: Microsoft Threat Protection pilot, run pilot Microsoft Threat Protection project, evaluate Microsoft Threat Protection in production, Microsoft Threat Protection pilot project, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
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

# Planning your pilot Microsoft Threat Protection project 

**Applies to:**
- Microsoft Threat Protection

To effectively determine the benefit and adoption of Microsoft Threat Protection (MTP), you can run a pilot project. Before enabling Microsoft Threat Protection in your environment and starting with defined use cases, it is best to go through a planning process to determine the tasks that must be accomplished in this pilot project, and the success criteria. 

This guide provides an overview of Microsoft Threat Protection and step-by-step guidance on how to set up your pilot project. 

The following sample timeline varies depending on having the right resources in your environment. Some detections and workflows might need more learning time than the others.

>[!IMPORTANT]
>For optimum results, follow the pilot instructions as closely as possible.


## Pilot playbook phases 

There are four phases in running a Microsoft Threat Protection pilot:

|Phase | Description | 
|:-------|:-----|
| ![Phase 1: Plan](../../media/prepare.png)<br>[Phase 1: Plan](prepare-mtpeval.md)| Learn what you need to consider when deploying Microsoft Threat Protection in a trial lab environment: <br><br>- Stakeholders and sign-off <br> - Environment considerations <br>- Access <br>- Azure Active Directory setup <br> - Configuration order
|  ![Phase 2: Prepare](../../media/setup.png) <br>[Phase 2: Prepare](setup-mtpeval.md)|  Take the initial steps to access Microsoft 365 Security Center to setup your Microsoft Threat Protection trial lab environment. You will be guided to:<br><br>- Sign up for Microsoft 365 E5 Trial <br>  - Configure domain<br>- Assign Microsoft 365 E5 licenses<br>- Complete the setup wizard in the portal|
|  ![Phase 3: Run attack simulation](../../media/config-onboard.png) <br>[Phase 3: Run attack simulation](config-mtpeval.md) | Configure each Microsoft Threat Protection pillar and onboard endpoints. You will be guided to:<br><br>- Configure Office 365 Advanced Threat Protection<br>- Configure Microsoft Cloud App Security<br>- Configure Azure Advanced Threat Protection<br>- Configure Microsoft Defender Advanced Threat Protection 
|  ![Phase 4: Close and summarize](../../media/config-onboard.png) <br>[Phase 3: Close and summarize](config-mtpeval.md) | Configure each Microsoft Threat Protection pillar and onboard endpoints. You will be guided to:<br><br>- Configure Office 365 Advanced Threat Protection<br>- Configure Microsoft Cloud App Security<br>- Configure Azure Advanced Threat Protection<br>- Configure Microsoft Defender Advanced Threat Protection 


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
    Threat Protection
-   Penetration testing in production environment

## Next step
|||
|:-------|:-----|
|![Phase 1: Prepare](../../media/prepare.png) <br>[Phase 1: Prepare](prepare-mtpeval.md) | Prepare your Microsoft Threat Protection evaluation lab environment
