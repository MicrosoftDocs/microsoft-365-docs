---
title: Production ring deployment using Group Policy and network share
description: Microsoft Defender for Endpoint is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article explains how to deploy Microsoft Defender for Endpoint in measured, staged cycles.
keywords: deploy Microsoft Defender for Endpoint, Ring deployment Microsoft Defender for Endpoint, cybersecurity, cloud security, analytics, threat intelligence, attack surface reduction, next-generation protection, automated investigation and remediation, microsoft threat experts, secure score, advanced hunting, Microsoft 365 Defender, cyber threat hunting
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-britweston
author: v-britweston
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
ms.date: 05/24/2023
---

# Microsoft Defender for Endpoint production ring deployment using Group Policy and network share

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

## Prerequisites

Review the _read me_ article at [Readme](https://github.com/microsoft/defender-updatecontrols/blob/main/README.md) 
https://github.com/microsoft/defender-updatecontrols/blob/main/README.md

1. Download the latest defender .admx and .adml 

   - [WindowsDefender.admx](https://github.com/microsoft/defender-updatecontrols/blob/main/WindowsDefender.admx) 
   - [WindowsDefender.adml](https://github.com/microsoft/defender-updatecontrols/blob/main/WindowsDefender.adml)

1. Copy the latest .admx and .adml to the Domain Controller [Central Store](/troubleshoot/windows-client/group-policy/create-and-manage-central-store#the-central-store).


## Setting up the Pilot (UAT/Test/QA) environment

This section describes the process for setting up the pilot UAT / Test / QA environment, on about 10-500 Windows and/or Windows Server systems, depending on how many total systems that you all have.

> [!NOTE]
> If you have a Citrix enviroment, include at least 1 Citrix VM (non-persistent) and/or (persistent)

(page 70)