---
title: Microsoft Defender for Endpoint Potentially unwanted applications (PUA) demonstration
description: Demonstration to show how the Potentially Unwanted Applications (PUA) protection feature can identify and block PUAs from downloading and installing on endpoints.
keywords: Microsoft Defender for Endpoint, potentially unwanted applications, (PUA), harmful application protection, demonstration
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
- demo
ms.topic: article
ms.subservice: mde
ms.date: 10/21/2022
---

# Potentially unwanted applications (PUA) demonstration

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

The Potentially Unwanted Applications (PUA) protection feature in Microsoft Defender Antivirus can identify and block PUAs from downloading and installing on endpoints in your network. These applications aren't considered viruses, malware, or other types of threats, but might perform actions on endpoints that adversely affect their performance or use.

## Scenario requirements and setup

- Windows 10, Windows 11

- Enable PUA protection. For more information, see the [Detect and block Potentially Unwanted Applications](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md) article.
- You can also [download and use the PowerShell script](https://www.powershellgallery.com/packages/WindowsDefender_InternalEvaluationSettings/) to enable this setting and others.

## Scenario

1. Go to [http://www.amtso.org/feature-settings-check-potentially-unwanted-applications/](http://www.amtso.org/feature-settings-check-potentially-unwanted-applications/)
2. Click "Download the Potentially Unwanted Application 'test' file" link
3. After downloading the file, it's automatically blocked and prevented from running.

## See also

[Detect and block Potentially Unwanted Applications](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
