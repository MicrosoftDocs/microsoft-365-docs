---
title: Collect diagnostic data of Microsoft Defender Antivirus
description: Use a tool to collect data to troubleshoot Microsoft Defender Antivirus
keywords: troubleshoot, error, fix, update compliance, oms, monitor, report, Microsoft Defender av, group policy object, setting, diagnostic data, Microsoft Defender Antivirus
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 06/29/2020
ms.reviewer:
manager: dansimp
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Collect Microsoft Defender Antivirus diagnostic data

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This article describes how to collect diagnostic data that can be used by Microsoft support and engineering teams to help troubleshoot issues you might encounter when using the Microsoft Defender Antivirus.

> [!NOTE]
> As part of the investigation or response process, you can collect an investigation package from a device. Here's how: [Collect investigation package from devices](/windows/security/threat-protection/microsoft-defender-atp/respond-machine-alerts#collect-investigation-package-from-devices).
>
> For performance-specific issues related to Microsoft Defender Antivirus, see: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).

On at least two devices that are experiencing the same issue, obtain the .cab diagnostic file by taking the following steps:

1. Open an administrator-level version of the command prompt as follows:

    a. Open the **Start** menu.

    b. Type **cmd**. Right-click on **Command Prompt** and then select **Run as administrator**.

    c. Specify administrator credentials or approve the prompt.

2. Navigate to the directory for Microsoft Defender Antivirus. By default, this is `C:\Program Files\Windows Defender`.

   > [!NOTE]
   > If you're running an [updated Microsoft Defender antimalware platform version](https://support.microsoft.com/help/4052623/update-for-microsoft-defender-antimalware-platform), please run `MpCmdRun` from the following location: `C:\ProgramData\Microsoft\Windows Defender\Platform\<version>`.

3. Type the following command, and then press **Enter**

    ```Dos
    mpcmdrun.exe -GetFiles
    ```

4. A .cab file will be generated that contains various diagnostic logs. The location of the file will be specified in the output in the command prompt. By default, the location is `C:\ProgramData\Microsoft\Microsoft Defender\Support\MpSupportFiles.cab`.

   > [!NOTE]
   > To redirect the cab file to a different path or UNC share, use the following command:
   >
   > `mpcmdrun.exe -GetFiles -SupportLogLocation <path>`
   >
   > For more information, see [Redirect diagnostic data to a UNC share](#redirect-diagnostic-data-to-a-unc-share).

5. Copy these .cab files to a location that can be accessed by Microsoft support. An example could be a password-protected OneDrive folder that you can share with us.

> [!NOTE]
> If you have a problem with Update compliance, send an email using the <a href="mailto:ucsupport@microsoft.com?subject=WDAV assessment issue&body=I%20am%20encountering%20the%20following%20issue%20when%20using%20Windows%20Defender%20AV%20in%20Update%20Compliance%3a%20%0d%0aI%20have%20provided%20at%20least%202%20support%20.cab%20files%20at%20the%20following%20location%3a%20%3Caccessible%20share%2c%20including%20access%20details%20such%20as%20password%3E%0d%0aMy%20OMS%20workspace%20ID%20is%3a%20%0d%0aPlease%20contact%20me%20at%3a">Update Compliance support email template</a>, and fill out the template with the following information:
>
> I am encountering the following issue when using Microsoft Defender Antivirus in Update Compliance:
>
> I have provided at least 2 support .cab files at the following location:
>
> \<accessible share, including access details such as password\>
>
> My OMS workspace ID is:
>
> Please contact me at:

## Redirect diagnostic data to a UNC share

To collect diagnostic data on a central repository, you can specify the SupportLogLocation parameter.

```Dos
mpcmdrun.exe -GetFiles -SupportLogLocation <path>
```

Copies the diagnostic data to the specified path. If the path is not specified, the diagnostic data will be copied to the location specified in the Support Log Location Configuration.

When the SupportLogLocation parameter is used, a folder structure like as follows will be created in the destination path:

```Dos
<path>\<MMDD>\MpSupport-<hostname>-<HHMM>.cab
```

<br>

****

|field|Description|
|---|---|
|path|The path as specified on the command line or retrieved from configuration|
|MMDD|Month and day when the diagnostic data was collected (for example, 0530)|
|hostname|The hostname of the device on which the diagnostic data was collected|
|HHMM|Hours and minutes when the diagnostic data was collected (for example, 1422)|
|

> [!NOTE]
> When using a file share please make sure that account used to collect the diagnostic package has write access to the share.

## Specify location where diagnostic data is created

You can also specify where the diagnostic .cab file will be created using a Group Policy Object (GPO).

1. Open the Local Group Policy Editor and find the SupportLogLocation GPO at: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\SupportLogLocation`.

2. Select **Define the directory path to copy support log files**.

   :::image type="content" source="images/GPO1-SupportLogLocationDefender.png" alt-text="The local group policy editor" lightbox="images/GPO1-SupportLogLocationDefender.png":::

   :::image type="content" source="images/GPO2-SupportLogLocationGPPage.png" alt-text="The define path for log files setting" lightbox="images/GPO2-SupportLogLocationGPPage.png":::

   :::image type="content" source="images/GPO1-SupportLogLocationDefender.png" alt-text="The local group policy editor" lightbox="images/GPO1-SupportLogLocationDefender.png"::: 
        
   :::image type="content" source="images/GPO2-SupportLogLocationGPPage.png" alt-text="The define path for configuring the log files setting" lightbox="images/GPO2-SupportLogLocationGPPage.png":::
 
3. Inside the policy editor, select **Enabled**.

4. Specify the directory path where you want to copy the support log files in the **Options** field.
   :::image type="content" source="images/GPO3-SupportLogLocationGPPageEnabledExample.png" alt-text="The Enabled directory path custom setting" lightbox="images/GPO3-SupportLogLocationGPPageEnabledExample.png":::
5. Select **OK** or **Apply**.

> [!TIP]
> **Performance tip** Due to a variety of factors (examples listed below) Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are: 
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
>

## See also

- [Troubleshoot Microsoft Defender Antivirus reporting](troubleshoot-reporting.md)
- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
