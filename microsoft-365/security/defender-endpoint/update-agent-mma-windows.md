---
title: Update your agent on devices for Microsoft Defender for Endpoint
description: Learn about your options for updating or replacing your MMA agent on Windows devices for Defender for Endpoint.
keywords: MMA, agent, azure log
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
ms.date: 10/24/2022
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.reviewer: pahuijbr
search.appverid: met150
---

# Updating MMA on Windows devices for Microsoft Defender for Endpoint

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

If you are using the Microsoft Monitoring Agent (MMA) on Windows devices, you should keep this agent updated. With the modern, unified agent for Windows Server 2012 R2 and Windows Server 2016, you should migrate to the new solution instead. 

- [Update the Microsoft Monitoring Agent (MMA) on your devices](#option-1-update-mma-on-your-devices)
- [Use a new agent on Windows Server 2012 R2 or Windows Server 2016](#option-2-use-a-new-agent-on-windows-server-2012-r2-or-windows-server-2016)

This article describes both options and includes links to additional information.

## Option 1: Update MMA on your devices

*This option applies to devices running Windows 7 SP1 Enterprise, Windows 7 SP1 Pro, Windows 8.1 Pro, Windows 8.1 Enterprise, and Windows Server 2008 R2 SP1.* 

- See [Manage and maintain the Log Analytics agent for Windows and Linux](/azure/azure-monitor/agents/agent-manage?tabs=PowerShellLinux) for instructions on how to upgrade the agent using Azure automation or a command line approach for use with various deployment tools and methods at your disposal. 

- Update MMA by using [Microsoft Update](/windows/deployment/update/how-windows-update-works), through [Windows Server Update Services](/windows/deployment/update/waas-manage-updates-wsus) or [Configuration Manager](/mem/configmgr/osd/deploy-use/manage-windows-as-a-service). Use the method that was configured when MMA was first installed on the device.

- Download the MMA setup file:

   - **Windows 64-bit agent**: [https://go.microsoft.com/fwlink/?LinkId=828603](https://go.microsoft.com/fwlink/?LinkId=828603)
   - **Windows 32-bit agent**: [https://go.microsoft.com/fwlink/?LinkId=828604](https://go.microsoft.com/fwlink/?LinkId=828604)

## Option 2: Use a new agent on Windows Server 2012 R2 or Windows Server 2016

*This option applies to servers running Windows Server 2012 R2 and Windows Server 2016.*

A new agent was released in April 2022 for Windows Server 2012 R2 and Windows Server 2016. The new agent does not depend on MMA. There are significant benefits to moving to this new agent, such as a vastly extended feature set. To learn more, see [Tech Community Blog: Defending Windows Server 2012 R2 and 2016](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/defending-windows-server-2012-r2-and-2016/ba-p/2783292).

- Defender Vulnerability Management provides an assessment (SCID-2030) titled "Update Microsoft Defender for Endpoint core components" that will allow you to track which Windows Server 2012 R2 and 2016 machines have not yet been upgraded.

- See [Server migration scenarios from the previous, MMA-based Microsoft Defender for Endpoint solution](server-migration.md) to understand your options for upgrading to the new agent.

- If you are using Microsoft Endpoint Configuration Manager (SCCM/ConfigMgr) 2107 or later to manage your servers running Windows Server 2012 R2 or Windows Server 2016, see [Migrating servers from Microsoft Monitoring Agent to the unified solution](application-deployment-via-mecm.md) to perform an **orchestrated** upgrade.

- If you are using Microsoft Endpoint Configuration Manager (SCCM/ConfigMgr) 2207 or later to manage your servers running Windows Server 2012 R2 or Windows Server 2016, see [Onboarding to Microsoft Defender for Endpoint with Configuration Manager 2207 and later versions](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection) to perform an **automated** upgrade.

- If you are using Microsoft Defender for Cloud with servers running Windows Server 2012 R2 or Windows Server 2016, you can automated the upgrade by selecting **Enable unified solution**. See [Users with Defender for Servers enabled and Microsoft Defender for Endpoint deployed](/azure/defender-for-cloud/integration-defender-for-endpoint?tabs=windows).

## Important information about MMA

- If you have determined that you are not using the MMA for Defender for Endpoint, or you have already updated your agent, no additional steps are needed. 

- If you are, however, still using MMA for other purposes (such as Log Analytics), MMA is currently set to retire in August 2024. (See [We're retiring the Log Analytics agent in Azure Monitor on 31 August 2024](https://azure.microsoft.com/updates/were-retiring-the-log-analytics-agent-in-azure-monitor-on-31-august-2024/).) Depending your scenario, this could be a good time to upgrade to [Azure Monitoring Agent, the successor of MMA](/azure/azure-monitor/agents/azure-monitor-agent-migration). 

> [!IMPORTANT]
> Devices running Windows 7 SP1, Windows 8.1, Windows Server 2008 R2, Windows Server 2012 R2, or Windows Server 2016 that haven't been upgraded to the [new, unified solution](application-deployment-via-mecm.md) will remain dependent on MMA. In such cases, [AMA](/azure/azure-monitor/agents/agents-overview) cannot be used as a substitute for Defender for Endpoint. 