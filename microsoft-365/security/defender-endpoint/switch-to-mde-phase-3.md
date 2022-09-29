---
title: Switch to Microsoft Defender for Endpoint - Onboard
description: Make the switch to Microsoft Defender for Endpoint. Onboard devices and then uninstall your non-Microsoft solution.
keywords: migration, Microsoft Defender for Endpoint, edr
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-migratetomdatp
  - highpri
ms.custom: 
- migrationguides
- admindeeplinkDEFENDER
ms.topic: article
ms.date: 09/22/2022
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
search.appverid: met150
---

# Switch to Microsoft Defender for Endpoint - Phase 3: Onboard

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

| [![Phase 1: Prepare3.](images/phase-diagrams/prepare.png#lightbox)](switch-to-mde-phase-1.md)<br/>[Phase 1: Prepare](switch-to-mde-phase-1.md) | [![Phase 2: Set up](images/phase-diagrams/setup.png#lightbox)](switch-to-mde-phase-2.md)<br/>[Phase 2: Set up](switch-to-mde-phase-2.md) | ![Phase 3: Onboard](images/phase-diagrams/onboard.png#lightbox)<br/>Phase 3: Onboard |
|--|--|--|
|| |*You are here!* |

**Welcome to Phase 3 of [switching to Defender for Endpoint](switch-to-mde-overview.md#the-migration-process)**. This migration phase includes the following steps:

1. [Onboard devices to Defender for Endpoint](#onboard-devices-to-microsoft-defender-for-endpoint).
2. [Run a detection test](#run-a-detection-test).
3. [Confirm that Microsoft Defender Antivirus is in passive mode on your endpoints](#confirm-that-microsoft-defender-antivirus-is-in-passive-mode-on-your-endpoints).
4. [Get updates for Microsoft Defender Antivirus](#get-updates-for-microsoft-defender-antivirus).
5. [Uninstall your non-Microsoft solution](#uninstall-your-non-microsoft-solution).
6. [Make sure Defender for Endpoint is working correctly](#make-sure-defender-for-endpoint-is-working-correctly).

## Onboard devices to Microsoft Defender for Endpoint

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. Choose **Settings** \> **Endpoints** \> **Onboarding** (under **Device management**).

3. In the **Select operating system to start onboarding process** list, select an operating system.

4. Under **Deployment method**, select an option. Follow the links and prompts to onboard your organization's devices. Need help? See [Onboarding methods](#onboarding-methods) (in this article).

> [!NOTE]
> If something goes wrong while onboarding, see [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md). That article describes how to resolve onboarding issues and common errors on endpoints.

### Onboarding methods

Deployment methods vary, depending on operating system and preferred methods. The following table lists resources to help you onboard to Defender for Endpoint:

|Operating systems  |Methods  |
|---------|---------|
|Windows 10 or later<br/><br/>Windows Server 2019 or later<br/><br/>Windows Server, version 1803 or later<br/><br/>Windows Server 2012 R2 and 2016<sup>[[1](#fn1)]<sup>  |   [Local script (up to 10 devices)](configure-endpoints-script.md)<br><br/>   [Group Policy](configure-endpoints-gp.md)<br/><br/>[Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)<br/><br/>[Microsoft Endpoint Manager/ Mobile Device Management (Intune)](configure-endpoints-mdm.md)<br>    [VDI scripts](configure-endpoints-vdi.md) <br><br> **NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune. |
|Windows Server 2008 R2 SP1 | [Microsoft Monitoring Agent (MMA)](onboard-downlevel.md#install-and-configure-microsoft-monitoring-agent-mma)  or [Microsoft Defender for Cloud](/azure/security-center/security-center-wdatp) <br><br> **NOTE**: Microsoft Monitoring Agent is now Azure Log Analytics agent. To learn more, see [Log Analytics agent overview](/azure/azure-monitor/platform/log-analytics-agent).  |
|Windows 8.1 Enterprise<br/><br/>Windows 8.1 Pro<br/><br/>Windows 7 SP1 Pro<br/><br/>Windows 7 SP1| [Microsoft Monitoring Agent (MMA)](onboard-downlevel.md) <br><br> **NOTE**: Microsoft Monitoring Agent is now Azure Log Analytics agent. To learn more, see [Log Analytics agent overview](/azure/azure-monitor/platform/log-analytics-agent).  
| macOS (see [System requirements](microsoft-defender-endpoint-mac.md) | [Local script](mac-install-manually.md)<br/><br/>[Microsoft Endpoint Manager](mac-install-with-intune.md)<br/><br/>[JAMF Pro](mac-install-with-jamf.md)<br/><br/>[Mobile Device Management](mac-install-with-other-mdm.md)   |
| Linux (see [System requirements](microsoft-defender-endpoint-linux.md#system-requirements)) |  [Local script](linux-install-manually.md) <br><br/> [Puppet](linux-install-with-puppet.md) <br><br/> [Ansible](linux-install-with-ansible.md)|  
| iOS | [Microsoft Endpoint Manager](ios-install.md)     |
|Android  | [Microsoft Endpoint Manager](android-intune.md)  | 

(<a id="fn1">1</a>) Windows Server 2016 and Windows Server 2012 R2 will need to be onboarded using the instructions in [Onboard Windows servers](configure-server-endpoints.md#windows-server-2012-r2-and-windows-server-2016).

## Run a detection test

To verify that your onboarded devices are properly connected to Defender for Endpoint, you can run a detection test.

|Operating system|Guidance|
|---|---|
|Windows 10 or later<br/><br/>Windows Server 2022<br/><br/>Windows Server 2019<br/><br/>Windows Server, version 1803, or later<br/><br/>Windows Server 2016<br/><br/>Windows Server 2012 R2|See [Run a detection test](run-detection-test.md).|
|macOS (see [System requirements](microsoft-defender-endpoint-mac.md)|Download and use the DIY app at <https://aka.ms/mdatpmacosdiy>. <br/><br/> For more information, see [Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md).|
|Linux (see [System requirements](microsoft-defender-endpoint-linux.md#system-requirements))|1. Run the following command, and look for a result of **1**: `mdatp health --field real_time_protection_enabled`.<br/><br/>2. Open a Terminal window, and run the following command: `curl -o ~/Downloads/eicar.com.txt https://www.eicar.org/download/eicar.com.txt`.<br/><br/>3. Run the following command to list any detected threats: `mdatp threat list`.<br/><br/>For more information, see [Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md).|

## Confirm that Microsoft Defender Antivirus is in passive mode on your endpoints

Now that your endpoints have been onboarded to Defender for Endpoint, your next step is to make sure Microsoft Defender Antivirus is running in passive mode. You can use one of several methods, as described in the following table:

|Method|What to do|
|---|---|
|Command Prompt|1. On a Windows device, open Command Prompt.<br/><br/>2. Type `sc query windefend`, and then press Enter.<br/><br/>3. Review the results to confirm that Microsoft Defender Antivirus is running in passive mode.|
|PowerShell|1. On a Windows device, open Windows PowerShell as an administrator.<br/><br/>2. Run following PowerShell cmdlet: `Get-MpComputerStatus|select AMRunningMode`. <br/><br/>3. Review the results. You should see **Passive mode**.|
|Windows Security app|1. On a Windows device, open the Windows Security app.<br/><br/>2. Select **Virus & threat protection**.<br/><br/>3. Under **Who's protecting me?** select **Manage providers**.<br/><br/>4. On the **Security providers** page, under **Antivirus**, look for **Microsoft Defender Antivirus is turned on**.|
|Task Manager|1. On a Windows device, open the Task Manager app.<br/><br/>2. Select the **Details** tab. Look for **MsMpEng.exe** in the list.|

> [!NOTE]
> You might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus* in some versions of Windows.
> To learn more about passive mode and active mode, see [More details about Microsoft Defender Antivirus states](microsoft-defender-antivirus-compatibility.md#more-details-about-microsoft-defender-antivirus-states).

### Set Microsoft Defender Antivirus on Windows Server to passive mode manually

To set Microsoft Defender Antivirus to passive mode on Windows Server, version 1803 or newer, or Windows Server 2019, or Windows Server 2022, follow these steps:

1. Open Registry Editor, and then navigate to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`.

2. Edit (or create) a DWORD entry called **ForceDefenderPassiveMode**, and specify the following settings:

   - Set the DWORD's value to **1**.

   - Under **Base**, select **Hexadecimal**.

> [!NOTE]
> You can use other methods to set the registry key, such as the following:
>
> - [Group Policy Preference](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn581922(v=ws.11))
> - [Local Group Policy Object tool](/windows/security/threat-protection/security-compliance-toolkit-10#what-is-the-local-group-policy-object-lgpo-tool)
> - [A package in Configuration Manager](/mem/configmgr/apps/deploy-use/packages-and-programs)

### Start Microsoft Defender Antivirus on Windows Server 2016

If you are using Windows Server 2016, you might have to start Microsoft Defender Antivirus manually. You can perform this task by using the PowerShell cmdlet `mpcmdrun.exe -wdenable` on the device.

## Get updates for Microsoft Defender Antivirus

Keeping Microsoft Defender Antivirus up to date is critical to assure your devices have the latest technology and features needed to protect against new malware and attack techniques, even if Microsoft Defender Antivirus is running in passive mode. (See [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md).)

There are two types of updates related to keeping Microsoft Defender Antivirus up to date:

- Security intelligence updates

- Product updates

To get your updates, follow the guidance in [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).

## Uninstall your non-Microsoft solution

If at this point you have:

- Onboarded your organization's devices to Defender for Endpoint, and

- Microsoft Defender Antivirus is installed and enabled,

Then your next step is to uninstall your non-Microsoft antivirus, antimalware, and endpoint protection solution. When you uninstall your non-Microsoft solution, Microsoft Defender Antivirus switches from passive mode to active mode. In most cases, this happens automatically. 

> [!IMPORTANT]
> If, for some reason, Microsoft Defender Antivirus does not go into active mode after you have uninstalled your non-Microsoft antivirus/antimalware solution, see [Microsoft Defender Antivirus seems to be stuck in passive mode](switch-to-mde-troubleshooting.md#microsoft-defender-antivirus-seems-to-be-stuck-in-passive-mode).

To get help with uninstalling your non-Microsoft solution, contact their technical support team.

## Make sure Defender for Endpoint is working correctly

Now that you have onboarded to Defender for Endpoint, and you have uninstalled your former non-Microsoft solution, your next step is to make sure that Defender for Endpoint working correctly. 

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Endpoints** > **Device inventory**. There, you'll be able to see protection status for devices.

To learn more, see [Device inventory](machines-view-overview.md).

## Next steps

**Congratulations**! You have completed your [migration to Defender for Endpoint](switch-to-mde-overview.md#the-migration-process)!


- [Manage Defender for Endpoint, post migration](manage-mde-post-migration.md).
