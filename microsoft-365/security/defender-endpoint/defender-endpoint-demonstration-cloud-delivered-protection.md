---
title: Microsoft Defender for Endpoint Cloud-delivered protection demonstration
description: See how Cloud-delivered protection can automatically detect and delete malicious files. 
keywords: Microsoft Defender for Endpoint, Microsoft Defender ATP, virus protection, virus detection, virus deletion, 
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

# Cloud-delivered protection demonstration

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Cloud-delivered protection for Microsoft Defender Antivirus, also referred to as Microsoft Advanced Protection Service (MAPS), provides you with strong, fast protection in addition to our standard real-time protection.

## Scenario requirements and setup

- Windows 7, Windows 8.1, Windows 10, Windows 11
- Microsoft Defender Real-time protection is enabled
- Cloud-delivered protection is enabled by default, however you may need to re-enable it if it has been disabled as part of previous organizational policies. For more information, see [Enable cloud-delivered protection in Microsoft Defender Antivirus](/windows/threat-protection/windows-defender-antivirus/enable-cloud-protection-windows-defender-antivirus?ocid=wd-av-demo-cloud-middle).
- You can also download and use the [PowerShell script](https://www.powershellgallery.com/packages/WindowsDefender_InternalEvaluationSettings/) to enable this setting and others on Windows 10 and Windows 11.

### Scenario

1. Download the [test file](https://aka.ms/ioavtest). Important: The test file isn't malicious, it's just a harmless file simulating a virus.

2. If you see file blocked by Microsoft Defender SmartScreen, select on "View downloads" button.

   :::image type="content" source="images/cloud-delivered-protection-smartscreen-block.png" alt-text="SmartScreen blocks an unsafe download, and provides a button to select to view the **Downloads** list details.":::

3. In Downloads menu right select on the blocked file and select on **Download unsafe file**.

   :::image type="content" source="images/cloud-delivered-protection-smartscreen-block-view-downloads.png" alt-text="Lists the download as unsafe, but provides an option to proceed with the download":::

4. You should see that "Microsoft Defender Antivirus" found a virus and deleted it.

   > [!NOTE]
   >
   > In some cases, you might also see **Threat Found** notification from Microsoft Defender Security Center.

   :::image type="content" source="images/cloud-delivered-protection-smartscreen-threat-found-notification.png" alt-text="Microsoft Defender Antivirus Threats found notification provides options to get details":::

5. If the file executes, or if you see that it was blocked by Microsoft Defender SmartScreen,  cloud-delivered protection isn't working. For more information, see [Configure and validate network connections for Microsoft Defender Antivirus](/windows/threat-protection/windows-defender-antivirus/configure-network-connections-windows-defender-antivirus?ocid=wd-av-demo-cloud-middle).

## See also

[Utilize Microsoft cloud-delivered protection in Microsoft Defender Antivirus](/windows/threat-protection/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus?ocid=wd-av-demo-cloud-bottom)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
