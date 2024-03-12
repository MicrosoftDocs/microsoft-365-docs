---
title: Troubleshoot performance issues for Microsoft Defender for Endpoint on macOS
description: Troubleshoot performance issues in Microsoft Defender for Endpoint on macOS.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
- m365-security
- tier3
- mde-macos
ms.topic: conceptual
ms.subservice: macos
search.appverid: met150
ms.date: 02/29/2024
---

# Troubleshoot performance issues for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This topic provides some general steps that can be used to narrow down performance issues related to Microsoft Defender for Endpoint on macOS.


Depending on the applications that you're running and your device characteristics, you may experience suboptimal performance when running Microsoft Defender for Endpoint on macOS. In particular, applications or system processes that access many resources over a short timespan can lead to performance issues in Microsoft Defender for Endpoint on macOS.

> [!WARNING]
> Before starting, please make sure that other security products are not currently running on the device. Multiple security products may conflict and impact the host performance.

## Troubleshoot performance issues using Real-time Protection Statistics

**Applies to:**

- Only performance issues related to AV (wdavdaemon_unpriviliged)

Real-time protection (RTP) is a feature of Defender for Endpoint on macOS that continuously monitors and protects your device against threats. It consists of file and process monitoring and other heuristics.

The following steps can be used to troubleshoot and mitigate these issues:

1. Disable real-time protection using one of the following methods and observe whether the performance improves. This approach helps narrow down whether Microsoft Defender for Endpoint on macOS is contributing to the performance issues.

      If your device is not managed by your organization, real-time protection can be disabled using one of the following options:

    - From the user interface. Open Microsoft Defender for Endpoint on macOS and navigate to **Manage settings**.

      :::image type="content" source="images/mdatp-36-rtp.png" alt-text=" The Manage real-time protection page" lightbox="images/mdatp-36-rtp.png":::

    - From the Terminal. For security purposes, this operation requires elevation.

      ```bash
      mdatp config real-time-protection --value disabled
      ```

      If your device is managed by your organization, real-time protection can be disabled by your administrator using the instructions in [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md).

      If the performance problem persists while real-time protection is off, the origin of the problem could be the endpoint detection and response component. In this case, please contact customer support for further instructions and mitigation.

2. Open Finder and navigate to **Applications** \> **Utilities**. Open **Activity Monitor** and analyze which applications are using the resources on your system. Typical examples include software updaters and compilers.

1. To find the applications that are triggering the most scans, you can use real-time statistics gathered by Defender for Endpoint on Mac.

   > [!NOTE]
   > This feature is available in version 100.90.70 or newer.
   > This feature is enabled by default on the **Dogfood** and **InsiderFast** channels. If you're using a different update channel, this feature can be enabled from the command line:

   > [!TIP]
   > If you have [Tamper Protection in block mode](/microsoft-365/security/defender-endpoint/tamperprotection-macos), you need to use [Troubleshooting mode](/microsoft-365/security/defender-endpoint/mac-troubleshoot-mode) to capture real-time-protection-statistics.  Otherwise, you will get null results.
   
      ```bash
      mdatp config real-time-protection-statistics --value enabled
      ```

This feature requires real-time protection to be enabled. To check the status of real-time protection, run the following command:

      ```bash
      mdatp health --field real_time_protection_enabled
      ```

Verify that the **real_time_protection_enabled** entry is true. Otherwise, run the following command to enable it:

      ```bash
      mdatp config real-time-protection --value enabled
      ```

      ```output
      Configuration property updated
      ```

  To collect current statistics, run:

      ```bash
      mdatp diagnostic real-time-protection-statistics --output json > real_time_protection.json
      ```

  > [!NOTE]
  > Using **--output json** (note the double dash) ensures that the output format is ready for parsing.
  The output of this command will show all processes and their associated scan activity.
