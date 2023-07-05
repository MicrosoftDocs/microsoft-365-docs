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

In this step, you're ready to configure Microsoft Defender for Endpoint capabilities

## Configure capabilities of the service

Onboarding devices effectively enables the endpoint detection and response capability of Microsoft Defender for Endpoint.

After onboarding the devices, you'll then need to configure the other capabilities of the service. The following table lists the capabilities you can configure to get the best protection for your environment.

| Capability | Description |
|-|-|
| [Configure Microsoft Defender Vulnerability Management (MDVM)](tvm-prerequisites.md) | Defender Vulnerability Management is a component of Microsoft Defender for Endpoint, and provides both security administrators and security operations teams with unique value, including: <br><br> - Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities. <br><br> - Invaluable device vulnerability context during incident investigations. <br><br> - Built-in remediation processes through Microsoft Intune and Microsoft System Center Configuration Manager.  |
| [Configure Next-generation protection (NGP)](configure-microsoft-defender-antivirus-features.md) | Microsoft Defender Antivirus is a built-in antimalware solution that provides next-generation protection for desktops, portable computers, and servers. Microsoft Defender Antivirus includes:<br> <br>-Cloud-delivered protection for near-instant detection and blocking of new and emerging threats. Along with machine learning and the Intelligent Security Graph, cloud-delivered protection is part of the next-gen technologies that power Microsoft Defender Antivirus.<br> <br> - Always-on scanning using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection").<br><br> - Dedicated protection updates based on machine learning, human and automated big-data analysis, and in-depth threat resistance research. |
| [Configure attack surface reduction (ASR)](overview-attack-surface-reduction.md) | Attack surface reduction capabilities in Microsoft Defender for Endpoint help protect the devices and applications in the organization from new and emerging threats. |
| [Configure Auto Investigation & Remediation (AIR) capabilities](configure-automated-investigations-remediation.md) | Microsoft Defender for Endpoint uses Automated investigations to significantly reduce the volume of alerts that need to be investigated individually. The Automated investigation feature leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. |
| [Configure Microsoft Defender Experts capabilities](../defender/defender-experts-for-hunting.md) | Microsoft Defender Experts is a managed hunting service that provides Security Operation Centers (SOCs) with expert level monitoring and analysis to help them ensure that critical threats in their unique environments don't get missed.      |

For more information, see [Supported Microsoft Defender for Endpoint capabilities by platform](supported-capabilities-by-platform.md).

## Adoption Order

In many cases, organizations will have existing endpoint security products in place. The bare minimum every organization should have been an antivirus solution. But in some cases, an organization might also have implanted an EDR solution already.

Historically, replacing any security solution used to be time intensive and difficult to achieve due to the tight hooks into the application layer and infrastructure dependencies. However, because Defender for Endpoint is built into the operating system, replacing third-party solutions is now easy to achieve.

Choose the component of Defender for Endpoint to be used and remove the ones that do not apply. The table below indicates the order Microsoft recommends for how the endpoint security suite should be enabled.


|Component|Description|Adoption Order Rank|
|---|---|---|
|Endpoint Detection & Response (EDR)|Defender for Endpoint endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats. <p> [Learn more.](/windows/security/threat-protection/windows-defender-atp/overview-endpoint-detection-response)|1|
|Microsoft Defender Vulnerability Management (MDVM)|Defender Vulnerability Management is a component of Microsoft Defender for Endpoint, and provides both security administrators and security operations teams with unique value, including: <ul><li>Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities</li><li>Invaluable device vulnerability context during incident investigations</li><li>Built-in remediation processes through Microsoft Intune and Microsoft System Center Configuration Manager</li></ul> <p> [Learn more](https://techcommunity.microsoft.com/t5/Windows-Defender-ATP/Introducing-a-risk-based-approach-to-threat-and-vulnerability/ba-p/377845).|2|
|Next-generation protection (NGP)|Microsoft Defender Antivirus is a built-in antimalware solution that provides next-generation protection for desktops, portable computers, and servers. Microsoft Defender Antivirus includes: <ul><li>Cloud-delivered protection for near-instant detection and blocking of new and emerging threats. Along with machine learning and the Intelligent Security Graph, cloud-delivered protection is part of the next-gen technologies that power Microsoft Defender Antivirus.</li><li>Always-on scanning using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection").</li><li>Dedicated protection updates based on machine learning, human and automated big-data analysis, and in-depth threat resistance research.</li></ul> <p> [Learn more](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10).|3|
|Attack Surface Reduction (ASR)|Attack surface reduction capabilities in Microsoft Defender for Endpoint help protect the devices and applications in the organization from new and emerging threats. <br> [Learn more.](/windows/security/threat-protection/windows-defender-atp/overview-attack-surface-reduction)|4|
|Auto Investigation & Remediation (AIR)|Microsoft Defender for Endpoint uses Automated investigations to significantly reduce the volume of alerts that need to be investigated individually. The Automated investigation feature leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. <p> [Learn more.](/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection)|Not applicable|
|Microsoft Threat Experts (MTE)|Microsoft Threat Experts is a managed hunting service that provides Security Operation Centers (SOCs) with expert level monitoring and analysis to help them ensure that critical threats in their unique environments don't get missed. <p> [Learn more.](/windows/security/threat-protection/windows-defender-atp/microsoft-threat-experts)|Not applicable|
