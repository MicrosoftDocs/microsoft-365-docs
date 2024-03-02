---
# Required metadata
# For more information, see https://review.learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata?branch=main
# For valid values of ms.service, ms.prod, and ms.topic, see https://review.learn.microsoft.com/en-us/help/platform/metadata-taxonomies?branch=main

title: Troubleshoot performance issues overview for Microsoft Defender for Endpoint on macOS
description: Troubleshoot performance issues overview for Microsoft Defender for Endpoint on macOS
author:      YongRhee-MSFT # GitHub alias
ms.author:   yongrhee # Microsoft alias
ms.service: defender-endpoint
ms.topic: overview
ms.date:     03/01/2024
ms.subservice: ngp
---

# Troubleshoot performance issues overview for Microsoft Defender for Endpoint on macOS

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

- [Microsoft Defender for Endpoint on macOS](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-mac?view=o365-worldwide)

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender for Endpoint on Mac is likely to lead to performance problems and unpredictable side effects. If non-Microsoft endpoint protection is an absolute requirement in your environment, you can still safely take advantage of Defender for Endpoint on Mac EDR functionality after configuring the antivirus functionality to run in **[Passive mode](/microsoft-365/security/defender-endpoint/mac-preferences?view=o365-worldwide)**.

> [!WARNING]
> Before starting, please make sure that other security products are not currently running on the device. Multiple security products may conflict and impact the host performance.

> [!TIP]
> If running a third-party security product, please make sure that the Microsoft Defender for Endpoint on macOS processes and path are excluded from the 3rd party security product.  And vice-versa.
This topic provides some general steps that can be used to narrow down performance issues related to Microsoft Defender for Endpoint on macOS.

Depending on the applications that you're running and your device characteristics, you may experience suboptimal performance when running Microsoft Defender for Endpoint on macOS. 

In particular, applications or system processes that access many resources over a short timespan can lead to performance issues in Microsoft Defender for Endpoint on macOS.

When troubleshooting performance issues for Microsoft Defender for Endpoint on macOS, you should take a look at the **Activity Monitor** and see which of the three (3) processes is leading the high cpu utilization

|Daemon|MDE on macOS engine|Troubleshooting guide|
| -------- | -------- |-------- |
|wdavdaemon| Core (privileged)| Please open a Microsoft support case   |
|wdavdaemon_unpriviliged| Antimalware (AV, EPP)| Cell 4   |
|wdavdaemon_enterprise| Endpoint Detection and Response (EDR)| Please open a Microsoft support case  |

Test
