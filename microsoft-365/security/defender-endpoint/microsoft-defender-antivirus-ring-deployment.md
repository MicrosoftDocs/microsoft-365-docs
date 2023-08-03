---
title: Microsoft Defender Antivirus ring deployment guide overview
description: Microsoft Defender Antivirus is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article provides an overview about how to use ring deployment methods to update your Microsoft Defender Antivirus clients.
keywords: deploy Microsoft Defender Antivirus updates, ring deployment Microsoft Defender Antivirus, threat intelligence, cybersecurity, cloud security,
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: high
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.custom: intro-overview
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 07/21/2023
---

# Deploy Microsoft Defender Antivirus in rings

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows
- Windows Server

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats.

> [!TIP]
> Microsoft Defender for Endpoint is available in two plans, Defender for Endpoint Plan 1 and Plan 2. A new Microsoft Defender Vulnerability Management add-on is now available for Plan 2.
>
> For more information on the features and capabilities included in each plan, including the new Defender Vulnerability Management add-on, see [Compare Microsoft Defender for Endpoint plans](defender-endpoint-plan-1-2.md).

Deploying Microsoft Defender for Endpoint can be done using a ring-based deployment approach and updating using the gradual rollout process.

## Ring deployment overview

It's important to ensure that client components are up-to-date to deliver critical protection capabilities and prevent attacks.
Capabilities are provided through several components: 

- [Endpoint Detection & Response](overview-endpoint-detection-response.md)
- [Next-generation protection](microsoft-defender-antivirus-windows.md) with [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md)
- [Attack Surface Reduction](overview-attack-surface-reduction.md)

Updates are released monthly using a gradual release process. This process helps to enable early failure detection to identify problematic results in your unique environment as it occurs and address it quickly before a larger rollout.

> [!NOTE]
> For more information on how to control daily security intelligence updates, see [Schedule Microsoft Defender Antivirus protection updates](manage-protection-update-schedule-microsoft-defender-antivirus.md). Updates ensure that next-generation protection can defend against new threats, even if cloud-delivered protection is not available to the endpoint.

This article provides overview information about deploying Microsoft Defender Antivirus in rings for a gradual rollout process.

## Management tools

To create your own custom gradual rollout process for daily and/or monthly updates, you can use the following methods that use the tools:

- **Microsoft Intune and Microsoft Update** microsoft-intune-and-microsoft-update - Requires direct access to the internet. Microsoft Update (MU), formerly known as Windows Update (WU)
- **System Center Configuration Manager and Windows Server Update Services** - System Center Configuration Manager (SCCM) Software Update Point (SUP) = SCCM + Windows Server Update Services (WSUS)
- **Group Policy and Microsoft Update** - Requires direct access to the internet
- **Group Policy and network share** - For example, UNC path, SMB, CIFS
- **Group Policy and WSUS**

For details on how to use these tools, see [Create a custom gradual rollout process for Microsoft Defender updates](configure-updates.md).

Customers that prioritize availability over security, should take a crawl, walk, run approach.

## Deployment scenarios

- [Ring deployment using Intune and Microsoft Update](microsoft-defender-antivirus-ring-deployment-intune-microsoft-update.md)
- [Ring deployment using System Center Configuration Manager and Windows Server Update Services (WSUS)](microsoft-defender-antivirus-ring-deployment-sscm-wsus.md)
- [Ring deployment using Group Policy and Microsoft Update](microsoft-defender-antivirus-ring-deployment-group-policy-microsoft-update.md)
- [Ring deployment using Group Policy and network share](microsoft-defender-antivirus-ring-deployment-group-policy-network-share.md)
- Ring deployment using Group Policy and Windows Server Update Services
   - [Pilot ring deployment using Group Policy and Windows Server Update Services](microsoft-defender-antivirus-pilot-ring-deployment-group-policy-wsus.md)
   - [Production ring deployment using Group Policy and Windows Server Update Services](microsoft-defender-antivirus-production-ring-deployment-group-policy-wsus.md)
