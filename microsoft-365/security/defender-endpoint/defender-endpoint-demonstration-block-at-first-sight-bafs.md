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

# Block at First Sight (BAFS) demonstration

Block at First Sight, is a feature of Microsoft Defender Antivirus cloud-delivered protection that provides a way to detect and block new malware within seconds. You can test that it is working as expected by downloading a fake malware file.

## Scenario requirements and setup

- Windows 10 Anniversary update (1607) or later
- Cloud protection is enabled
- You can [download and use the Powershell script](https://www.powershellgallery.com/packages/WindowsDefender_InternalEvaluationSettings/) to enable this setting and others

  > [!NOTE]
  > You should see your browser ask to save this file in a few seconds.

### Test BAFS

1. Click **Create and download new file** below.
1. You should see the browser scanning the file, followed by an antivirus block notification.
1. [Create & download new file!](https://demowdtestground.blob.core.windows.net/samples/ztp_xzXLX_s1H8MsxK2SRlsjmzaH62cOZEaqtstGsOw/wdtestfile.exe?sv=2015-07-08&sr=b&sig=7JNcGzAYWEinuWKNmjoC6tDmEjGZMQj8rAEF9HIzJdE%3D&se=2022-09-30T18%3A29%3A28Z&sp=r)

## See also

[Block at First Sight](configure-block-at-first-sight-microsoft-defender-antivirus.md)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
