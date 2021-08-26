---
title: Enable and configure Microsoft Defender Antivirus protection capabilities
description: Enable and configure Microsoft Defender Antivirus real-time protection features such as behavior monitoring, heuristics, and machine-learning
keywords: antivirus, real-time protection, rtp, machine-learning, behavior monitoring, heuristics
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.technology: mde
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.topic: article
ms.date: 07/29/2021
manager: dansimp
ms.custom: nextgen
---

# Enable and configure Microsoft Defender Antivirus always-on protection in Group Policy


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

Always-on protection consists of real-time protection, behavior monitoring, and heuristics to identify malware based on known suspicious and malicious activities.

These activities include events, such as processes making unusual changes to existing files, modifying or creating automatic startup registry keys and startup locations (also known as autostart extensibility points, or ASEPs), and other changes to the file system or file structure.

## Enable and configure always-on protection in Group Policy

You can use **Local Group Policy Editor** to enable and configure Microsoft Defender Antivirus always-on protection settings.

To enable and configure always-on protection:

1. Open **Local Group Policy Editor**, as follows:

    1. In your Windows 10 taskbar search box, type **gpedit**.

    2. Under **Best match**, select **Edit group policy** to launch **Local Group Policy Editor**.

       ![GPEdit taskbar search result](images/gpedit-search.png)

2. In the left pane of **Local Group Policy Editor**, expand the tree to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus**.

3. Configure the Microsoft Defender Antivirus antimalware service policy settings, as follows:

   1. In the **Microsoft Defender Antivirus** details pane on right, double-click the policy setting as specified in the following table:

      <br>

      ****

      |Setting|Default setting|
      |---|---|
      |Allow antimalware service to start up with normal priority <p> You can lower the priority of the Microsoft Defender Antivirus engine. Lowering the priority might be useful in cases where you want to have as lean a startup process as possible; however, taking this action could affect endpoint protection. Proceed with caution.|Enabled
      |Allow antimalware service to remain running always <p> If protection updates have been disabled, you can set Microsoft Defender Antivirus to still run. Disabling protection updates reduces endpoint protection.|Disabled|
      |

   2. Configure the setting as appropriate, and select **OK**.

   3. Repeat the previous steps for each setting in the table.

4. Configure the Microsoft Defender Antivirus real-time protection policy settings, as follows:

    1. In the **Microsoft Defender Antivirus** details pane, double-click **Real-time Protection**. Or, from the **Microsoft Defender Antivirus** tree on left pane, select **Real-time Protection**.

    2. In the **Real-time Protection** details pane on right, double-click the policy setting as specified in [Real-time protection policy settings](#real-time-protection-policy-settings) (later in this article).

    3. Configure the setting as appropriate, and select **OK**.

    4. Repeat the previous steps for each setting in the table.

5. Configure the Microsoft Defender Antivirus scanning policy setting, as follows:

   1. From the **Microsoft Defender Antivirus** tree on left pane, select **Scan**.

      ![Microsoft Defender Antivirus Scan options](images/gpedit-windows-defender-antivirus-scan.png)

   2. In the **Scan** details pane on right, double-click the policy setting as specified in the following table:


      <br>

      ****

      |Setting|Default setting|
      |---|---|
      |Turn on heuristics <p> Heuristic protection will disable or block suspicious activity immediately before the Microsoft Defender Antivirus engine is asked to detect the activity.|Enabled|
      |

   3. Configure the setting as appropriate, and select **OK**.

6. Close **Local Group Policy Editor**.

### Real-time protection policy settings

<br>

****

|Setting|Default setting|
|---|---|
|Turn on behavior monitoring <p> The antivirus engine will monitor file processes, file and registry changes, and other events on your endpoints for suspicious and known malicious activity.|Enabled|
|Scan all downloaded files and attachments <p> Downloaded files and attachments are automatically scanned. This scan  operates in addition to the Windows Defender SmartScreen filter, which scans files before and during downloading.|Enabled|
|Monitor file and program activity on your computer <p> The Microsoft Defender Antivirus engine makes note of any file changes (file writes, such as moves, copies, or modifications) and general program activity (programs that are opened or running and that cause other programs to run).|Enabled|
|Turn on raw volume write notifications <p> Information about raw volume writes will be analyzed by behavior monitoring.|Enabled|
|Turn on process scanning whenever real-time protection is enabled <p> You can independently enable the Microsoft Defender Antivirus engine to scan running processes for suspicious modifications or behaviors. This is useful if you have temporarily disabled real-time protection and want to automatically scan processes that started while it was disabled.|Enabled|
|Define the maximum size of downloaded files and attachments to be scanned <p> You can define the size in kilobytes.|Enabled|
|Configure local setting override for turn on behavior monitoring <p> Configure a local override for the configuration of behavior monitoring. This setting can only be set by Group Policy. If you enable this setting, the local preference setting will take priority over Group Policy. If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.|Enabled|
|Configure local setting override for scanning all downloaded files and attachments <p> Configure a local override for the configuration of scanning for all downloaded files and attachments. This setting can only be set by Group Policy. If you enable this setting, the local preference setting will take priority over Group Policy. If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.|Enabled|
|Configure local setting override for monitoring file and program activity on your computer <p> Configure a local override for the configuration of monitoring for file and program activity on your computer. This setting can only be set by Group Policy. If you enable this setting, the local preference setting will take priority over Group Policy. If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.|Enabled|
|Configure local setting override to turn on real-time protection <p> Configure a local override for the configuration to turn on real-time protection. This setting can only be set by Group Policy. If you enable this setting, the local preference setting will take priority over Group Policy. If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.|Enabled|
|Configure local setting override for monitoring for incoming and outgoing file activity <p> Configure a local override for the configuration of monitoring for incoming and outgoing file activity. This setting can only be set by Group Policy. If you enable this setting, the local preference setting will take priority over Group Policy. If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.|Enabled|
|Configure monitoring for incoming and outgoing file and program activity <p> Specify whether monitoring should occur on incoming, outgoing, both, or neither direction. This action is relevant for Windows Server installations where you have defined specific servers or Server Roles that see large amounts of file changes in only one direction and you want to improve network performance. Fully updated endpoints (and servers) on a network will see little performance impact irrespective of the number or direction of file changes.|Enabled (both directions)|
|

## Disable real-time protection in Group Policy

> [!WARNING]
> Disabling real-time protection drastically reduces the protection on your endpoints and is not recommended.

The main real-time protection capability is enabled by default, but you can disable it by using **Local Group Policy Editor**.

### To disable real-time protection in Group policy

1. Open **Local Group Policy Editor**.

   1. In your Windows 10 taskbar search box, type **gpedit**.
   2. Under **Best match**, select **Edit group policy** to launch **Local Group Policy Editor**.

2. In the left pane of **Local Group Policy Editor**, expand the tree to **Computer Configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Real-time Protection**.

3. In the **Real-time Protection** details pane on right, double-click **Turn off real-time protection**.

   ![Turn off real-time protection](images/gpedit-turn-off-real-time-protection.png)

4. In the **Turn off real-time protection** setting window, set the option to **Enabled**.

   ![Turn off real-time protection enabled](images/gpedit-turn-off-real-time-protection-enabled.png)

5. select **OK**.

6. Close **Local Group Policy Editor**.

## See also

- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
