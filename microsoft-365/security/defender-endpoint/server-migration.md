---
title: Server migration scenarios in Microsoft Defender for Endpoint
description: 
keywords: migrate server, server, 2012r2, 2016, 2019, server migration, device management, configure Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers
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
- Windows Server Semi-Annual Channel
- Windows Server 2019 and later
- Windows Server 2019 core edition


This chapter contains high level instructions for various possible migration
scenarios. Please note that these high-level steps are intended as guidelines
and based on this early release. We will provide updated instructions for the
various management products at a later stage.

 

>[!NOTE]
>Full Microsoft Endpoint Configuration Manager automation and integration
and Microsoft Defender for Endpoint attach will be available for testing at a later date. Use Group
Policy, PowerShell, Microsoft Endpoint Manager tenant attach or local configuration in the
interim. Azure Defender automated deployment and onboarding is also not
available currently.

 

## Microsoft Endpoint Configuration Manager migration scenarios 

### We are currently using Microsoft Endpoint Configuration Manager to manage our servers,  including System Center Endpoint Protection (SCEP) and Microsoft Monitoring Agent (MMA), and want to move to the new Microsoft Defender for Endpoint instead. How do we proceed? (SCEP & MMA \> Microsoft Endpoint Manager tenant attach)

Preferred method: Microsoft Endpoint Manager tenant attach (connect Microsoft Endpoint
Configuration Manager to Intune using a few clicks, then
configure Microsoft Defender Antivirus policies in Microsoft Endpoint Manager for these devices) 

Migration steps: 

1. Create a new collection with membership rules to include machines running
Microsoft Defender for Endpoint on the machines to be migrated (tenant attach scope). 

2. Enable tenant attach and include (sync) the collections for which you want to
move Endpoint Protection Platform (EPP) policy management to Microsoft Endpoint Manager. 

3. Exclude machines that are to be migrated from the collection you use to
target SCEP and Microsoft Defender Antivirus onboarding policies to your servers. 

4. Author your policies (antivirus, endpoint detection and response (EDR) onboarding, firewall) in Microsoft Endpoint Manager and target to the Microsoft Endpoint Manager collection you created. 

5. Create a package to remove MMA workspace configuration for Microsoft Defender for Endpoint. Uninstall SCEP. Then install the Microsoft Defender Antivirus package on the target collection and update the platform and definitions. 

6. Apply the onboarding package. 

 

### We're using Microsoft Endpoint Configuration Manager to manage our servers. We have a 3rd party AV + MMA and want to move to new Microsoft Defender for Endpoint  instead. How do we proceed? (Third-party \> Microsoft Endpoint Manager tenant attach) 

Preferred method: Tenant attach 

Migration steps: 

1. Create a new collection with membership rules to include machines running Defender on the machines to be migrated (tenant attach scope). 

2. Enable tenant attach and include the collections for which you want to move EPP policy management to Microsoft Endpoint Manager. 

3. Ensure third-party Microsoft Defender Antivirus management no longer pushes antivirus to these machines. 

4. Author your policies in Microsoft Endpoint Manager and target to the Microsoft Endpoint Manager collection 

5. Create a package to Install the Defender package on the target collection,
set to passive mode and update Defender, remove MMA workspace config for MDE. 

6. Remove 3rd party AV, either using the 3rd party console or Microsoft Endpoint Configuration Manager as
appropriate, remove passive mode configuration 

7. Apply the onboarding package: 

    Create a program in Microsoft Endpoint Configuration Manager that will allow you to define custom installer logic (prereqs) and use scripted installation (for example, PowerShell) to customize install
operations. For example, uninstall MMA after if so desired. 
    
    These steps will eventually be fully automated by Microsoft Endpoint Configuration Manager 

 

If you want to move **from tenant attach to MDE attach**, ensure the server is a part of an Azure Active Directory group that has the required policies targeted then proceedto **uninstall** the Microsoft Endpoint Configuration Manager agent. 

-   MDE attach will not work if the client is managed by Microsoft Endpoint Configuration Manager. Therefore, a server can be in scope for MDE attach but only after Microsoft Endpoint Configuration Manager agent is removed, policies will be applied. 

### INCLUDE HERE??? We're using Microsoft Endpoint Configuration Manager to manage our servers, including SCEP&MMA, and want to move to Microsoft Defender for Endpoint instead but keep using Microsoft Endpoint Configuration Manager for configuration of endpoint security policies. How do we proceed? (SCEP&MMA \> Microsoft Endpoint Configuration Manager) 

Timelines TBC. 

Options: 

In the design partner phase, follow the steps described in 1.1 to switch to Microsoft Endpoint Manager
tenant attach. 

In the public preview phase, you can use Microsoft Endpoint Configuration Manager for configuration only and will need to manually deploy. 

 

### We're using a non-Microsoft antivirus solution today and want to move to Microsoft Defender Antivirus. How do we proceed? 

Preferred method: MDE Attach 

Migration steps: 

1.  Set up your policies beforehand in Microsoft Endpoint Manager and target to the intended group. 

2.  Install the new unified package. 

3.  Set Microsoft Defender Antivirus to passive mode, update the platform and definitions.

4.  Apply the onboarding package.

5.  Add server to policy target group. 

6.  Remove the non-Microsoft antivirus solution and remove passive mode settings.


## Non-Microsoft scenarios 

### We have a server We would like to install to. We have another solution running a non-Microsoft antivirus solution. 

Preferred method: MDE Attach 

1.  Set up your policies beforehand in Microsoft Endpoint Manager and target to the intended Azure Active Directory group (for devices).

2.  Download the installer and deploy using desired mechanism (Group Policy is one option).

3.  Set Microsoft Defender Antivirus to passive mode and update it.

4.  Apply the onboarding package.

5.  Remove non-Microsoft antivirus solution or EDR and remove passive mode.

 

### We have a clean server that we would like to install to

Preferred method: MDE Attach 

1.  Set up your policies beforehand in Microsoft Endpoint Manager and target to the intended Azure Active Directory group (for devices).

2.  Download the installer and deploy using desired mechanism (Group policy is one  option).

3.  Set Microsoft Defender Antivirus to passive mode and update it.

4.  Apply the onboarding package.

5.  Remove the non-Microsoft antivirus solution and remove passive mode settings.

 
### We have a clean server would like to install to. We don't want to use Azure Defender or  Microsoft Endpoint Manager. 

Preferred method: Group Policy. 

1.  Set up your policies beforehand in Group Policy (same policy configuration as
    Defender AV on Server 2019) and target to the intended AAD group (for
    devices) 

2.  Download the installer and deploy using desired mechanism.  

3.  Apply the onboarding package. 

 

If you want to use a different/3rd party management solution, we will support
existing Group Policy/PowerShell/WMI interfaces. For deployment, you can use the same MSI and the onboarding instructions.

## Azure scenarios

### We're using Azure Defender, Microsoft Monitoring Agent (MMA) and SCEP are installed and we want to upgrade. How do we proceed?

1. Uninstall SCEP if it is present. 

2. Remove the workspace configuration from the Microsoft Monitoring Agent. 

3. Proceed with instructions from the Installation and onboarding steps. 

4. [Re-connect the machine to Azure Security Center](/azure/security-center/quickstart-onboard-machines?pivots=azure-portal).


### We're using Group policy / PowerShell / other tools to manage SCEP today and want to move to Azure Defender. How do we proceed?

Follow the steps outlined in the previous section. To ensure continued application of settings, adjust your existing policy configuration mechanism to be the equivalent of Windows Server 2019. Microsoft Defender for Endpoint for downlevel server supports GPO/PowerShell/WMI interfaces as well as MDE Attach. 


