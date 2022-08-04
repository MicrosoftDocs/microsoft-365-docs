---
title: Enable and update Microsoft Defender Antivirus (MDAV) to latest version on Windows Server 2016
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

# Enable and update Microsoft Defender Antivirus (MDAV) to latest version on Windows Server 2016

To update Windows Server 2016, perform the following steps:

1. Install the latest Servicing Stack Update (SSU) on the machine running Windows server 2016.
1. Install the latest cumulative update (LCU) on the machine running Windows server 2016.
1. Reinstall Microsoft Defender Antivirus (MDAV) (if removed from Windows Server 2016) or re-enable MDAV (if installed but disabled from Windows Server 2016). For more information on how to reinstall or re-enable MDAV on Windows Server 2016, see [Re-enable Microsoft Defender Antivirus on Windows Server 2016](switch-to-mde-phase-2.md#re-enable-microsoft-defender-antivirus-on-windows-server-2016) and [Re-enable Microsoft Defender Antivirus on Windows Server, version 1803 or later](switch-to-mde-phase-2.md#re-enable-microsoft-defender-antivirus-on-windows-server-version-1803-or-later).
1. Reboot the system.
1. Install the latest version of the platform update.

   > [!NOTE]
   > Re-enabling MDAV does not automatically install the platform update. Therefore, this step is a separate and mandatory step.
   >  
   > If you want this platform update to be automatically installed, you've to run the [script](https://github.com/microsoft/mdefordownlevelserver/blob/main/Install.ps1).
   > 
   > Ensure that your machine is in the state that is conducive to run this script for automatic platform updates.

