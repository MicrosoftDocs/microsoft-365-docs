---
title: Configure Microsoft Defender Antivirus notifications
description: Learn how to configure and customize both standard and additional Microsoft Defender Antivirus notifications on endpoints.
keywords: notifications, defender, antivirus, endpoint, management, admin
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

# Configure the notifications that appear on endpoints

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

In Windows 10, application notifications about malware detection and remediation are more robust, consistent, and concise.

Notifications appear on endpoints when manually triggered and scheduled scans are completed and threats are detected. These notifications also appear in the **Notification Center**, and a summary of scans and threat detections appear at regular time intervals.

You can also configure how standard notifications appear on endpoints, such as notifications for reboot or when a threat has been detected and remediated.

## Configure the additional notifications that appear on endpoints

You can configure the display of additional notifications, such as recent threat detection summaries, in the [Windows Security app](microsoft-defender-security-center-antivirus.md) and with Group Policy.

> [!NOTE]
> In Windows 10, version 1607 the feature was called **Enhanced notifications** and could be configured under **Windows Settings** > **Update & security** > **Windows Defender**. In Group Policy settings in all versions of Windows 10, it is called **Enhanced notifications**.

> [!IMPORTANT]
> Disabling additional notifications will not disable critical notifications, such as threat detection and remediation alerts.

**Use the Windows Security app to disable additional notifications:**

1. Open the Windows Security app by clicking the shield icon in the task bar or searching the start menu for **Defender**.

2. Click the **Virus & threat protection** tile (or the shield icon on the left menu bar) and then the **Virus & threat protection settings** label:

    ![Screenshot of the Virus & threat protection settings label in the Windows Security app](images/defender/wdav-protection-settings-wdsc.png)

3. Scroll to the **Notifications** section and click **Change notification settings**.

4. Slide the switch to **Off** or **On** to disable or enable additional notifications.

**Use Group Policy to disable additional notifications:**

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components > Microsoft Defender Antivirus > Reporting**.

5. Double-click **Turn off enhanced notifications** and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.

## Configure standard notifications on endpoints

You can use Group Policy to:

- Display additional, customized text on endpoints when the user needs to perform an action
- Hide all notifications on endpoints
- Hide reboot notifications on endpoints

Hiding notifications can be useful in situations where you can't hide the entire Microsoft Defender Antivirus interface. See [Prevent users from seeing or interacting with the Microsoft Defender Antivirus user interface](prevent-end-user-interaction-microsoft-defender-antivirus.md) for more information. 

> [!NOTE]
> Hiding notifications will only occur on endpoints to which the policy has been deployed. Notifications related to actions that must be taken (such as a reboot) will still appear on the [Microsoft Endpoint Manager Endpoint Protection monitoring dashboard and reports](/configmgr/protect/deploy-use/monitor-endpoint-protection). 

See [Customize the Windows Security app for your organization](/windows/security/threat-protection/windows-defender-security-center/windows-defender-security-center) for instructions to add custom contact information to the notifications that users see on their machines.

**Use Group Policy to hide notifications:**

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure, and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration** and click **Administrative templates**.

3. Expand the tree to **Windows components > Microsoft Defender Antivirus > Client interface**. 

4. Double-click **Suppress all notifications** and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.

**Use Group Policy to hide reboot notifications:**

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), right-click the Group Policy Object you want to configure and click **Edit**.

2. In the **Group Policy Management Editor** go to **Computer configuration**.

3. Click **Administrative templates**.

4. Expand the tree to **Windows components > Microsoft Defender Antivirus > Client interface**.

5. Double-click **Suppresses reboot notifications** and set the option to **Enabled**. Click **OK**. This will prevent additional notifications from appearing.

## Related topics

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Configure end-user interaction with Microsoft Defender Antivirus](configure-end-user-interaction-microsoft-defender-antivirus.md)