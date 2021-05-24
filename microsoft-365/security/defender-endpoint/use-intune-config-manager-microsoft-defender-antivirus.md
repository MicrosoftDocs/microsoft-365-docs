---
title: Configure Microsoft Defender Antivirus using Microsoft Endpoint Manager
description: Use Microsoft Endpoint Manager and Microsoft Intune to configure Microsoft Defender AV and Endpoint Protection
keywords: scep, intune, endpoint protection, configuration
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 05/24/2021
ms.reviewer: phuijbr, oogunrinde
manager: dansimp
ms.technology: mde
audience: ITPro
ms.topic: how-to
---

# Use Microsoft Endpoint Manager to configure and manage Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

If you were using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) or [Configuration Manager](/mem/configmgr/core/understand/introduction) to manage endpoints on your network, you can now use [Microsoft Endpoint Manager](/mem/endpoint-manager-overview). For example, you can use Endpoint Manager to configure Microsoft Defender Antivirus scans.

## Configure Microsoft Defender Antivirus scans in Endpoint Manager

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), and sign in.

2. Navigate to **Endpoint Security**.

3. Under **Manage**, choose **Antivirus**.

4. Select your Microsoft Defender Antivirus policy. 

5. Under **Manage**, choose **Properties**.

6. Next to **Configuration settings**, choose **Edit**.

7. Expand the **Scan** section, and review or edit your scanning settings.

8. Choose **Review + save**


> [!TIP]
> Need help? See [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security).


## Related articles

- [Reference topics for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)