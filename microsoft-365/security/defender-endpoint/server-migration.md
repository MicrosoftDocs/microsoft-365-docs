---
title: Server migration scenarios for the new version of Microsoft Defender for Endpoint
description: 
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

In September 2021, we released a new version of Microsoft Defender for Endpoint for Windows Server 2012 R2 and Windows Server 2016.
This page contains high level instructions for various possible migration scenarios from the previous to the current solution. Please note that these high-level steps are intended as guidelines to be adjusted to the deployment and configuration tools available in your environment.

>[!NOTE]
>Full Microsoft Endpoint Configuration Manager (MECM) automation and integration to perform an easy upgrade will be available in the 2111 release of MECM. You CAN however use the Endpoint Protection node for configuration as well as Group Policy, PowerShell, Microsoft Endpoint Manager tenant attach or local configuration. In addition, you can leverage existing functionality in MECM to automate manual upgrade steps.

## Microsoft Endpoint Configuration Manager (MECM) migration scenarios 

### If you are currently using MECM to manage your servers,  including System Center Endpoint Protection (SCEP) and are running the Microsoft Monitoring Agent (MMA)-based sensor, and want to upgrade to the new Microsoft Defender for Endpoint BEFORE the 2011 release of MECM.

Migration steps: 

1. Create a new collection with membership rules to include machines to be migrated. 

2. Create a package to perform the following tasks: 

   1. Remove the MMA workspace configuration for Microsoft Defender for Endpoint. See [Remove a workspace using PowerShell](/azure/azure-monitor/agents/agent-manage).
   2. Uninstall SCEP.
   3. Install the [prerequisites](configure-server-endpoints.md#prerequisites) where applicable.
   4. Install the Microsoft Defender for Endpoint for Windows Server 2012 R2 & 2016 package.
   5. Apply the onboarding package. 

3. Deploy the package to the new collection.

4. Create and/or assign existing endpoint protection policies to the collection.

### If you are currently using MECM to manage your servers, have a 3rd party AV solution and MMA-based sensor and want to upgrade to the new Microsoft Defender for Endpoint BEFORE the 2011 release of MECM.

Migration steps:

1. Create a new collection with membership rules to include machines to be migrated. 

2. Ensure third-party antivirus management no longer pushes antivirus to these machines.*

3. Author your policies in the Endpoint Protection node of MECM and target to the newly created collection.*

4. Create a package to perform the following tasks:

   1. Remove the MMA workspace configuration for Microsoft Defender for Endpoint. See [Remove a workspace using PowerShell](/azure/azure-monitor/agents/agent-manage). 
   2. Install the [prerequisites](configure-server-endpoints.md#prerequisites) where applicable.
   3. Install the Microsoft Defender for Endpoint for Windows Server 2012 R2 and 2016 package and enable passive mode. See [Install Microsoft Defender Antivirus using command line](configure-server-endpoints.md#install-microsoft-defender-antivirus-using-command-line).
   4. Apply the onboarding package. 

5. Apply updates.

6. Remove your non-Microsoft antivirus software by either using the non-Microsoft antivirus console or by using Microsoft Endpoint Configuration Manager as
appropriate. Make sure to remove passive mode configuration.*

7. Apply the onboarding package.

* These steps only apply if you intend to replace your non-Microsoft antivirus solution. See [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](why-use-microsoft-defender-antivirus.md).

If you want to move **from tenant attach to MDE attach**, ensure the server is a part of an Azure Active Directory group that has the required policies targeted then proceedto **uninstall** the Microsoft Endpoint Configuration Manager agent. 

-   MDE attach will not work if the client is managed by Microsoft Endpoint Configuration Manager. Therefore, a server can be in scope for MDE attach but only after Microsoft Endpoint Configuration Manager agent is removed, policies will be applied. 

## Other migration scenarios 

### You have a server you would like to install Microsoft Defender for Endpoint to. It has a 3rd party EPP/EDR solution installed. 

1. Download the prerequisites, the installer and deploy using your desired mechanism.

2. Install the Microsoft Defender for Endpoint for Windows Server 2012 R2 & 2016 package and enable passive mode (https://review.docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/configure-server-endpoints?view=o365-worldwide&branch=onboarding-revamp#install-microsoft-defender-antivirus-using-command-line)

3. Apply updates.

4. Apply the onboarding package.

5. Remove the non-Microsoft security solution or EDR and remove passive mode.*

6. Author and apply policies using Group Policy, PowerShell or Microsoft Endpoint Manager.

*This step only applies if you intend to replace your 3rd party antivirus solution.https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/why-use-microsoft-defender-antivirus?view=o365-worldwide#:~:text=11%20reasons%20to%20use%20Microsoft%20Defender%20Antivirus%20together,blocked%20mal%20...%20%207%20more%20rows%20

## Azure Defender scenarios

### You're using Azure Defender, Microsoft Monitoring Agent (MMA) and SCEP are installed and want to upgrade
If you're using Azure Defender, you can automate the upgrade process. Please go to <TBD LINK>.
