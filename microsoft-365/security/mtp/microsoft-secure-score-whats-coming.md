---
title: What's coming in Microsoft Secure Score?
description: Describes Microsoft Secure Score in the Microsoft 365 security center, how details are calculated, and what security admins can expect.
keywords: security, malware, Microsoft 365, M365, secure score, security center, improvement actions
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: ellevin
author: levinec
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance  
ms.topic: article
search.appverid: 
- MOE150
- MET150
---

# What's coming in Microsoft Secure Score?

To make Microsoft Secure Score a better representative of your security posture and improve usability, we are making some changes in the near future. Your score and the maximum possible score will change. However, this does not imply a change in your security posture.

To learn about recent changes, see [What's new in Microsoft Secure Score?](microsoft-secure-score.md#whats-new)

## April 21st 2020

### Removing improvement actions that don't meet expectations for reliable measurement or don't provide a useful representation of security posture

To ensure that the Microsoft Secure Score is meaningful and that every improvement action is measurable and reliable, we are removing the following improvement actions.

- Delete/block accounts not used in last 30 days
- Designate fewer than 5 global admins
- Apply IRM protections to documents
- Apply Data Loss Prevention policies

### Adding additional control support in the preview version
- Do not allow users to grant consent to unmanaged applications (currently available in released version)

#### Support for additional Microsoft Cloud App Security improvement actions
- Disable Print spooler service on domain controllers
- Modify unsecure Kerberos delegations to prevent impersonation
- Protect and manage local admin passwords with Microsoft LAPS
- Reduce lateral movement path risk to sensitive entities
- Remove dormant accounts from sensitive groups
- Remove unsecure SID history attributes from entities
- Resolve unsecure account attributes
- Stop clear text credentials exposure
- Stop legacy protocols communication
- Stop weak cipher usage

#### Support for Microsoft Defender ATP Threat & Vulnerability Management (TVM) security recommendations
- All released security recommendations supplied by TVM will now also be available in Microsoft Secure Score
