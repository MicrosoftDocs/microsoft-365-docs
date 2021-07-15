---
title: Step 3. Plan for Microsoft 365 Defender integration with your SOC catalogue of services
description: The basics of integrating Microsoft 365 Defender into your security operations catalogue of services.
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
# Step 3. Plan for Microsoft 365 Defender integration with your SOC catalogue of services

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

An established SOC should have a catalogue of services that might include:

- Intrusion & malware analysis
- Attribution & reverse engineering
- Threat intelligence
- Analytics
- Hunting investigation
- Forensics
- Incident response 
- CSIRT (that may be segregated from SOC) 
- Compliance testing
- Insider threat & fraud monitoring
- Security incident & event monitoring 
- Vulnerability scanning
- XDR/SOAR
- Phishing
- Data loss prevention
- Brand monitoring

Because Microsoft 365 Defender technologies cross various functions, your SOC Team will need to determine which roles and responsibilities are best suited to manage each component of Defender and align to service function.

The components of Microsoft 365 Defender are:

- **Microsoft Defender for Identity** (formerly Azure Advanced Threat Protection, also known as Azure ATP) is a cloud-based security solution that leverages Active Directory Domain Services (AD DS) signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at organizations.

- **Microsoft Defender for Endpoint** is a holistic, cloud delivered endpoint security solution for devices that includes risk-based vulnerability management and assessment, attack surface reduction, behavioral based and cloud-powered next generation protection, endpoint detection and response (EDR), automatic investigation and remediation, managed hunting services, rich APIs, and unified security management.

 - **Microsoft Defender for Office 365** is a cloud-based email filtering service that helps protect organizations against unknown malware and viruses by providing robust zero-day protection and includes features to safeguard organizations from harmful links in real time. It also offers a comprehensive slate of investigation and hunting, response and remediation, awareness and training, and secure posture features.

- **Microsoft Cloud App Security** is a Cloud Access Security Broker (CASB) that supports various deployment modes including log collection, API connectors, and reverse proxy. It provides rich visibility, control over data travel, and sophisticated analytics to identify and combat cyberthreats across all Microsoft and third-party cloud services.

Because Microsoft 365 Defender components and technologies cross various functions, your SOC team will need to determine which roles and responsibilities are best suited to manage each component of Microsoft 365 Defender and align to service function.

To integrate the capabilities of Microsoft 365 Defender, you will need to refine the SOC services. For more information about the capabilities of Microsoft 365 Defender, see the following:

- [What is Microsoft Defender for Endpoint?](/defender-endpoint/microsoft-defender-endpoint)
- [What is Microsoft Defender for Identity?](/defender-for-identity/what-is)
- [What is Defender for Office 365?](/office-365-security/defender-for-office-365)
- [What is Microsoft Cloud App Security?](/cloud-app-security/what-is-cloud-app-security)

## Next step

[Step 4. Define Microsoft 365 Defender roles, responsibilities, and oversight](integrate-microsoft-365-defender-secops-roles.md)

