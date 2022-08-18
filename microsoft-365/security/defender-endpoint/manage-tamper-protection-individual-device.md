---
title: Manage tamper protection on an individual device
ms.reviewer: mattcall, pahuijbr, hayhov, oogunrinde
manager: dansimp
description: Turn tamper protection on or off for an individual device.
keywords: malware, defender, antivirus, tamper protection
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: ITPro
ms.topic: article
author: denisebmsft
ms.author: deniseb
ms.custom: 
- nextgen
- admindeeplinkDEFENDER
ms.technology: mde
ms.collection: 
- M365-security-compliance
- m365initiative-defender-endpoint
---

# Manage tamper protection on an individual device

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

> [!NOTE]
> Tamper protection blocks attempts to modify Microsoft Defender Antivirus settings through the registry.
> To help ensure that tamper protection doesn't interfere with non-Microsoft security products or enterprise installation scripts that modify these settings, go to **Windows Security** and update **Security intelligence** to version 1.287.60.0 or later. (See [Security intelligence updates](https://www.microsoft.com/wdsi/definitions).)
> After you've made this update, tamper protection continues to protect your registry settings, and logs attempts to modify them without returning errors.

If you are a home user, or you are not subject to settings managed by a security team, you can use the Windows Security app to manage tamper protection. You must have appropriate admin permissions on your device to do change security settings, such as tamper protection.

Here's what you see in the Windows Security app:

:::image type="content" source="images/tamperprotectionturnedon.png" alt-text="Turn tamper protection turned on in Windows 10 Home" lightbox="images/tamperprotectionturnedon.png":::

1. Select **Start**, and start typing *Security*. In the search results, select **Windows Security**.

2. Select **Virus & threat protection** \> **Virus & threat protection settings**.

3. Set **Tamper Protection** to **On** or **Off**.

## Are you using Windows Server 2012 R2, 2016, or Windows version 1709, 1803, or 1809?

If you are using Windows Server 2012 R2 using the modern unified solution, Windows Server 2016, Windows 10 version 1709, 1803, or [1809](/windows/release-health/status-windows-10-1809-and-windows-server-2019), you won't see **Tamper Protection** in the Windows Security app. Instead, you can use PowerShell to determine whether tamper protection is enabled.

On Windows Server 2016, the Settings app will not accurately reflect the status of real-time protection when tamper protection is enabled.

### Use PowerShell to determine whether tamper protection and real-time protection are turned on

1. Open the Windows PowerShell app.

2. Use the [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus?preserve-view=true&view=win10-ps) PowerShell cmdlet.

3. In the list of results, look for `IsTamperProtected` or `RealTimeProtectionEnabled`. (A value of *true* means tamper protection is enabled.)