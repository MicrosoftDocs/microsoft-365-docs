---
title: Onboard devices without Internet access to Microsoft Defender for Endpoint
ms.reviewer: 
description: Onboard devices without Internet access so that they can send sensor data to the Microsoft Defender for Endpoint sensor
keywords: onboard, servers, vm, on-premises, oms gateway, log analytics, azure log analytics, mma
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Onboard devices without Internet access to Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

For devices with no direct internet connection, the use of a proxy solution is the recommended approach. For older Windows devices onboarded using the previous, MMA-based solution the use of the OMS gateway solution provides an alternative approach. For more information about onboarding methods, see the following articles:
- [Onboard previous versions of Windows](/microsoft-365/security/defender-endpoint/onboard-downlevel)
- [Onboard servers to the Microsoft Defender for Endpoint service](/microsoft-365/security/defender-endpoint/configure-server-endpoints#windows-server-2008-r2-sp1--windows-server-2012-r2-and-windows-server-2016)

> [!IMPORTANT]
> - Windows or Windows Server in disconnected environments must be able to update Certificate Trust Lists offline via an internal file or web server.
> - For more information about updating CTLs offline, see [Configure a file or web server to download the CTL files](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn265983(v=ws.11)#configure-a-file-or-web-server-to-download-the-ctl-files).

## Devices running Windows 10 or later, Windows Server 2012 R2 or later, Linux and macOS

Depending on the operating system, the proxy to be used for Microsoft Defender for Endpoint can be configured automatically, typically through the use of autodiscovery or an autoconfig file, or statically specific to Defender for Endpoint services running on the device.

- For Windows devices, please reference [Configure device proxy and Internet connectivity settings](/microsoft-365/security/defender-endpoint/configure-proxy-internet)
- For Linux devices, please reference [Configure Microsoft Defender for Endpoint on Linux for static proxy discovery](/microsoft-365/security/defender-endpoint/linux-static-proxy-configuration)
- For macOS devices, please reference [Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-mac#network-connections)

## Windows devices running the previous MMA-based solution

> [!NOTE]
> - An OMS gateway server cannot be used as proxy for disconnected Windows or Windows Server devices when configured via 'TelemetryProxyServer' registry or GPO.
> - For Windows or Windows Server - while you may use TelemetryProxyServer, it must point to a standard proxy device or appliance.

- Setup Azure Log Analytics (formerly known as OMS Gateway) to act as proxy or hub:
  - [Azure Log Analytics Agent](/azure/azure-monitor/platform/gateway#download-the-log-analytics-gateway)
  - [Install and configure Microsoft Monitoring Agent (MMA)](onboard-downlevel.md#install-and-configure-microsoft-monitoring-agent-mma) point to Defender for Endpoint Workspace key & ID

[Onboard previous versions of Windows](onboard-downlevel.md)

### Microsoft Defender for Cloud
    - Review the prerequisites section in [Protect your endpoints with Defender for Cloud's integrated EDR solution: Microsoft Defender for Endpoint](/azure/defender-for-cloud/integration-defender-for-endpoint?tabs=windows#prerequisites)
