---
title: Symantec to Microsoft Defender for Endpoint - Phase 3, Onboarding
description: This is Phase 3, Onboarding, of migrating from Symantec to Microsoft Defender for Endpoint
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
  - m365solution-symantecmigrate
ms.topic: article
ms.date: 03/03/2021
ms.custom: migrationguides
ms.reviewer: depicker, yongrhee, chriggs
---

# Migrate from Symantec - Phase 3: Onboard to Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

|[![Phase 1: Prepare](images/phase-diagrams/prepare.png)](symantec-to-microsoft-defender-atp-prepare.md)<br/>[Phase 1: Prepare](symantec-to-microsoft-defender-atp-prepare.md) |[![Phase 2: Set up](images/phase-diagrams/setup.png)](symantec-to-microsoft-defender-atp-setup.md)<br/>[Phase 2: Set up](symantec-to-microsoft-defender-atp-setup.md) |![Phase 3: Onboard](images/phase-diagrams/onboard.png)<br/>Phase 3: Onboard |
|--|--|--|
|| |*You are here!* |


**Welcome to Phase 3 of [migrating from Symantec to Microsoft Defender for Endpoint](symantec-to-microsoft-defender-endpoint-migration.md#the-migration-process)**. This migration phase includes the following steps:

1. [Onboard devices to Microsoft Defender for Endpoint](#onboard-devices-to-microsoft-defender-for-endpoint).
2. [Run a detection test](#run-a-detection-test).
3. [Uninstall Symantec](#uninstall-symantec).
4. [Make sure Microsoft Defender for Endpoint is in active mode](#make-sure-microsoft-defender-for-endpoint-is-in-active-mode).

## Onboard devices to Microsoft Defender for Endpoint

1. Go to the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)) and sign in.
2. Choose **Settings** > **Device management** > **Onboarding**. 
3. In the **Select operating system to start onboarding process** list, select an operating system. 
4. Under **Deployment method**, select an option. Follow the links and prompts to onboard your organization's devices. Need help? See [Onboarding methods](#onboarding-methods) (in this article).

### Onboarding methods
 
Deployment methods vary, depending on which operating system is selected. Refer to the resources listed in the table below to get help with onboarding.

|Operating system  |Method  |
|---------|---------|
|Windows 10     |- [Group Policy](configure-endpoints-gp.md)<br/>- [Configuration Manager](configure-endpoints-sccm.md)<br/>- [Mobile Device Management (Intune)](configure-endpoints-mdm.md)<br/>- [Local script](configure-endpoints-script.md) <br/><br/>**NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune.         |
|- Windows 8.1 Enterprise <br/>- Windows 8.1 Pro <br/>- Windows 7 SP1 Enterprise <br/>- Windows 7 SP1 Pro     | [Microsoft Monitoring Agent](onboard-downlevel.md#install-and-configure-microsoft-monitoring-agent-mma-to-report-sensor-data-to-microsoft-defender-for-endpoint)<br/><br/>**NOTE**: Microsoft Monitoring Agent is now Azure Log Analytics agent. To learn more, see [Log Analytics agent overview](https://docs.microsoft.com/azure/azure-monitor/platform/log-analytics-agent).        |
|- Windows Server 2019 and later <br/>- Windows Server 2019 core edition <br/>- Windows Server version 1803 and later |- [Local script](configure-endpoints-script.md) <br/>- [Group Policy](configure-endpoints-gp.md) <br/>- [Configuration Manager](/configure-endpoints-sccm.md) <br/>- [System Center Configuration Manager](configure-endpoints-sccm.md#onboard-devices-using-system-center-configuration-manager)<br/>- [VDI onboarding scripts for non-persistent devices](configure-endpoints-vdi.md) <br/><br/>**NOTE**: A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, Microsoft Endpoint Configuration Manager, or Intune.    |
|- Windows Server 2016 <br/>- Windows Server 2012 R2 <br/>- Windows Server 2008 R2 SP1  |- [Microsoft Defender Security Center](configure-server-endpoints.md)<br/>- [Azure Defender](https://docs.microsoft.com/azure/security-center/security-center-wdatp) |
|macOS<br/>- 10.15 (Catalina)<br/>- 10.14 (Mojave)<br/>- 10.13 (High Sierra)<br/><br/>iOS<br/><br/>Linux:<br/>- RHEL 7.2+<br/>- CentOS Linux 7.2+<br/>- Ubuntu 16 LTS, or higher LTS<br/>- SLES 12+<br/>- Debian 9+<br/>- Oracle Linux 7.2 |[Onboard non-Windows devices](configure-endpoints-non-windows.md)  |

## Run a detection test

To verify that your onboarded devices are properly connected to Microsoft Defender for Endpoint, you can run a detection test.

|Operating system  |Guidance  |
|---------|---------|
|- Windows 10 <br/>- Windows Server 2019 <br/>- Windows Server, version 1803 <br/>- Windows Server 2016 <br/>- Windows Server 2012 R2     |See [Run a detection test](run-detection-test.md). <br/><br/>Visit the Microsoft Defender for Endpoint demo scenarios site ([https://demo.wd.microsoft.com](https://demo.wd.microsoft.com)) and try one or more of the scenarios. For example, try the **Cloud-delivered protection** demo scenario.         |
|macOS<br/>- 10.15 (Catalina)<br/>- 10.14 (Mojave)<br/>- 10.13 (High Sierra)     |Download and use the DIY app at [https://aka.ms/mdatpmacosdiy](https://aka.ms/mdatpmacosdiy). <br/><br/>For more information, see [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md).        |
|Linux:<br/>- RHEL 7.2+<br/>- CentOS Linux 7.2+<br/>- Ubuntu 16 LTS, or higher LTS<br/>- SLES 12+<br/>- Debian 9+<br/>- Oracle Linux 7.2 |1. Run the following command, and look for a result of **1**: <br/>`mdatp health --field real_time_protection_enabled`. <br/><br/>2. Open a Terminal window, and run the following command: <br/>`curl -o ~/Downloads/eicar.com.txt https://www.eicar.org/download/eicar.com.txt`. <br/><br/>3. Run the following command to list any detected threats: <br/>`mdatp threat list`. <br/><br/>For more information, see [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md). |

## Uninstall Symantec

Now that you have onboarded your organization's devices to Microsoft Defender for Endpoint, your next step is to uninstall Symantec.

1. [Disable Tamper Protection](https://knowledge.broadcom.com/external/article?legacyId=tech192023) in Symantec.
2. Delete the uninstall password for Symantec:<br/>
   1. On your Windows devices, open Registry Editor as an administrator.
   2. Go to `HKEY_LOCAL_MACHINE\SOFTWARE\Symantec\Symantec Endpoint Protection\SMC`.
   3. Look for an entry named **SmcInstData**. 
   4. Right-click the item, and then choose **Delete**. 
3. Remove Symantec from your devices. If you need help with this, see Broadcom's documentation. Here are a few Broadcom resources: 
   - [Uninstall Symantec Endpoint Protection](https://knowledge.broadcom.com/external/article/156148/uninstall-symantec-endpoint-protection.html)
   - Windows devices: [Manually uninstall Endpoint Protection 14 clients on Windows](https://knowledge.broadcom.com/external/article?articleId=170040)
   - macOS computers: [Remove Symantec software for Mac using RemoveSymantecMacFiles](https://knowledge.broadcom.com/external/article?articleId=151387)
   - Linux devices: [Frequently Asked Questions for Endpoint Protection on Linux](https://knowledge.broadcom.com/external/article?articleId=162054)

## Make sure Microsoft Defender for Endpoint is in active mode

Now that you have uninstalled Symantec, your next step is to make sure that Microsoft Defender Antivirus and Microsoft Defender for Endpoint are enabled and in active mode.

To do this, visit the Microsoft Defender for Endpoint demo scenarios site ([https://demo.wd.microsoft.com](https://demo.wd.microsoft.com)). Try one or more of the demo scenarios on that page, including at least the following:
- Cloud-delivered protection
- Potentially Unwanted Applications (PUA)
- Network Protection (NP)

> [!IMPORTANT]
> If you are using Windows Server 2016, you might have to start Microsoft Defender Antivirus manually. You can do this by using the PowerShell cmdlet `mpcmdrun.exe -wdenable` on the device.

## Next steps

**Congratulations**! You have completed your [migration from Symantec to Microsoft Defender for Endpoint](symantec-to-microsoft-defender-endpoint-migration.md#the-migration-process)! 
- [Visit your security operations dashboard](security-operations-dashboard.md) in the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)). 
- [Manage Microsoft Defender for Endpoint, post migration](manage-atp-post-migration.md).
