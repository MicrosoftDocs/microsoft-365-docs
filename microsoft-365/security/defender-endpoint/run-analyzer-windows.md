---
title:  Run the client analyzer on Windows
description: Learn how to run the Microsoft Defender for Endpoint Client Analyzer on Windows.
keywords: client analyzer, troubleshoot sensor, analyzer, mdeanalyzer, windows
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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

#  Run the client analyzer on Windows

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)


1.  Download the [MDE Client Analyzer tool](https://aka.ms/mdatpanalyzer) to the
    Windows machine you need to investigate.

2.  Extract the contents of MDEClientAnalyzer.zip on the machine.

3.  Open an elevated command-line:
    1. Go to **Start** and type **cmd**.
    2. Right-click **Command prompt** and select **Run as administrator**.

4.  Enter the following command and press **Enter**:

```
HardDrivePath\\MDEClientAnalyzer.cmd
```

**Replace HardDrivePath with the path to which the tool was extracted to, for example:**

`C:\\Work\\tools\\MDATPClientAnalyzer\\MDEClientAnalyzer.cmd`

In addition to the above, there is also an option to [collect the analyzer
support logs using live
response.](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/troubleshoot-collect-support-log)

> [!NOTE]  
On windows 10, Windows Server 2019 or later OS editions, the client analyzer
script calls into an executable file called `MDEClientAnalyzer.exe` to run the
connectivity tests to cloud service URLs.  
On Windows 8.1, Windows Server 2016 or previous OS editions, the client analyzer
script calls into an executable file called
`MDEClientAnalyzerPreviousVersion.exe` to run connectivity tests for Command and
Control (CnC) URLs while also calling into Microsoft Monitoring Agent
connectivity tool `TestCloudConnection.exe` for Cyber Data channel URLs.

## Result package contents on Windows
!Note  
The exact files captured may change depending on factors such as:

-   The version of windows on which the analyzer is run.

-   Event log channel availability on the machine.

-   The start state of the EDR sensor (Sense is stopped if machine is not yet
    onboarded).

-   If an advanced troubleshoot parameter was used with the analyzer command.

By default, the unpacked MDEClientAnalyzerResult.zip file will contain the
following items.

-   MDEClientAnalyzer.htm \| This is the main HTML output file which will
    contain the findings and guidance that the analyzer script run on the
    machine can produce.

-   SystemInfoLogs [Folder]

    -   AddRemovePrograms.csv <br> Description:  List of installed software
        collected from registry.

-   AddRemoveProgramsWOW64.csv <br> Description:  List of x86 installed software on
    x64 OS software collected from registry.

    -   CertValidate.log <br> Description:  Detailed result from certificate
        revocation executed by calling into
        [CertUtil](https://docs.microsoft.com/windows-server/administration/windows-commands/certutil).

    -   dsregcmd.txt <br> Description:  Output from running
        [dsregcmd](https://docs.microsoft.com/azure/active-directory/devices/troubleshoot-device-dsregcmd).
        This provides details about the Azure AD status of the machine.

    -   IFEO.txt <br> Description:  Output of [Image File Execution
        Options](https://docs.microsoft.com/previous-versions/windows/desktop/xperf/image-file-execution-options)
        configured on the machine

    -   MDEClientAnalyzer.txt <br> Description:  This is verbose text file showing
        with details of the analyzer script execution.

    -   MDEClientAnalyzer.xml <br> Description:  XML format containing the analyzer
        script findings.

    -   RegOnboardedInfoCurrent.Json <br> Description:  The onboarded machine
        information gathered in JSON format from the registry.

    -   RegOnboardingInfoPolicy.Json <br> Description:  The onboarding policy
        configuration gathered in JSON format from the registry.

    -   SCHANNEL.txt <br> Description:  Details about [SCHANNEL
        configuration](https://docs.microsoft.com/windows-server/security/tls/manage-tls)
        applied to the machine such gathered from registry.

    -   SessionManager.txt <br> Description:  Session Manager specific settings
        gather from registry.

    -   SSL_00010002.txt <br> Description:  Details about [SSL
        configuration](https://docs.microsoft.com/windows-server/security/tls/manage-tls)
        applied to the machine gathered from registry.

-   EventLogs [Folder]

    -   utc.evtx <br> Description:  Export of DiagTrack event log

    -   senseIR.evtx <br> Description:  Export of the Automated Investigation event
        log

    -   sense.evtx <br> Description:  Export of the Sensor main event log

    -   OperationsManager.evtx <br> Description:  Export of the Microsoft
        Monitoring Agent event log