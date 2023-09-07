---
title: Configure remediation for Microsoft Defender Antivirus detections
description: Configure what Microsoft Defender Antivirus should do when it detects a threat, and how long quarantined files should be retained in the quarantine folder
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.topic: conceptual
ms.custom: nextgen
ms.date: 09/06/2023
ms.reviewer:
manager: dansimp
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Configure remediation for Microsoft Defender Antivirus detections


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

When Microsoft Defender Antivirus runs a scan, it attempts to remediate or remove threats that are detected. Remediation actions can include removing a file, sending it to quarantine, or allowing it to remain. This article includes information and links to resources about specifying what actions should be taken when threats are detected on devices. You can choose from several methods, such as:

- [Microsoft Intune](#configure-remediation-options-using-intune)
- [Microsoft Configuration Manager](#configure-remediation-options-using-configuration-manager)
- [Group Policy](#configure-remediation-options-using-group-policy)
- [PowerShell or Windows Management Instrumentation (WMI)](#configure-remediation-options-using-powershell-or-wmi)

> [!IMPORTANT]
> Microsoft Defender Antivirus detects and remediates files based on many factors. Sometimes, completing a remediation requires a reboot. Even if the detection is later determined to be a false positive, the reboot must be completed to ensure all additional remediation steps have been completed.
>
> If you are certain Microsoft Defender Antivirus quarantined a file based on a false positive, you can restore the file from quarantine after the device reboots. See [Restore quarantined files in Microsoft Defender Antivirus](restore-quarantined-files-microsoft-defender-antivirus.md). To avoid this problem in the future, you can exclude files from the scans. See [Configure and validate exclusions for Microsoft Defender Antivirus scans](configure-exclusions-microsoft-defender-antivirus.md).

Also see [Configure remediation-required scheduled full Microsoft Defender Antivirus scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md#remed) for more remediation-related settings.

## Configure remediation options using Intune

1. As a global or security administrator, go to the [Intune admin center](https://intune.microsoft.com/) and sign in.

2. Under **Manage**, choose **Antivirus**.

3. Either create a new policy, or edit an existing policy using the following settings:

   - Platform: **Windows 10, Windows 11, and Windows Server**
   - Profile: **Microsoft Defender Antivirus**

4. For configuration settings, expand **Defender**, scroll down to **Allow On Access Protection**. and set it to **Allowed**.

5. Under **Allow On Access Protection**, select a remediation action for each level:

   - High severity threats
   - Severe threats
   - Moderate severity threats
   - Low severity threats

6. Specify the device groups that should receive this policy (such as **All Devices**).

7. Review your settings, and then choose **Save**.

For more information about antivirus policies in Intune, see [Antivirus policy for endpoint security in Intune](/mem/intune/protect/endpoint-security-antivirus-policy).

## Configure remediation options using Configuration Manager

If you're using Configuration Manager, see the following articles:

- [Configure Endpoint Protection in Configuration Manager](/mem/configmgr/protect/deploy-use/endpoint-protection-configure)
- [Default Actions Settings](/mem/configmgr/protect/deploy-use/endpoint-antimalware-policies#default-actions-settings)

## Configure remediation options using Group Policy

1. On your Group Policy management computer, open the [Group Policy Management Console](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731212(v=ws.11)), and edit the Group Policy Object you want to configure.

2. In the **Group Policy Management Editor**, go to **Computer configuration** and then select **Administrative templates**.

3. Expand the tree to **Windows components** \> **Microsoft Defender Antivirus**.

4. Using the following table, edit the policy as needed.

   |Setting|Description|Default setting (if not configured)|
   |---|---|---|
   |Scan <br/>Create a system restore point.|A system restore point is created each day before cleaning or scanning is attempted. |Disabled|
   |Scan<br/>Turn on removal of items from scan history folder.|Specify how many days items should be kept in the scan history.|30 days|
   |Root<br/>Turn off routine remediation.|Specify whether Microsoft Defender Antivirus automatically remediates threats, or whether to prompt the user.|Disabled. Threats are remediated automatically.|
   |Quarantine<br/>Configure removal of items from Quarantine folder.|Specify how many days items should be kept in quarantine before being removed.|Items are kept in the quarantine folder indefinitely and aren't automatically removed. |
   |Threats<br/>Specify threat alert levels at which default action shouldn't be taken when detected.|Every threat that is detected by Microsoft Defender Antivirus is assigned a threat level (low, medium, high, or severe). You can use this setting to define how all threats for each of the threat levels should be remediated (quarantined, removed, or ignored). |Not applicable|
   |Threats<br/>Specify threats upon which default action shouldn't be taken when detected.|Specify how specific threats (using their threat ID) should be remediated. You can specify whether the specific threat should be quarantined, removed, or ignored.|Not applicable|

5. Select **OK**.

## Configure remediation options using PowerShell or WMI

You can also use the [`Set-MpPreference` PowerShell cmdlet](/powershell/module/defender/set-mppreference) or [`MSFT_MpPreference` WMI class](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal) to configure these settings.

## See also

- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Defender for Endpoint on Android features](android-configure.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
