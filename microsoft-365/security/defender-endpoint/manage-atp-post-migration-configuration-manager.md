---
title: Manage Microsoft Defender for Endpoint using Configuration Manager
description: Learn how to manage Microsoft Defender for Endpoint with Configuration Manager
keywords: post-migration, manage, operations, maintenance, utilization, Configuration Manager, Microsoft Defender for Endpoint, edr
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
  - m365solution-scenario
ms.topic: article
ms.date: 06/11/2021
ms.reviewer: chventou
---

# Manage Microsoft Defender for Endpoint with Configuration Manager

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)


We recommend using We recommend using [Microsoft Endpoint Manager](/mem), which includes [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) (Intune) and [Microsoft Endpoint Configuration Manager](/mem/configmgr/core/understand/introduction) (Configuration Manager) to manage your organization's threat protection features for devices (also referred to as endpoints).

- [Learn more about Endpoint Manager](/mem/endpoint-manager-overview)
- [Co-manage Microsoft Defender for Endpoint on Windows 10 and Windows 11 devices with Configuration Manager and Intune](manage-atp-post-migration-intune.md)

## Configure Microsoft Defender for Endpoint with Configuration Manager

<br/><br/>

|Task|Resources to learn more|
|---|---|
|**Install the Configuration Manager console** if you don't already have it <p> *If you don't already have the Configuration Manger console, use these resources to get the bits and install it.*|[Get the installation media](/mem/configmgr/core/servers/deploy/install/get-install-media) <p> [Install the Configuration Manager console](/mem/configmgr/core/servers/deploy/install/install-consoles)|
|**Use Configuration Manager to onboard devices** to Microsoft Defender for Endpoint <p> *If you have devices (or endpoints) not already onboarded to Microsoft Defender for Endpoint, you can do that with Configuration Manager.*|[Onboard to Microsoft Defender for Endpoint with Configuration Manager](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection#about-onboarding-to-atp-with-configuration-manager)|
|**Manage antimalware policies and Windows Firewall security** for client computers (endpoints) <p> *Configure endpoint protection features, including Microsoft Defender for Endpoint, exploit protection, application control, antimalware, firewall settings, and more.*|[Configuration Manager: Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-protection)|
|**Choose methods for updating antimalware updates** on your organization's devices <p> *With Endpoint Protection in Configuration Manager, you can choose from several methods to keep antimalware definitions up to date on your organization's devices.*|[Configure definition updates for Endpoint Protection](/mem/configmgr/protect/deploy-use/endpoint-definition-updates) <p> [Use Configuration Manager to deliver definition updates](/mem/configmgr/protect/deploy-use/endpoint-definitions-configmgr)|
|**Enable Network Protection** to help prevent employees from using apps that malicious content on the Internet <p> *We recommend using [audit mode](/microsoft-365/security/defender-endpoint/evaluate-network-protection) at first for network protection in a test environment to see which apps would be blocked before rolling out.*|[Turn on network protection with Configuration Manager](/microsoft-365/security/defender-endpoint/enable-network-protection#microsoft-endpoint-configuration-manager)|
|**Configure controlled folder access** to protect against ransomware <p> *Controlled folder access is also referred to as antiransomware protection.*|[Endpoint protection: Controlled folder access](/mem/intune/protect/endpoint-protection-windows-10#controlled-folder-access) <p> [Enable controlled folder access in Microsoft Endpoint Configuration Manage](/microsoft-365/security/defender-endpoint/enable-controlled-folders#microsoft-endpoint-configuration-manager)|
|||

## Configure your Microsoft 365 Defender portal

If you haven't already done so, configure your Microsoft 365 Defender portal to view alerts, configure threat protection features, and view detailed information about your organization's overall security posture. See [Microsoft 365 Defender portal](microsoft-defender-security-center.md). You can also configure whether and what features end users can see in the Microsoft 365 Defender portal.

- [Overview of Microsoft 365 Defender](/microsoft-365/security/defender-endpoint/use)
- [Endpoint protection: Microsoft 365 Defender](/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-security-center)

## Next steps

- [Get an overview of threat and vulnerability management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
- [Visit the Microsoft 365 Defender portal security operations dashboard](/microsoft-365/security/defender-endpoint/security-operations-dashboard)
- [Manage Microsoft Defender for Endpoint with Intune](manage-atp-post-migration-intune.md)
