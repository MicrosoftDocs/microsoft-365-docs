---
title: Configure the Microsoft Defender Antivirus cloud block timeout period
description: You can configure how long Microsoft Defender Antivirus will block a file from running while waiting for a cloud determination.
keywords: Microsoft Defender Antivirus, antimalware, security, defender, cloud, timeout, block, period, seconds
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: 
manager: dansimp
ms.subservice: mde
ms.topic: conceptual
ms.date: 10/18/2021
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Configure the cloud block timeout period

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

When Microsoft Defender Antivirus finds a suspicious file, it can prevent the file from running while it queries the [Microsoft Defender Antivirus cloud service](cloud-protection-microsoft-defender-antivirus.md).

The default period that the file is [blocked](configure-block-at-first-sight-microsoft-defender-antivirus.md) is 10 seconds. If you're a security administrator, you can specify more time to wait before the file is allowed to run. Extending the cloud block timeout period can help ensure there is enough time to receive a proper determination from the Microsoft Defender Antivirus cloud service.

## Prerequisites to use the extended cloud block timeout

[Block at first sight](configure-block-at-first-sight-microsoft-defender-antivirus.md) and its prerequisites must be enabled before you can specify an extended timeout period.

## Specify the extended timeout period using Microsoft Intune

You can specify the cloud block timeout period with an [endpoint security policy in Microsoft Intune](/mem/intune/protect/endpoint-security-policy).

1. Go to the Intune admin center ([https://endpoint.microsoft.com/](https://endpoint.microsoft.com/)) and sign in.

2. Select **Endpoint security**, and then under **Manage**, choose **Antivirus**.

3. Select (or create) an antivirus policy.

4. In the **Configuration settings** section, expand **Cloud protection**. Then, in the **Microsoft Defender Antivirus Extended Timeout In Seconds** box, specify the more time, in seconds, from 1 second to 50 seconds. Whatever you specify is added to the default 10 seconds.

5. (This step is optional) Make any other changes to your antivirus policy. (Need help? See [Settings for Microsoft Defender Antivirus policy in Microsoft Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-windows).)

6. Choose **Next**, and finish configuring your policy.

## Specify the extended timeout period using Group Policy

You can use Group Policy to specify an extended timeout for cloud checks.

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11))

2. Right-click the Group Policy Object you want to configure and then select **Edit**.

3. In the **Group Policy Management Editor**, go to **Computer configuration**, and then select **Administrative templates**.

3. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** \> **MpEngine**.

4. Double-click **Configure extended cloud check** and ensure the option is enabled. 

   Specify the extra amount of time to prevent the file from running while waiting for a cloud determination. Specify the extra time, in seconds, from 1 second to 50 seconds. Whatever you specify is added to the default 10 seconds.

5. Select **OK**.

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md) 
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
