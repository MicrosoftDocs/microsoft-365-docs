---
title: Hide the Microsoft Defender Antivirus interface
description: You can hide virus and threat protection tile in the Windows Security app.
keywords: ui lockdown, headless mode, hide app, hide settings, hide interface
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
ms.technology: mde
ms.topic: article
---

# Prevent users from seeing or interacting with the Microsoft Defender Antivirus user interface

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

You can use Group Policy to prevent users on endpoints from seeing the Microsoft Defender Antivirus interface. You can also prevent them from pausing scans.

## Hide the Microsoft Defender Antivirus interface

In Windows 10, versions 1703, hiding the interface will hide Microsoft Defender Antivirus notifications and prevent the Virus & threat protection tile from appearing in the Windows Security app.

With the setting set to **Enabled**:

:::image type="content" source="../../media/wdav-headless-mode-off-1703.png" alt-text="Screenshot of Windows Security without the shield icon and virus and threat protection sections.":::

With the setting set to **Disabled** or not configured:

:::image type="content" source="../../media/wdav-headless-mode-1703.png" alt-text="Screenshot of Windows Security with shield icon and threat protection sections.":::

>[!NOTE]
>Hiding the interface will also prevent Microsoft Defender Antivirus notifications from appearing on the endpoint. Microsoft Defender for Endpoint notifications will still appear. You can also individually [configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md)

In earlier versions of Windows 10, the setting will hide the Windows Defender client interface. If the user attempts to open it, they will receive a warning that says, "Your system administrator has restricted access to this app."

:::image type="content" source="../../media/wdav-headless-mode-1607.png" alt-text="Warning message when headless mode is enabled in Windows 10, versions earlier than 1703":::

## Use Group Policy to hide the Microsoft Defender AV interface from users

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/desktop/gpmc/group-policy-management-console-portal), right-click the Group Policy Object you want to configure and click **Edit**.

2. Using the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components > Microsoft Defender Antivirus > Client interface**.

5. Double-click the **Enable headless UI mode** setting and set the option to **Enabled**. Click **OK**. 

See [Prevent users from locally modifying policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md) for more options on preventing users form modifying protection on their PCs.

## Prevent users from pausing a scan

You can prevent users from pausing scans, which can be helpful to ensure scheduled or on-demand scans are not interrupted by users.

> [!NOTE]
> This setting is not supported on Windows 10.

### Use Group Policy to prevent users from pausing a scan

1. On your Group Policy management machine, open the [Group Policy Management Console](/previous-versions/windows/desktop/gpmc/group-policy-management-console-portal), right-click the Group Policy Object you want to configure and click **Edit**.

2. Using the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components** > **Microsoft Defender Antivirus** > **Scan**.

5. Double-click the **Allow users to pause scan** setting and set the option to **Disabled**. Click **OK**. 

## Related articles

- [Configure the notifications that appear on endpoints](configure-notifications-microsoft-defender-antivirus.md)

- [Configure end-user interaction with Microsoft Defender Antivirus](configure-end-user-interaction-microsoft-defender-antivirus.md)

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
