---
title: Configure your network environment to ensure connectivity with Defender for Endpoint service
description: Learn how to configure your network environment to connect with the Defender for Endpoint service
keywords: configure, proxy, internet, internet connectivity, settings, proxy settings, netsh, winhttp, proxy server
search.appverid: met150
ms.service: microsoft-365-security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
ms.reviewer: mkaminska
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: how-to
ms.subservice: mde
ms.date: 09/19/2023
---


# STEP 1: Configure your network environment to ensure connectivity with Defender for Endpoint service

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


[!Include[Prerelease information](../../includes/prerelease.md)]

Before you onboard devices to Defender for Endpoint, make sure your network is configured to connect to the service. The first step of this process involves adding URLs to the allowed domains list if your proxy server or firewall rules prevent access to Defender for Endpoint. This article also includes information about proxy and firewall requirements for older versions of Windows client and Windows Server.

## Enable access to Microsoft Defender for Endpoint service URLs in the proxy server

By default, if a proxy or firewall is blocking all traffic and allowing only specific domains, then add the domains listed in the downloadable sheet to the allowed domains list.


The following downloadable spreadsheet lists the services and their associated URLs that your network must be able to connect. Ensure there are no firewall or network filtering rules to deny access for these URLs. Optionally, you may need to create an *allow* rule specifically for them.


> [!NOTE]
> (Applies to public preview)<br>
> - As part of the preview, certain Defender for Endpoint services are consolidated behind the URL: `\*.endpoint.security.microsoft.com`. You have the option to use the a reduced set of URLs in Microsoft 365 Defender for Defender for Endpoint. You also have the new option of configuring allow lists using static Defender for Endpoint dedicated IP ranges. For more information, see the INSTRUCTIONS HERE and review the updated list in the preceding table.<br> 
> - To use the new onboarding method, devices must meet specific prerequisites and use a new onboarding package. For more information, see LINK. YOu can migrate previously onboarded devices. For more information, see LINK.<br>
> - Certain services are not included in this consolidation. You must verify that you maintain connectivity with the required services. For details on services **not** included in the consolidation, see the UPDATED URL SHEET or LINK TO Services not under the consolidated domain.
> - Devices running the MMA agent are not supported under streamlined solution and must be onboarded using the down-level method. For a list of required URLs, see the MMA tab in the URL SHEET. Devices running legacy Windows version 1607, 1703, 1709, or 1803 can onboard using the new onboarding package but still require a longer list of URLs. For more information, see the preceeding table.

<br>

|Spreadsheet of domains list| Description|
|---|---|
| Microsoft Defender for Endpoint consolidated URL list (NEW - Streamlined connectivity) <br> | **IMPORTANT:** Currently in public preview. <br> Spreadsheet of consolidated URLs for streamlining device connectivity to Defender for Endpoint. <br><br> LINK TO Download the spreadsheet here<br><br> **Prerequisites:** <br/>(For a complete list of prerequisites, see [Streamlined connectivity process](configure-device-connectivity.md#prerequisites).) <br>- Windows 10, version 1809+ (RS5+)<br><br>- Windows 11<br><br>- Windows Server 2019<br> <br>- Windows Server 2022<br><br>- Windows Server 2012 R2 or Windows Server 2016 R2 fully updated and the running Defender for Endpoint modern unified solution (requires installation through MSI). <br><br/>- macOS supported versions with MDE product version  101.23052.0004 +.<br/><br/>- Linux supported versions with MDE product version 101.23052.0009 +.<br><br>- Minimum component versions:<br/>-- Microsoft Defender Antimalware client: 4.18.2211.5<br/>-- Microsoft Defender<br/>-- Engine: 1.1.19900.2<br/>-- Microsoft Antivirus (Security Intelligence): 1.381.1853.0<br/>-- MDE Agent version (macOS/Linux): 101.23052.0009 +. <br/>-- Minimum KB/Sense version: >10.8040.*/ March 8, 2022+<br><br> If you're moving previously onboarded devices to the streamlined approach, see [Migrating device connectivity](configure-device-connectivity.md). <br> Microsoft Defender for Endpoint Plan 1 and Plan 2 share the same proxy service URLs. |
|Microsoft Defender for Endpoint URL list for commercial customers (Regular)| Spreadsheet of specific DNS records for service locations, geographic locations, and OS for commercial customers. <p> [Download the spreadsheet here.](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx) <p> Microsoft Defender for Endpoint Plan 1 and Plan 2 share the same proxy service URLs.
| Microsoft Defender for Endpoint URL list for Gov/GCC/DoD | Spreadsheet of specific DNS records for service locations, geographic locations, and OS for Gov/GCC/DoD customers. <br> [Download the spreadsheet here.](https://download.microsoft.com/download/6/a/0/6a041da5-c43b-4f17-8167-79dfdc10507f/mde-urls-gov.xlsx) |

 
> [!NOTE]
> 1. Windows 10 version 1607, 1703, 1709, 1803 (RS1-RS4) are supported on the onboarding package but require a longer URL list (see updated URL sheet). These versions do not support reonboarding (must be fully offboarded first). 
> 2. Devices running on Windows 7, Windows 8.1, Windows Server 2008 R2 MMA, Servers not upgraded to Unified Agent (MMA) will need to continue using MMA onboarding method. 

If a proxy or firewall has HTTPS scanning (SSL inspection) enabled, exclude the domains listed in the above table from HTTPS scanning.
In your firewall, open all the URLs where the geography column is WW. For rows where the geography column isn't WW, open the URLs to your specific data location. To verify your data location setting, see [Verify data storage location and update data retention settings for Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/data-retention-settings). Don't exclude the URL `*.blob.core.windows.net` from any kind of network inspection.

> [!NOTE]
> Applies to standard set of URLS: <br>
> Windows devices running with version 1803 or earlier needs `settings-win.data.microsoft.com`. <br>
>
> URLs that include v20 in them are only needed if you have Windows devices running version 1803 or later. For example, `us-v20.events.data.microsoft.com` is needed for a Windows device running version 1803 or later and onboarded to US Data Storage region.
>

If a proxy or firewall is blocking anonymous traffic from the Defender for Endpoint sensor and it's connecting from system context, it's important to make sure anonymous traffic is permitted in your proxy or firewall for the previously listed URLs.

> [!NOTE]
> Microsoft does not provide a proxy server. These URLs are accessible via the proxy server that you configure.

>[!IMPORTANT]
> In compliance with Defender for Endpoint security and compliance standards, your data will be processed and stored in accordance with your tenant's physical location. Based on client location, traffic may flow through any of these IP regions (which correspond to Azure datacenter regions). For more information, see [Data storage and privacy](/microsoft-365/security/defender-endpoint/data-storage-privacy). 

## Microsoft Monitoring Agent (MMA) - proxy and firewall requirements for older versions of Windows client or Windows Server

> [!NOTE]
> (Applies to public preview)<br>
> Services using MMA-based solutions are not able to leverage the new streamlined connectivity solution (consolidated URL and option to use static IPs). For Windows Server 2016 and Windows Server 2012 R2, you will need to update to the new unified solution.


The information in the list of proxy and firewall configuration information is required to communicate with Log Analytics agent (often referred to as Microsoft Monitoring Agent) for previous versions of Windows, such as Windows 7 SP1, Windows 8.1, and Windows Server 2008 R2*.

|Agent Resource|Ports|Direction|Bypass HTTPS inspection|
|---|---|---|---|
|`*.ods.opinsights.azure.com`|Port 443|Outbound|Yes|
|`*.oms.opinsights.azure.com`|Port 443|Outbound|Yes|
|`*.blob.core.windows.net`|Port 443|Outbound|Yes|
|`*.azure-automation.net`|Port 443|Outbound|Yes|

> [!NOTE]
> These connectivity requirements apply to the previous Microsoft Defender for Endpoint of Windows Server 2016, and Windows Server 2012 R2 that requires MMA. Instructions to onboard these operating systems with the new unified solution are at [Onboard Windows servers](configure-server-endpoints.md), or migrate to the new unified solution at [Server migration scenarios in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/server-migration).

> [!NOTE]
> As a cloud-based solution, the IP range can change. It's recommended, you move to DNS resolving setting.

## Onboard devices without Internet access

For devices with no direct internet connection, the use of a proxy solution is the recommended approach. For older Windows devices onboarded using the previous, MMA-based solution the use of the OMS gateway solution provides an alternative approach. 

> [!NOTE]
> (Applies to public preview)<br>
> With this preview, you can leverage firewall devices with static IP ranges. For more information, see: [Simplified device connectivity](configure-device-connectivity.md) and [URL spreadsheet - ADD URL OF SPREADSHEET WHEN READY]().

For more information about onboarding methods, see the following articles:

- [Onboard previous versions of Windows](/microsoft-365/security/defender-endpoint/onboard-downlevel)
- [Onboard servers to the Microsoft Defender for Endpoint service](/microsoft-365/security/defender-endpoint/configure-server-endpoints#windows-server-2008-r2-sp1--windows-server-2012-r2-and-windows-server-2016)

> [!IMPORTANT]
> - Microsoft Defender for Endpoint is a Cloud security solution. "Onboard devices without Internet access" means that Internet access for the endpoints must be configured through a proxy. Microsoft Defender for Endpoint does not support endpoints without direct or proxy Internet access. System wide proxy configuration recommended.
> - Windows or Windows Server in disconnected environments must be able to update Certificate Trust Lists offline via an internal file or web server.
> - For more information about updating CTLs offline, see [Configure a file or web server to download the CTL files](/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/dn265983(v=ws.11)#configure-a-file-or-web-server-to-download-the-ctl-files).

### Devices running Windows 10 or later, Windows Server 2012 R2 or later, Linux and macOS

Depending on the operating system, the proxy to be used for Microsoft Defender for Endpoint can be configured automatically, typically by using autodiscovery or an autoconfig file, or statically specific to Defender for Endpoint services running on the device.

- For Windows devices, see [Configure device proxy and Internet connectivity settings](/microsoft-365/security/defender-endpoint/configure-proxy-internet)
- For Linux devices, see [Configure Microsoft Defender for Endpoint on Linux for static proxy discovery](/microsoft-365/security/defender-endpoint/linux-static-proxy-configuration)
- For macOS devices, see [Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-mac#network-connections)

### Windows devices running the previous MMA-based solution

> [!NOTE]
> - An OMS gateway server cannot be used as proxy for disconnected Windows or Windows Server devices when configured via 'TelemetryProxyServer' registry or GPO.
> - For Windows or Windows Server - while you may use TelemetryProxyServer, it must point to a standard proxy device or appliance.

- Set up Azure Log Analytics (formerly known as OMS Gateway) to act as proxy or hub:
 - [Azure Log Analytics Agent](/azure/azure-monitor/platform/gateway#download-the-log-analytics-gateway)
 - [Install and configure Microsoft Monitoring Agent (MMA)](onboard-downlevel.md#install-and-configure-microsoft-monitoring-agent-mma) point to Defender for Endpoint Workspace key & ID

[Onboard previous versions of Windows](onboard-downlevel.md)


> [!NOTE]
> Any client that has no access to the internet cannot be onboarded to Microsoft Defender Endpoint. A client must either have access to the required URLs directly, or it must have access via a proxy or firewall.<br>
>As part of the streamlined preview, you can now leverage IP addresses as alternatives to certain Defender for Endpoint service URLs.

## Confirm Microsoft Monitoring Agent (MMA) Service URL Requirements 

 See the following guidance to eliminate the wildcard (*) requirement for your specific environment when using the Microsoft Monitoring Agent (MMA) for previous versions of Windows.

1. Onboard a previous operating system with the Microsoft Monitoring Agent (MMA) into Defender for Endpoint (for more information, see [Onboard previous versions of Windows on Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2010326) and [Onboard Windows servers](configure-server-endpoints.md)).

2. Ensure the machine is successfully reporting into the Microsoft 365 Defender portal.

3. Run the TestCloudConnection.exe tool from `C:\Program Files\Microsoft Monitoring Agent\Agent` to validate the connectivity, and to get the required URLs for your specific workspace.

4. Check the Microsoft Defender for Endpoint URLs list for the complete list of requirements for your region (refer to the Service URLs [Spreadsheet](https://go.microsoft.com/fwlink/?linkid=2247417)).

  :::image type="content" source="../../media/defender-endpoint/admin-powershell.png" alt-text="This is admin PowerShell.":::

The wildcards (\*) used in `*.ods.opinsights.azure.com`, `*.oms.opinsights.azure.com`, and `*.agentsvc.azure-automation.net` URL endpoints can be replaced with your specific Workspace ID. The Workspace ID is specific to your environment and workspace. It can be found in the Onboarding section of your tenant within the Microsoft 365 Defender portal.

The `*.blob.core.windows.net` URL endpoint can be replaced with the URLs shown in the "Firewall Rule: \*.blob.core.windows.net" section of the test results.

> [!NOTE]
> In the case of onboarding via Microsoft Defender for Cloud, multiple workspaces can be used. You will need to perform the TestCloudConnection.exe procedure on the onboarded machine from each workspace (to determine, if there are any changes to the *.blob.core.windows.net URLs between the workspaces).

## Next step

[STEP 2: Configure your devices to connect to the Defender for Endpoint service using a proxy](configure-proxy-internet.md)