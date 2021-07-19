---
title: Server migration scenarios for the new version of Microsoft Defender for Endpoint
description: Read this article to get an overview of how to migrate your servers to Defender for Endpoint.
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

# Server migration scenarios in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- Windows Server 2012 R2
- Windows Server 2016

> [!NOTE]
> Always ensure Microsoft Defender Antivirus is fully updated on Windows Server 2016 before proceeding. The platform version must be on the June 2021 release (4.18.2106.6 or greater).

These instructions apply to the new unified solution and installer package of Microsoft Defender for Endpoint for Windows Server 2012 R2 and Windows Server 2016. This article contains high-level instructions for various possible migration scenarios from the previous to the current solution. These high-level steps are intended as guidelines to be adjusted to the deployment and configuration tools available in your environment.

> [!NOTE]
> Full Microsoft Endpoint Configuration Manager (MECM) automation and integration to perform an automated upgrade will be available in the 2111 release of MECM. From the 2107 release, you CAN use the Endpoint Protection node for configuration as well as Group Policy, PowerShell, Microsoft Endpoint Manager tenant attach or local configuration. In addition, you can leverage existing functionality in MECM to automate manual upgrade steps; methods for which are described below.

## Installer script

To facilitate upgrades when Microsoft Endpoint Configuration Manager or Azure Defender are not in use or not yet available to perform the upgrade, you can use this [upgrade script](https://github.com/microsoft/mdefordownlevelserver). It will automate the following required steps:

1. Remove the OMS workspace for Microsoft Defender for Endpoint

2. Remove System Center Endpoint Protection client if installed

3. Download and install (Windows Server 2012 R2) [prerequisites](configure-server-endpoints.md#prerequisites) if required.

4. Install Microsoft Defender for Endpoint

5. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com).

To use the script, download it to an installation directory where you have also placed the installation and onboarding packages (see [Configure server endpoints](configure-server-endpoints.md).

EXAMPLE: .\install.ps1 -RemoveMMA <YOUR_WORKSPACE_ID> -OnboardingScript ".\WindowsDefenderATPOnboardingScript.cmd"

## Microsoft Endpoint Configuration Manager (MECM) migration scenarios 

### You are currently using MECM to manage your servers, including System Center Endpoint Protection (SCEP) and are running the Microsoft Monitoring Agent (MMA)-based sensor. You want to upgrade to the new Microsoft Defender for Endpoint unified solution.

Migration steps: 

1. Create a new collection with membership rules to include machines to be migrated. 

2. [Create an application](/mem/configmgr/apps/deploy-use/create-applications) to perform the following tasks: 
   1. Remove the MMA workspace configuration for Microsoft Defender for Endpoint. See [Remove a workspace using PowerShell](/azure/azure-monitor/agents/agent-manage).
   2. Uninstall SCEP.
   3. Install the [prerequisites](configure-server-endpoints.md#prerequisites) where applicable.
   4. Install Microsoft Defender for Endpoint (see [Configure server endpoints](configure-server-endpoints.md)).
   5. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com). 

   > [!TIP]
   > You can use the [installer script](server-migration.md#installer-script) as part of your application to automate the above steps.

3. Deploy the application to the new collection.

4. Create and/or assign (existing) endpoint protection policies to the collection.

### You are currently using MECM to manage your servers, are running a non-Microsoft antivirus solution and the MMA-based sensor. You want to upgrade to the new Microsoft Defender for Endpoint.

Migration steps:

1. Create a new collection with membership rules to include machines to be migrated. 

2. Ensure third-party antivirus management no longer pushes antivirus to these machines.*

3. Author your policies in the Endpoint Protection node of MECM and target to the newly created collection.*

4. Create an application to perform the following tasks:
   1. Remove the MMA workspace configuration for Microsoft Defender for Endpoint. See [Remove a workspace using PowerShell](/azure/azure-monitor/agents/agent-manage). 
   2. Install the [prerequisites](configure-server-endpoints.md#prerequisites) where applicable.
   3. Install the Microsoft Defender for Endpoint for Windows Server 2012 R2 and 2016 package and **enable passive mode**. See [Install Microsoft Defender Antivirus using command line](configure-server-endpoints.md#install-microsoft-defender-for-endpoint-using-command-line).
   4. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com).

5. Apply updates.

6. Remove your non-Microsoft antivirus software by either using the non-Microsoft antivirus console or by using Microsoft Endpoint Configuration Manager as
appropriate. Make sure to remove passive mode configuration.*

7. Apply the onboarding package.

TIP: you can use the [installer script](server-migration.md#installer script) as part of your application to automate the above steps. To enable passive mode, apply the -Passive flag. EXAMPLE: .\install.ps1 -RemoveMMA <YOUR_WORKSPACE_ID> -OnboardingScript ".\WindowsDefenderATPOnboardingScript.cmd" -Passive

*These steps only apply if you intend to replace your non-Microsoft antivirus solution. See [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](why-use-microsoft-defender-antivirus.md).

## Moving from Microsoft Endpoint Configuration Manager to Defender Security Management only

If you want to move **from tenant attach to Defender for Endpoint attach**, make sure the server is a part of an Azure Active Directory group that has the required policies targeted then proceed to **uninstall** the Microsoft Endpoint Configuration Manager agent. 

- Defender for Endpoint attach will not work if the client is managed by Microsoft Endpoint Configuration Manager. Therefore, a server can be in scope for Defender for Endpoint attach, but only after Microsoft Endpoint Configuration Manager agent is removed will policies be applied. 

## Other migration scenarios 

### You have a server that has been onboarded using the MMA-based Microsoft Defender for Endpoint. It has SCEP installed (Windows Server 2012 R2) or Microsoft Defender Antivirus (Windows Server 2016). This machine is **not** managed through Azure Defender, Microsoft Endpoint Manager or Microsoft Endpoint Configuration Manager.

1. Remove the MMA workspace configuration for Microsoft Defender for Endpoint. See [Remove a workspace using PowerShell](/azure/azure-monitor/agents/agent-manage).

2. Uninstall System Center Endpoint Protection (Windows Server 2012 R2).

3. Install the [prerequisites](configure-server-endpoints.md#prerequisites) where applicable. 

4. Install Microsoft Defender for Endpoint (see [Configure server endpoints](configure-server-endpoints.md).)

5. Apply the onboarding script **for use with Group Policy** downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com). 

6. Create and apply policies using Group Policy, PowerShell, or Microsoft Endpoint Manager for Defender Security Management.

> [!TIP]
> You can use the installer script to automate the above steps.

### You have a server on which you want to install Microsoft Defender for Endpoint. It has a non-Microsoft endpoint protection or endpoint detection and response solution installed. You do not intend to use Microsoft Endpoint Configuration Manager or Azure Defender. You use your own deployment mechanism. 

1. Install the prerequisites and fully update the machine including Microsoft Defender Antivirus (Windows Server 2016)

2. Install the Microsoft Defender for Endpoint for Windows Server 2012 R2 & 2016 package and **enable passive mode**. See [Install Microsoft Defender Antivirus using command line](configure-server-endpoints.md#install-microsoft-defender-for-endpoint-using-command-line).

3. Apply the onboarding script, appropriate to your environment, downloaded from [Microsoft Defender Security Center](https://securitycenter.microsoft.com). 

4. Remove the non-Microsoft endpoint protection or endpoint detection and response solution, and remove passive mode.*

5. Create and apply policies using Group Policy, PowerShell, or Microsoft Endpoint Manager for Defender Security Management.

> [!TIP]
> You can use the [installer script](server-migration.md#installer-script) to help automate steps 1 through 4. To enable passive mode, apply the -Passive flag. EXAMPLE: `.\install.ps1 -OnboardingScript ".\WindowsDefenderATPOnboardingScript.cmd" -Passive`

*This step only applies if you intend to replace your non-Microsoft antivirus solution. We recommend using Microsoft Defender Antivirus, included  in Microsoft Defender for Endpoint, to provide the full set of capabilities. See [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](why-use-microsoft-defender-antivirus.md). 

## Azure Defender scenarios

### You're using Azure Defender. The Microsoft Monitoring Agent (MMA) and Microsoft Antimalware for Azure/SCEP are installed and you want to upgrade.

If you're using Azure Defender, you can leverage the automated upgrade process. See [Protect your endpoints with Security Center's integrated EDR solution: Microsoft Defender for Endpoint](https://docs.microsoft.com/en-us/azure/security-center/security-center-wdatp#enable-the-microsoft-defender-for-endpoint-integration).
