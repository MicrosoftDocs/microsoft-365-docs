---
title: Step 3. Plan for Microsoft 365 Defender integration with your SOC catalog of services
description: The basics of integrating Microsoft 365 Defender into your security operations catalog of services.
keywords: incidents, alerts, investigate, correlation, attack, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack, secops, security operations, soc
ms.service: microsoft-365-security
ms.subservice: m365d
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - zerotrust-solution
  - msftsolution-secops
  - tier3
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 05/09/2023
---

# Step 3. Plan for Microsoft 365 Defender integration with your SOC catalog of services

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

An established Security Operations Center (SOC) should have a catalog of services that might include:

- Intrusion & malware analysis
- Attribution & reverse engineering
- Threat intelligence
- Analytics
- Hunting investigation
- Forensics
- Incident response 
- Computer Security Incident Response Team (CSIRT) (that may be segregated from SOC) 
- Compliance testing
- Insider threat & fraud monitoring
- Security incident & event monitoring 
- Vulnerability scanning
- Extended Detection and Response (XDR)/Security Orchestration, Automation, and Response (SOAR)
- Phishing
- Data loss prevention
- Brand monitoring

The components of Microsoft 365 Defender are:

- **Microsoft Defender for Identity** (formerly Azure Advanced Threat Protection, also known as Azure ATP) is a cloud-based security solution that uses Active Directory Domain Services (AD DS) signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at organizations.

- **Microsoft Defender for Endpoint** is a holistic, cloud delivered endpoint security solution for devices that includes risk-based vulnerability management and assessment, attack surface reduction, behavioral based and cloud-powered next generation protection, endpoint detection and response (EDR), automatic investigation and remediation, managed hunting services, rich APIs, and unified security management.

 - **Microsoft Defender for Office 365** is a cloud-based email filtering service that helps protect organizations against unknown malware and viruses by providing robust zero-day protection and includes features to safeguard organizations from harmful links in real time. It also offers a comprehensive slate of investigation and hunting, response and remediation, awareness and training, and secure posture features.

- **Microsoft Defender for Cloud Apps** is a cloud access security broker (CASB) that supports various deployment modes including log collection, API connectors, and reverse proxy. It provides rich visibility, control over data travel, and sophisticated analytics to identify and combat cyberthreats across all Microsoft and third-party cloud services.

Because Microsoft 365 Defender components and technologies span various functions, your SOC team will need to determine which roles and responsibilities are best suited to manage each component of Microsoft 365 Defender and align to service function.

To integrate the capabilities of Microsoft 365 Defender, you will need to refine the SOC services. For more information about the capabilities of Microsoft 365 Defender, see the following articles:

- [What is Microsoft Defender for Endpoint?](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)
- [What is Microsoft Defender for Identity?](/defender-for-identity/what-is)
- [What is Defender for Office 365?](/microsoft-365/security/defender/microsoft-365-defender)
- [What is Microsoft Defender for Cloud Apps?](/cloud-app-security/what-is-cloud-app-security)

## Next step

[Step 4. Define Microsoft 365 Defender roles, responsibilities, and oversight](integrate-microsoft-365-defender-secops-roles.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
