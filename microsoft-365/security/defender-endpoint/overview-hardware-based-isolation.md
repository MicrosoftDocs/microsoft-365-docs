---
title: Hardware-based isolation (Windows 10)
ms.reviewer:
description: Learn about how hardware-based isolation in Windows 10 helps to combat malware.
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.author: macapara
ms.date: 09/07/2018
ms.technology: mde
---

# Hardware-based isolation in Windows 10

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](/security/defender-endpoint)
- [Microsoft 365 Defender](/security/defender/microsoft-365-defender)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Hardware-based isolation helps protect system integrity in Windows 10 and is integrated with Microsoft Defender for Endpoint.

<br>

****

|Feature|Description|
|---|---|
|[Windows Defender Application Guard](/windows/security/threat-protection/microsoft-defender-application-guard/md-app-guard-overview)|Application Guard protects your device from advanced attacks while keeping you productive. Using a unique hardware-based isolation approach, the goal is to isolate untrusted websites and PDF documents inside a lightweight container that is separated from the operating system via the native Windows Hypervisor. If an untrusted site or PDF document turns out to be malicious, it still remains contained within Application Guard's secure container, keeping the desktop PC protected and the attacker away from your enterprise data.|
|[Windows Defender System Guard](/windows/security/threat-protection/windows-defender-system-guard/how-hardware-based-root-of-trust-helps-protect-windows)|System Guard protects and maintains the integrity of the system as it starts and after it's running, and validates system integrity by using attestation.|
|
