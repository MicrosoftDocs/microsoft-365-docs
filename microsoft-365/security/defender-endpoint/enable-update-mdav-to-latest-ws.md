---
title: Enable and update Microsoft Defender Antivirus on Windows Server
description: Learn how to enable and update Microsoft Defender Antivirus on Windows Server
keywords: Windows Server, Defender Antivirus
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-smandalika
author: v-smandalika
ms.localizationpriority: high
ms.date: 02/16/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.custom: intro-overview
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Enable and update Defender Antivirus to the latest version on Windows Server

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

If you wish to use Microsoft Defender Antivirus on your Windows Server, and it had been previously disabled or uninstalled, you may need to take further steps to re-enable it and ensure it's fully updated.

To enable and update Microsoft Defender Antivirus on Windows Server, perform the following steps:

1. Install the latest Servicing Stack Update (SSU).
2. Install the latest cumulative update (LCU).
3. Reinstall Microsoft Defender Antivirus or re-enable it. For more information on how to reinstall or re-enable Microsoft Defender Antivirus on Windows Server, see [Re-enable Microsoft Defender Antivirus on Windows Server if it was disabled](#re-enable-microsoft-defender-antivirus-on-windows-server-if-it-was-disabled) and [Re-enable Microsoft Defender Antivirus on Windows Server if it was uninstalled](#re-enable-microsoft-defender-antivirus-on-windows-server-if-it-was-uninstalled).
4. Reboot the system.
5. Install the latest version of the platform update.

   > [!NOTE]
   > Re-enabling Microsoft Defender Antivirus doesn't automatically install the platform update. You can download and install the latest platform version using Windows update. Alternatively, you can download the update package from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4052623) or from the [Antimalware and cyber security portal](https://go.microsoft.com/fwlink/?linkid=870379&arch=x64).
   >  
   > If you're preparing to install the modern, unified solution on Windows Server 2016, you can leverage the [Installer help script](https://github.com/microsoft/mdefordownlevelserver/blob/main/Install.ps1) to automate the platform update and the subsequent installation and onboarding. This script can also assist in re-enabling Microsoft Defender Antivirus.

## Re-enable Microsoft Defender Antivirus on Windows Server if it was disabled

First, ensure that Microsoft Defender Antivirus is not disabled either through Group Policy or registry. For more information, see [Troubleshoot Microsoft Defender Antivirus while migrating from a third-party solution](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus-when-migrating).

If Microsoft Defender Antivirus features and installation files were previously removed from Windows Server 2016, follow the guidance in [Configure a Windows Repair Source](/windows-hardware/manufacture/desktop/configure-a-windows-repair-source) to restore the feature installation files.

On Windows Server 2016, in some cases, you may need to use the [Malware Protection Command-Line Utility](command-line-arguments-microsoft-defender-antivirus.md) to re-enable Microsoft Defender Antivirus.

As a local administrator on the server, perform the following steps:

1. Open Command Prompt.
2. Run the following command:
   `MpCmdRun.exe -wdenable`.
3. Restart the device.

## Re-enable Microsoft Defender Antivirus on Windows Server if it was uninstalled

In case the Defender feature was uninstalled/removed, you can add it back.

As a local administrator on the server, perform the following steps:

1. Open Windows PowerShell.

2. Run the following commands:

   ```powershell
   # For Windows Server 2016
   Dism /Online /Enable-Feature /FeatureName:Windows-Defender-Features
   Dism /Online /Enable-Feature /FeatureName:Windows-Defender
   Dism /Online /Enable-Feature /FeatureName:Windows-Defender-Gui
   
   # For Windows Server 1803 and later, including Windows Server 2019 and 2022
   Dism /Online /Enable-Feature /FeatureName:Windows-Defender
   ```

   When the DISM command is being used within a task sequence running PowerShell, the following path to cmd.exe is required.
   
   ```powershell
   C:\Windows\System32\cmd.exe /c Dism /Online /Enable-Feature /FeatureName:Windows-Defender-Features
   C:\Windows\System32\cmd.exe /c Dism /Online /Enable-Feature /FeatureName:Windows-Defender
   ```

   > [!NOTE]
   > You can also use Server Manager or PowerShell cmdlets to install the Microsoft Defender Antivirus feature.

3. Reboot the system.

## Related articles

[Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
