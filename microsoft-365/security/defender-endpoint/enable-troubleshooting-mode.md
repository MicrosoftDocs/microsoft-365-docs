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


Microsoft Defender for Endpoint troubleshooting mode allows you to troubleshoot various Microsoft Defender antivirus features by enabling them from the device and testing different scenarios, even if they're controlled by the organization policy. The troubleshooting mode is disabled by default and requires you to turn it on for a device (and/or group of devices) for a limited time. Note that this is exclusively an Enterprise-only feature, and requires Microsoft 365 Defender access.

## What do you need to know before you begin?

- Requirements:

    - For troubleshooting mode to be applied, Microsoft Defender Endpoint must be tenant-enrolled and active on the device.

    - The device must be actively running Microsoft Defender Antivirus.

- Use troubleshooting mode to disable/change the tamper protection setting to perform:

    - Microsoft Defender Antivirus functional troubleshooting /application compatibility (false positive application blocks).  

    - Microsoft Defender Antivirus performance troubleshooting by using the troubleshooting mode and manipulating tamper protection and other antivirus settings.

- If a tampering event (for example, the Preference snapshot) is altered or deleted, troubleshooting mode will end and tamper protection will be enabled on the device.

- Local admins, with appropriate permissions, can change configurations on individual endpoints that are normally locked by policy. Having a device in troubleshooting mode can be helpful when diagnosing Microsoft Defender Antivirus performance and compatibility scenarios.

    - Local admins won't be able to turn off Microsoft Defender Antivirus, or uninstall it.

    - Local admins will be able to configure all other security settings in the Microsoft Defender Antivirus suite (for example, cloud protection, tamper protection).

- Admins with “Manage Security settings” permissions will have access to turn on troubleshooting mode.

- Microsoft Defender for Endpoint collects logs and investigation data throughout the troubleshooting process.

    - Snapshot of `MpPreference` will be taken before troubleshooting mode begins.

    - Second snapshot will be taken just before troubleshooting mode expires.

    - Operational logs from during troubleshooting mode will also be collected.

    - All the above logs and snapshots will be collected and will be available for an admin to collect using the [Collect investigation package](respond-machine-alerts.md#collect-investigation-package-from-devices) feature on the device page. Note that Microsoft won't remove this data from the device until an admin collects them. 

- Admins can also review the changes in settings that takes place during Troubleshooting mode in **Event Viewer** on the device page.

- Troubleshooting mode automatically turns off after reaching the expiration time (it lasts for 3 hours). After expiration, all policy-managed configurations will become read-only again and will revert back to how it was before setting the troubleshooting mode on.

- It could take up to 15 minutes from the time the command is sent from Microsoft 365 Defender to when it becomes active on the device.

- Notification will be sent to the end user when the troubleshooting mode begins and when the troubleshooting mode ends. A warning will also be sent notifying that it will end soon.

- While troubleshooting mode is active, endpoint detection and response (EDR) will not block any files, folders, or processes that Microsoft Defender Antivirus has excluded from scans.

- The beginning and ending of troubleshooting mode will be identified in the **Device Timeline** on the device page.

- You can query all troubleshooting mode events in Advanced Hunting.

> [!NOTE]
> Policy management changes will be applied to the machine when it is actively in Troubleshooting mode. However, the changes will not take effect until the Troubleshooting mode expires. Additionally, Microsoft Defender Antivirus Platform updates will not be applied during Troubleshooting mode. Platform updates will be applied once Troubleshooting mode ends with a Windows update.

## Enable the troubleshooting mode

1. In Microsoft 365 Defender, go to the device you would like to turn on troubleshooting mode. Select **Turn on troubleshooting mode**.

[Need updated screenshot]

2. Confirm you want to turn on troubleshooting mode for the device. 

[Need updated screenshot]
 
3. The device page shows the device is now in troubleshooting mode.  

[Need updated screenshot]

## Related topic

- [Use troubleshooting mode](use-troubleshooting-mode.md)