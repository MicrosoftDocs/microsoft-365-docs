---
title: Troubleshoot kernel extension issues in Microsoft Defender for Endpoint on macOS
description: Troubleshoot kernel extension-related issues in Microsoft Defender for Endpoint on macOS.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, kernel, extension
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Troubleshoot kernel extension issues in Microsoft Defender for Endpoint on macOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This article provides information on how to troubleshoot issues with the kernel extension that is installed as part of Microsoft Defender for Endpoint on macOS.

Starting with macOS High Sierra (10.13), macOS requires all kernel extensions to be explicitly approved before they're allowed to run on the device.

>[!TIP]
>Kernel extensions only apply up to macOS Catalina (10.15).  Starting with macOS BigSur (11), Microsoft Defender for Endpoint on macOS uses System Extensions.

If you didn't approve the kernel extension during the deployment/installation of Microsoft Defender for Endpoint on macOS, the application displays a banner prompting you to enable it:

:::image type="content" source="images/mdatp-32-main-app-fix.png" alt-text="RTP disabled" lightbox="images/mdatp-32-main-app-fix.png":::

You can also run ```mdatp health```. It reports if real-time protection is enabled but not available. This indicates that the kernel extension isn't approved to run on your device.

```bash
mdatp health
```
```Output
...
real_time_protection_enabled                : true
real_time_protection_available              : false
...
```

The following sections provide guidance on how to address this issue, depending on the method that you used to deploy Microsoft Defender for Endpoint on macOS.

## Managed deployment

See the instructions corresponding to the management tool that you used to deploy the product:

- [JAMF-based deployment](mac-install-with-jamf.md)
- [Microsoft Intune-based deployment](mac-install-with-intune.md#create-system-configuration-profiles)

## Manual deployment

If less than 30 minutes have passed since the product was installed, navigate to **System Preferences** \> **Security & Privacy**, where you have to **Allow** system software from developers "Microsoft Corporation".

If you don't see this prompt, it means that 30 or more minutes have passed, and the kernel extension still not been approved to run on your device:

:::image type="content" source="images/mdatp-33-securityprivacysettings-noprompt.png" alt-text="Security and privacy window after the prompt expired" lightbox="images/mdatp-33-securityprivacysettings-noprompt.png":::

In this case, you need to perform the following steps to trigger the approval flow again.

1. In Terminal, attempt to install the driver. The following operation will fail, because the kernel extension wasn't approved to run on the device. However, it will trigger the approval flow again.

    ```bash
    sudo kextutil /Library/Extensions/wdavkext.kext
    ```

    ```Output
    Kext rejected due to system policy: <OSKext 0x7fc34d528390 [0x7fffa74aa8e0]> { URL = "file:///Library/StagedExtensions/Library/Extensions/wdavkext.kext/", ID = "com.microsoft.wdavkext" }
    Kext rejected due to system policy: <OSKext 0x7fc34d528390 [0x7fffa74aa8e0]> { URL = "file:///Library/StagedExtensions/Library/Extensions/wdavkext.kext/", ID = "com.microsoft.wdavkext" }
    Diagnostics for /Library/Extensions/wdavkext.kext:
    ```

2. Open **System Preferences** \> **Security & Privacy** from the menu. (Close it first, if it's opened.)

3. **Allow** system software from developers "Microsoft Corporation"

4. In Terminal, install the driver again. This time the operation will succeed:

    ```bash
    sudo kextutil /Library/Extensions/wdavkext.kext
    ```

    The banner should disappear from the Defender application, and ```mdatp health``` should now report that real-time protection is both enabled and available:

    ```bash
    mdatp health
    ```

    ```Output
    ...
    real_time_protection_enabled                : true
    real_time_protection_available              : true
    ...
    ```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
