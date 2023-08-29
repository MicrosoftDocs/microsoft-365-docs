---
title: Manage Microsoft Defender for Endpoint using Configuration Manager
description: Learn how to manage Microsoft Defender for Endpoint with Configuration Manager
keywords: post-migration, manage, operations, maintenance, utilization, Configuration Manager, Microsoft Defender for Endpoint, edr
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.date: 01/27/2023
ms.reviewer: chventou
search.appverid: met150
---

# Manage Microsoft Defender for Endpoint with Configuration Manager

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

We recommend using [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) or [Configuration Manager](/mem/configmgr/core/understand/introduction) (Configuration Manager) to manage your organization's threat protection features for devices (also referred to as endpoints).

This article describes how to manage Defender for Endpoint settings with Configuration Manager, and lists various tasks you can perform.

## Configure Microsoft Defender for Endpoint with Configuration Manager

|Task|Resources to learn more|
|---|---|
|**Install the Configuration Manager console** if you don't already have it <br/><br/> *If you don't already have the Configuration Manger console, use these resources to get the bits and install it.*|[Get the installation media](/mem/configmgr/core/servers/deploy/install/get-install-media) <br/><br/> [Install the Configuration Manager console](/mem/configmgr/core/servers/deploy/install/install-consoles)|
|**Use Configuration Manager to onboard devices** to Microsoft Defender for Endpoint <br/><br/> *If you have devices (or endpoints) not already onboarded to Microsoft Defender for Endpoint, you can do that with Configuration Manager.*|[Onboard to Microsoft Defender for Endpoint with Configuration Manager](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection#about-onboarding-to-atp-with-configuration-manager)|
|**Manage antimalware policies and Windows Firewall security** for client computers (endpoints) <br/><br/> *Configure endpoint protection features, including Microsoft Defender for Endpoint, exploit protection, application control, antimalware, firewall settings, and more.*|[Configuration Manager: Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection)|
|**Choose methods for updating antimalware updates** on your organization's devices <br/><br/> *With Endpoint Protection in Configuration Manager, you can choose from several methods to keep antimalware definitions up to date on your organization's devices.*|[Configure definition updates for Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-definition-updates) <br/><br/> [Use Configuration Manager to deliver definition updates](/mem/configmgr/protect/deploy-use/endpoint-definitions-configmgr)|
|**Enable Network Protection** to help prevent employees from using apps that malicious content on the Internet <br/><br/> *We recommend using [audit mode](/microsoft-365/security/defender-endpoint/evaluate-network-protection) at first for network protection in a test environment to see which apps would be blocked before rolling out.*|[Turn on network protection with Configuration Manager](/microsoft-365/security/defender-endpoint/enable-network-protection#microsoft-endpoint-configuration-manager)|
|**Configure controlled folder access** to protect against ransomware <br/><br/> *Controlled folder access is also referred to as antiransomware protection.*|[Endpoint protection: Controlled folder access](/mem/intune/protect/endpoint-protection-windows-10#controlled-folder-access) <br/><br/> [Enable controlled folder access in Microsoft Endpoint Configuration Manage](/microsoft-365/security/defender-endpoint/enable-controlled-folders#microsoft-endpoint-configuration-manager)|

## Configure your Microsoft 365 Defender portal

If you haven't already done so, configure your Microsoft 365 Defender portal to view alerts, configure threat protection features, and view detailed information about your organization's overall security posture. See While the attack was detected and stopped, alerts, such as an "initial access alert," were triggered and appeared in the [Microsoft 365 Defender portal](/microsoft-365/security/defender/microsoft-365-defender). You can also configure whether and what features end users can see in the Microsoft 365 Defender portal.

- [Overview of Microsoft 365 Defender](/microsoft-365/security/defender-endpoint/use)
- [Endpoint protection: Microsoft 365 Defender](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-security-center)

## Next steps

- [Get an overview of Defender Vulnerability Management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
