---
title: Microsoft Defender Offline scan in Windows
description: You can use Microsoft Defender Offline Scan straight from the Microsoft Defender Antivirus app. You can also manage how it's deployed in your network.
ms.service: defender-endpoint
ms.localizationpriority: medium
ms.date: 08/30/2022
author: siosulli
ms.author: siosulli
ms.custom: nextgen
ms.reviewer:
manager: deniseb
ms.subservice: ngp
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
- mde-ngp
search.appverid: met150
---

# Run and review the results of a Microsoft Defender Offline scan

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)

| Applies to | Type  |
|---|---|
|**Platform**| Windows|
|**Protection type** | Hardware|
|**Firmware/ Rootkit**|  <li> Operating system <li> Driver <li> Memory (Heap) <li> Application <li> Identity <li> Cloud|

>[!NOTE]
> The protection for this feature focuses on the Firmware/Rootkit.

Microsoft Defender Offline is an anti-malware scanning tool that lets you boot and run a scan from a trusted environment. The scan runs from outside the normal Windows kernel so it can target malware that attempts to bypass the Windows shell, such as viruses and rootkits that infect or overwrite the master boot record (MBR).

You can use Microsoft Defender Offline Scan if you suspect a malware infection, or you want to confirm a thorough clean of the endpoint after a malware outbreak.

## Prerequisites and requirements

The following are the hardware requirements for Microsoft Defender Offline Scan in Windows:

- x64 Windows 11  
- x64/x86 Windows 10
- x64/x86 Windows 8.1 
- x64/x86 Windows 7 Service Pack 1

>[!CAUTION]
> Microsoft Defender Offline Scan does not apply to:
>
> - ARM Windows 11 
> - ARM Windows 10 
> - Windows Server Stock Keeping Units (SKU's)

For more information about Windows 10 and Windows 11 requirements, see the following topics: 

- [Minimum hardware requirements](/windows-hardware/design/minimum/minimum-hardware-requirements-overview)
- [Hardware component guidelines](/windows-hardware/design/component-guidelines/components)

## Microsoft Defender Offline updates

To receive Microsoft Defender Offline Scan updates:

- Microsoft Defender Antivirus must be primary AV (not in passive mode).
- Update MDAV, with however you normally deploy updates to endpoints, a supported version of the: 
  - [Platform Update](https://www.microsoft.com/security/portal/definitions/adl.aspx)
  - [Engine Update](microsoft-defender-antivirus-updates.md)
  - Security Intelligence Update
    - You can manually download and install the latest protection updates from the [Microsoft Malware Protection Center](https://www.microsoft.com/security/portal/definitions/adl.aspx) 
    - See the [Manage Microsoft Defender Antivirus Security intelligence updates](manage-protection-updates-microsoft-defender-antivirus.md) topic for more information.
- User must be logged in with local administrator privileges.
- Windows Recovery Environment (WinRE) needs to be enabled. 

>[!NOTE]
> If WinRE is disabled, the WDO scan won't run and no error message is displayed.
Nothing happens even if the machine is restarted manually. 
> To fix this, you only have to enable WinRE. 
>
> - To check the WinRE status, you can execute this command-line: `reagentc /info`.
> - If the status is Disabled, you can enable it by executing this command-line: `reagentc /enable`.

## Usage scenarios

The need to run Microsoft Defender Offline Scan:

If Microsoft Defender Antivirus determines that need to run:

- It prompts the user on the endpoint. The prompt can occur via a notification, similar to the following:

     :::image type="content" source="../../media/notification.png" alt-text="Notification to run Microsoft Defender Offline" lightbox="../../media/notification.png":::

     The user will also be notified within the Microsoft Defender Antivirus client or it can be revealed in Microsoft Intune, if you're using it to manage your Windows endpoints.

- You can manually force an offline scan which is built-in Windows 10, version 1607 or newer, and Windows 11. Or, you can scan through a bootable media for the older Windows OS'es as described [here](#use-the-windows-defender-security-app-to-run-an-offline-scan).

In Configuration Manager, you can identify the status of endpoints by navigating to **Monitoring > Overview > Security > Endpoint Protection Status > System Center Endpoint Protection Status**.

Microsoft Defender Offline scans are indicated under **Malware remediation status** as **Offline scan required**.

:::image type="content" source="../../media/sccm-wdo.png" alt-text="The indicator for a scan for Microsoft Defender Offline" lightbox="../../media/sccm-wdo.png":::

## Configure notifications

Microsoft Defender Offline notifications are configured in the same policy setting as other Microsoft Defender Antivirus notifications.

For more information about notifications in Windows Defender, see [Configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md).

## Run a scan

> [!IMPORTANT]
> Before you use Microsoft Defender Offline Scan, **make sure you save any files** and shut down running programs. The Microsoft Defender Offline scan takes about 15 minutes to run. It will restart the endpoint when the scan is complete. The scan is performed outside of the usual Windows operating environment. The user interface will appear different to a normal scan performed by Windows Defender. After the scan is completed, the endpoint will be restarted and Windows will load normally.

You can run a Microsoft Defender Offline scan with the following:

- The Windows Security app
- PowerShell
- Windows Management Instrumentation (WMI)

### Use the Windows Defender Security app to run an offline scan

Starting with Windows 10, version 1607 or newer, and Windows 11, Microsoft Defender Offline Scan can be run with one click directly from the [Windows Security app](microsoft-defender-security-center-antivirus.md). In previous versions of Windows, a user had to install Microsoft Defender Offline Scan to bootable media, restart the endpoint, and load the bootable media.

> [!NOTE]
> In Windows 10, version 1607, the offline scan can be run from **Windows Settings > Update & security > Windows Defender** or from the Windows Defender client.

1. Open the Windows Security app:
   - In the Start menu, select **App apps**, then select **Windows Security**, or
   - In the Start menu, select **Settings**, then select **Privacy & security**, and then select **Windows Security**, or
   - In the Search, search for **Windows Security**, or
   - In the task bar, select the hidden icons (chevron icon pointing up), click the Microsoft Defender Antivirus Shield icon.
2. Select **Scan options**.
3. Select the radio button **Microsoft Defender Offline scan** and click **Scan now**.
   > [!NOTE]
   > The process starts from C:\ProgramData\Microsoft\Windows Defender\Offline Scanner.
4. You'll get a prompt to save your work before continuing, similar to the following image:
   
    :::image type="content" source="../../media/defender-offline-save-work.png" alt-text="Screenshot of screen prompt to save all work before continuing.":::
   
    After you saved your work, select **Scan**.
5. Once you clicked on **Scan**, you'll get another prompt requesting your permission to make changes to your device, similar to the following image:

    :::image type="content" source="../../media/defender-offline-apply-change.png" alt-text="Screenshot of a screen prompt requesting permission to apply.":::
    
     Select **Yes**.
6. Another prompt will appear informing you that you'll be signed out and windows will shut down in less than a minute, similar to the following image:

    :::image type="content" source="../../media/defender-offline-sign-out-notification.png" alt-text="Screenshot of a screen prompt informing about the sign out.":::

7. You'll see that the Microsoft Defender Antivirus scan (offline scan) is in progress.
    
    :::image type="content" source="../../media/defender-offline-antivirus-run.png" alt-text="Screenshot of the Microsoft Defender Antivirus scan.":::
    
    You'll see the following image:
    
    :::image type="content" source="../../media/defender-offline-scan-run-2.png" alt-text="Screenshot of a dialogue when the run is ongoing.":::

### Use PowerShell cmdlets to run an offline scan

Use the following cmdlets:

```PowerShell
Start-MpWDOScan
```

See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender Antivirus cmdlets](/powershell/module/defender/) for more information on how to use PowerShell with Microsoft Defender Antivirus.

### Use Windows Management Instruction (WMI) to run an offline scan

Use the [**MSFT_MpWDOScan**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class to run an offline scan.

The following WMI script snippet will immediately run a Microsoft Defender Offline scan, which will cause the endpoint to restart, run the offline scan, and then restart and boot into Windows.

```console
wmic /namespace:\\root\Microsoft\Windows\Defender path MSFT_MpWDOScan call Start
```

For more information, see [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal).

**In Windows 7 Service Pack 1 and Windows 8.1:**

1. Download Windows Defender Offline and install it to a CD, DVD, or USB flash drive using the following links:
     - [Download the 64-bit version (msstool64.exe)](https://go.microsoft.com/fwlink/?LinkID=234124)
     - [Download the 32-bit version (msstool32.exe)](https://go.microsoft.com/fwlink/?LinkID=234123)

    If you're not sure which version to download, see [Is my PC running the 32-bit or 64-bit version of Windows?](https://support.microsoft.com/windows/32-bit-and-64-bit-windows-frequently-asked-questions-c6ca9541-8dce-4d48-0415-94a3faa2e13d).
2. To get started, find a blank CD, DVD, or USB flash drive with at least 250 MB of free space, and then run the tool. You'll be guided through the steps to create the removable media.

    > [!TIP]
    > We recommend you to do the following when downloading Windows Defender Offline:
    > - Download Windows Defender Offline and create the CD, DVD, or USB flash drive on a PC that isn't infected with malware as the malware can interfere with the media creation.
    > - If you use a USB drive, the drive will be reformatted and any data on it will be erased. Ensure to back up any important data from the drive first.

    :::image type="content" source="../../media/defender-offline-scan-pc-for-virus.png" alt-text="Screenshot of a dialogue for scan in PC.":::

3. Scan your PC for viruses and other malware.

    1. Once you've created the USB drive, CD, or DVD, you'll need to remove it from your current computer and take it to the computer you want to scan. Insert the USB drive or disc into the other computer and restart the computer.
    2. Boot from the USB drive, CD, or DVD to run the scan. Depending on the computer's settings, it may automatically boot from the media after you restart it, or you may have to press a key to enter a "boot devices" menu or modify the boot order in the computer's UEFI firmware or BIOS.
    3. Once you've booted from the device, you'll see a Microsoft Defender tool that will automatically scan your computer and remove malware. 
    4. After the scan is complete and you're done with the tool, you can reboot your computer and remove the Microsoft Defender Offline media to boot back into Windows.
4. Remove any malware that's found from your PC.

    1. If you experience a Stop error on a blue screen when you run the offline scan, restart your device and try running a Microsoft Defender Offline scan again. If the blue-screen error happens again, contact [Microsoft Support](https://support.microsoft.com/).

### Where can I find the scan results?

To see the Microsoft Defender Offline scan results in Windows 10 and Windows 11:

1. Select **Start**, and then select **Settings**  > **Update & Security**  > **Windows Security**  > **Virus & threat protection**.

2. On the **Virus & threat protection** screen, under **Current threats**, select **Scan options**, and then select **Protection history**.
For more information, see [Review threat detection history in the Windows Security app](microsoft-defender-security-center-antivirus.md).

### How can I find out if Microsoft Defender Offline scan was kicked off?

In the **Event Viewer**, go to **Applications and Services Logs > Microsoft > Windows > Windows Defender > Operational**. You'll see:

- Log Name: Microsoft-Windows-Windows Defender/Operational
- Source: Microsoft-Windows-Windows Defender
- Event ID: 2030
- Level: Information
- Description: Microsoft Defender Antivirus downloaded and configured Microsoft Defender Antivirus (offline scan) to run on the next reboot.

On older versions than Windows 10, 2004, you'll see:

Windows Defender Antivirus downloaded and configured Windows Defender Offline to run on the next reboot.

- Log Name: Microsoft-Windows-Windows Defender/Operational
- Source: Microsoft-Windows-Windows Defender
- Event ID: 5007
- Level: Information
- Description: Microsoft Defender Antivirus Configuration has changed. If this is an unexpected event, you should review the settings as this may be the result of malware.
- Old value: N/A\Scan\OfflineScanRun =
- New value: HKLM\SOFTWARE\Microsoft\Windows Defender\Scan\OfflineScanRun = 0x0

## Related articles

- [Customize, initiate, and review the results of scans and remediation](customize-run-review-remediate-scans-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
