---
title: Update Windows Server 2016
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

# Update Windows Server 2016

To update Windows Server 2016, perform the following steps:

1. Install the latest Servicing Stack Update (SSU) on the machine running Windows server 2016.
1. Install the latest cumulative update (LCU) on the machine running Windows server 2016.
1. Uninstall MDAV, if you are using McAfee, a third-party antivirus solution, and reboot the system.

   > [!IMPORTANT]
   > Implement this step only if your Windows Server 2016 machine is using McAfee or any other third-party antivirus solution. Else, proceed to the next step. 

1. Re-enable MDAV on the machine running Windows server 2016, Version 1803 or later. For more information, see [Re-enable MDAV on Windows Server, Version 1803 or later](switch-to-mde-phase-2.md).
1. Reboot the system.
1. Install the latest version of the platform update, namely 4.18.2202.4.

   > [!NOTE]
   > Re-enabling MDAV does not automatically install the platform update. Therefore, this step is a seperate and mandatory step.
   >  
   > If you want this platform update to be automatically installed, you've to run the [script](https://github.com/microsoft/mdefordownlevelserver/blob/main/Install.ps1).
   > 
   > Ensure that your machine is in the state that is conducive to run this script for automatic platform updates.

