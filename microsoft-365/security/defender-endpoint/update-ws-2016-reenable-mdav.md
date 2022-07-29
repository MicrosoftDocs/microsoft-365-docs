---
title: Update Windows Server 2016 with Microsoft Defender Antivirus (MDAV)
description: Learn how to update Windows Server 2016 comprising Microsoft Defender Antivirus (MDAV) which also should be re-enabled.
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

# Update Windows Server 2016 with Microsoft Defender Antivirus (MDAV)

This article describes how you can update the Window Server 2016 that comprises Microsoft Defender AntiVirus (MDAV).

To update Windows Server 2016, ensure that the following prerequisites are fulfilled:

1. Install the latest Servicing Stack Update (SSU) on the machine running Windows server 2016.
1. Install the latest cumulative update (LCU) on the machine running Windows server 2016.

   > [!NOTE]
   > If you use a third-party antivirus solution such as McAfee and use it as the primary antivirus solution over MDAV, then McAfee will uninstall MDAV from the server machine. For more information on how McAfee uninstalls MDAV and the status of the Windows Defender feature after this uninstallation, see https://kcm.trellix.com/corporate/index?page=content&id=KB88214&locale=en_US. This step is optional and arises only if you use McAfee.

3. Re-enable MDAV on the machine running Windows server 2016, Version 1803 or later. For more information, see [Re-enable MDAV on Windows Server, Version 1803 or later](switch-to-mde-phase-2.md).

4. Reboot the system.
1. Install the latest version of the platform update, namely 4.18.2202.4.

   > [!NOTE]
   > This platform update will be automatically installed if you run the [script](https://github.com/microsoft/mdefordownlevelserver/blob/main/Install.ps1). However, to run this script, your machine has to be in the state in which this script can run successfully.






