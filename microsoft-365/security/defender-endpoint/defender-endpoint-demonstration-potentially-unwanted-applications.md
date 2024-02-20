---
title: Microsoft Defender for Endpoint Potentially unwanted applications (PUA) demonstration
description: Demonstration to show how the Potentially Unwanted Applications (PUA) protection feature can identify and block PUAs from downloading and installing on endpoints.
search.appverid: met150
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
- m365-security
- tier2
- demo
ms.topic: article
ms.subservice: asr
ms.date: 11/20/2023
---

# Potentially unwanted applications (PUA) demonstration

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows)
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)

The Potentially Unwanted Applications (PUA) protection feature in Microsoft Defender Antivirus can identify and block PUAs from downloading and installing on endpoints in your network. These applications aren't considered viruses, malware, or other types of threats, but might perform actions on endpoints that adversely affect their performance or use.

## Scenario requirements and setup

- Windows 11 or Windows 10
- Windows Server 2022, Windows Server 2019, Windows Server 2016, Windows Server 2012 R2, and Windows Server 2008 R2 SP1
- macOS
- Linux
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
