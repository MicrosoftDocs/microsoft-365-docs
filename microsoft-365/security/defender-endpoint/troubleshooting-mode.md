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


Microsoft Defender for Endpoint troubleshooting mode allows you to troubleshoot various Microsoft Defender antivirus features, like tamper protection and other managed configurations, by enabling them from the device and testing their scenarios, even if they are controlled by the organization policy. The troubleshooting mode is disabled by default and requires you to turn it on for a device (and\or group of devices) for a limited time.  

## What do you need to know before you begin?

- Allows admins, with the appropriate role-based access control (RBAC) permissions, to change configurations on individual endpoints that are normally locked by policy. Having a device in troubleshooting mode can be helpful when diagnosing Microsoft Defender Antivirus performance and compatibility issues.

- Troubleshooting mode has an expiration and will automatically turn off after reaching the expiration time. After expiration, all policy-managed configurations will become read-only again and will revert back to the configuration prior to setting the troubleshooting mode on.

- Use troubleshooting mode to disable/change the tamper protection setting using mppreference cmdlets to perform: 

    - Microsoft Defender Antivirus functional troubleshooting /application compatibility (false positive application blocks).  

    - **Microsoft Defender Antivirus performance troubleshooting by using the troubleshooting mode and manipulating tamper protection and other antivirus settings.

## Use the troubleshooting mode

[Need updated steps. Couldn't figure out the details from the small images.]

1. In Microsoft 365 defender, go to the device you would like turn troubleshooting mode on. Select **Turn on troubleshooting mode**.

[Need updated screenshot]

2. Confirm you want to turn on troubleshooting mode for the device. 

[Need updated screenshot]
 
3. The device page shows the device is in troubleshooting mode.  

[Need updated screenshot]

## Known issues

### Unable to install application on the device

