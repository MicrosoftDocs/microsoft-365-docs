---
title:  Run the client analyzer on macOS or Linux
description: Learn how to run the Microsoft Defender for Endpoint Client Analyzer on macOS or Linux
keywords: client analyzer, troubleshoot sensor, analyzer, mdeanalyzer, macos, linux, mdeanalyzer
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 01/18/2023
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Run the client analyzer on macOS and Linux

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

The XMDEClientAnalyzer is used for diagnosing Microsoft Defender for Endpoint health or reliability issues on onboarded devices running either Linux, or macOS.

There are two ways to run the client analyzer tool:

1. Using a binary version (no Python dependency)
2. Using a Python-based solution

## Running the binary version of the client analyzer

1. Download the [XMDE Client Analyzer Binary](https://aka.ms/XMDEClientAnalyzerBinary) tool to the macOS or Linux machine you need to investigate.\
If using a terminal download using the command:

    ```console
    wget --quiet -O XMDEClientAnalyzerBinary.zip https://aka.ms/XMDEClientAnalyzerBinary
    ```

2. Verify the download

    > [!NOTE]
    > The current SHA256 hash of 'XMDEClientAnalyzerBinary.zip' that is downloaded from the above link is: 'C94E3D630730E5A2B605FD295BD81D93997888F4CB2B2694076FCFDE85876C13'

    ```console
    echo 'C94E3D630730E5A2B605FD295BD81D93997888F4CB2B2694076FCFDE85876C13  XMDEClientAnalyzerBinary.zip' | sha256sum -c
    ```

3. Extract the contents of <i>XMDEClientAnalyzerBinary.zip</i> on the machine.

    If using a terminal download using the command:

    ```console
    unzip -q XMDEClientAnalyzerBinary.zip -d XMDEClientAnalyzerBinary
    ```

4. Change to the tool's directory using the following command:

    ```console
    cd XMDEClientAnalyzerBinary
    ```

5. Three new zip files will be produced:
      1. **SupportToolLinuxBinary.zip** : For all Linux devices
      2. **SupportToolmacOSBinary.zip** : For Intel based Mac devices
      3. **SupportToolmacOS-armBinary.zip** : For Arm based Mac devices

6. Unzip one of the above 3 zip files based on the machine you need to investigate.\
When using a terminal, unzip the file using one of the following commands based on machine type:

   - Linux

   ```console
   unzip -q SupportToolLinuxBinary.zip
   ```

   - Intel based Mac

   ```console
   unzip -q SupportToolmacOSBinary.zip
   ```

   - For Arm based Mac devices

   ```console
   unzip -q SupportToolmacOS-armBinary.zip
   ```

7. Run the tool as <i>root</i> to generate diagnostic package:

   ```console
   sudo ./MDESupportTool -d
   ```

   > [!NOTE]
   > The binary is currently unsigned. To allow the package run on MacOS, you will need to use the command
   >
   > `spctl --add /Path/To/MDESupportTool`
   >

## Running the Python-based client analyzer

> [!NOTE]
>
> - The analyzer depends on few extra pip packages(sh, distro, lxml, pandas) to produce the result output. If not installed, the analyzer will try to fetch it from the [official repository for Python packages](https://pypi.org/search/?q=lxml).
>
> - In addition, the tool currently requires Python version 3 or later to be installed.
>
> - If your device is behind a proxy, then you can simply pass the proxy server as an environment variable to the mde_support_tool.sh script. For example:
.
>   `https_proxy=https://myproxy.contoso.com:8080 ./mde_support_tool.sh"`

1. Download the [XMDE Client Analyzer](https://aka.ms/XMDEClientAnalyzer) tool to the macOS or Linux machine you need to investigate.

    If using a terminal, download by running the command:

    ```console
    wget --quiet -O XMDEClientAnalyzer.zip https://aka.ms/XMDEClientAnalyzer
    ```

2. Verify the download

    ```console
    echo '1A8004C89E8B75FF892AAC66F1B1D07F3C7030720070A1A1E677A099A9ADC32E  XMDEClientAnalyzer.zip' | sha256sum -c
    ```

3. Extract the contents of XMDEClientAnalyzer.zip on the machine.\
    If using a terminal unzip using the command:

    ```console
    unzip -q XMDEClientAnalyzer.zip -d XMDEClientAnalyzer
    ```

4. Change directory to the extracted location.

    ```console
    cd XMDEClientAnalyzer
    ```

5. Give the tool executable permission:

    ```console
    chmod a+x mde_support_tool.sh
    ```

6. Run as a non-root user to install required dependencies:

    ```console
    ./mde_support_tool.sh
    ```

7. To collect actual diagnostic package and generate the result archive file run again as root:

    ```console
    sudo ./mde_support_tool.sh -d
    ```

## Command line options

### Primary command lines

Use this for getting machine diagnostic

```console
-h, --help            show this help message and exit
--output OUTPUT, -o OUTPUT
                      Output path to export report
--no-zip, -nz         If set a directory will be created instead of an archive file
--force, -f           Will overwrite if output directory exists
--diagnostic, -d      Collect extensive machine diagnostic information
--bypass-disclaimer   Do not display disclaimer banner
--mdatp-log {info,trace,error,warning,debug,verbose}
                      Set MDATP log level
--max-log-size MAX_LOG_SIZE
                      Maximum log file size in MB before rotating(Will restart mdatp)
```

Usage example: `sudo ./MDESupportTool -d`

### Positional arguments

#### Collect performance info

Collect extensive machine performance tracing for analysis of a performance scenario that can be reproduced on demand

```console
-h, --help            show this help message and exit
--frequency FREQUENCY
                      profile at this frequency
--length LENGTH       length of time to collect (in seconds)
```

Usage example: `sudo ./MDESupportTool performance --frequency 2`

#### Use OS trace (for macOS only)

Use OS tracing facilities to record Defender for Endpoint performance traces.

> [!NOTE]
> This functionality exists in the Python solution only.

```console
-h, --help       show this help message and exit
--length LENGTH  Length of time to record the trace (in seconds).
--mask MASK      Mask to select with event to trace. Defaults to all
```

On running this command for the first time, it will install a Profile configuration.

Follow this to approve profile installation: [Apple Support Guide](https://support.apple.com/guide/mac-help/mh35561/mac#:~:text=Choose%20Apple%20menu%20%3E%20System%20Settings,%2C%20double%2Dclick%20the%20profile.)

Usage example `./mde_support_tool.sh trace --length 5`

#### Exclude mode

Add exclusions for audit-d monitoring.

> [!NOTE]
> This functionality exists for Linux only

```console
  -h, --help            show this help message and exit
  -e <executable>, --exe <executable>
                        exclude by executable name, i.e: bash
  -p <process id>, --pid <process id>
                        exclude by process id, i.e: 911
  -d <directory>, --dir <directory>
                        exclude by target path, i.e: /var/foo/bar
  -x <executable> <directory>, --exe_dir <executable> <directory>
                        exclude by executable path and target path, i.e: /bin/bash /var/foo/bar
  -q <q_size>, --queue <q_size>
                        set dispatcher q_depth size
  -r, --remove          remove exclusion file
  -s, --stat            get statistics about common executables
  -l, --list            list auditd rules
  -o, --override        Override the existing auditd exclusion rules file for mdatp
  -c <syscall number>, --syscall <syscall number>
                        exclude all process of the given syscall
```

Usage example `sudo ./MDESupportTool exclude -d /var/foo/bar`

### AuditD Rate Limiter

Syntax that can be used to limit the number of events being reported by the auditD plugin. This option will set the rate limit globally for AuditD causing a drop in all the audit events. When the limiter is enabled the number of auditd events will be limited to 2500 events/sec. This option can be used in cases where we see high CPU usage from AuditD side.

> [!NOTE]
> This functionality exists for Linux only.

```console
-h, --help                                  show this help message and exit
-e <true/false>, --enable <true/false>      enable/disable the rate limit with default values
```

Usage example `sudo ./mde_support_tool.sh ratelimit -e true`

> [!NOTE]
> This functionality should be carefully used as limits the number of events being reported by the auditd subsystem as a whole. This could reduces the number of events for other subscribers as well.

## Result package contents on macOS and Linux

- report.html

  Description: The main HTML output file that will contain the findings and guidance that the analyzer script run on the machine can produce.

- mde_diagnostic.zip

  Description: Same diagnostic output that gets generated when running *mdatp diagnostic create* on either [macOS](mac-resources.md#collecting-diagnostic-information) or [Linux](linux-resources.md#collect-diagnostic-information)

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

  Description: details on audited service and related components for [Linux](/microsoft-365/security/defender-endpoint/linux-resources) OS.

- perf_benchmark.tar.gz

  Description: The performance test reports. You will see this only if you are using the performance parameter.
