---
title: Enable and update Defender Antivirus on Windows Server
description: Learn how to enable and update Defender Antivirus on Windows Server
keywords: Windows Server, Defender Antivirus
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

# Enable and update Defender Antivirus to the latest version on Windows Server

If you wish to use Defender Antivirus on your Windows Server, and it had been previously disabled or uninstalled, you may need to take the following steps to re-enable it and ensure it's fully updated.

To enable and update Defender Antivirus on Windows Server, perform the following steps:

1. Install the latest Servicing Stack Update (SSU).
1. Install the latest cumulative update (LCU).
1. Reinstall Defender Antivirus or re-enable it. For more information on how to reinstall or re-enable Defender Antivirus on Windows Server, see [Re-enable Microsoft Defender Antivirus on Windows Server 2016](#re-enable-microsoft-defender-antivirus-on-windows-server-2016) and [Re-enable Microsoft Defender Antivirus on Windows Server, Version 1803 or later](#re-enable-microsoft-defender-antivirus-on-windows-server-version-1803-or-later).
1. Reboot the system.
1. Install the latest version of the platform update.

   > [!NOTE]
   > Re-enabling Defender Antivirus doesn't automatically install the platform update. You can download and install the latest platform version using Windows update. Alternatively, you can download the update package from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4052623) or from the [Antimalware and cyber security portal](https://go.microsoft.com/fwlink/?linkid=870379&arch=x64).
   >  
   > If you are preparing to install the modern, unified solution on Windows Server, you can leverage the [Installer help script](https://github.com/microsoft/mdefordownlevelserver/blob/main/Install.ps1) to automate the platform update and the subsequent installation and onboarding. It can also assist in re-enabling Defender Antivirus.

## Re-enable Defender Antivirus on Windows Server if it was disabled

First, ensure that Defender Antivirus is not disabled either through Group Policy or registry. For more information, see [Troubleshoot Microsoft Defender Antivirus while migrating from a third-party solution](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus-when-migrating)

On Windows Server, in some cases, you may need to use the [Malware Protection Command-Line Utility](command-line-arguments-microsoft-defender-antivirus.md) to re-enable Defender Antivirus.

As a local administrator on the server, perform the following steps:

1. Open Command Prompt.
1. Run the following command:
   `MpCmdRun.exe -wdenable`.
1. Restart the device.

## Re-enable Defender Antivirus on Windows Server if it was uninstalled

In case the Defender feature was uninstalled/removed, you can add it back.

As a local administrator on the server, perform the following steps:

1. Open Windows PowerShell.

2. Run the following command:

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
   > You can also use Server Manager or PowerShell cmdlets to install the feature.

3. Reboot the system.




