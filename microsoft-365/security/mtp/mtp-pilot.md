---
title: Run your pilot Microsoft 365 Defender project 
description: Run your pilot Microsoft 365 Defender project in production to effectively determine the benefits and adoption of Microsoft 365 Defender.
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
ms.collection: 
- M365-security-compliance
- m365solution-overview
- m365solution-pilotmtpproject
ms.topic: conceptual
---

# Run your pilot Microsoft 365 Defender project 

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

To effectively determine the benefit and adoption of Microsoft 365 Defender, you can run a pilot project. Before enabling Microsoft 365 Defender in your production environment and starting your use cases, it's best to plan to determine the tasks to accomplish for your pilot project and set the success criteria. 


## How to use this pilot playbook

This guide provides an overview of Microsoft 365 Defender and step-by-step instructions on how to set up your pilot project. 

Microsoft 365 Defender is a unified pre- and post-breach enterprise defense suite that natively coordinates protection, detection, prevention, investigation, and response across endpoints, identities, email, and applications to provide integrated protection against sophisticated attacks. It does so by combining and orchestrating the following capabilities into a single security solution:
  - Microsoft Defender for Endpoint, the new name for Microsoft Defender Advanced Threat Protection (endpoints)
  -	Microsoft Defender for Office 365, the new name for Office 365 ATP (email) 
  -	Microsoft Defender for Identity, the new name for Azure ATP (identity) 
  -	Microsoft Cloud App Security (apps)

![Image of_Microsoft 365 Defender solution for users, Microsoft Defender for Identity, for endpoints Microsoft Defender for Endpoint, for cloud apps, Microsoft Cloud App Security, and for data, Microsoft Defender for Office 365](../../media/mtp/m365pillars.png)

With the integrated Microsoft 365 Defender solution, security professionals can stitch together the threat signals that Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, and Microsoft Cloud App Security receive, and determine the full scope and impact of the threat, how it entered the environment, what it's affected, and how it's currently impacting the organization. Microsoft 365 Defender takes automatic action to prevent or stop the attack and self-heal affected mailboxes, endpoints, and user identities. See the [Microsoft 365 Defender overview](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection) for details.

![Phases in running a Microsoft 365 Defender pilot](../../media/pilotphases.png)

The following sample timeline varies depending on having the right resources in your environment. Some detections and workflows might need more learning time than the others.

![Sample timeline in running a Microsoft 365 Defender pilot](../../media/pilotimeline.png)

>[!IMPORTANT]
>For optimum results, follow the pilot instructions as closely as possible.


### Pilot playbook phases 

There are four phases in running a Microsoft 365 Defender pilot:

|Phase | Description | 
|:-------|:-----|
| ![Planning](../../media/mtp/plan.png)<br>[Planning](mtp-pilot-plan.md)| Learn what you need to consider before running your Microsoft 365 Defender pilot project: <br><br>- Scope <br> - Use cases <br>- Requirements <br>- Test plan <br> - Success criteria <br> - Scorecard 
| ![Preparation](../../media/mtp/prep.png) <br>[Preparation](mtp-evaluation.md)|  Access Microsoft 365 Security Center to set up your Microsoft 365 Defender pilot  environment. You'll be guided to:<br><br>- Identify stakeholders and seek sign-off for your pilot <br> - Environment considerations <br>- Access <br>- Azure Active Directory setup <br> - Configuration order <br> - Sign up for Microsoft 365 E5 Trial <br> - Configure domain <br>- Assign Microsoft 365 E5 licenses <br> - Complete the setup wizard in the portal|
| ![Attack simulation](../../media/mtp/run-sim.png) <br>[Attack simulation](mtp-pilot-simulate.md) | To simulate an attack, you'll be guided to:<br><br>- Verify the test environment requirements <br>-  Run the simulation <br>- Investigate an incident <br>- resolve the incident 
| ![Closing and summary](../../media/mtp/close.png) <br>[Closing and summary](mtp-pilot-close.md) | When you've reached the end of the process, you'll be guided to:<br><br>- Go through your final output<br>- Present your output to your stakeholders <br>- Provide feedback <br>- Take next steps 

## Next step
|![Planning phase](../../media/mtp/plan.png) <br>[Planning phase](mtp-pilot-plan.md) | Plan your Microsoft 365 Defender pilot project 
|:-------|:-----|
