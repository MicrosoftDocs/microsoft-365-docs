---
title:  Run the client analyzer on macOS or Linux
description: Learn how to run the Microsoft Defender for Endpoint Client Analyzer on macOS or Linux
keywords: client analyzer, troubleshoot sensor, analyzer, mdeanalyzer, macos, linux, mdeanalyzer
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- M365-security-compliance
- m365initiative-m365-defender
ms.topic: conceptual
ms.technology: m365d
---

# Run the client analyzer on macOS and Linux

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

## Running the analyzer through GUI scenario

1. Download the [XMDE Client Analyzer](https://aka.ms/XMDEClientAnalyzer) tool to the macOS or Linux machine you need to investigate.

   > [!NOTE]
   > The current SHA256 hash of 'XMDEClientAnalyzer.zip' that is downloaded from the above link is: '973725417D136B7B17AF4B301F1E99BA21D7F4A7DF88036DC5A731A4B768A8B2'.

2. Extract the contents of XMDEClientAnalyzer.zip on the machine.

3. Open a terminal session, change directory to the extracted location and run:

   `./mde_support_tool.sh -d`

   > [!NOTE]
   > On Linux, if the script does not have permissions to execute, then you'll need to first run:
   >
   > `chmod a+x mde_support_tool.sh`

## Running the analyzer using a terminal or SSH scenario

Open a terminal or SSH into the relevant machine and run the following commands:

1. `wget --quiet -O XMDEClientAnalyzer.zip https://aka.ms/XMDEClientAnalyzer`

2. `unzip -q XMDEClientAnalyzer.zip`

3. `cd XMDEClientAnalyzer`

4. `chmod +x mde_support_tool.sh`

3. Run as non-root use to install required pip and lxml which components: `./mde_support_tool.sh`

4. To collect actual diagnostic package and generate the result archive file run again as root: `./mde_support_tool.sh -d`

> [!NOTE]
> - For Linux, the analyzer requires 'lxml' to produce the result output. If not installed, the analyzer will try to fetch it from the official repository for python packages below: <https://files.pythonhosted.org/packages/\*/lxml\*.whl>
> 
> - In addition, the tool currently requires Python version 3 or later to be installed.
> 
> - If your device is behind a proxy, then you can simply pass the proxy server as an environment variable to the mde_support_tool.sh script. For example:
> `https_proxy=https://myproxy.contoso.com:8080 ./mde_support_tool.sh"`

Example:

![Image of command line example.](images/4ca188f6c457e335abe3c9ad3eddda26.png)

Additional syntax help:

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

## Result package contents on macOS and Linux

- report.html

  Description: The main HTML output file that will contain the findings and guidance that the analyzer script run on the machine can produce.

- mde_diagnostic.zip

  Description: Same diagnostic output that gets generated when running *mdatp diagnostic create* on either [macOS](/windows/security/threat-protection/microsoft-defender-atp/mac-resources#collecting-diagnostic-information)

  or

  [Linux](/windows/security/threat-protection/microsoft-defender-atp/linux-resources#collect-diagnostic-information)

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

- Auditd_info.txt

  Description: details on auditd service and related components for [Linux](/windows/security/threat-protection/microsoft-defender-atp/linux-support-events) OS

- perf_benchmark.tar.gz

  Description: The performance test reports. You will see this only if you are using the performance parameter.
