---
title: Supported Microsoft Defender for Endpoint capabilities per platform
description: Get to know the Microsoft Defender for Endpoint capabilities supported for Windows 10 devices, servers, and non-Windows devices.
keywords: onboarding, Microsoft Defender for Endpoint onboarding, sccm, group policy, mdm, local script, detection test
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365-initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

## Supported Microsoft Defender for Endpoint capabilities per platform

|Operating System  |Windows 10 & 11  |Windows Server 2012 R2 <sup>[[1](#fn1)]<sup></sup>, Windows Server 2016<sup>[[1](#fn1)]<sup></sup>, Windows Server 2019 & 2022, Windows Server 1803+|macOS|Linux| 
|---------|---------|---------|---------|---------|
|**Prevention**    |         |         |         |         | 
|Attack Surface Reduction rules     | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)     |  ![No](images/svg/check-no.svg)       |  ![No](images/svg/check-no.svg)        |
|Controlled folder access     | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)    |  ![No](images/svg/check-no.svg)       |  ![No](images/svg/check-no.svg)        |
|Device Control     | ![Yes.](images/svg/check-yes.svg)        | ![No](images/svg/check-no.svg)   |  ![Yes.](images/svg/check-yes.svg)       |  ![No](images/svg/check-no.svg)        |  
|Firewall      | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)    |  ![No](images/svg/check-no.svg)       |  ![No](images/svg/check-no.svg)        |
|Network Protection      | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)]<sup></sup>       |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)]<sup></sup>        |
|Next-generation protection       | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)  |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)         |
|Tamper Protection        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)  |  ![Yes.](images/svg/check-yes.svg)       |  ![No](images/svg/check-no.svg)         |
|Web Protection       | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)     |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)]<sup></sup>       |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)]<sup></sup>        |
||||||
|**Detection**     |         |         |         ||
|Advanced Hunting        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg) |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)         |
|Custom file indicators         | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)  |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)         |
|Custom network indicators        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)  |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)]<sup></sup>       |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)]<sup></sup>        |
|EDR Block       | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)        |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)       |  ![No](images/svg/check-no.svg)       |  ![No](images/svg/check-no.svg)        |
|Passive Mode          | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)  |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)         |
|Sense detection sensor          | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)         |
|Endpoint & network device discovery      | ![Yes.](images/svg/check-yes.svg)        | ![No](images/svg/check-no.svg)  |  ![No](images/svg/check-no.svg)       |  ![No](images/svg/check-no.svg)        |
|Vulnerability management          | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg) |  ![Yes.](images/svg/check-yes.svg)       |  ![Yes.](images/svg/check-yes.svg)         |
||||||
|**Response**     |         |         |         ||
|Automated Investigation & Response (AIR)        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)  |  ![No](images/svg/check-no.svg)       |  ![No](images/svg/check-no.svg)        |
|Device response capabilities: collect investigation package, run AV scan        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)][[3](#fn3)]<sup></sup>       |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)][[3](#fn3)]<sup></sup>        |
|Device isolation        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)][[3](#fn3)]<sup></sup>       |  ![No](images/svg/check-no.svg)    |
|File response capabilities: collect file, deep analysis, block file, stop, and quarantine processes        | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg)   |  ![No](images/svg/check-no.svg) <sup>[[4](#fn4)] <sup></sup>      |  ![No](images/svg/check-no.svg) <sup>[[4](#fn4)] <sup></sup>    |
|Live Response       | ![Yes.](images/svg/check-yes.svg)        | ![Yes.](images/svg/check-yes.svg) |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)]<sup></sup>       |  ![Yes.](images/svg/check-yes.svg) <sup>[[2](#fn2)]<sup></sup>        |


(<a id="fn1">1</a>) Refers to the modern, unified solution for Windows Server 2012 R2 and 2016. For more information, see [Onboard Windows Servers to the Defender for Endpoint service](configure-server-endpoints.md).

(<a id="fn2">2</a>) Feature is currently in preview ([Microsoft Defender for Endpoint preview features](preview.md)) 

(<a id="fn3">3</a>) Response capabilities using Live Response [2] 

(<a id="fn4">4</a>) Collect file only, using Live Response [2]  
>[!NOTE]
>Windows 7, 8.1, Windows Server 2008 R2 include support for the EDR sensor, and AV using System Center Endpoint Protection (SCEP).
