---
title: Zero Trust with Microsoft Defender XDR
description: Microsoft Defender XDR contributes to a strong Zero Trust strategy and architecture
keywords: Zero Trust, Microsoft Defender XDR, security architecture, security strategy, cyber security, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.custom: 
ms.topic: conceptual
adobe-target: true
ms.date: 04/24/2023
---

# Zero Trust with Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

Microsoft Defender XDR contributes to a strong Zero Trust strategy and architecture by providing extended detection and response (XDR). Microsoft Defender XDR works together with other Microsoft XDR tools and services and can be integrated with Microsoft Sentinel as a security information and event management (SIEM) source for a complete XDR/SIEM solution.

Microsoft Defender XDR is an XDR solution that automatically collects, correlates, and analyzes signal, threat, and alert data from across your Microsoft 365 environment, including endpoint, email, applications, and identities.

:::image type="content" source="../../media/zero-trust/m365-zero-trust-architecture-defender.png" alt-text="Diagram that shows the Microsoft Defender XDR in the Zero Trust architecture." lightbox="../../media/zero-trust/m365-zero-trust-architecture-defender.png":::

In the illustration: Microsoft Defender XDR provides XDR capabilities for protecting:

- Endpoints, including laptops and mobile devices
- Data in Office 365, including email
- Cloud apps, including other SaaS apps that your organization uses
- On-premises Active Directory Domain Services (AD DS) and Active Directory Federated Services (AD FS) servers

Microsoft Defender XDR helps you apply the principles of Zero Trust in the following ways:

| Zero Trust principle | Met by |
| --- | --- |
| Verify explicitly | Microsoft Defender XDR provides XDR across users, identities, devices, apps, and emails.  |
| Use least privileged access | If used with Microsoft Entra ID Protection, Microsoft Defender XDR blocks users based on the level of risk posed by an identity. Microsoft Entra ID Protection is licensed separately from Microsoft Defender XDR and is included with Microsoft Entra ID P2.  |
| Assume breach | Microsoft Defender XDR continuously scans the environment for threats and vulnerabilities. It can implement automated remediation tasks, including automated investigations and isolating endpoints. |

To add Microsoft Defender XDR to your Zero Trust strategy and architecture, go to [Evaluate and pilot Microsoft Defender XDR](eval-overview.md) for a methodical guide to piloting and deploying Microsoft Defender XDR components. The following table summarizes what these topics include.

|Includes|Prerequisites|Doesn't include|
|---------|---------|---------|
| Set up the evaluation and pilot environment for all components: <ul><li>Defender for Identity</li><li>Defender for Office 365</li><li>Defender for Endpoint</li><li>Microsoft Defender for Cloud Apps</li></ul> <br> Protect against threats <br><br> Investigate and respond to threats | See the guidance for the architecture requirements for each component of Microsoft Defender XDR. | Microsoft Entra ID Protection is not included in this solution guide. It is included in [Step 1. Configure Zero Trust identity and device access protection](../microsoft-365-zero-trust.md#step-1-configure-zero-trust-identity-and-device-access-protection--starting-point-policies). |

## Next steps

Learn more about Zero Trust for Microsoft Defender XDR services:

- [Defender for Endpoint](../defender-endpoint/zero-trust-with-microsoft-defender-endpoint.md)
- [Defender for Office 365](../office-365-security/zero-trust-with-microsoft-365-defender-office-365.md)
- [Defender for Cloud Apps](/defender-cloud-apps/zero-trust)
- [Defender for Identity](/defender-for-identity/zero-trust)

Learn more about other Microsoft 365 capabilities that contribute to a strong Zero Trust strategy and architecture with the [Zero Trust deployment plan with Microsoft 365](../Microsoft-365-zero-trust.md).

Learn more about Zero Trust and how to build an enterprise-scale strategy and architecture with the [Zero Trust Guidance Center](/security/zero-trust).
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
