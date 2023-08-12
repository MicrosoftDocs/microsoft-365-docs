---
title: Microsoft Defender Offline in Windows
description: You can use Microsoft Defender Offline straight from the Microsoft Defender Antivirus app. You can also manage how it is deployed in your network.
keywords: scan, defender, offline
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.date: 08/30/2022
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Run and review the results of a Microsoft Defender Offline scan

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Microsoft Defender Offline is an antimalware scanning tool that lets you boot and run a scan from a trusted environment. The scan runs from outside the normal Windows kernel so it can target malware that attempts to bypass the Windows shell, such as viruses and rootkits that infect or overwrite the master boot record (MBR).

You can use Microsoft Defender Offline if you suspect a malware infection, or you want to confirm a thorough clean of the endpoint after a malware outbreak.

In Windows 10 and Windows 11, Microsoft Defender Offline can be run with one click directly from the [Windows Security app](microsoft-defender-security-center-antivirus.md). In previous versions of Windows, a user had to install Microsoft Defender Offline to bootable media, restart the endpoint, and load the bootable media.

## prerequisites and requirements

Microsoft Defender Offline in Windows 10 and Windows 11 has the same hardware requirements as Windows 10.

For more information about Windows 10 and Windows 11 requirements, see the following topics:

- [Minimum hardware requirements](/windows-hardware/design/minimum/minimum-hardware-requirements-overview)
- [Hardware component guidelines](/windows-hardware/design/component-guidelines/components)

> [!NOTE]
> Microsoft Defender Offline is not supported on machines with ARM processors, or on Windows Server Stock Keeping Units.

To run Microsoft Defender Offline from the endpoint, the user must be logged in with administrator privileges.

## Microsoft Defender Offline updates

Microsoft Defender Offline uses the most recent protection updates available on the endpoint; it's updated whenever Microsoft Defender Antivirus is updated.

> [!NOTE]
> Before running an offline scan, you should attempt to update Microsoft Defender Antivirus protection. You can either force an update with Group Policy or however you normally deploy updates to endpoints, or you can manually download and install the latest protection updates from the [Microsoft Malware Protection Center](https://www.microsoft.com/security/portal/definitions/adl.aspx).

See the [Manage Microsoft Defender Antivirus Security intelligence  updates](manage-protection-updates-microsoft-defender-antivirus.md) topic for more information.

## Usage scenarios

In Windows 10, version 1607, you can manually force an offline scan. Alternatively, if Windows Defender determines that Microsoft Defender Offline needs to run, it will prompt the user on the endpoint.

The need to perform an offline scan will also be revealed in Microsoft Intune if you're using it to manage your endpoints.

The prompt can occur via a notification, similar to the following:

:::image type="content" source="../../media/notification.png" alt-text="Notification to run Microsoft Defender Offline" lightbox="../../media/notification.png":::

The user will also be notified within the Windows Defender client.

In Configuration Manager, you can identify the status of endpoints by navigating to **Monitoring > Overview > Security > Endpoint Protection Status > System Center Endpoint Protection Status**.

Microsoft Defender Offline scans are indicated under **Malware remediation status** as **Offline scan required**.

:::image type="content" source="../../media/sccm-wdo.png" alt-text="The indicator for a scan for Microsoft Defender Offline" lightbox="../../media/sccm-wdo.png":::

## Configure notifications

Microsoft Defender Offline notifications are configured in the same policy setting as other Microsoft Defender Antivirus notifications.

For more information about notifications in Windows Defender, see the [Configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md) topic.

## Run a scan

> [!IMPORTANT]
> Before you use Microsoft Defender Offline, make sure you save any files and shut down running programs. The Microsoft Defender Offline scan takes about 15 minutes to run. It will restart the endpoint when the scan is complete. The scan is performed outside of the usual Windows operating environment. The user interface will appear different to a normal scan performed by Windows Defender. After the scan is completed, the endpoint will be restarted and Windows will load normally.

You can run a Microsoft Defender Offline scan with the following:

- PowerShell
- Windows Management Instrumentation (WMI)
- The Windows Security app

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

See the following for more information:

- [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)

### Use the Windows Defender Security app to run an offline scan

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender for Cloud**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar) and then the **Advanced scan** label:

3. Select **Microsoft Defender Offline scan** and click **Scan now**.

    > [!NOTE]
    > In Windows 10, version 1607, the offline scan could be run from under **Windows Settings** \> **Update & security** \> **Windows Defender** or from the Windows Defender client.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

### Where can I find the scan results?

To see the Microsoft Defender Offline scan results:

1. Select **Start**, and then select **Settings**  > **Update & Security**  > **Windows Security**  > **Virus & threat protection**.

2. On the **Virus & threat protection** screen, under **Current threats**, select **Scan options**, and then select **Protection history**.

## Related articles

- [Customize, initiate, and review the results of scans and remediation](customize-run-review-remediate-scans-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
