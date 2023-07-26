---
title: Onboard devices without Internet access to Microsoft Defender for Endpoint
ms.reviewer: 
description: Onboard devices without Internet access so that they can send sensor data to the Microsoft Defender for Endpoint sensor
keywords: onboard, servers, vm, on-premises, oms gateway, log analytics, azure log analytics, mma
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Onboard devices without Internet access to Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

For devices with no direct internet connection, the use of a proxy solution is the recommended approach. For older Windows devices onboarded using the previous, MMA-based solution the use of the OMS gateway solution provides an alternative approach. For more information about onboarding methods, see the following articles:
- [Onboard previous versions of Windows](/microsoft-365/security/defender-endpoint/onboard-downlevel)
- [Onboard servers to the Microsoft Defender for Endpoint service](/microsoft-365/security/defender-endpoint/configure-server-endpoints#windows-server-2008-r2-sp1--windows-server-2012-r2-and-windows-server-2016)

> [!IMPORTANT]
> - Microsoft Defender for Endpoint is a Cloud security solution. "Onboard devices without Internet access" means that Internet access for the endpoints must be configured through a proxy. Microsoft Defender for Endpoint does not support endpoints without direct or proxy Internet access. System wide proxy configuration recommended.
> - Windows or Windows Server in disconnected environments must be able to update Certificate Trust Lists offline via an internal file or web server.
> - For more information about updating CTLs offline, see [Configure a file or web server to download the CTL files](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn265983(v=ws.11)#configure-a-file-or-web-server-to-download-the-ctl-files).

## Devices running Windows 10 or later, Windows Server 2012 R2 or later, Linux and macOS

Depending on the operating system, the proxy to be used for Microsoft Defender for Endpoint can be configured automatically, typically through the use of autodiscovery or an autoconfig file, or statically specific to Defender for Endpoint services running on the device.

- For Windows devices, see [Configure device proxy and Internet connectivity settings](/microsoft-365/security/defender-endpoint/configure-proxy-internet)
- For Linux devices, see [Configure Microsoft Defender for Endpoint on Linux for static proxy discovery](/microsoft-365/security/defender-endpoint/linux-static-proxy-configuration)
- For macOS devices, see [Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-mac#network-connections)

## Windows devices running the previous MMA-based solution

> [!NOTE]
> - An OMS gateway server cannot be used as proxy for disconnected Windows or Windows Server devices when configured via 'TelemetryProxyServer' registry or GPO.
> - For Windows or Windows Server - while you may use TelemetryProxyServer, it must point to a standard proxy device or appliance.

- Set up Azure Log Analytics (formerly known as OMS Gateway) to act as proxy or hub:
  - [Azure Log Analytics Agent](/azure/azure-monitor/platform/gateway#download-the-log-analytics-gateway)
  - [Install and configure Microsoft Monitoring Agent (MMA)](onboard-downlevel.md#install-and-configure-microsoft-monitoring-agent-mma) point to Defender for Endpoint Workspace key & ID

[Onboard previous versions of Windows](onboard-downlevel.md)

### Azure virtual machines

- For devices running the previous, MMA-based solution, set up Azure Log Analytics Gateway (formerly known as OMS Gateway) to act as proxy or hub:
    - [Azure Log Analytics Gateway](/azure/azure-monitor/platform/gateway#download-the-log-analytics-gateway)
    - [Install and configure Microsoft Monitoring Agent (MMA)](onboard-downlevel.md#install-and-configure-microsoft-monitoring-agent-mma) point to Defender for Endpoint Workspace key & ID
- Offline Azure VMs in the same network of OMS Gateway
    - Configure Azure Log Analytics IP as a proxy
    - Azure Log Analytics Workspace Key & ID
- Microsoft Defender for Cloud
    - [Security Policy \> Log Analytics Workspace](/azure/security-center/security-center-wdatp#enable-windows-defender-atp-integration)
    - [Threat Detection \> Allow Defender for Endpoint to access my data](/azure/security-center/security-center-wdatp#enable-windows-defender-atp-integration)

    For more information, see [Working with security policies](/azure/security-center/tutorial-security-policy).

> [!NOTE]
> Any client that has no access to the internet cannot be onboarded to Microsoft Defender Endpoint. A client must either have access to the required URLs directly, or it must have access via a proxy.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
