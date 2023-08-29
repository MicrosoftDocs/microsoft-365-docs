---
title: Microsoft Defender Antivirus in the Windows Security app
description: With Microsoft Defender Antivirus now included in the Windows Security app, you can review, compare, and perform common tasks.
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 08/28/2023
---

# Microsoft Defender Antivirus in the Windows Security app

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Beginning with Windows 10, version 1703 and later, Microsoft Defender Antivirus settings are viewable in the Windows Security app. See [Windows Security](/windows/security/operating-system-security/system-security/windows-defender-security-center/windows-defender-security-center) for more information about security features and settings that are built into Windows.

> [!IMPORTANT]
> Disabling the Windows Security app does not disable Microsoft Defender Antivirus or [Windows Defender Firewall](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security). These capabilities are disabled or set to passive mode when non-Microsoft antivirus/antimalware software is installed on the device and kept up to date.
> If you do disable the Windows Security app, or configure its associated Group Policy settings to prevent it from starting or running, the Windows Security app might display stale or inaccurate information about any antivirus or firewall products that are installed on the device.It might also prevent Microsoft Defender Antivirus from re-enabling when you uninstall any non-Microsoft antivirus/antimalware software.
> Disabling the Windows Security app can significantly lower the level protection of your device and could lead to malware infection.

## Review virus and threat protection settings in the Windows Security app

1. Open the Windows Security app by searching the start menu for **Windows Security**.

2. Select **Virus & threat protection**.

3. Use one or more of the subsequent sections to perform tasks using the Windows Security app.

> [!NOTE]
> If these settings are configured and deployed using Group Policy, the settings described in this section will be greyed-out and unavailable for use on individual endpoints. Changes made through a Group Policy Object must first be deployed to individual endpoints before the setting will be updated in Windows Settings. The [Configure end-user interaction with Microsoft Defender Antivirus](configure-end-user-interaction-microsoft-defender-antivirus.md) topic describes how local policy override settings can be configured.

## Run a scan with the Windows Security app

1. Open the Windows Security app by searching the start menu for **Security**, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Select **Quick scan**. Or, to run a full scan, select **Scan options**, and then select an option, such as **Full scan**.

## Review the security intelligence update version and download the latest updates in the Windows Security app

:::image type="content" source="../../media/wdav-wdsc-defs.png" alt-text="Security intelligence version number" lightbox="../../media/wdav-wdsc-defs.png":::

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Select **Virus & threat protection updates**. The currently installed version is displayed along with some information about when it was downloaded. You can check your current against the latest version available for manual download, or review the change log for that version. See [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](/microsoft-365/security/defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus).

4. Select **Check for updates** to download new protection updates (if there are any).

## Ensure Microsoft Defender Antivirus is enabled in the Windows Security app

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Select **Virus & threat protection settings**.

4. Toggle the **Real-time protection** switch to **On**.

    > [!NOTE]
    > If you switch **Real-time protection** off, it will automatically turn back on after a short delay. This is to ensure you are protected from malware and threats.
    > If you install another antivirus product, Microsoft Defender Antivirus automatically disables itself and is indicated as such in the Windows Security app. A setting will appear that will allow you to enable [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md).

## Add exclusions for Microsoft Defender Antivirus in the Windows Security app

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Under **Virus & threat protection settings**, select **Manage settings**.

4. Under **Exclusions**, select **Add or remove exclusions**.

5. Select the plus icon (**+**) to choose the type and set the options for each exclusion.

The following table summarizes exclusion types and what happens:

|Exclusion type|Defined by|What happens|
|---|---|---|
|**File**|Location <br/>Example: `c:\sample\sample.test`|The specific file is skipped by Microsoft Defender Antivirus.|
|**Folder**|Location <br/>Example: `c:\test\sample`|All items in the specified folder are skipped by Microsoft Defender Antivirus.|
|**File type**|File extension <br/>Example: `.test`|All files with the `.test` extension anywhere on your device are skipped by Microsoft Defender Antivirus.|
|**Process**|Executable file path <br>Example: `c:\test\process.exe`|The specific process and any files that are opened by that process are skipped by Microsoft Defender Antivirus.|

To learn more, see the following resources:

- [Configure and validate exclusions based on file extension and folder location](./configure-extension-file-exclusions-microsoft-defender-antivirus.md)
- [Configure exclusions for files opened by processes](./configure-process-opened-file-exclusions-microsoft-defender-antivirus.md)

## Review threat detection history in the Windows Defender for Cloud app

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Select **Protection history**. Any recent items are listed.

## Set ransomware protection and recovery options

1. Open the Windows Security app by searching the start menu for *Security*, and then selecting **Windows Security**.

2. Select the **Virus & threat protection** tile (or the shield icon on the left menu bar).

3. Under **Ransomware protection**, select **Manage ransomware protection**.

4. To change **Controlled folder access** settings, see [Protect important folders with Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders).

5. To set up ransomware recovery options, select **Set up** under **Ransomware data recovery** and follow the instructions for linking or setting up your OneDrive account so you can easily recover from a ransomware attack.

## See also

- [Microsoft Defender Antivirus](microsoft-defender-antivirus-in-windows-10.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
