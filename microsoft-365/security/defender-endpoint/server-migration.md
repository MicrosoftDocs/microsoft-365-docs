---
title: Server migration scenarios for the new version of Microsoft Defender for Endpoint
description: Read this article to get an overview of how to migrate your servers from the previous, MMA-based solution to the current Defender for Endpoint unified solution package.
keywords: migrate server, server, 2012r2, 2016, server migration, device management, configure Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.author: macapara
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Server migration scenarios from the previous, MMA-based Microsoft Defender for Endpoint solution

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- Windows Server 2012 R2
- Windows Server 2016

[!include[Prerelease information](../../includes/prerelease.md)]

> [!NOTE]
> Always ensure Microsoft Defender Antivirus is fully updated on Windows Server 2016 before proceeding with installation or upgrade. To receive regular product improvements and fixes for the EDR Sensor component, ensure Windows Update [KB5005292](https://go.microsoft.com/fwlink/?linkid=2168277) gets applied or approved. In addition, to keep protection components updated, please reference [Manage Microsoft Defender Antivirus updates and apply baselines](/microsoft-365/security/defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus#monthly-platform-and-engine-versions).

These instructions apply to the new unified solution and installer package of Microsoft Defender for Endpoint for Windows Server 2012 R2 and Windows Server 2016. This article contains high-level instructions for various possible migration scenarios from the previous to the current solution. These high-level steps are intended as guidelines to be adjusted to the deployment and configuration tools available in your environment.

> [!NOTE]
> Operating system upgrades with Microsoft Defender for Endpoint installed are not supported. Please offboard then uninstall before proceeding with an upgrade.

> [!NOTE]
> During preview, full Microsoft Endpoint Configuration Manager automation and integration to perform an automated upgrade will be available in the 2111 release of MECM. From the 2107 release, you CAN use the Endpoint Protection node for configuration as well as Group Policy, PowerShell, Microsoft Endpoint Manager tenant attach or local configuration. In addition, you can leverage existing functionality in Microsoft Endpoint Configuration Manager to automate manual upgrade steps; methods for which are described below.

## Installer script

To facilitate upgrades when Microsoft Endpoint Configuration Manager or Azure Defender are not in use or not yet available to perform the upgrade, you can use this [upgrade script](https://github.com/microsoft/mdefordownlevelserver). It can help automate the following required steps:

1. Remove the OMS workspace for Microsoft Defender for Endpoint (OPTIONAL)
2. Remove System Center Endpoint Protection client if installed
3. Download and install (Windows Server 2012 R2) [prerequisites](configure-server-endpoints.md#prerequisites) if required
4. Install Microsoft Defender for Endpoint
5. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com).

To use the script, download it to an installation directory where you have also placed the installation and onboarding packages (see [Configure server endpoints](configure-server-endpoints.md).

EXAMPLE: .\install.ps1 -RemoveMMA <YOUR_WORKSPACE_ID> -OnboardingScript ".\WindowsDefenderATPOnboardingScript.cmd"

## Microsoft Endpoint Configuration Manager migration scenarios 

### You are currently using Microsoft Endpoint Configuration Manager to manage your servers, including System Center Endpoint Protection (SCEP) and are running the Microsoft Monitoring Agent (MMA)-based sensor. You want to upgrade to the Microsoft Defender for Endpoint unified solution **preview**.

Migration steps: 

1. Fully update the machine including Microsoft Defender Antivirus (Windows Server 2016).
2. Create a new collection with membership rules to include machines to be migrated.
3. [Create an application](/mem/configmgr/apps/deploy-use/create-applications) to perform the following tasks: 
   1. Remove the MMA workspace configuration for Microsoft Defender for Endpoint. See [Remove a workspace using PowerShell](/azure/azure-monitor/agents/agent-manage). This step is optional; the previous EDR sensor will stop running after the newer one becomes active (note this can take several hours).
   2. Uninstall SCEP.
   3. Install the [prerequisites](configure-server-endpoints.md#prerequisites) where applicable.
   4. Install Microsoft Defender for Endpoint (see [Configure server endpoints](configure-server-endpoints.md)).
   5. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com). 

   > [!TIP]
   > You can use the [installer script](server-migration.md#installer-script) as part of your application to automate the above steps.
4. Deploy the application to the new collection.
5. Create and/or assign (existing) Endpoint Protection policies to the collection.
6. Apply updates.

### You are currently using Microsoft Endpoint Configuration Manager to manage your servers, are running a non-Microsoft antivirus solution and the MMA-based sensor. You want to upgrade to the new Microsoft Defender for Endpoint.

Migration steps:

1. Fully update the machine including Microsoft Defender Antivirus (Windows Server 2016).
2. Create a new collection with membership rules to include machines to be migrated. 
3. Ensure third-party antivirus management no longer pushes antivirus to these machines.*
4. Author your policies in the Endpoint Protection node of MECM and target to the newly created collection.*
5. Create an application to perform the following tasks:
   1. Remove the MMA workspace configuration for Microsoft Defender for Endpoint. See [Remove a workspace using PowerShell](/azure/azure-monitor/agents/agent-manage). This step is optional; the previous EDR sensor will stop running after the newer one becomes active (note this can take several hours).
   2. Install the [prerequisites](configure-server-endpoints.md#prerequisites) where applicable.
   3. Install the Microsoft Defender for Endpoint for Windows Server 2012 R2 and 2016 package and **enable passive mode**. See [Install Microsoft Defender Antivirus using command line](configure-server-endpoints.md#install-microsoft-defender-for-endpoint-using-command-line).
   4. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com).
6. Apply updates.
7. Remove your non-Microsoft antivirus software by either using the non-Microsoft antivirus console or by using Microsoft Endpoint Configuration Manager as
appropriate. Make sure to remove passive mode configuration.*

TIP: you can use the [installer script](server-migration.md#installer script) as part of your application to automate the above steps. To enable passive mode, apply the -Passive flag. EXAMPLE: .\install.ps1 -RemoveMMA <YOUR_WORKSPACE_ID> -OnboardingScript ".\WindowsDefenderATPOnboardingScript.cmd" -Passive

*These steps only apply if you intend to replace your non-Microsoft antivirus solution. See [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](why-use-microsoft-defender-antivirus.md).

## Other migration scenarios 

### You have a server that has been onboarded using the MMA-based Microsoft Defender for Endpoint. It has SCEP installed (Windows Server 2012 R2) or Microsoft Defender Antivirus (Windows Server 2016). This machine is **not** managed through Azure Defender, Microsoft Endpoint Manager or Microsoft Endpoint Configuration Manager.

1. Fully update the machine including Microsoft Defender Antivirus (Windows Server 2016).
2. Remove the MMA workspace configuration for Microsoft Defender for Endpoint. See [Remove a workspace using PowerShell](/azure/azure-monitor/agents/agent-manage).
3. Uninstall System Center Endpoint Protection (Windows Server 2012 R2).
4. Install the [prerequisites](configure-server-endpoints.md#prerequisites) where applicable. 
5. Install Microsoft Defender for Endpoint (see [Configure server endpoints](configure-server-endpoints.md).)
6. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com). 
7. Apply updates.
8. Create and apply policies using Group Policy, PowerShell, or a 3rd party management solution.

> [!TIP]
> You can use the installer script to automate the above steps.

### You have a server on which you want to install Microsoft Defender for Endpoint. It has a non-Microsoft endpoint protection or endpoint detection and response solution installed. You do not intend to use Microsoft Endpoint Configuration Manager or Azure Defender. You use your own deployment mechanism. 

1. Fully update the machine including Microsoft Defender Antivirus (Windows Server 2016).
2. Install the Microsoft Defender for Endpoint for Windows Server 2012 R2 & 2016 package and **enable passive mode**. See [Install Microsoft Defender Antivirus using command line](configure-server-endpoints.md#install-microsoft-defender-for-endpoint-using-command-line).
3. Apply the onboarding script, appropriate to your environment, downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com). 
4. Remove the non-Microsoft endpoint protection or endpoint detection and response solution, and remove passive mode.*
5. Apply updates.
6. Create and apply policies using Group Policy, PowerShell, or a 3rd party management solution.

> [!TIP]
> You can use the [installer script](server-migration.md#installer-script) to help automate steps 1 through 4. To enable passive mode, apply the -Passive flag. EXAMPLE: `.\install.ps1 -OnboardingScript ".\WindowsDefenderATPOnboardingScript.cmd" -Passive`

*This step only applies if you intend to replace your non-Microsoft antivirus solution. We recommend using Microsoft Defender Antivirus, included  in Microsoft Defender for Endpoint, to provide the full set of capabilities. See [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](why-use-microsoft-defender-antivirus.md). 

## Azure Defender scenarios

### You're using Azure Defender. The Microsoft Monitoring Agent (MMA) and/or Microsoft Antimalware for Azure (SCEP) are installed and you want to upgrade.
If you're using Azure Defender, you can leverage the automated upgrade process. See [Protect your endpoints with Security Center's integrated EDR solution: Microsoft Defender for Endpoint](/azure/security-center/security-center-wdatp#enable-the-microsoft-defender-for-endpoint-integration).

## Group Policy configuration
For configuration using Group Policy, please ensure you are using the latest ADMX files in your central store to get access to the correct Microsoft Defender policy options. Please reference [How to create and manage the Central Store for Group Policy Administrative Templates in Windows](/troubleshoot/windows-client/group-policy/create-and-manage-central-store) and download the latest files **for use with Windows 10**. 

