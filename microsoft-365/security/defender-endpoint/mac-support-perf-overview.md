---
# Required metadata
# For more information, see https://review.learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata?branch=main
# For valid values of ms.service, ms.prod, and ms.topic, see https://review.learn.microsoft.com/en-us/help/platform/metadata-taxonomies?branch=main

title: Troubleshoot performance issues for Microsoft Defender for Endpoint on macOS
description: Troubleshoot performance issues overview for Microsoft Defender for Endpoint on macOS
author:      YongRhee-MSFT # GitHub alias
ms.author:   yongrhee # Microsoft alias
ms.service: defender-endpoint
ms.topic: overview
ms.date:     03/01/2024
ms.subservice: ngp
manager: dansimp
---

# Troubleshoot performance issues overview for Microsoft Defender for Endpoint on macOS

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint on macOS](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-mac?view=o365-worldwide)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender for Endpoint on MacOS is likely to lead to performance problems and unpredictable side effects. If non-Microsoft endpoint protection is an absolute requirement in your environment, you can configure Microsoft Defender Antivirus to run in **[Passive mode](/microsoft-365/security/defender-endpoint/mac-preferences)**. After you configure Passive mode, you can use Defender for Endpoint on Mac EDR functionality.

> [!WARNING]
> Before starting, make sure that other security products are not currently running on the device. Multiple security products might conflict and impact system performance.

> [!TIP]
> If you're running other third-party security products, make sure that the Microsoft Defender for Endpoint on macOS processes and paths are excluded from that 3rd party security product and that security product is excluded from Microsoft Defender for Endpoint on macOS.

This topic provides general steps that you can use to identify performance issues related to Microsoft Defender for Endpoint on macOS.

Depending on the applications that you're running and your device characteristics, you might experience suboptimal performance when running Microsoft Defender for Endpoint on macOS. 

In particular, applications or system processes that access many resources over a short timespan can lead to performance issues in Microsoft Defender for Endpoint on macOS.

When troubleshooting performance issues for Microsoft Defender for Endpoint on macOS, you should review the **Activity Monitor** to see which of the three (3) processes is leading the high cpu utilization

|Daemon name|Component|Troubleshooting guide|
| -------- | -------- |-------- |
|wdavdaemon| Core (privileged)|Open a [Microsoft support case](/microsoft-365/security/defender-endpoint/contact-support).|
|wdavdaemon_unpriviliged| Antimalware (AV, EPP)|Review [Troubleshoot performance issues for Microsoft Defender for Endpoint on macOS](/microsoft-365/security/defender-endpoint/mac-support-perf).|
|wdavdaemon_enterprise| Endpoint Detection and Response (EDR)|Open a [Microsoft support case](/microsoft-365/security/defender-endpoint/contact-support).|

Additionally, gather [Defender for Endpoint Client Analyzer](/microsoft-365/security/defender-endpoint/run-analyzer-macos-linux) files while the issue occurs. This will be used by the support team to investigate the issue. 

