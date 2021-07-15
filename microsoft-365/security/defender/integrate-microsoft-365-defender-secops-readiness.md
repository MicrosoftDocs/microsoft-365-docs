---
title: Step 2. Perform a SOC integration readiness assessment using the Zero Trust Framework
description: The basics of performing a SOC integration readiness assessment using the Zero Trust Framework when integrating Microsoft 365 Defender into your security operations.
keywords: incidents, alerts, investigate, correlation, attack, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack, secops, security operations, soc
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---
# Step 2. Perform a SOC integration readiness assessment using the Zero Trust Framework

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Once the core functions of the SOC team are defined, the next step for your organization is to prepare for the adoption of Microsoft Defender through a [Zero Trust approach](https://docs.microsoft.com/security/zero-trust/). This can help you determine the requirements needed for deploying Microsoft 365 Defender using modern industry leading practices, while evaluating Defender’s capabilities against their environment. 

This approach is based on a strong foundation of protections and includes key areas such as identity, endpoints (devices), data, apps, infrastructure, and network. The Readiness Assessment team will determine the areas where a foundational requirement for enabling Microsoft 365 Defender has not yet been met and will need remediation. 

The following are some of the items that will need to be remediated in order for the SOC to fully optimize processes in the SOC:

- **Identity:** 	Legacy Active Directory Domain Services (AD DS) domains, no MFA plan, no inventory of privileged accounts, and others.
- **Endpoints (devices):**	Large number of legacy OSes, limited device inventory, and others.
- **Apps/Data:** 	Lack of data governance standards, no inventory of custom apps that won’t integrate.
- **Networking:**	Performance issues due to low bandwidth, flat network, wireless security issues, and others.
- **Infrastructure:**	Large number of unsanctioned SaaS licenses, no container security, and others.

Organizations should also follow the [turning on Microsoft 365 Defender](m365d-enable.md) article to capture the baseline set of configuration requirements. These steps will in turn capture remediation activities the SOC teams will have to carryout to effectively develop use cases. 

Adoption procedures and use case creation and are described in Steps 3 and 4.

## Next step

[Step 3. Plan for Microsoft 365 Defender integration with your SOC catalogue of services](integrate-microsoft-365-defender-secops-services.md)
