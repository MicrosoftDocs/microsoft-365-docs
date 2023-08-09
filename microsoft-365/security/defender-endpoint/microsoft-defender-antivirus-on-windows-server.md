---
title: Microsoft Defender Antivirus on Windows Server
description: Learn how to enable and configure Microsoft Defender Antivirus on Windows Server 2016, Windows Server 2019, and Windows Server 2022.
keywords: windows defender, server, scep, system center endpoint protection, server 2016, current branch, server 2012
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.reviewer: pahuijbr
manager: dansimp
ms.topic: conceptual
ms.date: 04/06/2023
ms.collection: 
- m365-security
- tier2
- m365initiative-defender-endpoint
---

# Microsoft Defender Antivirus on Windows Server

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Microsoft Defender Antivirus is available in the following editions/versions of Windows Server:

- Windows Server 2022
- Windows Server 2019
- Windows Server, version 1803 or later
- Windows Server 2016
- Windows Server 2012 R2 (Requires Microsoft Defender for Endpoint)

## Setting up Microsoft Defender Antivirus on Windows Server

The process of setting up and running Microsoft Defender Antivirus on Windows Server includes the following steps:

1. [Enable the interface](#enable-the-user-interface-on-windows-server).
2. [Install Microsoft Defender Antivirus](#install-microsoft-defender-antivirus-on-windows-server).
3. [Verify Microsoft Defender Antivirus is running](#verify-microsoft-defender-antivirus-is-running).
4. [Update your antimalware Security intelligence](#update-antimalware-security-intelligence).
5. (As needed) [Submit samples](#submit-samples).
6. (As needed) [Configure automatic exclusions](#configure-automatic-exclusions).
7. (Only if necessary) [Set Windows Server to passive mode](#passive-mode-and-windows-server).

## Enable the user interface on Windows Server

> [!IMPORTANT]
> If you're using Windows Server 2012 R2, see [Options to install Microsoft Defender for Endpoint](configure-server-endpoints.md#options-to-install-the-microsoft-defender-for-endpoint-packages).

By default, Microsoft Defender Antivirus is installed and functional on Windows Server. Sometimes, the user interface (GUI) is installed by default. The GUI isn't required; you can use PowerShell, Group Policy, or other methods to manage Microsoft Defender Antivirus. However, many organizations prefer to use the GUI for Microsoft Defender Antivirus. To install the GUI, use one of the procedures in the following table:

| Procedure | What to do |
|:---|:---|
| Turn on the GUI using the Add Roles and Features Wizard | 1. See [Install roles, role services, and features by using the add Roles and Features Wizard](/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#install-roles-role-services-and-features-by-using-the-add-roles-and-features-wizard), and use the **Add Roles and Features Wizard**. <br/><br/>2. When you get to the **Features** step of the wizard, under **Windows Defender Features**, select the **GUI for Windows Defender** option. |
| Turn on the GUI using PowerShell | 1. On your Windows Server, open Windows PowerShell as an administrator. <br/><br/>2. Run the following PowerShell cmdlet: `Install-WindowsFeature -Name Windows-Defender-GUI` |

For more information, see [Getting Started with PowerShell](/powershell/scripting/learn/ps101/01-getting-started).

## Install Microsoft Defender Antivirus on Windows Server

If you need to install or reinstall Microsoft Defender Antivirus on Windows Server, use one of the procedures in the following table:

| Procedure | What to do |
|:---|:---|
| Use the Add Roles and Features Wizard to install Microsoft Defender Antivirus | 1. See [Install or Uninstall Roles, Role Services, or Features](/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#install-roles-role-services-and-features-by-using-the-add-roles-and-features-wizard), and use the **Add Roles and Features Wizard**. <br/><br/>2. When you get to the **Features** step of the wizard, select the Microsoft Defender Antivirus option. Also select the **GUI for Windows Defender** option. |
| Use PowerShell to install Microsoft Defender Antivirus | 1. On your Windows Server, open Windows PowerShell as an administrator. <br/><br/>2. Run the following PowerShell cmdlet: `Install-WindowsFeature -Name Windows-Defender` |

> [!NOTE]
> Event messages for the antimalware engine included with Microsoft Defender Antivirus can be found in [Microsoft Defender Antivirus Events](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus/).

## Verify Microsoft Defender Antivirus is running

After you've installed (or reinstalled) Microsoft Defender Antivirus, your next step is to verify that it's running. Use the PowerShell cmdlets in the following table:

| Procedure | PowerShell cmdlet |
|:---|:---|
| Verify that Microsoft Defender Antivirus is running | `Get-Service -Name windefend` |
| Verify that firewall protection is turned on | `Get-Service -Name mpssvc` |

As an alternative to PowerShell, you can use Command Prompt to verify that Microsoft Defender Antivirus is running. To do that, run the following command from a command prompt:

```cmd
sc query Windefend
```

The `sc query` command returns information about the Microsoft Defender Antivirus service. When Microsoft Defender Antivirus is running, the `STATE` value displays `RUNNING`.

To view all the services that aren't running, run the following PowerShell cmdlet:

```cmd
sc query state= all
```

## Update antimalware Security intelligence

> [!IMPORTANT]
> Beginning with [platform version 4.18.2208.0 and later](microsoft-defender-antivirus-updates.md#monthly-platform-and-engine-versions): If a server has been onboarded to Microsoft Defender for Endpoint, the "Turn off Windows Defender" [group policy](configure-endpoints-gp.md#update-endpoint-protection-configuration) setting will no longer completely disable Windows Defender Antivirus on Windows Server 2012 R2 and later. Instead, it will place it into passive mode. In addition, the [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) feature will allow a switch to active mode but not to passive mode.
> 
> - If "Turn off Windows Defender" is already in place before onboarding to Microsoft Defender for Endpoint, there will be no change and Defender Antivirus will remain disabled.
> - To switch Defender Antivirus to passive mode, even if it was disabled before onboarding, you can apply the [ForceDefenderPassiveMode configuration](switch-to-mde-phase-2.md#set-microsoft-defender-antivirus-to-passive-mode-on-windows-server) with a value of `1`. To place it into active mode, switch this value to `0` instead.
> 
> Note the modified logic for `ForceDefenderPassiveMode` when tamper protection is enabled: Once Microsoft Defender Antivirus is toggled to active mode, tamper protection will prevent it from going back into passive mode even when `ForceDefenderPassiveMode` is set to `1`.

To get your regular security intelligence updates, the Windows Update service must be running. If you use an update management service, like Windows Server Update Services (WSUS), make sure Microsoft Defender Antivirus Security intelligence updates are approved for the computers you manage.

By default, Windows Update doesn't download and install updates automatically on Windows Server 2019 or Windows Server 2022, or Windows Server 2016. You can change this configuration by using one of the following methods:

| Method | Description |
|---|---|
| **Windows Update** in Control Panel | **Install updates automatically** results in all updates being automatically installed, including Windows Defender Security intelligence updates. <br/><br/> **Download updates but let me choose whether to install them** allows Windows Defender to download and install Security intelligence updates automatically, but other updates aren't automatically installed. |
| **Group Policy** | You can set up and manage Windows Update by using the settings available in Group Policy, in the following path: **Administrative Templates\Windows Components\Windows Update\Configure Automatic Updates** |
| The **AUOptions** registry key | The following two values allow Windows Update to automatically download and install Security intelligence updates: <br/><br/> **4** - **Install updates automatically**. This value results in all updates being automatically installed, including Windows Defender Security intelligence updates. <br/><br/> **3** - **Download updates but let me choose whether to install them**. This value allows Windows Defender to download and install Security intelligence updates automatically, but other updates aren't automatically installed. |

To ensure that protection from malware is maintained, enable the following services:

- Windows Error Reporting service
- Windows Update service

The following table lists the services for Microsoft Defender Antivirus and the dependent services.

| Service Name | File Location | Description |
|---|---|---|
| Windows Defender Service (WinDefend) | `C:\Program Files\Windows Defender\MsMpEng.exe` | This service is the main Microsoft Defender Antivirus service that needs to be running always.|
| Windows Error Reporting Service (Wersvc) | `C:\WINDOWS\System32\svchost.exe -k WerSvcGroup` | This service sends error reports back to Microsoft. |
| Windows Defender Firewall (MpsSvc) | `C:\WINDOWS\system32\svchost.exe -k LocalServiceNoNetwork` | We recommend keeping the Windows Defender Firewall service enabled. |
| Windows Update (Wuauserv) | `C:\WINDOWS\system32\svchost.exe -k netsvcs`| Windows Update is needed to get Security intelligence updates and antimalware engine updates |

## Submit samples

Sample submission allows Microsoft to collect samples of potentially malicious software. To help provide continued and up-to-date protection, Microsoft researchers use these samples to analyze suspicious activities and produce updated antimalware Security intelligence. We collect program executable files, such as .exe files and .dll files. We don't collect files that contain personal data, like Microsoft Word documents and PDF files.

### Submit a file

1. Review the [submission guide](/windows/security/threat-protection/intelligence/submission-guide).

2. Visit the [sample submission portal](https://www.microsoft.com/wdsi/filesubmission), and submit your file.

### Enable automatic sample submission

To enable automatic sample submission, start a Windows PowerShell console as an administrator, and set the **SubmitSamplesConsent** value data according to one of the following settings:

|Setting|Description|
|---|---|
| **0** - **Always prompt** | The Microsoft Defender Antivirus service prompts you to confirm submission of all required files. This is the default setting for Microsoft Defender Antivirus, but isn't recommended for installations on Windows Server 2016 or 2019, or Windows Server 2022 without a GUI. |
| **1**  - **Send safe samples automatically** | The Microsoft Defender Antivirus service sends all files marked as "safe" and prompts for the remainder of the files. |
| **2** - **Never send** | The Microsoft Defender Antivirus service doesn't prompt and doesn't send any files. |
| **3** - **Send all samples automatically** | The Microsoft Defender Antivirus service sends all files without a prompt for confirmation. |

> [!NOTE]
> This option is not available for Windows Server 2012 R2. 

## Configure automatic exclusions

To help ensure security and performance, certain exclusions are automatically added based on the roles and features you install when using Microsoft Defender Antivirus on Windows Server 2016 or 2019, or Windows Server 2022.

See [Configure exclusions in Microsoft Defender Antivirus on Windows Server](configure-server-exclusions-microsoft-defender-antivirus.md).

## Passive mode and Windows Server

If you're using a non-Microsoft antivirus product as your primary antivirus solution on Windows Server, you must set Microsoft Defender Antivirus to passive mode or disabled mode manually. If your Windows Server endpoint is onboarded to Microsoft Defender for Endpoint, you can set Microsoft Defender Antivirus to passive mode. If you're not using Microsoft Defender for Endpoint, set Microsoft Defender Antivirus to disabled mode. 

> [!TIP]
> See [Microsoft Defender Antivirus compatibility with other security products](microsoft-defender-antivirus-compatibility.md).

The following table describes methods to set Microsoft Defender Antivirus to passive mode, disable Microsoft Defender Antivirus, and uninstall Microsoft Defender Antivirus:

| Procedure | Description |
|---|---|
| Set Microsoft Defender Antivirus to passive mode by using a registry key | Set the `ForceDefenderPassiveMode` registry key as follows: <br/>- Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection` <br/>- Name: `ForceDefenderPassiveMode` <br/>- Type: `REG_DWORD` <br/>- Value: `1` |
| Turn off the Microsoft Defender Antivirus user interface using PowerShell | Open Windows PowerShell as an administrator, and run the following PowerShell cmdlet: `Uninstall-WindowsFeature -Name Windows-Defender-GUI`
| Disable Microsoft Defender Antivirus Realtime Protection using PowerShell | Use the following PowerShell cmdlet: `Set-MpPreference -DisableRealtimeMonitoring $true` |
| Disable Microsoft Defender Antivirus using the Remove Roles and Features wizard | See [Install or Uninstall Roles, Role Services, or Features](/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#remove-roles-role-services-and-features-by-using-the-remove-roles-and-features-wizard), and use the **Remove Roles and Features Wizard**. <br/><br/>When you get to the **Features** step of the wizard, clear the **Windows Defender Features** option. <br/><br/> If you clear **Windows Defender** by itself under the **Windows Defender Features** section, you're prompted to remove the interface option **GUI for Windows Defender**.<br/><br/>Microsoft Defender Antivirus runs normally without the user interface, but the user interface can't be enabled if you disable the core **Windows Defender** feature. |
| Uninstall Microsoft Defender Antivirus using PowerShell | Use the following PowerShell cmdlet: `Uninstall-WindowsFeature -Name Windows-Defender` |
| Disable Microsoft Defender Antivirus using Group Policy | In your Local Group Policy Editor, navigate to **Administrative Template** > **Windows Component** > **Endpoint Protection** > **Disable Endpoint Protection**, and then select **Enabled** > **OK**. |

For more information, see [Working with Registry Keys](/powershell/scripting/samples/working-with-registry-keys).

### Are you using Windows Server 2012 R2 or Windows Server 2016?

If your Windows Server is onboarded to Microsoft Defender for Endpoint, you can run Microsoft Defender Antivirus in passive mode on Windows Server 2012 R2 and Windows Server 2016. See the following articles:

- [Options to install Microsoft Defender for Endpoint](configure-server-endpoints.md#options-to-install-the-microsoft-defender-for-endpoint-packages)

- [Microsoft Defender Antivirus compatibility with other security products](microsoft-defender-antivirus-compatibility.md)

### What happens if a non-Microsoft antivirus product is uninstalled?

If a non-Microsoft antivirus product was installed on Windows Server, Microsoft Defender Antivirus was probably set to passive mode. When the non-Microsoft antivirus product is uninstalled, Microsoft Defender Antivirus should switch to active mode automatically. However, that might not occur on certain versions of Windows Server, such as Windows Server 2016. Use the following procedure to check the status of Microsoft Defender Antivirus, and if necessary, set it to active mode:

1. Check the status of Microsoft Defender Antivirus by following the guidance in [Verify Microsoft Defender Antivirus is running](#verify-microsoft-defender-antivirus-is-running) (in this article).

2. If necessary, set Microsoft Defender Antivirus to active mode manually by following these steps:

   1. On your Windows Server device, open Registry Editor as an administrator.

   2. Go to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`.

   3. Set or define a `REG_DWORD` entry called `ForceDefenderPassiveMode`, and set its value to `0`.

   4. Reboot the device.

> [!TIP]
> If you still need help, see the following troubleshooting items:
> 
> - [Microsoft Defender Antivirus seems to be stuck in passive mode](/microsoft-365/security/defender-endpoint/switch-to-mde-troubleshooting#microsoft-defender-antivirus-seems-to-be-stuck-in-passive-mode).
> - [I'm having trouble re-enabling Microsoft Defender Antivirus on Windows Server 2016](/microsoft-365/security/defender-endpoint/switch-to-mde-troubleshooting#i-am-having-trouble-re-enabling-microsoft-defender-antivirus-on-windows-server-2016).

## See also

- [Microsoft Defender Antivirus in Windows](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender Antivirus compatibility with other security products](microsoft-defender-antivirus-compatibility.md)
- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
