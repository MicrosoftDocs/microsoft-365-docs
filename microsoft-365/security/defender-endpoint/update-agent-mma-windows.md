---
title: Update your agent on devices for Microsoft Defender for Endpoint
description: Learn about your options for updating or replacing your MMA agent on Windows devices for Defender for Endpoint.
ms.service: microsoft-365-security
ms.subservice: mde
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
ms.date: 07/11/2023
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

> [!IMPORTANT]
> If you've arrived on this page as a result of clicking on a notification at the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), you have devices in your environment with outdated agents, and you need to take action (see below) to avoid service disruption. For more details, please reference message center post MC598631 (requires access to [Message Center](/microsoft-365/admin/manage/message-center])).

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

If you're using the Microsoft Monitoring Agent (MMA) on Windows devices, it's important to keep this agent updated. For Windows Server 2012 R2 and Windows Server 2016, Microsoft recommends upgrading to the new, unified agent for Defender for Endpoint. This article describes how to: 

- **[Update the MMA on your devices](#update-mma-on-your-devices)** (for devices running Windows 7 SP1 Enterprise, Windows 7 SP1 Pro, Windows 8.1 Pro, Windows 8.1 Enterprise, and Windows Server 2008 R2 SP1).
- **[Upgrade to the new, unified agent for Defender for Endpoint](#upgrade-to-the-new-unified-agent-for-defender-for-endpoint)** (for devices running Windows Server 2012 R2 and Windows Server 2016).

## Update MMA on your devices

*This option applies to devices running Windows 7 SP1 Enterprise, Windows 7 SP1 Pro, Windows 8.1 Pro, Windows 8.1 Enterprise, and Windows Server 2008 R2 SP1.* 

- To help you identify older versions of the MMA inside of your organization, you can use the "EOSDate" column in advanced hunting. Or, follow the instructions in [Plan for end-of-support software and software versions](/microsoft-365/security/defender-vulnerability-management/tvm-end-of-support-software) to use the vulnerability management feature inside of Microsoft Defender for Endpoint to track remediation.

- See [Manage and maintain the Log Analytics agent for Windows and Linux](/azure/azure-monitor/agents/agent-manage?tabs=PowerShellLinux) for instructions on how to upgrade the agent using Azure Automation or a command line approach for use with various deployment tools and methods at your disposal. 

- Update MMA by using [Microsoft Update](/windows/deployment/update/how-windows-update-works), through [Windows Server Update Services](/windows/deployment/update/waas-manage-updates-wsus) or [Configuration Manager](/mem/configmgr/osd/deploy-use/manage-windows-as-a-service). Use the method that was configured when MMA was first installed on the device.

- Download the MMA setup file:

   - **Windows 64-bit agent**: [https://go.microsoft.com/fwlink/?LinkId=828603](https://go.microsoft.com/fwlink/?LinkId=828603)
   - **Windows 32-bit agent**: [https://go.microsoft.com/fwlink/?LinkId=828604](https://go.microsoft.com/fwlink/?LinkId=828604)

## Upgrade to the new, unified agent for Defender for Endpoint

*This option applies to servers running Windows Server 2012 R2 and Windows Server 2016.*

A new agent was released in April 2022 for Windows Server 2012 R2 and Windows Server 2016. The new agent doesn't depend on MMA. There are significant benefits to moving to this new agent, such as a vastly extended feature set. To learn more, see [Tech Community Blog: Defending Windows Server 2012 R2 and 2016](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/defending-windows-server-2012-r2-and-2016/ba-p/2783292).

- Microsoft Defender Vulnerability Management provides an assessment (SCID-2030) titled "Update Microsoft Defender for Endpoint core components" that will allow you to track which Windows Server 2012 R2 and 2016 machines haven't yet been upgraded.

- See [Server migration scenarios from the previous, MMA-based Microsoft Defender for Endpoint solution](server-migration.md) to understand your options for upgrading to the new agent.

- If you're using Microsoft Endpoint Configuration Manager (SCCM/ConfigMgr) 2107 or later to manage your servers running Windows Server 2012 R2 or Windows Server 2016, see [Migrating servers from Microsoft Monitoring Agent to the unified solution](application-deployment-via-mecm.md) to perform an **orchestrated** upgrade.

- If you're using Microsoft Endpoint Configuration Manager (SCCM/ConfigMgr) 2207 or later to manage your servers running Windows Server 2012 R2 or Windows Server 2016, see [Onboarding to Microsoft Defender for Endpoint with Configuration Manager 2207 and later versions](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection) to perform an **automated** upgrade.

- If you're using Microsoft Defender for Cloud with servers running Windows Server 2012 R2 or Windows Server 2016, you can automate the upgrade by selecting **Enable unified solution**. See [Users with Defender for Servers enabled and Microsoft Defender for Endpoint deployed](/azure/defender-for-cloud/integration-defender-for-endpoint?tabs=windows).

## Important information about MMA

- If you've determined that you aren't using the MMA for Defender for Endpoint, or you've already updated your agent, no other steps are needed. 

- If you are, however, still using MMA for other purposes (such as Log Analytics), MMA is currently set to retire in August 2024. See [We're retiring the Log Analytics agent in Azure Monitor on 31 August 2024](https://azure.microsoft.com/updates/were-retiring-the-log-analytics-agent-in-azure-monitor-on-31-august-2024/). Depending your particular scenario, this could be a good time to upgrade to [Azure Monitoring Agent, the successor of MMA](/azure/azure-monitor/agents/azure-monitor-agent-migration). 

> [!IMPORTANT]
> Devices running Windows 7 SP1, Windows 8.1, Windows Server 2008 R2, Windows Server 2012 R2, or Windows Server 2016 that haven't been upgraded to the [new, unified solution](application-deployment-via-mecm.md) will remain dependent on MMA. In such cases, [AMA](/azure/azure-monitor/agents/agents-overview) cannot be used as a substitute for Defender for Endpoint. 

## See also

- [Make the switch from non-Microsoft endpoint protection to Microsoft Defender for Endpoint](switch-to-mde-overview.md)
- [Microsoft Defender for Endpoint deployment overview](deployment-phases.md)
- [Onboard to the Microsoft Defender for Endpoint service](onboarding.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
