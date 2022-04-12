---
title: Microsoft Defender Advanced Threat Protection Cloud-delivered protection demonstration
description: See how Cloud-delivered protection can automatically detect and delete malicious files. 
keywords: Microsoft Defender Advanced Threat Protection, Microsoft Defender ATP, virus protection, virus detection, virus deletion, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
ms.technology: mde
---

# Cloud-delivered protection demonstration

Cloud-delivered protection for Microsoft Defender Antivirus, also referred to as Microsoft Advanced Protection Service (MAPS), provides you with strong, fast protection in addition to our standard real-time protection.

## Scenario requirements and setup

- Windows 7, Windows 8.1 & Windows 10
- Microsoft Defender Real-time protection is enabled
- Cloud-delivered protection is enabled by default, however you may need to re-enable it if it has been disabled as part of previous organizational policies. See the [Enable cloud-delivered protection in Microsoft Defender AV](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-antivirus/enable-cloud-protection-windows-defender-antivirus?ocid=wd-av-demo-cloud-middle) topic for more information.
- You can also download and use the @@@[PowerShell script](https://www.powershellgallery.com/packages/WindowsDefender_InternalEvaluationSettings/) to enable this setting and others on Windows 10.

### Scenario

1. [Click here](@@Link) to download the test file. Important: The test file is not malicious, it is just a harmless file simulating a virus

2. If you see file blocked by Microsoft Defender SmartScreen, click on "View downloads" button.  {{{View downloads graphic}}}

3. In Downloads menu right click on the blocked file and click on "Download unsafe file" {{{Download unsafe file graphic}}}

4. If successful you should see that "Microsoft Defender Antivirus" found a virus and deleted it.  {{{Virus deleted view downloads graphic}}}

Note: You might also see "Threat Found" notification from Microsoft Defender Security Center. {{{ Virus & threat protection graphic}}}

5. If the file executes, or if you see it blocked by Microsoft Defender SmartScreen it means that cloud-delivered protection is not working and you should go to [Configure and validate network connections for Microsoft Defender Antivirus](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-antivirus/configure-network-connections-windows-defender-antivirus?ocid=wd-av-demo-cloud-middle) to learn more.

### Example

Failed to block (but stopped by Microsoft Defender SmartScreen)

## Learn more

[Utilize Microsoft cloud-delivered protection in Microsoft Defender Antivirus](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus?ocid=wd-av-demo-cloud-bottom)
