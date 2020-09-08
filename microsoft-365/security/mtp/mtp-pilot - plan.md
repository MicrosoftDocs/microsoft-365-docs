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

This guide provides step-by-step guidance on how to set up your pilot project. 

>[!IMPORTANT]
>For optimum results, follow the pilot instructions as closely as possible.


## Scope

The scope of the pilot will determine how broad the test will be, based on your environment and acceptable testing methods. Here are some example scopes to consider:
- Development or test environment which includes endpoints, servers, domain controllers.
- Production environment with Microsoft 365, Azure, Active Directory services, endpoints, and servers

NOTE: If you don’t have the full licenses yet, you can get trial licenses to [evaluate Microsoft Threat Protection](https://aka.ms/mtp-trial-lab) – plan, prepare, setup, configure, and run your pilot project. Your stakeholders will play a big role in helping facilitate the process from start to finish.

The types of operating systems to be evaluated should also be defined based on the organizational makeup. This may include the following: [Mac endpoints](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac#system-requirements), [Linux Servers](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-linux#system-requirements), [Windows 10 endpoints](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements#supported-windows-versions), [Windows Server 2016](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements#supported-windows-versions).

## Use cases

Use cases represent statements of how the tool being tested is meant to be consumed by its intended users. These can be formulated as user stories from the point of view of a particular persona, such as a SOC analyst. For example:
- As a SOC analyst, I need to view, correlate, assess and manage alerts and events across devices, users, and mailboxes in my network. [Incident management]
- As a SOC analyst, I must have the tool and process to automatically investigate and respond to malicious events in my network. [Auto IR]
- As a SOC analyst, I must search data from my environment to find known and potential threats, and suspicious activities. [Advanced Hunting]

Keep in mind that these use cases should be created within the parameters of the defined scope. If, for example, the scope of testing does not include an evaluation of tools such as Microsoft Cloud App Security, then use cases that rely on this as a data source should not be created.

## Requirements

From the list of use cases, you can start to create requirements. Requirements include features a tool must have to satisfy the use cases. These requirements can be broken down into categories such as configuration and maintenance, support for integrations, and feature-specific requirements like hunting ability and the ability to build custom alerts.

## Test plan

Depending on the requirements, different methods of testing may be appropriate. For instance, if the requirement is to evaluate the efficacy of Automated Remediation, the test plan needs to include steps to generate the behavior(s) that would trigger an automated remediation action within Microsoft Threat Protection. If the requirement is to detect a particular behavior or attack, then the test may involve more steps. The point is to have a plan in place to accurately test against your requirements.

## Success criteria

Success criteria is ultimately the bar set to measure against what you are testing. Whether you are testing Microsoft Threat Protection (or any other technology for that matter) against other tools or by itself, there must be some quantifiable criteria to determine the value the tool provides. Based on the scope, requirements, and testing plan, the success criteria will determine how to score the test. This should be less of a pass or fail and more of a weighted scoring based on your needs. For example, to be successful, a tool may need to score above 80% in certain critical areas you identify.

## Scorecard

One way to bring all elements of your plan together can be to create a scorecard. See a sample  scorecard below:
|||||||||
|:-------|:-----|:-------|:-----|:-------|:-----|:-------|:-----|
|Use case|Requirements|Configuration requirements|Test plan|Expected outcome|Test status|Score|Notes|
|Incident management|<ul>-	Microsoft Threat Protection	<br>- Azure ATP <br>- Microsoft Defender ATP <br>- Microsoft Cloud App Security (optional)</ul>|||||||
|AutoIR||||||||
|Advanced hunting||||||||



## Next step
|||
|:-------|:-----|
|![Phase 2: Prepare](../../media/prepare.png) <br>[Phase 2: Prepare](prepare-mtpeval.md) | Prepare your Microsoft Threat Protection evaluation lab environment
