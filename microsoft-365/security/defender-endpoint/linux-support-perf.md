---
title: Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux
description: Troubleshoot performance issues in Microsoft Defender for Endpoint on Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, performance
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365-initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigateip-abovefoldlink)

This document provides instructions on how to narrow down performance issues related to Defender for Endpoint on Linux using the available diagnostic tools to be able to understand and mitigate the existing resource shortages and the processes that are making the system into such situations. Performance problems are mainly caused by bottlenecks in one or more hardware subsystems, depending on the profile of resource utilization on the system. Sometimes applications are sensitive to disk I/O resources and may need more CPU capacity, and sometimes some configurations are not sustainable, and may trigger too many new processes, and open too many file descriptors.

Depending on the applications that you are running and your device characteristics, you may experience suboptimal performance when running Defender for Endpoint on Linux. In particular, applications or system processes that access many resources such as CPU, Disk, and Memory over a short timespan can lead to performance issues in Defender for Endpoint on Linux.

> [!WARNING]
> Before starting, **please make sure that other security products are not currently running on the device**. Multiple security products may conflict and impact the host performance.

## Troubleshoot performance issues using Real-time Protection Statistics

**Applies to:**
- Only performance issues related to AV

Real-time protection (RTP) is a feature of Defender for Endpoint on Linux that continuously monitors and protects your device against threats. It consists of file and process monitoring and other heuristics.

The following steps can be used to troubleshoot and mitigate these issues:

1. Disable real-time protection using one of the following methods and observe whether the performance improves. This approach helps narrow down whether Defender for Endpoint on Linux is contributing to the performance issues.

    If your device is not managed by your organization, real-time protection can be disabled from the command line:

    ```bash
    mdatp config real-time-protection --value disabled
    ```

    ```Output
    Configuration property updated
    ```

    If your device is managed by your organization, real-time protection can be disabled by your administrator using the instructions in [Set preferences for Defender for Endpoint on Linux](linux-preferences.md).

    > [!NOTE]
    > If the performance problem persists while real-time protection is off, the origin of the problem could be the endpoint detection and response (EDR) component. In this case please follow the steps from the **Troubleshoot performance issues using Microsoft Defender for Endpoint Client Analyzer** section of this article.

2. To find the applications that are triggering the most scans, you can use real-time statistics gathered by Defender for Endpoint on Linux.

    > [!NOTE]
    > This feature is available in version 100.90.70 or newer.

    This feature is enabled by default on the `Dogfood` and `InsiderFast` channels. If you're using a different update channel, this feature can be enabled from the command line:

    ```bash
    mdatp config real-time-protection-statistics --value enabled
    ```

    This feature requires real-time protection to be enabled. To check the status of real-time protection, run the following command:

    ```bash
    mdatp health --field real_time_protection_enabled
    ```

    Verify that the `real_time_protection_enabled` entry is `true`. Otherwise, run the following command to enable it:

    ```bash
    mdatp config real-time-protection --value enabled
    ```

    ```Output
    Configuration property updated
    ```

    To collect current statistics, run:

    ```bash
    mdatp diagnostic real-time-protection-statistics --output json > real_time_protection.json
    ```

    > [!NOTE]
    > Using ```--output json``` (note the double dash) ensures that the output format is ready for parsing.

    The output of this command will show all processes and their associated scan activity.

3. On your Linux system, download the sample Python parser **high_cpu_parser.py** using the command:

    ```bash
    wget -c https://raw.githubusercontent.com/microsoft/mdatp-xplat/master/linux/diagnostic/high_cpu_parser.py
    ```

    The output of this command should be similar to the following:


    ```Output
    --2020-11-14 11:27:27-- https://raw.githubusercontent.com/microsoft.mdatp-xplat/master/linus/diagnostic/high_cpu_parser.py
    Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.xxx.xxx
    Connecting to raw.githubusercontent.com (raw.githubusercontent.com)| 151.101.xxx.xxx| :443... connected.
    HTTP request sent, awaiting response... 200 OK
    Length: 1020 [text/plain]
    Saving to: 'high_cpu_parser.py'
    100%[===========================================>] 1,020    --.-K/s   in 0s
    ```

4. Next, type the following commands:

    ```bash
    chmod +x high_cpu_parser.py
    ```

    ```bash
    cat real_time_protection.json | python high_cpu_parser.py  > real_time_protection.log
    ```

      The output of the above is a list of the top contributors to performance issues. The first column is the process identifier (PID), the second column is the process name, and the last column is the number of scanned files, sorted by impact.
    For example, the output of the command will be something like the below: 

    ```Output
    ... > python ~/repo/mdatp-xplat/linux/diagnostic/high_cpu_parser.py <~Downloads/output.json | head -n 10
    27432 None 76703
    73467 actool    1249
    73914 xcodebuild 1081
    73873 bash 1050
    27475 None 836
    1    launchd     407
    73468 ibtool     344
    549  telemetryd_v1   325
    4764 None 228
    125  CrashPlanService 164
    ```

    To improve the performance of Defender for Endpoint on Linux, locate the one with the highest number under the `Total files scanned` row and add an exclusion for it. For more information, see [Configure and validate exclusions for Defender for Endpoint on Linux](linux-exclusions.md).

    > [!NOTE]
    > The application stores statistics in memory and only keeps track of file activity since it was started and real-time protection was enabled. Processes that were launched before or during periods when real time protection was off are not counted. Additionally, only events which triggered scans are counted.

5. Configure Microsoft Defender for Endpoint on Linux with exclusions for the processes or disk locations that contribute to the performance issues and re-enable real-time protection.

    For more information, see [Configure and validate exclusions for Microsoft Defender for Endpoint on Linux](linux-exclusions.md).

## Troubleshoot performance issues using Microsoft Defender for Endpoint Client Analyzer

**Applies to:**
- Performance issues of all available Defender for Endpoint components such as AV and EDR  

The Microsoft Defender for Endpoint Client Analyzer (MDECA) can collect traces, logs, and diagnostic information in order to troubleshoot performance issues on [onboarded devices](/microsoft-365/security/defender-endpoint/onboard-configure) on Linux.

> [!NOTE]
> The Microsoft Defender for Endpoint Client Analyzer tool is regularly used by Microsoft Customer Support Services (CSS) to collect information such as (but not limited to) IP addresses, PC names that will help troubleshoot issues you may be experiencing with Microsoft Defender for Endpoint. For more information about our privacy statement, see [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement).

### Requirements

- The client analyzer can run on supported distros of [Linux](microsoft-defender-endpoint-linux.md#system-requirements) either before or after onboarding to Microsoft Defender for Endpoint.
- Download client analyzer for Linux from the latest preview edition available for download here: <https://aka.ms/XMDEClientAnalyzer>
- If your device is behind a proxy, then you can simply pass the proxy server as an environment variable to the mde_support_tool.sh script. For example: `https_proxy=https://myproxy.contoso.com:8080 ./mde_support_tool.sh"`

### Run the client analyzer on Linux

Open a terminal or SSH into the relevant machine and run the following commands:

1. `wget --quiet -O XMDEClientAnalyzer.zip https://aka.ms/XMDEClientAnalyzer`
2. `unzip -q XMDEClientAnalyzer.zip`
3. `cd XMDEClientAnalyzer`
4. `chmod +x mde_support_tool.sh`
5. Run as non-root use to install required pip and lxml which components: `./mde_support_tool.sh`
6. To collect actual diagnostic package and generate the result archive file run again as root: `./mde_support_tool.sh -d`
   Example:

   ![Image of command line example.](images/4ca188f6c457e335abe3c9ad3eddda26.png)

> [!NOTE]
> - The analyzer requires 'lxml' to produce the result output. If not installed, the analyzer will try to fetch it from the official repository for python packages below: <https://pypi.org/search/?q=lxml>
> 
> - In addition, the tool currently requires Python version 3 or later to be installed.
>
> - If you are running on a machine that cannot use Python 3 or fetch the lxml component, then you can download a binary based version of the analyzer that does not have any of the requirements: [XMDE Client Analyzer Binary](https://aka.ms/XMDEClientAnalyzerBinary)

### Additional syntax help:

**-h** \# Help<br>
\# Show help message

**performance** \# Performance<br>
\# Collects extensive tracing for analysis of a performance issue that can be reproduced on demand. Using `--length=<seconds>` to specify the duration of the benchmark.

**-o** \# Output<br>
\# Specify the destination path for the result file

**-nz** \# No-Zip<br>
\# If set, a directory will be created instead of a resulting archive file

**-f** \# Force<br>
\# Overwrite if output already exists in destination path

### Result package contents

- report.html

  Description: The main HTML output file that will contain the findings and guidance that the analyzer script run on the machine can produce.

- mde_diagnostic.zip

  Description: Same diagnostic output that gets generated when running *mdatp diagnostic create* on [Linux](/windows/security/threat-protection/microsoft-defender-atp/linux-resources#collect-diagnostic-information)

- mde.xml

  Description: XML output that is generated while running and is used to build the html report file.

- Processes_information.txt

  Description: contains the details of the running Microsoft Defender for Endpoint related processes on the system.

- Log.txt

  Description: contains the same log messages written on screen during the data collection.

- Health.txt

  Description: The same basic health output that is shown when running *mdatp health* command.

- Events.xml

  Description: Additional XML file used by the analyzer when building the HTML report.

- Audited_info.txt

  Description: details on audited service and related components for [Linux](/microsoft-365/security/defender-endpoint/linux-resources) OS

- perf_benchmark.tar.gz

  Description: The performance test reports. You will see this only if you are using the performance parameter.

> [!NOTE]
> In case after following the above steps the performance problem persists, please contact customer support for further instructions and mitigation.



## See also

- [Investigate agent health issues](health-status.md)
