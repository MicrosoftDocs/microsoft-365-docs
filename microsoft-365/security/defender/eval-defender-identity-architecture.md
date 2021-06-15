---
title: Review architecture requirements and key concepts for Microsoft Defender for Identity
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

# Review architecture requirements and key concepts for Microsoft Defender for Identity


**Applies to:**
- Microsoft 365 Defender

This article is [Step 1 of 2](eval-defender-identity-overview.md) in the process of setting up the evaluation environment for Microsoft Defender for Identity. For more information about this process, see the [overview article](eval-defender-identity-overview.md).

Before enabling Microsoft Defender for Identity, be sure you understand the architecture and can meet the requirements. 

## Understand the architecture

The following diagram illustrates . . .

![Architecture for Microsoft Defender for Identity](../../media/defender/m365-defender-identity-architecture.png)

The following table describes this illustration.


|Call-out  |Description  |
|---------|---------|
|1     |  Microsoft Defender for Identity aggregates and analyzes Azure AD and sensor data for monitoring, investigating, and responding to authentication and authorization signals. |
|2     |  Sensors installed on AD domain controllers parse logs and network traffic and send them to Microsoft Defender for Identity for analysis and reporting. Sensors can also parse Active Directory Federation Services (AD FS) when Azure is configured to use federated authentication. |
|3     |Microsoft Defender for Identity shares signals to the Microsoft 365 Security Center. |




## Understand key concepts

The following table identified key concepts that are important to understand when evaluating, configuring, and deploying MDO.


|Concept  |Description |More information  |
|---------|---------|---------|
|  |         |         |
|     |         |         |
|     |         |         |
|     |         |         |



## Review architecture requirements



## SIEM integration

??

### Navigation you may need

[Create the Microsoft 365 Defender Evaluation Environment](eval-create-eval-environment.md)