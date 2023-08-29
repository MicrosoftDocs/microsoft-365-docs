---
title: Server migration scenarios for the new version of Microsoft Defender for Endpoint
description: Read this article to get an overview of how to migrate your servers from the previous, MMA-based solution to the current Defender for Endpoint unified solution package.
keywords: migrate server, server, 2012r2, 2016, server migration, device management, configure Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.author: macapara
ms.localizationpriority: medium
ms.date: 09/19/2022
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
---


# Server migration scenarios from the previous, MMA-based Microsoft Defender for Endpoint solution

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- Windows Server 2012 R2
- Windows Server 2016
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> [!NOTE]
> Always ensure the operating system, and Microsoft Defender Antivirus on Windows Server 2016, are fully updated before proceeding with installation or upgrade. To receive regular product improvements and fixes for the EDR Sensor component, ensure Windows Update [KB5005292](https://go.microsoft.com/fwlink/?linkid=2168277) gets applied or approved after installation. In addition, to keep protection components updated, please reference [Manage Microsoft Defender Antivirus updates and apply baselines](/microsoft-365/security/defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus#monthly-platform-and-engine-versions).

These instructions apply to the new unified solution and installer (MSI) package of Microsoft Defender for Endpoint for Windows Server 2012 R2 and Windows Server 2016. This article contains high-level instructions for various possible migration scenarios from the previous to the current solution. These high-level steps are intended as guidelines to be adjusted to the deployment and configuration tools available in your environment.

**If you are using Microsoft Defender for Cloud to perform deployment, you can automate installation and upgrade. See [Defender for Servers Plan 2 now integrates with MDE unified solution](https://techcommunity.microsoft.com/t5/microsoft-defender-for-cloud/defender-for-servers-plan-2-now-integrates-with-mde-unified/ba-p/3527534)**

> [!NOTE]
> Operating system upgrades with Microsoft Defender for Endpoint installed are not supported. Please offboard and uninstall, upgrade the operating system, then proceed with installation.

## Installer script

> [!NOTE]
> Make sure the machines you run the script on is not blocking the execution of the script. The recommended execution policy setting for PowerShell is Allsigned. This requires importing the script's signing certificate into the Local Computer Trusted Publishers store if the script is running as SYSTEM on the endpoint.

To facilitate upgrades when Microsoft Endpoint Configuration Manager is not yet available or updated to perform the automated upgrade, you can use this [upgrade script](https://github.com/microsoft/mdefordownlevelserver/archive/refs/heads/main.zip). Download it by selection the "Code" button and downloading the .zip file, then extracting install.ps1. It can help automate the following required steps:

1. Remove the OMS workspace for Microsoft Defender for Endpoint (OPTIONAL).
2. Remove System Center Endpoint Protection (SCEP) client if installed.
3. Download and install [prerequisites](configure-server-endpoints.md#prerequisites) if required.
4. Enable and update the Defender Antivirus feature on Windows Server 2016
5. Install Microsoft Defender for Endpoint.
6. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft 365 Defender](https://security.microsoft.com).

To use the script, download it to an installation directory where you have also placed the installation and onboarding packages (see [Configure server endpoints](configure-server-endpoints.md)).

EXAMPLE: .\install.ps1 -RemoveMMA <YOUR_WORKSPACE_ID> -OnboardingScript ".\WindowsDefenderATPOnboardingScript.cmd"

For more information on how to use the script, use the PowerShell command "get-help .\install.ps1".

## Microsoft Endpoint Configuration Manager migration scenarios

> [!NOTE]
> You'll need Microsoft Endpoint Configuration Manager, version 2107 or later to perform Endpoint Protection policy configuration. From [version 2207 or later](/mem/configmgr/core/plan-design/changes/whats-new-in-version-2207#improved-microsoft-defender-for-endpoint-mde-onboarding-for-windows-server-2012-r2-and-windows-server-2016) deployment and upgrades can be fully automated.

For instructions on how to migrate using Microsoft Endpoint Configuration Manager older than version 2207 please see [Migrating servers from Microsoft Monitoring Agent to the unified solution.](/microsoft-365/security/defender-endpoint/application-deployment-via-mecm)

## If you are running a non-Microsoft antivirus solution

1. Fully update the machine including Microsoft Defender Antivirus (Windows Server 2016) ensuring [prerequisites](configure-server-endpoints.md#prerequisites) have been met. For more information on the prerequisites that have to be met, see [Prerequisites for Windows Server 2016](configure-server-endpoints.md#prerequisites-for-windows-server-2016).
2. Ensure third-party antivirus management no longer pushes antivirus agents to these machines.*
3. Author your policies for the protection capabilities in Microsoft Defender for Endpoint and target those to the machine in the tool of your choice.
4. Install the Microsoft Defender for Endpoint for Windows Server 2012 R2 and 2016 package and **enable passive mode**. See [Install Microsoft Defender Antivirus using command line](configure-server-endpoints.md#install-microsoft-defender-for-endpoint-using-the-command-line).
   a. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft 365 Defender](https://security.microsoft.com).
5. Apply updates.
6. Remove your non-Microsoft antivirus software by either using the non-Microsoft antivirus console or by using Microsoft Endpoint Configuration Manager as
appropriate. Make sure to remove passive mode configuration.*

> [!TIP]
> You can use the [installer-script](server-migration.md#installer script) as part of your application to automate the above steps. To enable passive mode, apply the -Passive flag. For example, .\install.ps1 -RemoveMMA <YOUR_WORKSPACE_ID> -OnboardingScript ".\WindowsDefenderATPOnboardingScript.cmd" -Passive

*These steps only apply if you intend to replace your non-Microsoft antivirus solution. See [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](why-use-microsoft-defender-antivirus.md).

To move a machine out of passive mode, set the following key to 0:

Path: HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection
Name: ForceDefenderPassiveMode
Type: REG_DWORD
Value: 0

## If you are running System Center Endpoint Protection but are not managing the machine using Microsoft Endpoint Configuration Manager (MECM/ConfigMgr)

1. Fully update the machine including Microsoft Defender Antivirus (Windows Server 2016) ensuring [prerequisites](configure-server-endpoints.md#prerequisites) have been met.
2. Create and apply policies using Group Policy, PowerShell, or a 3rd party management solution.
3. Uninstall System Center Endpoint Protection (Windows Server 2012 R2).
4. Install Microsoft Defender for Endpoint (see [Configure server endpoints](configure-server-endpoints.md).)
5. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft 365 Defender](https://security.microsoft.com).
6. Apply updates.

> [!TIP]
> You can use the installer script to automate the above steps.

## Microsoft Defender for Cloud scenarios

### You're using Microsoft Defender for Cloud. The Microsoft Monitoring Agent (MMA) and/or Microsoft Antimalware for Azure (SCEP) are installed and you want to upgrade.

If you're using Microsoft Defender for Cloud, you can leverage the automated upgrade process. See [Protect your endpoints with Defender for Cloud's integrated EDR solution: Microsoft Defender for Endpoint](/azure/security-center/security-center-wdatp#enable-the-microsoft-defender-for-endpoint-integration).

## Group Policy configuration

For configuration using Group Policy, ensure you're using the latest ADMX files in your central store to access the correct Defender for Endpoint policy options. Please reference [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) and download the latest files **for use with Windows 10**.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
