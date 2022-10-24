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

If you were previously using the Microsoft Monitoring Agent (MMA) on Windows devices, you can update your agent. To update your agent to work with Microsoft Defender for Endpoint, you can choose from two options:

- Update the Microsoft Monitoring Agent (MMA) on your devices
- Use a new agent on Windows Server 2012 R2 or Windows Server 2016

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