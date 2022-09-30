---
title: Microsoft Defender for Endpoint Block at First Sight (BAFS) demonstration
description: A demonstration that shows how Block at First Sight detects and blocks new malware within seconds.
keywords: Microsoft Defender for Endpoint, cloud-delivered protection, detect malware, block malware, demonstration
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: v-jweston
author: jweston-1
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.subservice: mde
---

# Block at First Sight (BAFS) demonstration

Block at First Sight, is a feature of Microsoft Defender Antivirus cloud-delivered protection that provides a way to detect and block new malware within seconds. You can test that it is working as expected by downloading a fake malware file.

## Scenario requirements and setup

- Windows 10 Anniversary update (1607) or later
- Cloud protection enabled
- You can [download and use the Powershell script](https://www.powershellgallery.com/packages/WindowsDefender_InternalEvaluationSettings/) to enable this setting and others
- Note: You should see your browser ask to save this file in a few seconds.

### Test BAFS

- Click the create and download new file button
- You should see the browser scanning the file, followed by an antivirus block notification.
- [Create & download new file!](https://demo.wd.microsoft.com/Files/Create)

## See also

[Block at First Sight](/windows/threat-protection/windows-defender-antivirus/configure-block-at-first-sight-windows-defender-antivirus?ocid=wd-av-demo-fl-bottom)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
