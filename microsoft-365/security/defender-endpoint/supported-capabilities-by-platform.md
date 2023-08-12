---
title: Supported Microsoft Defender for Endpoint capabilities by platform
description: Get to know the Microsoft Defender for Endpoint capabilities supported for Windows 10 devices, servers, and non-Windows devices.
keywords: onboarding, Microsoft Defender for Endpoint onboarding, sccm, group policy, mdm, local script, detection test
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 08/26/2022
---

# Supported Microsoft Defender for Endpoint capabilities by platform

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

Learn how to [Onboard devices and configure Microsoft Defender for Endpoint capabilities](onboard-configure.md).

The following table gives information about the supported Microsoft Defender for Endpoint capabilities by platform.

|Operating System|Windows 10 & 11|Windows Server 2012 R2 <sup>[1]</sup>, <br> 2016 <sup>[1]</sup>, <br> 2019 & 2022, <br> 1803+|macOS|Linux|
|---|:---:|:---:|:---:|:---:|
|**Prevention**|||||
|[Attack Surface Reduction](attack-surface-reduction.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|
|Device Control|![Yes.](images/svg/check-yes.svg)|![No](images/svg/check-no.svg)|![Yes.](images/svg/check-yes.svg)|![No](images/svg/check-no.svg)|
|[Firewall](host-firewall-reporting.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|
|[Network Protection](network-protection.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>|![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>|
|[Next-generation protection](next-generation-protection.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|
|[Tamper Protection](prevent-changes-to-security-settings-with-tamper-protection.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![No](images/svg/check-no.svg)|
|[Web Protection](web-protection-overview.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>|![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>|
||||||
|**Detection**|||||
|[Advanced Hunting](../defender/advanced-hunting-overview.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|
|[Custom file indicators](indicator-file.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|
|[Custom network indicators](indicator-ip-domain.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>|![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>|
|[EDR Block](edr-in-block-mode.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|
|[Passive Mode](microsoft-defender-antivirus-compatibility.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|
|Sense detection sensor|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|
|Endpoint & network device discovery|![Yes.](images/svg/check-yes.svg)|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|![No](images/svg/check-no.svg)|
|[Vulnerability management](../defender-vulnerability-management/defender-vulnerability-management.md)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|
||||||
|**Response**     |         |         |         ||
|[Automated Investigation & Response (AIR)](automated-investigations.md)        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)  |  ![No](images/svg/check-no.svg)       |  ![No](images/svg/check-no.svg)        |
|[Device response capabilities: collect investigation package ](respond-machine-alerts.md)        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![Yes.](images/svg/check-yes.svg) <sup>[3]</sup>       |  ![Yes.](images/svg/check-yes.svg) <sup>[3]</sup>        |
|[Device response capabilities: run AV scan](respond-machine-alerts.md)        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>       |  ![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>        |
|[Device isolation](respond-machine-alerts.md)        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>      |  ![Yes.](images/svg/check-yes.svg) <sup>[2]</sup>   |
|File response capabilities: collect file, deep analysis, block file, stop, and quarantine processes        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![No](images/svg/check-no.svg) <sup>[4]</sup>      |  ![No](images/svg/check-no.svg) <sup>[4]</sup>    |
|[Live Response](live-response.md)       | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg) |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)      |

<sup>[1]</sup> Refers to the modern, unified solution for Windows Server 2012 R2 and 2016. For more information, see [Onboard Windows Servers to the Defender for Endpoint service](configure-server-endpoints.md).

<sup>[2]</sup> Feature is currently in preview ([Microsoft Defender for Endpoint preview features](preview.md))

<sup>[3]</sup> Response capabilities using Live Response [2]

<sup>[4]</sup> Collect file only, using Live Response [2]

> [!NOTE]
> Windows 7, 8.1, Windows Server 2008 R2 include support for the EDR sensor, and AV using System Center Endpoint Protection (SCEP).
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
