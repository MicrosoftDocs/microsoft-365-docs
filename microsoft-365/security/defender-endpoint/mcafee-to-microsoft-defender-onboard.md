---
title: McAfee to Microsoft Defender for Endpoint - Onboard
description: This is phase 3, Onboard, for migrating from McAfee to Microsoft Defender for Endpoint.
keywords: migration, Microsoft Defender for Endpoint, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.technology: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-McAfeemigrate
  - m365solution-scenario
ms.custom: migrationguides
ms.topic: article
ms.date: 05/14/2021
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
---

# Migrate from McAfee - Phase 3: Onboard to Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


|[![Phase 1: Prepare](images/phase-diagrams/prepare.png)](mcafee-to-microsoft-defender-prepare.md)<br/>[Phase 1: Prepare](mcafee-to-microsoft-defender-prepare.md) |[![Phase 2: Set up](images/phase-diagrams/setup.png)](mcafee-to-microsoft-defender-setup.md)<br/>[Phase 2: Set up](mcafee-to-microsoft-defender-setup.md) |![Phase 3: Onboard](images/phase-diagrams/onboard.png)<br/>Phase 3: Onboard |
|--|--|--|
|| |*You are here!* |

**Welcome to Phase 3 of [migrating from McAfee Endpoint Security (McAfee) to Microsoft Defender for Endpoint](mcafee-to-microsoft-defender-migration.md#the-migration-process)**. This migration phase includes the following steps:

1. [Onboard devices to Microsoft Defender for Endpoint](#onboard-devices-to-microsoft-defender-for-endpoint).

2. [Run a detection test](#run-a-detection-test).

3. [Confirm that Microsoft Defender Antivirus is in passive mode](#confirm-that-microsoft-defender-antivirus-is-in-passive-mode).

4. [Get updates for Microsoft Defender Antivirus](#get-updates-for-microsoft-defender-antivirus).

5. [Uninstall McAfee](#uninstall-mcafee).

6. [Make sure Defender for Endpoint is working correctly](#make-sure-defender-for-endpoint-is-working-correctly).

## Onboard devices to Microsoft Defender for Endpoint

1. Go to the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)) and sign in.

2. Choose **Settings** > **Device management** > **Onboarding**. 

3. In the **Select operating system to start onboarding process** list, select an operating system. 

4. Under **Deployment method**, select an option. Follow the links and prompts to onboard your organization's devices. Need help? See [Onboarding methods](#onboarding-methods) (in this article).

### Onboarding methods
 
Deployment methods vary, depending on which operating system is selected. Refer to the resources listed in the table below to get help with onboarding.

| Operating system  |Method  |
|---------|---------|
| Windows 10     | [Group Policy](configure-endpoints-gp.md)<p>[Configuration Manager](configure-endpoints-sccm.md)<p>[Mobile Device Management (Intune)](configure-endpoints-mdm.md)<p>[Local script](configure-endpoints-script.md) <br/>**NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune.         |
| Windows 8.1 Enterprise <p>Windows 8.1 Pro <p>Windows 7 SP1 Enterprise<p>Windows 7 SP1 Pro     | [Microsoft Monitoring Agent](onboard-downlevel.md)<br/>**NOTE**: Microsoft Monitoring Agent is now Azure Log Analytics agent. To learn more, see [Log Analytics agent overview](/azure/azure-monitor/platform/log-analytics-agent).        |
| Windows Server 2019 and later<p>Windows Server 2019 core edition<p>Windows Server version 1803 and later | [Local script](configure-endpoints-script.md)<p>[Group Policy](configure-endpoints-gp.md)<p>[Configuration Manager](configure-endpoints-sccm.md)<p>[System Center Configuration Manager](configure-endpoints-sccm.md)<p>[VDI onboarding scripts for non-persistent devices](configure-endpoints-vdi.md) <br/>**NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune.    |
| Windows Server 2016 <p>Windows Server 2012 R2<p>Windows Server 2008 R2 SP1  | [Microsoft Defender Security Center](configure-server-endpoints.md)<p>[Azure Defender](/azure/security-center/security-center-wdatp) |
|macOS:<p>11.3.1 (Big Sur)<p>10.15 (Catalina)<p>10.14 (Mojave) |[Onboard non-Windows devices](configure-endpoints-non-windows.md)  |
|iOS |[Onboard non-Windows devices](configure-endpoints-non-windows.md)  |
|Linux:<p>RHEL 7.2+<p>CentOS Linux 7.2+<p>Ubuntu 16 LTS, or higher LTS<p>SLES 12+<p>Debian 9+<p>Oracle Linux 7.2 |[Onboard non-Windows devices](configure-endpoints-non-windows.md)  |

## Run a detection test

To verify that your onboarded devices are properly connected to Microsoft Defender for Endpoint, you can run a detection test.

|Operating system  |Guidance  |
|---------|---------|
| Windows 10<p>Windows Server 2019 <p>Windows Server, version 1803 <p>Windows Server 2016 <p>Windows Server 2012 R2     |See [Run a detection test](run-detection-test.md). <p>Visit the Microsoft Defender for Endpoint demo scenarios site ([https://demo.wd.microsoft.com](https://demo.wd.microsoft.com)) and try one or more of the scenarios. For example, try the **Cloud-delivered protection** demo scenario.         |
|macOS<p>11.3.1 (Big Sur)<p>10.15 (Catalina)<p>10.14 (Mojave)     |Download and use the DIY app at [https://aka.ms/mdatpmacosdiy](https://aka.ms/mdatpmacosdiy). <p>For more information, see [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md).        |
|Linux:<p>RHEL 7.2+<p>CentOS Linux 7.2+<p>Ubuntu 16 LTS, or higher LTS<p>SLES 12+<p>Debian 9+<p>Oracle Linux 7.2 |1. Run the following command, and look for a result of **1**: <br/>`mdatp health --field real_time_protection_enabled`. <p>2. Open a Terminal window, and run the following command: <br/>`curl -o ~/Downloads/eicar.com.txt https://www.eicar.org/download/eicar.com.txt`. <p>3. Run the following command to list any detected threats: <br/>`mdatp threat list`. <p>For more information, see [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md). |

## Confirm that Microsoft Defender Antivirus is in passive mode

Now that your endpoints have been onboarded to Defender for Endpoint, your next step is to make sure Microsoft Defender Antivirus is running in passive mode. You can use either Command Prompt or PowerShell to perform this task, as described in the following table:

|Method  |What to do  |
|---------|---------|
|Command Prompt     |1. On a Windows device, open Command Prompt as an administrator.<p> 2. Type `sc query windefend`, and then press Enter.<p> 3. Review the results to confirm that Microsoft Defender Antivirus is running in passive mode.         |
|PowerShell     |1. On a Windows device, open Windows PowerShell as an administrator.<p> 2. Run the [Get-MpComputerStatus](/powershell/module/defender/Get-MpComputerStatus) cmdlet. <p> 3. In the list of results, look for either **AMRunningMode: Passive Mode** or **AMRunningMode: SxS Passive Mode**.|

> [!NOTE]
> You might see *Windows Defender Antivirus* instead of *Microsoft Defender Antivirus* in some versions of Windows.

### Set Microsoft Defender Antivirus on Windows Server to passive mode manually

To set Microsoft Defender Antivirus to passive mode on Windows Server, version 1803 or newer, or Windows Server 2019, follow these steps:

1. Open Registry Editor, and then navigate to
`Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`.

2. Edit (or create) a DWORD entry called **ForcePassiveMode**, and specify the following settings:

   - Set the DWORD's value to `1`.
   - Under **Base**, select **Hexadecimal**.
 
   > [!NOTE]
   > You can use other methods to set the registry key, such as the following:
   > - Group Policy Preference
   > - Local Group Policy Object tool
   > - A package in Configuration Manager

### Start Microsoft Defender Antivirus on Windows Server 2016

If you are using Windows Server 2016, you might have to start Microsoft Defender Antivirus manually. You can do this by using the PowerShell cmdlet `mpcmdrun.exe -wdenable` on the device.

## Get updates for Microsoft Defender Antivirus

Keeping Microsoft Defender Antivirus up to date is critical to assure your devices have the latest technology and features needed to protect against new malware and attack techniques, even if Microsoft Defender Antivirus is running in [passive mode](microsoft-defender-antivirus-compatibility.md).

There are two types of updates related to keeping Microsoft Defender Antivirus up to date:
- Security intelligence updates
- Product updates

To get your updates, follow the guidance in [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md).


## Uninstall McAfee

Now that you have onboarded your organization's devices to Microsoft Defender for Endpoint, your next step is to uninstall McAfee. To get help with this step, go to your McAfee ServicePortal ([http://mysupport.mcafee.com](http://mysupport.mcafee.com)).

## Make sure Defender for Endpoint is working correctly

Now that you have uninstalled McAfee, your next step is to make sure that Microsoft Defender Antivirus and endpoint detection and response are enabled and in active mode.

To do this, visit the Microsoft Defender for Endpoint demo scenarios site ([https://demo.wd.microsoft.com](https://demo.wd.microsoft.com)). Try one or more of the demo scenarios on that page, including at least the following:
- Cloud-delivered protection
- Potentially Unwanted Applications (PUA)
- Network Protection (NP)

> [!IMPORTANT]
> If you are using Windows Server 2016, you might have to start Microsoft Defender Antivirus manually. You can do this by using the PowerShell cmdlet `mpcmdrun.exe -wdenable` on the device.

## Next steps

**Congratulations**! You have completed your [migration from McAfee to Microsoft Defender for Endpoint](mcafee-to-microsoft-defender-migration.md#the-migration-process)! 

- [Visit your security operations dashboard](security-operations-dashboard.md) in the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)). 
- [Manage Microsoft Defender for Endpoint, post migration](manage-atp-post-migration.md).
