---
title: Turn on troubleshooting mode for Microsoft Defender for Endpoint
description: Turn on the Microsoft Defender for Endpoint troubleshooting mode to address various antivirus issues.
keywords: antivirus, troubleshoot, troubleshooting mode, tamper protection, compatibility
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
ms.topic: article
ms.technology: mde
---

# Turn on troubleshooting mode

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


Microsoft Defender for Endpoint troubleshooting mode allows you to troubleshoot various Microsoft Defender antivirus features by enabling them from the device and testing their scenarios, even if they are controlled by the organization policy. The troubleshooting mode is disabled by default and requires you to turn it on for a device (and/or group of devices) for a limited time.  

## What do you need to know before you begin?

- Requirements:

    - For troubleshooting mode to be applied, Endpoints must be tenant enrolled with sense active on the device.

    - Microsoft Defender Antivirus must be the active antivirus on the device.

- Use troubleshooting mode to disable/change the tamper protection setting to perform:

    - Microsoft Defender Antivirus functional troubleshooting /application compatibility (false positive application blocks).  

    - Microsoft Defender Antivirus performance troubleshooting by using the troubleshooting mode and manipulating tamper protection and other antivirus settings.

- Local admins, with appropriate permissions, will be able to change configurations on individual endpoints that are normally locked by policy. Having a device in troubleshooting mode can be helpful when diagnosing Microsoft Defender Antivirus performance and compatibility issues.

    - Local admins will not be able to turn off Microsoft Defender Antivirus or uninstall it.

    - Local admins will be able to configure all other security settings in the Microsoft Defender Antivirus suite (for example, cloud protection, tamper protection).

- Admins with “Manage Security settings” permissions will have access to turn troubleshooting mode on.

- Microsoft Defender for Endpoint collects logs and investigation data throughout the troubleshooting process.

    - Snapshot of `MpPreference` will be taken before troubleshooting mode begins.

    - Second snapshot will be taken just before troubleshooting mode expires.

    - Operational logs from during troubleshooting mode will also be collected.

    - All the above logs and snapshots will be collected and will be available to the admin to collect using the **Collect investigation package** feature on the device page.

- Troubleshooting mode automatically turns off after reaching the expiration time (it lasts for 3 hours). After expiration, all policy-managed configurations will become read-only again and will revert back to how it was before setting the troubleshooting mode on.

- It could take up to 15 minutes from the time the command is sent from Microsoft 365 Defender to when it becomes active on the device.

- Customers will be informed when the troubleshooting mode begins, a warning that it will end soon, and when the troubleshooting mode ends by a notification.

- The beginning and ending of troubleshooting mode will be identified in the **Device Timeline** on the device page.

- You can query all troubleshooting mode events in Advanced Hunting.

- Devices will have a troubleshooting mode active tag in Device Inventory.


## Enable the troubleshooting mode

[Need updated steps. Couldn't figure out the details from the small images.]

1. In Microsoft 365 Defender, go to the device you would like to turn on troubleshooting mode. Select **Turn on troubleshooting mode**.

[Need updated screenshot]

2. Confirm you want to turn on troubleshooting mode for the device. 

[Need updated screenshot]
 
3. The device page shows the device is now in troubleshooting mode.  

[Need updated screenshot]

## Use the troubleshooting mode

### Scenario 1: Unable to install application on the device

