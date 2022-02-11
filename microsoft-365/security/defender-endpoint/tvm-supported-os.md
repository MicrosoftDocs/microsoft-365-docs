---
title: Supported operating systems platforms and capabilities
description: Ensure that you meet the operating system or platform requisites for threat and vulnerability management, so the activities in your all devices are properly accounted for.
keywords: threat & vulnerability management, threat and vulnerability management, operating system, platform requirements, prerequisites, Microsoft Defender for Endpoint-tvm supported os, Microsoft Defender for Endpoint-tvm, supported operating systems, supported platforms, linux support, mac support
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: article
ms.technology: mde
---
# Supported operating systems, platforms and capabilities - for threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-portaloverview-abovefoldlink)

Before you begin, ensure that you meet the following operating system or platform requisites for threat and vulnerability management so the activities in your devices are properly accounted for.

> [!NOTE]
> The supported systems and platforms for threat and vulnerability management may be different from the [Minimum requirements for Microsoft Defender for Endpoint](minimum-requirements.md) list.

## Capabilities per supported operating systems (OS) and platforms

In the following table, "Yes" indicates that a threat and vulnerability management capability is supported for the OS or platform on that row.

Supported OS or platform|OS vulnerabilities|Software product vulnerabilities|OS configuration assessment|Security controls configuration assessment|Software product configuration assessment
:---|:---|:---|:---|:---|:---
Windows 7|Yes|Not supported|Not supported|Not supported|Not supported
Windows 8.1|Yes|Yes|Yes|Yes|Yes
Windows 10, versions 1607-1703|Yes|Not supported|Not supported|Not supported|Not supported
Windows 10, version 1709 or later|Yes|Yes|Yes|Yes|Yes
Windows 11|Yes|Yes|Yes|Yes|Yes
Windows Server 2008 R2|Yes|Yes|Yes|Yes|Yes
Windows Server 2012 R2|Yes|Yes|Yes|Yes|Yes
Windows Server 2016|Yes|Yes|Yes|Yes|Yes
Windows Server 2019|Yes|Yes|Yes|Yes|Yes
Windows Server 2022|Yes|Yes|Yes|Not supported|Yes
macOS 10.14 "Mojave" and above|Yes|Yes|Yes|Yes|Yes 
Red Hat Enterprise Linux 7.2 or higher including matching EUS releases (\* See "Important" notice below)|Yes|Yes|Yes|Yes|Yes
CentOS 7.2 or higher|Yes|Yes|Yes|Yes|Yes
Ubuntu 16.04 LTS or higher LTS|Yes|Yes|Yes|Yes|Yes
Oracle Linux 7.2 or higher|Yes|Yes|Yes|Yes|Yes
SUSE Linux Enterprise Server 12 or higher|Yes|Yes|Yes|Yes|Yes
Linux Debian 9 or higher|Yes|Yes|Yes|Yes|Yes
Android 6.0 or higher|Yes|Yes|Not supported|Not supported|Not supported
iOS 12.0 or higher|Yes|Not supported|Not supported|Not supported|Not supported

> [!NOTE]
> Some features are not available for down-level Operating System, check the Microsoft 365 Defender Portal for more details on supported OS.

> [!IMPORTANT]
> \* Red Hat Enterprise Linux:
> "The vulnerability data provided and shown as part of your Microsoft Defender for Endpoint services is made available to you in its raw form, "AS IS", from Red Hat, Inc., and might not be up to date. The data that is accessible in the Red Hat Security Data API is licensed under the Creative Commons Attribution 4.0 International License. You bear the risk in using this data. Microsoft and its third-party suppliers disclaim any and all liability for consequential and other indirect damages and implied warranties, including implied warranties of non-infringement, merchantability and fitness for a particular purpose. © 2020 Red Hat. All rights reserved. © 2020 Microsoft. All rights reserved."

## Related articles

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Prerequisites & permissions](tvm-prerequisites.md)
