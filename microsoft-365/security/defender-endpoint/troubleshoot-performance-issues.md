---
title: Troubleshoot performance issues
description: Troubleshoot high CPU usage related to the real-time protection service in Microsoft Defender for Endpoint.
keywords: troubleshoot, performance, high CPU utilization, high CPU usage, error, fix, update compliance, oms, monitor, report, Microsoft Defender Antivirus
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
ms.date: 10/19/2021
audience: ITPro
ms.topic: troubleshooting
ms.subservice: mde
ms.collection: 
- m365-security
- tier3
---

# Troubleshoot performance issues related to real-time protection


[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

If your system is having high CPU usage or performance issues related to the real-time protection service in Microsoft Defender for Endpoint, you can submit a ticket to Microsoft support. Follow the steps in [Collect Microsoft Defender Antivirus diagnostic data](collect-diagnostic-data.md).

As an admin, you can also troubleshoot these issues on your own.

First, you might want to check if the issue is being caused by another software. Read [Check with vendor for antivirus exclusions](#check-with-vendor-for-antivirus-exclusions).

Otherwise, you can identify which software is related to the identified performance issue by following the steps in [Analyze the Microsoft Protection Log](#analyze-the-microsoft-protection-log).

You can also provide additional logs to your submission to Microsoft support by following the steps in:

- [Capture process logs using Process Monitor](#capture-process-logs-using-process-monitor)
- [Capture performance logs using Windows Performance Recorder](#capture-performance-logs-using-windows-performance-recorder)

For performance-specific issues related to Microsoft Defender Antivirus, see: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)

## Check with vendor for antivirus exclusions

If you can readily identify the software affecting system performance, go to the software vendor's knowledge base or support center. Search if they have recommendations about antivirus exclusions. If the vendor's website does not have them, you can open a support ticket with them and ask them to publish one.

We recommend that software vendors follow the various guidelines in [Partnering with the industry to minimize false positives](https://www.microsoft.com/security/blog/2018/08/16/partnering-with-the-industry-to-minimize-false-positives/). The vendor can submit their software through the [Microsoft Security Intelligence portal](https://www.microsoft.com/wdsi/filesubmission?persona=SoftwareDeveloper).

## Analyze the Microsoft Protection Log
You can find the Microsoft protection log file in **C:\ProgramData\Microsoft\Windows Defender\Support**.

In **MPLog-xxxxxxxx-xxxxxx.log**, you can find the estimated performance impact information of running software as *EstimatedImpact*:

`Per-process counts:ProcessImageName: smsswd.exe, TotalTime: 6597, Count: 1406, MaxTime: 609, MaxTimeFile: \Device\HarddiskVolume3\_SMSTaskSequence\Packages\WQ1008E9\Files\FramePkg.exe, EstimatedImpact: 65%`

<br>

****

|Field name|Description|
|---|---|
|ProcessImageName|Process image name|
|TotalTime|The cumulative duration in milliseconds spent in scans of files accessed by this process|
|Count|The number of scanned files accessed by this process|
|MaxTime|The duration in milliseconds in the longest single scan of a file accessed by this process|
|MaxTimeFile|The path of the file accessed by this process for which the longest scan of `MaxTime` duration was recorded|
|EstimatedImpact|The percentage of time spent in scans for files accessed by this process out of the period in which this process experienced scan activity|
|

If the performance impact is high, try adding the process to the Path/Process exclusions by following the steps in [Configure and validate exclusions for Microsoft Defender Antivirus scans](collect-diagnostic-data.md).

If the previous step doesn't solve the problem, you can collect more information through the [Process Monitor](#capture-process-logs-using-process-monitor) or the [Windows Performance Recorder](#capture-performance-logs-using-windows-performance-recorder) in the following sections.

## Capture process logs using Process Monitor

Process Monitor (ProcMon) is an advanced monitoring tool that can show real-time processes. You can use this to capture the performance issue as it is occurring.

1. Download [Process Monitor v3.89](/sysinternals/downloads/procmon) to a folder like `C:\temp`.

2. To remove the file's mark of the web:
    1. Right-click **ProcessMonitor.zip** and select **Properties**.
    1. Under the *General* tab, look for *Security*.
    1. Check the box beside **Unblock**.
    1. Select **Apply**.

    :::image type="content" source="images/procmon-motw.png" alt-text="The Remove MOTW page" lightbox="images/procmon-motw.png":::

3. Unzip the file in `C:\temp` so that the folder path will be `C:\temp\ProcessMonitor`.

4. Copy **ProcMon.exe**  to the Windows client or Windows server you're troubleshooting.

5. Before running ProcMon, make sure all other applications not related to the high CPU usage issue are closed. Doing this will minimize the number of processes to check.

6. You can launch ProcMon in two ways.
    1. Right-click **ProcMon.exe** and select **Run as administrator**.

        Since logging starts automatically, select the magnifying glass icon  to stop the current capture or use the keyboard shortcut **Ctrl+E**.

        :::image type="content" source="images/procmon-magglass.png" alt-text="The magnifying glass icon" lightbox="images/procmon-magglass.png":::

        To verify that you have stopped the capture, check if the magnifying glass icon now appears with a red X.

        :::image type="content" source="images/procmon-magglass-stop.png" alt-text="The red slash" lightbox="images/procmon-magglass-stop.png":::

        Next, to clear the earlier capture, select the eraser icon.

        :::image type="content" source="images/procmon-eraser-clear.png" alt-text="The clear icon" lightbox="images/procmon-eraser-clear.png":::

        Or use the keyboard shortcut **Ctrl+X**.

    2. The second way is to run the **command line** as admin, then from the Process Monitor path, run:

       :::image type="content" source="images/cmd-procmon.png" alt-text="The cmd procmon" lightbox="images/cmd-procmon.png":::

        ```console
        Procmon.exe /AcceptEula /Noconnect /Profiling
        ```

        > [!TIP]
        > Make the ProcMon window as small as possible when capturing data so you can easily start and stop the trace.
        >
        > :::image type="content" source="images/procmon-minimize.png" alt-text="The page displaying a minimize Procmon" lightbox="images/procmon-minimize.png":::

7. After following one of the procedures in step 6, you'll next see an option to set filters. Select **OK**. You can always filter the results after the capture is completed.

   :::image type="content" source="images/procmon-filter-options.png" alt-text="The page on which System Exclude is chosen as the Filter out Process Name" lightbox="images/procmon-filter-options.png":::

8. To start the capture, select the magnifying glass icon again.

9. Reproduce the problem.

    > [!TIP]
    > Wait for the problem to be fully reproduced, then take note of the timestamp when the trace started.

10. Once you have two to four minutes of process activity during the high CPU usage condition, stop the capture by selecting the magnifying glass icon.

11. To save the capture with a unique name and with the .pml format, select **File** then select **Save...**. Make sure to select the radio buttons **All events** and **Native Process Monitor Format (PML)**.

    :::image type="content" source="images/procmon-savesettings1.png" alt-text="The save settings page" lightbox="images/procmon-savesettings1.png":::

12. For better tracking, change the default path from `C:\temp\ProcessMonitor\LogFile.PML` to `C:\temp\ProcessMonitor\%ComputerName%_LogFile_MMDDYEAR_Repro_of_issue.PML` where:
    - `%ComputerName%` is the device name
    - `MMDDYEAR` is the month, day, and year
    - `Repro_of_issue` is the name of the issue you're trying to reproduce

    > [!TIP]
    > If you have a working system, you might want to get a sample log to compare.

13. Zip the .pml file and submit it to Microsoft support.

## Capture performance logs using Windows Performance Recorder

You can use Windows Performance Recorder (WPR) to include additional information in your submission to Microsoft support. WPR is a powerful recording tool that creates Event Tracing for Windows recordings.

WPR is part of the Windows Assessment and Deployment Kit (Windows ADK) and can be downloaded from [Download and install the Windows ADK](/windows-hardware/get-started/adk-install). You can also download it as part of the Windows 10 Software Development Kit at [Windows 10 SDK](https://developer.microsoft.com/windows/downloads/windows-10-sdk/).

You can use the WPR user interface by following the steps in [Capture performance logs using the WPR UI](#capture-performance-logs-using-the-wpr-ui).

Alternatively, you can also use the command-line tool *wpr.exe*, which is available in Windows 8 and later versions  by following the steps in [Capture performance logs using the WPR CLI](#capture-performance-logs-using-the-wpr-cli).

### Capture performance logs using the WPR UI

> [!TIP]
> If multiple devices are experiencing this issue, use the one which has the most RAM.

1. Download and install WPR.

2. Under *Windows Kits*, right-click **Windows Performance Recorder**.

   :::image type="content" source="images/wpr-01.png" alt-text="The Start menu" lightbox="images/wpr-01.png":::

    Select **More**. Select **Run as administrator**.

3. When the User Account Control dialog box appears, select **Yes**.

   :::image type="content" source="images/wpt-yes.png" alt-text="The UAC page" lightbox="images/wpt-yes.png":::

4. Next, download the [Microsoft Defender for Endpoint analysis](https://github.com/YongRhee-MDE/Scripts/blob/master/MDAV.wprp) profile and save as `MDAV.wprp` to a folder like `C:\temp`.

5. On the WPR dialog box, select **More options**.

   :::image type="content" source="images/wpr-03.png" alt-text="The page on which you can select more options" lightbox="images/wpr-03.png":::


6. Select **Add Profiles...** and browse to the path of the `MDAV.wprp` file.

7. After that, you should see a new profile set under *Custom measurements* named *Microsoft Defender for Endpoint analysis* underneath it.

   :::image type="content" source="images/wpr-infile.png" alt-text="The in-file" lightbox="images/wpr-infile.png":::

    > [!WARNING]
    > If your Windows Server has 64 GB of RAM or more, use the custom measurement `Microsoft Defender for Endpoint analysis for large servers` instead of `Microsoft Defender for Endpoint analysis`. Otherwise, your system could consume a high amount of non-paged pool memory or buffers which can lead to system instability. You can choose which profiles to add by expanding **Resource Analysis**.
    This custom profile provides the necessary context for in-depth performance analysis.

8. To use the custom measurement Microsoft Defender for Endpoint verbose analysis profile in the WPR UI:

    1. Ensure no profiles are selected under the *First-level triage*, *Resource Analysis* and *Scenario Analysis* groups.
    2. Select **Custom measurements**.
    3. Select **Microsoft Defender for Endpoint analysis**.
    4. Select **Verbose** under *Detail* level.
    5. Select **File** or **Memory** under Logging mode.

    > [!IMPORTANT]
    > You should select *File* to use the file logging mode if the performance issue can be reproduced directly by the user. Most issues fall under this category. However, if the user cannot directly reproduce the issue but can easily notice it once the issue occurs, the user should select *Memory* to use the memory logging mode. This ensures that the trace log will not inflate excessively due to the long run time.

9. Now you're ready to collect data. Exit all the applications that are not relevant to reproducing the performance issue. You can select **Hide options** to keep the space occupied by the WPR window small.

   :::image type="content" source="images/wpr-08.png" alt-text="The Hide options" lightbox="images/wpr-08.png":::

    > [!TIP]
    > Try starting the trace at whole number seconds. For instance, 01:30:00. This will make it easier to analyze the data. Also try to keep track of the timestamp of exactly when the issue is reproduced.

10. Select **Start**.

    :::image type="content" source="images/wpr-09.png" alt-text="The Record system information page" lightbox="images/wpr-09.png":::

11. Reproduce the issue.

    > [!TIP]
    > Keep the data collection to no more than five minutes. Two to three minutes is a good range since a lot of data is being collected.

12. Select **Save**.

    :::image type="content" source="images/wpr-10.png" alt-text="The Save option" lightbox="images/wpr-10.png":::

13. Fill up **Type in a detailed description of the problem:** with information about the problem and how you reproduced the issue.

    :::image type="content" source="images/wpr-12.png" alt-text="The pane in which you fill" lightbox="images/wpr-12.png":::

    1. Select **File Name:** to determine where your trace file will be saved. By default, it is saved to `%user%\Documents\WPR Files\`.
    1. Select **Save**.

14. Wait while the trace is being merged.

    :::image type="content" source="images/wpr-13.png" alt-text="The WPR gathering general trace" lightbox="images/wpr-13.png":::

15. Once the trace is saved, select **Open folder**.

    :::image type="content" source="images/wpr-14.png" alt-text="The page displaying the notification that WPR trace has been saved" lightbox="images/wpr-14.png":::

    Include both the file and the folder in your submission to Microsoft Support.

    :::image type="content" source="images/wpr-15.png" alt-text="The details of the file and the folder" lightbox="images/wpr-15.png":::

### Capture performance logs using the WPR CLI

The command-line tool *wpr.exe* is part of the operating system starting with Windows 8. To collect a WPR trace using the command-line tool wpr.exe:

1. Download **[Microsoft Defender for Endpoint analysis](https://github.com/YongRhee-MDE/Scripts/blob/master/MDAV.wprp)** profile for performance traces to a file named `MDAV.wprp` in a local directory such as `C:\traces`.

2. Right-click the **Start Menu** icon and select **Windows PowerShell (Admin)** or **Command Prompt (Admin)** to open an Admin command prompt window.

3. When the User Account Control dialog box appears, select **Yes**.

4. At the elevated prompt, run the following command to start a Microsoft Defender for Endpoint performance trace:

    ```console
    wpr.exe -start C:\traces\MDAV.wprp!WD.Verbose -filemode
    ```

    > [!WARNING]
    > If your Windows Server has 64 GB or RAM or more, use profiles `WDForLargeServers.Light` and `WDForLargeServers.Verbose` instead of profiles `WD.Light` and `WD.Verbose`, respectively. Otherwise, your system could consume a high amount of non-paged pool memory or buffers which can lead to system instability.

5. Reproduce the issue.

    > [!TIP]
    > Keep the data collection no to more than five minutes. Depending on the scenario, two to three minutes is a good range since a lot of data is being collected.

6. At the elevated prompt, run the following command to stop the performance trace, making sure to provide information about the problem and how you reproduced the issue:

    ```console
    wpr.exe -stop merged.etl "Timestamp when the issue was reproduced, in HH:MM:SS format" "Description of the issue" "Any error that popped up"
    ```

7. Wait until the trace is merged.

8. Include both the file and the folder in your submission to Microsoft support.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

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

- [Collect Microsoft Defender Antivirus diagnostic data](collect-diagnostic-data.md)
- [Configure and validate exclusions for Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md)
- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
