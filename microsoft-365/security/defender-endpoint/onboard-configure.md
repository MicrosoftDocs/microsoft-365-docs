---
title: Onboard devices and configure Microsoft Defender for Endpoint capabilities
description: Onboard Windows 10 devices, servers, non-Windows devices and learn how to run a detection test.
keywords: onboarding, Microsoft Defender for Endpoint onboarding, sccm, group policy, mdm, local script, detection test
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 01/31/2023
---

# Configure Microsoft Defender for Endpoint capabilities

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

In this step, you're ready to configure Microsoft Defender for Endpoint capabilities.

## Configure capabilities

In many cases, organizations will have existing endpoint security products in place. The bare minimum being an antivirus solution, but in some cases, an organization might have existing endpoint detection and response solution.

It is common that Defender for Endpoint will need to exist along side these existing endpoint security products either indefinitely or during a cutover period. Fortunately, Defender for Endpoint and the endpoint security suite is modular and can be adopted in a systematic approach.

Onboarding devices effectively enables the endpoint detection and response capability of Microsoft Defender for Endpoint. After onboarding the devices, you'll then need to configure the other capabilities of the service. The following table lists the capabilities you can configure to get the best protection for your environment and the order Microsoft recommends for how the endpoint security suite should be enabled.


| Capability | Description |Adoption Order Rank|
|---|---|---|
|[Endpoint Detection & Response (EDR)](overview-endpoint-detection-response.md)|Defender for Endpoint endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats. <p>|1|
| [Configure Microsoft Defender Vulnerability Management](../defender-vulnerability-management/tvm-prerequisites.md) | Defender Vulnerability Management is a component of Microsoft Defender for Endpoint, and provides both security administrators and security operations teams with unique value, including: <br><br> - Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities. <br><br> - Invaluable device vulnerability context during incident investigations. <br><br> - Built-in remediation processes through Microsoft Intune and Microsoft System Center Configuration Manager.|2|
| [Configure Next-generation protection (NGP)](configure-microsoft-defender-antivirus-features.md) | Microsoft Defender Antivirus is a built-in antimalware solution that provides next-generation protection for desktops, portable computers, and servers. Microsoft Defender Antivirus includes:<br> <br>-Cloud-delivered protection for near-instant detection and blocking of new and emerging threats. Along with machine learning and the Intelligent Security Graph, cloud-delivered protection is part of the next-gen technologies that power Microsoft Defender Antivirus.<br> <br> - Always-on scanning using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection").<br><br> - Dedicated protection updates based on machine learning, human and automated big-data analysis, and in-depth threat resistance research. |3|
| [Configure attack surface reduction (ASR)](overview-attack-surface-reduction.md) | Attack surface reduction capabilities in Microsoft Defender for Endpoint help protect the devices and applications in the organization from new and emerging threats. |4|
| [Configure Auto Investigation & Remediation (AIR) capabilities](configure-automated-investigations-remediation.md) | Microsoft Defender for Endpoint uses Automated investigations to significantly reduce the volume of alerts that need to be investigated individually. The Automated investigation feature leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives.|Not applicable|
| [Configure Microsoft Defender Experts capabilities](../defender/defender-experts-for-hunting.md) | Microsoft  Experts is a managed hunting service that provides Security Operation Centers (SOCs) with expert level monitoring and analysis to help them ensure that critical threats in their unique environments don't get missed.|Not applicable|

For more information, see [Supported Microsoft Defender for Endpoint capabilities by platform](supported-capabilities-by-platform.md).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
