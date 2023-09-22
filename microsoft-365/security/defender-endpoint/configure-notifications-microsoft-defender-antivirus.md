---
title: Configure Microsoft Defender Antivirus notifications
description: Learn how to configure and customize both standard and other Microsoft Defender Antivirus notifications on endpoints.
keywords: notifications, defender, antivirus, endpoint, management, admin
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.topic: conceptual
ms.author: deniseb
ms.custom: nextgen
ms.date: 10/18/2021
ms.reviewer: 
manager: dansimp
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Configure Microsoft Defender Antivirus notifications that appear on endpoints

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

In Windows 10 and Windows 11, application notifications about malware detection and remediation are more robust, consistent, and concise. Microsoft Defender Antivirus notifications appear on endpoints when scans are completed and threats are detected. Notifications follow both scheduled and manually triggered scans. These notifications also appear in the **Notification Center**, and a summary of scans and threat detections appear at regular time intervals.

If you're part of your organization's security team, you can configure how notifications appear on endpoints, such as notifications that prompt for a system reboot or that indicate a threat has been detected and remediated.

## Configure antivirus notifications using Group Policy or the Windows Security app

You can configure the display of additional notifications, such as recent threat detection summaries, in the [Windows Security app](microsoft-defender-security-center-antivirus.md) and with Group Policy.

> [!NOTE]
> In Windows 10, version 1607 the feature was called **Enhanced notifications** and was configured under **Windows Settings** \> **Update & security** \> **Windows Defender**. In Group Policy settings for all versions of Windows 10 and Windows 11, the notification feature is called **Enhanced notifications**.

### Use Group Policy to disable additional notifications

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

2. Right-click the Group Policy Object you want to configure, and then select **Edit**.

3. In the **Group Policy Management Editor** go to **Computer configuration**.

4. Select **Administrative templates**.

5. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** > **Reporting**.

6. Double-click **Turn off enhanced notifications**, and set the option to **Enabled**. Then select **OK**. This will prevent additional notifications from appearing.

> [!IMPORTANT]
> Disabling additional notifications will not disable critical notifications, such as threat detection and remediation alerts.

### Use the Windows Security app to disable additional notifications

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Security**.

2. Select **Virus & threat protection** tile (or the shield icon on the left menu bar) and, then select **Virus & threat protection settings**

3. Scroll to the **Notifications** section and select **Change notification settings**.

4. Slide the switch to **Off** or **On** to disable or enable additional notifications.

> [!IMPORTANT]
> Disabling additional notifications will not disable critical notifications, such as threat detection and remediation alerts.

## Configure standard notifications on endpoints using Group Policy

You can use Group Policy to:

- Display additional, customized text on endpoints when the user needs to perform an action
- Hide all notifications on endpoints
- Hide reboot notifications on endpoints

Hiding notifications can be useful in situations where you can't hide the entire Microsoft Defender Antivirus interface. See [Prevent users from seeing or interacting with the Microsoft Defender Antivirus user interface](prevent-end-user-interaction-microsoft-defender-antivirus.md) for more information. Hiding notifications will only occur on endpoints to which the policy has been deployed. Notifications related to actions that must be taken (such as a reboot) will still appear on the [Microsoft Configuration Manager Endpoint Protection monitoring dashboard and reports](/configmgr/protect/deploy-use/monitor-endpoint-protection). 

To add custom contact information to endpoint notifications, see [Customize the Windows Security app for your organization](/windows/security/threat-protection/windows-defender-security-center/windows-defender-security-center).

### Use Group Policy to hide notifications

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

2. Right-click the Group Policy Object you want to configure, and then select **Edit**.

3. In the **Group Policy Management Editor** go to **Computer configuration** and then select **Administrative templates**.

4. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** \> **Client interface**. 

5. Double-click **Suppress all notifications** and set the option to **Enabled**. 

6. Select **OK**. This will prevent additional notifications from appearing.

### Use Group Policy to hide reboot notifications

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)).

2. Right-click the Group Policy Object you want to configure and then select **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus** \> **Client interface**.

5. Double-click **Suppresses reboot notifications** and set the option to **Enabled**. 

5. Select **OK**. This will prevent additional notifications from appearing.

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
