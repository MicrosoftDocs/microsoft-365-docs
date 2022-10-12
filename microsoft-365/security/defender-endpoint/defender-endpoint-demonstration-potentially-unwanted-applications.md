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
ms.topic: article
ms.subservice: mde
---

<!--- v-jweston resumes authorship and ms.authorship appx April-May 2023 ---> 

# Potentially unwanted applications (PUA) demonstration

The Potentially Unwanted Applications (PUA) protection feature in Microsoft Defender Antivirus can identify and block PUAs from downloading and installing on endpoints in your network. These applications are not considered viruses, malware, or other types of threats, but might perform actions on endpoints that adversely affect their performance or use.

## Scenario requirements and setup

- Windows 10

- Enable PUA protection. See the [Detect and block Potentially Unwanted Applications](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md) article for more information.
- You can also [download and use the PowerShell script](https://www.powershellgallery.com/packages/WindowsDefender_InternalEvaluationSettings/) to enable this setting and others.

## Scenario

1. Go to [http://www.amtso.org/feature-settings-check-potentially-unwanted-applications/](http://www.amtso.org/feature-settings-check-potentially-unwanted-applications/)
2. Click "Download the Potentially Unwanted Application ‘test’ file" link
3. After downloading the file, it is automatically blocked and prevented from running.

## See also

[Detect and block Potentially Unwanted Applications](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
