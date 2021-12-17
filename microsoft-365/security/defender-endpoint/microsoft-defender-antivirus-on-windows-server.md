---
title: Microsoft Defender Antivirus on Windows Server
description: Learn how to enable and configure Microsoft Defender Antivirus on Windows Server 2016, Windows Server 2019, and Windows Server 2022.
keywords: windows defender, server, scep, system center endpoint protection, server 2016, current branch, server 2012
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.reviewer: pahuijbr, shwjha
manager: dansimp
ms.technology: mde
ms.topic: article
ms.date: 10/18/2021
ms.collection: M365-security-compliance
---

# Microsoft Defender Antivirus on Windows Server

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Microsoft Defender Antivirus is available in the following editions/versions of Windows Server:

- Windows Server 2022
- Windows Server 2019
- Windows Server, version 1803 or later
- Windows Server 2016
- Windows Server 2012 R2 (Requires Microsoft Defender for Endpoint)

In some instances, Microsoft Defender Antivirus is referred to as *Endpoint Protection*; however, the protection engine is the same. Although the functionality, configuration, and management are largely the same for [Microsoft Defender Antivirus on Windows 10](microsoft-defender-antivirus-windows.md) and Windows 11, there are a few key differences on Windows Server:

- On Windows Server, [automatic exclusions](configure-server-exclusions-microsoft-defender-antivirus.md) are applied based on your defined Server Role.

- On Windows Server, if you are running a non-Microsoft antivirus/antimalware solution, Microsoft Defender Antivirus does not go into either passive mode or disabled mode automatically. However, you can set Microsoft Defender Antivirus to passive or disabled mode manually.

## Setting up Microsoft Defender Antivirus on Windows Server

The process of setting up and running Microsoft Defender Antivirus on a server platform includes several steps:

1. [Enable the interface](#enable-the-user-interface-on-windows-server).
2. [Install Microsoft Defender Antivirus](#install-microsoft-defender-antivirus-on-windows-server).
3. [Verify Microsoft Defender Antivirus is running](#verify-microsoft-defender-antivirus-is-running).
4. [Update your antimalware Security intelligence](#update-antimalware-security-intelligence).
5. (As needed) [Submit samples](#submit-samples).
6. (As needed) [Configure automatic exclusions](#configure-automatic-exclusions).
7. (Only if necessary) Set [Windows Server to passive mode](#passive-mode-and-windows-server).

## Enable the user interface on Windows Server

By default, Microsoft Defender Antivirus is installed and functional on Windows Server. Sometimes, the user interface (GUI) is installed by default, but the GUI is not required. You can use PowerShell, Group Policy, or other methods to manage Microsoft Defender Antivirus.

If the GUI is not installed on your server, and you want to install it, either the **Add Roles and Features** wizard or PowerShell cmdlets.

> [!NOTE]
> This option is not available for Windows Server 2012 R2. For more information, see [Options to install Microsoft Defender for Endpoint](configure-server-endpoints.md#options-to-install-microsoft-defender-for-endpoint).

### Turn on the GUI using the Add Roles and Features Wizard

1. See [Install roles, role services, and features by using the add Roles and Features Wizard](/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#install-roles-role-services-and-features-by-using-the-add-roles-and-features-wizard), and use the **Add Roles and Features Wizard**.

2. When you get to the **Features** step of the wizard, under **Windows Defender Features**, select the **GUI for Windows Defender** option.

   In Windows Server 2016, the **Add Roles and Features Wizard** looks like this:

   ![Add roles and feature wizard showing the GUI for Windows Defender option.](images/server-add-gui.png)

   In Windows Server 2019 and Windows Server 2022, the **Add Roles and Feature Wizard** is similar.

### Turn on the GUI using PowerShell

The following PowerShell cmdlet will enable the interface:

```powershell
Install-WindowsFeature -Name Windows-Defender-GUI
```

## Install Microsoft Defender Antivirus on Windows Server

If you need to install or reinstall Microsoft Defender Antivirus on Windows Server, you can do that using either the **Add Roles and Features Wizard** or PowerShell.

### Use the Add Roles and Features Wizard to install Microsoft Defender Antivirus

1. Refer to [this article](/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#install-roles-role-services-and-features-by-using-the-add-roles-and-features-wizard), and use the **Add Roles and Features Wizard**.

2. When you get to the **Features** step of the wizard, select the Microsoft Defender Antivirus option. Also select the **GUI for Windows Defender** option.

### Use PowerShell to install Microsoft Defender Antivirus

To use PowerShell to install Microsoft Defender Antivirus, run the following cmdlet:

```powershell
Install-WindowsFeature -Name Windows-Defender
```

Event messages for the antimalware engine included with Microsoft Defender Antivirus can be found in [Microsoft Defender AV Events](troubleshoot-microsoft-defender-antivirus.md).

## Verify Microsoft Defender Antivirus is running

Once Microsoft Defender Antivirus is installed, your next step is to verify that it's running. On your Windows Server endpoint, run the following PowerShell cmdlet:

```powershell
Get-Service -Name windefend
```

To verify that firewall protection is turned on, run the following PowerShell cmdlet:

```powershell
Get-Service -Name mpssvc
```

As an alternative to PowerShell, you can use Command Prompt to verify that Microsoft Defender Antivirus is running. To do that, run the following command from a command prompt:

```console
sc query Windefend
```

The `sc query` command returns information about the Microsoft Defender Antivirus service. When Microsoft Defender Antivirus is running, the `STATE` value displays `RUNNING`.

## Update antimalware Security intelligence

To get updated antimalware security intelligence, you must have the Windows Update service running. If you use an update management service, like Windows Server Update Services (WSUS), make sure that updates for Microsoft Defender Antivirus Security intelligence are approved for the computers you manage.

By default, Windows Update does not download and install updates automatically on Windows Server 2019 or Windows Server 2022, or Windows Server 2016. You can change this configuration by using one of the following methods:

<br/><br/>

| Method | Description |
|---|---|
| **Windows Update** in Control Panel | **Install updates automatically** results in all updates being automatically installed, including Windows Defender Security intelligence updates. <br/><br/> **Download updates but let me choose whether to install them** allows Windows Defender to download and install Security intelligence updates automatically, but other updates are not automatically installed. |
| **Group Policy** | You can set up and manage Windows Update by using the settings available in Group Policy, in the following path: **Administrative Templates\Windows Components\Windows Update\Configure Automatic Updates** |
| The **AUOptions** registry key | The following two values allow Windows Update to automatically download and install Security intelligence updates: <br/><br/> **4** - **Install updates automatically**. This value results in all updates being automatically installed, including Windows Defender Security intelligence updates. <br/><br/> **3** - **Download updates but let me choose whether to install them**. This value allows Windows Defender to download and install Security intelligence updates automatically, but other updates are not automatically installed. |

To ensure that protection from malware is maintained, we recommend that you enable the following services:

- Windows Error Reporting service
- Windows Update service

The following table lists the services for Microsoft Defender Antivirus and the dependent services.

<br/><br/>


| Service Name | File Location | Description |
|---|---|---|
| Windows Defender Service (WinDefend) | `C:\Program Files\Windows Defender\MsMpEng.exe` | This is the main Microsoft Defender Antivirus service that needs to be running at all times.|
| Windows Error Reporting Service (Wersvc) | `C:\WINDOWS\System32\svchost.exe -k WerSvcGroup` | This service sends error reports back to Microsoft. |
| Windows Defender Firewall (MpsSvc) | `C:\WINDOWS\system32\svchost.exe -k LocalServiceNoNetwork` | We recommend leaving the Windows Defender Firewall service enabled. |
| Windows Update (Wuauserv) | `C:\WINDOWS\system32\svchost.exe -k netsvcs`| Windows Update is needed to get Security intelligence updates and antimalware engine updates |

## Submit samples

Sample submission allows Microsoft to collect samples of potentially malicious software. To help provide continued and up-to-date protection, Microsoft researchers use these samples to analyze suspicious activities and produce updated antimalware Security intelligence. We collect program executable files, such as .exe files and .dll files. We do not collect files that contain personal data, like Microsoft Word documents and PDF files.

### Submit a file

1. Review the [submission guide](/windows/security/threat-protection/intelligence/submission-guide).
2. Visit the [sample submission portal](https://www.microsoft.com/wdsi/filesubmission), and submit your file.

### Enable automatic sample submission

To enable automatic sample submission, start a Windows PowerShell console as an administrator, and set the **SubmitSamplesConsent** value data according to one of the following settings:

<br/><br/>

|Setting|Description|
|---|---|
| **0** - **Always prompt** | The Microsoft Defender Antivirus service prompts you to confirm submission of all required files. This is the default setting for Microsoft Defender Antivirus, but is not recommended for installations on Windows Server 2016 or 2019, or Windows Server 2022 without a GUI. |
| **1**  - **Send safe samples automatically** | The Microsoft Defender Antivirus service sends all files marked as "safe" and prompts for the remainder of the files. |
| **2** - **Never send** | The Microsoft Defender Antivirus service does not prompt and does not send any files. |
| **3** - **Send all samples automatically** | The Microsoft Defender Antivirus service sends all files without a prompt for confirmation. |

> [!NOTE]
> This option is not available for Windows Server 2012 R2. 


## Configure automatic exclusions

To help ensure security and performance, certain exclusions are automatically added based on the roles and features you install when using Microsoft Defender Antivirus on Windows Server 2016 or 2019, or Windows Server 2022.

See [Configure exclusions in Microsoft Defender Antivirus on Windows Server](configure-server-exclusions-microsoft-defender-antivirus.md).

## Passive mode and Windows Server

If you are using a non-Microsoft antivirus product as your primary antivirus solution on Windows Server, you must set Microsoft Defender Antivirus to passive mode or disabled mode.

For more information, see [Install Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server.md#install-microsoft-defender-antivirus-on-windows-server).


### Set Microsoft Defender Antivirus to passive mode using a registry key

You can set Microsoft Defender Antivirus to passive mode by setting the following registry key:
- Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`
- Name: `ForceDefenderPassiveMode`
- Type: `REG_DWORD`
- Value: `1`

### Disable Microsoft Defender Antivirus using the Remove Roles and Features wizard

1. See [Install or Uninstall Roles, Role Services, or Features](/windows-server/administration/server-manager/install-or-uninstall-roles-role-services-or-features#remove-roles-role-services-and-features-by-using-the-remove-roles-and-features-wizard), and use the **Remove Roles and Features Wizard**.

2. When you get to the **Features** step of the wizard, clear the **Windows Defender Features** option.

    If you clear **Windows Defender** by itself under the **Windows Defender Features** section, you will be prompted to remove the interface option **GUI for Windows Defender**.

    Microsoft Defender Antivirus will still run normally without the user interface, but the user interface cannot be enabled if you disable the core **Windows Defender** feature.

### Turn off the Microsoft Defender Antivirus user interface using PowerShell

To turn off the Microsoft Defender Antivirus GUI, use the following PowerShell cmdlet:

```powershell
Uninstall-WindowsFeature -Name Windows-Defender-GUI
```

### Are you using Windows Server 2012 R2 or Windows Server 2016?

You can now run Microsoft Defender Antivirus in passive mode on Windows Server 2012 R2 and and Windows Server 2016. For more information, see [Options to install Microsoft Defender for Endpoint](configure-server-endpoints.md#options-to-install-microsoft-defender-for-endpoint).

<br/><br/>

| Procedure | Description |
|---|---|
| Disable Microsoft Defender Antivirus using Group Policy | In your Local Group Policy Editor, navigate to **Administrative Template** > **Windows Component** > **Endpoint Protection** > **Disable Endpoint Protection**, and then select **Enabled** > **OK**. |
| Disable Microsoft Defender Antivirus using a registry key | To use the the [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) registry key, navigate to `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`, and set or create a DWORD entry called `DisableAntiSpyware`. Set its value to `1` (which sets the registry key's value to *true*). |
| Disable Microsoft Defender Antivirus using PowerShell | Use the following PowerShell cmdlet: `Set-MpPreference -DisableRealtimeMonitoring $true` |
| Uninstall Microsoft Defender Antivirus using PowerShell | Use the following PowerShell cmdlet: `Uninstall-WindowsFeature -Name Windows-Defender` |


## See also

- [Microsoft Defender Antivirus in Windows](microsoft-defender-antivirus-windows.md)
- [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md)
