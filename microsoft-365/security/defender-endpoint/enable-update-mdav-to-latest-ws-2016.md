---
title: Enable and update Microsoft Defender Antivirus (MDAV) to the latest version on Windows Server 2016
description: Learn how to update Windows Server 2016
keywords: Windows Server 2016, Microsoft Defender Antivirus (MDAV)
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-smandalika
author: v-smandalika
ms.localizationpriority: high
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365-initiative-defender-endpoint
ms.custom: intro-overview
ms.topic: conceptual
ms.technology: mde
---

# Enable and update Microsoft Defender Antivirus (MDAV) to the latest version on Windows Server 2016

To update Windows Server 2016, perform the following steps:

1. Install the latest Servicing Stack Update (SSU) on the machine running Windows server 2016.
1. Install the latest cumulative update (LCU) on the machine running Windows server 2016.
1. Reinstall Microsoft Defender Antivirus (MDAV) (if removed from Windows Server 2016) or re-enable MDAV (if installed but disabled from Windows Server 2016). For more information on how to reinstall or re-enable MDAV on Windows Server 2016, see [Re-enable Microsoft Defender Antivirus on Windows Server 2016](#re-enable-microsoft-defender-antivirus-on-windows-server-2016) and [Re-enable Microsoft Defender Antivirus on Windows Server, Version 1803 or later](#re-enable-microsoft-defender-antivirus-on-windows-server-version-1803-or-later).
1. Reboot the system.
1. Install the latest version of the platform update.

   > [!NOTE]
   > Re-enabling MDAV doesn't automatically install the platform update. You can download and install the latest platform version using Windows update. Alternatively, you can download the update package from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4052623) or from the [Antimalware and cyber security portal](https://go.microsoft.com/fwlink/?linkid=870379&arch=x64).
   >  
   > If you are preparing to install the modern, unified solution for Windows Server 2016, you can leverage the [Installer help script](https://github.com/microsoft/mdefordownlevelserver/blob/main/Install.ps1) to automate the platform update and the subsequent installation and onboarding. You must implement this step only after (re)enabling MDAV.

## Re-enable Microsoft Defender Antivirus on Windows Server 2016

You can use the Malware Protection Command-Line Utility to re-enable Microsoft Defender Antivirus on Windows Server 2016.

As a local administrator on the server, perform the following steps:

1. Open Command Prompt.
1. Run the following command:
   `MpCmdRun.exe -wdenable`.
1. Restart the device.

## Re-enable Microsoft Defender Antivirus on Windows Server, Version 1803 or later

> [!IMPORTANT]
> The following procedure applies only to endpoints or devices that are running the following versions of Windows:
> 
> - Windows Server 2022
> - Windows Server 2019
> - Windows Server, version 1803 (core-only mode)

As a local administrator on the server, perform the following steps:

1. Open Windows PowerShell.

2. Run the following PowerShell cmdlets:

   ```powershell
   # For Windows Server 2016
   Dism /Online /Enable-Feature /FeatureName:Windows-Defender-Features
   Dism /Online /Enable-Feature /FeatureName:Windows-Defender
   Dism /Online /Enable-Feature /FeatureName:Windows-Defender-Gui
   
   # For Windows Server 2019 and Windows Server 2022
   Dism /Online /Enable-Feature /FeatureName:Windows-Defender
   ```

   When using the DISM command within a task sequence running PowerShell, the following path to cmd.exe is required.
   Example:

   ```powershell
   C:\Windows\System32\cmd.exe /c Dism /Online /Enable-Feature /FeatureName:Windows-Defender-Features
   C:\Windows\System32\cmd.exe /c Dism /Online /Enable-Feature /FeatureName:Windows-Defender
   ```

3. Restart the device.




