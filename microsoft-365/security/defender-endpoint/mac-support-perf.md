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
ms.date: 03/20/2024
---

# Troubleshoot performance issues for Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 1 and Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This article provides some general steps that can be used to narrow down performance issues related to Defender for Endpoint on macOS.

Depending on the applications that you're running and your device characteristics, you might experience suboptimal performance when running Microsoft Defender for Endpoint on macOS. In particular, applications or system processes that access many resources over a short timespan can lead to performance issues in Defender for Endpoint on macOS.

> [!WARNING]
> Before starting, please make sure that other security products are not currently running on the device. Multiple security products may conflict and impact the host performance.

## Troubleshoot performance issues using Real-time Protection Statistics

**Applies to:**

- Only performance issues related to Microsoft Defender Antivirus (`wdavdaemon_unpriviliged`).

Real-time protection (RTP) is a feature of Defender for Endpoint on macOS that continuously monitors and protects your device against threats. It consists of file and process monitoring and other heuristics.

To troubleshoot and mitigate such issues, follow these steps:

1. Disable real-time protection by using one of the methods in the following table, and then observe whether performance improves. This approach helps narrow down whether Microsoft Defender for Endpoint on macOS is contributing to the performance issues.

   | Device management | Method |
   |---|--|
   | Device isn't managed by organization | User interface <br/><br/>Open Microsoft Defender for Endpoint on macOS and navigate to **Manage settings**. |
   | Device isn't managed by organization | Terminal <br/><br/>In Terminal, run the following command: `mdatp config real-time-protection --value disabled` |
   | Device is managed by organization | See [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md). |

   If the performance problem persists while real-time protection is off, the origin of the problem could be the endpoint detection and response component. In this case, contact customer support for further instructions and mitigation.

2. Open Finder and navigate to **Applications** \> **Utilities**. Open **Activity Monitor** and analyze which applications are using the resources on your system. Typical examples include software updaters and compilers.

3. Make sure real-time protection is enabled. To check the status of real-time protection, run the following command:

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

4. To find the applications that are triggering the most scans, you can use real-time statistics gathered by Defender for Endpoint on macOS. Run the following command:

   ```bash
   mdatp diagnostic real-time-protection-statistics --output json > real_time_protection.json
   ```

   > [!NOTE]
   > Using `--output json` (note the double dash) ensures that the output format is ready for parsing. The output of this command will show all processes and their associated scan activity.
   > If you have [Tamper protection turned on in block mode](/microsoft-365/security/defender-endpoint/tamperprotection-macos), use [Troubleshooting mode](/microsoft-365/security/defender-endpoint/mac-troubleshoot-mode) to capture real-time-protection-statistics.  Otherwise, you will get null results.
   > This feature is available in version 100.90.70 or newer. It's enabled by default on the **Dogfood** and **InsiderFast** channels. If you're using a different update channel, this feature can be enabled from the command line: `mdatp config real-time-protection-statistics --value enabled`.
   > 

5. On your Mac system, download the sample Python parser high_cpu_parser.py using the command:

   ```bash
   curl -O https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/linux/diagnostic/high_cpu_parser.py
   ```

   The output of this command should be similar to the following:

   ```Output
   --2020-11-14 11:27:27-- https://raw.githubusercontent.com/microsoft.
   mdatp-xplat/master/linus/diagnostic/high_cpu_parser.py
   Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.xxx.xxx
   Connecting to raw.githubusercontent.com (raw.githubusercontent.com)| 151.101.xxx.xxx| :443... connected.
   HTTP request sent, awaiting response... 200 OK
   Length: 1020 [text/plain]
   Saving to: 'high_cpu_parser.py'
   100%[===========================================>] 1,020    --.-K/s   in
   0s
   ```

5. Type the following commands:

   ```bash
   chmod +x high_cpu_parser.py
   ```

   ```bash
   cat real_time_protection.json | python high_cpu_parser.py  > real_time_protection.log
   ```

   The output of the above is a list of the top contributors to performance issues. The first column is the process identifier (PID), the second column is the process name, and the last column is the number of scanned files, sorted by impact.

   For example, the output of the command will be something like the below:

   ```output
   ... > python ~/repo/mdatp-xplat/linux/diagnostic/high_cpu_parser.py <~Downloads/output.json | head -n 10
   27432 None 76703
   73467 actool     1249
   73914 xcodebuild 1081
   73873 bash 1050
   27475 None 836
   1    launchd    407
   73468 ibtool     344
   549  telemetryd_v1   325
   4764 None 228
   125  CrashPlanService 164
   ```

6. To improve the performance of Defender for Endpoint on Mac, locate the one with the highest number under the Total files scanned row and add an exclusion for it. For more information, see [Configure and validate exclusions for Defender for Endpoint on macOS](mac-exclusions.md).

      > [!NOTE]
      > The application stores statistics in memory and only keeps track of file activity since it was started and real-time protection was enabled. Processes that were launched before or during periods when real time protection was off are not counted. Additionally, only events which triggered scans are counted.
      >

7. Configure Microsoft Defender for Endpoint on macOS with exclusions for the processes or disk locations that contribute to the performance issues and re-enable real-time protection. 

   See [Configure and validate exclusions for Microsoft Defender for Endpoint on macOS](mac-exclusions.md) for details.

## Troubleshoot performance issues using Microsoft Defender for Endpoint Client Analyzer

The Microsoft Defender for Endpoint Client Analyzer (MDECA) can collect traces, logs, and diagnostic information in order to troubleshoot performance issues on [onboarded devices](/microsoft-365/security/defender-endpoint/onboard-configure) on macOS.

To run the client analyzer for troubleshooting performance issues, see [Run the client analyzer on macOS and Linux](run-analyzer-macos-linux.md).

> [!NOTE]
>
> - The Microsoft Defender for Endpoint Client Analyzer tool is regularly used by Microsoft Customer Support Services (CSS) to collect information such as (but not limited to) IP addresses, PC names that will help troubleshoot issues you may be experiencing with Microsoft Defender for Endpoint. For more information about our privacy statement, see [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement).
> - As a general best practice, it is recommended to update the [Microsoft Defender for Endpoint agent to latest available version](linux-whatsnew.md) and confirming that the issue still persists before investigating further.


