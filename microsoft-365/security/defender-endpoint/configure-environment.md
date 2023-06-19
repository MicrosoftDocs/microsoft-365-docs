---
title: Configure your environment to connect to the Defender for Endpoint service
description: 
keywords: configure, proxy, internet, internet connectivity, settings, proxy settings, netsh, winhttp, proxy server
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: how-to
ms.subservice: mde
ms.date: 06/19/2023
---


# STEP 1: Configure your environment to connect to the Defender for Endpoint service

Take the following steps to configure your environment to connect devices to the Defender for Endpoint service.

## Enable access to Microsoft Defender for Endpoint service URLs in the proxy server

By default, if a proxy or firewall is blocking all traffic by default and allowing only specific domains, then add the domains listed in the downloadable sheet to the allowed domains list.

The following downloadable spreadsheet lists the services and their associated URLs that your network must be able to connect. Ensure there are no firewall or network filtering rules to deny access for these URLs. Optional, you may need to create an *allow* rule specifically for them.

<br>

|Spreadsheet of domains list| Description|
|---|---|
| Streamline device connectivity to Defender for Endpoint | >[!IMPORTANT]<BR>>Currently in public preview. 
|Microsoft Defender for Endpoint URL list for commercial customers| Spreadsheet of specific DNS records for service locations, geographic locations, and OS for commercial customers. <p> [Download the spreadsheet here.](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx) <p> Note that Microsoft Defender for Endpoint Plan 1 and Plan 2 share the same proxy service URLs.
| Microsoft Defender for Endpoint URL list for Gov/GCC/DoD | Spreadsheet of specific DNS records for service locations, geographic locations, and OS for Gov/GCC/DoD customers. <p> [Download the spreadsheet here.](https://download.microsoft.com/download/6/a/0/6a041da5-c43b-4f17-8167-79dfdc10507f/mde-urls-gov.xlsx)

If a proxy or firewall has HTTPS scanning (SSL inspection) enabled, exclude the domains listed in the above table from HTTPS scanning.
In your firewall, open all the URLs where the geography column is WW. For rows where the geography column isn't WW, open the URLs to your specific data location. To verify your data location setting, see [Verify data storage location and update data retention settings for Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/data-retention-settings). Don't exclude the URL `*.blob.core.windows.net` from any kind of network inspection.

> [!NOTE]
> Windows devices running with version 1803 or earlier needs `settings-win.data.microsoft.com`.  <br>
>
> URLs that include v20 in them are only needed if you have Windows devices running version 1803 or later. For example, `us-v20.events.data.microsoft.com` is needed for a Windows device running version 1803 or later and onboarded to US Data Storage region.
>

If a proxy or firewall is blocking anonymous traffic from the Defender for Endpoint sensor and it's connecting from system context, it's important to make sure anonymous traffic is permitted in your proxy or firewall for the previously listed URLs.

> [!NOTE]
> Microsoft does not provide a proxy server. These URLs are accessible via the proxy server that you configure.

### Microsoft Monitoring Agent (MMA) - proxy and firewall requirements for older versions of Windows client or Windows Server

The information in the list of proxy and firewall configuration information is required to communicate with Log Analytics agent (often referred to as Microsoft Monitoring Agent) for previous versions of Windows, such as Windows 7 SP1, Windows 8.1, and Windows Server 2008 R2*.

<br>

****

|Agent Resource|Ports|Direction|Bypass HTTPS inspection|
|---|---|---|---|
|*.ods.opinsights.azure.com|Port 443|Outbound|Yes|
|*.oms.opinsights.azure.com|Port 443|Outbound|Yes|
|*.blob.core.windows.net|Port 443|Outbound|Yes|
|*.azure-automation.net|Port 443|Outbound|Yes|

> [!NOTE]
> *These connectivity requirements apply to the previous Microsoft Defender for Endpoint of Windows Server 2016, and Windows Server 2012 R2 that requires MMA. Instructions to onboard these operating systems with the new unified solution are at [Onboard Windows servers](configure-server-endpoints.md), or migrate to the new unified solution at [Server migration scenarios in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/server-migration).

> [!NOTE]
> As a cloud-based solution, the IP range can change. It's recommended, you move to DNS resolving setting.

## Confirm Microsoft Monitoring Agent (MMA) Service URL Requirements 

 See the following guidance to eliminate the wildcard (*) requirement for your specific environment when using the Microsoft Monitoring Agent (MMA) for previous versions of Windows.

1. Onboard a previous operating system with the Microsoft Monitoring Agent (MMA) into Defender for Endpoint (for more information, see [Onboard previous versions of Windows on Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2010326) and [Onboard Windows servers](configure-server-endpoints.md)).

2. Ensure the machine is successfully reporting into the Microsoft 365 Defender portal.

3. Run the TestCloudConnection.exe tool from "C:\Program Files\Microsoft Monitoring Agent\Agent" to validate the connectivity, and to get the required URLs for your specific workspace.

4. Check the Microsoft Defender for Endpoint URLs list for the complete list of requirements for your region (refer to the Service URLs [Spreadsheet](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx)).

   :::image type="content" source="../../media/defender-endpoint/admin-powershell.png" alt-text="This is admin powershell.":::

The wildcards (\*) used in \*.ods.opinsights.azure.com, \*.oms.opinsights.azure.com, and \*.agentsvc.azure-automation.net URL endpoints can be replaced with your specific Workspace ID. The Workspace ID is specific to your environment and workspace. It can be found in the Onboarding section of your tenant within the Microsoft 365 Defender portal.

The \*.blob.core.windows.net URL endpoint can be replaced with the URLs shown in the "Firewall Rule: \*.blob.core.windows.net" section of the test results.

> [!NOTE]
> In the case of onboarding via Microsoft Defender for Cloud, multiple workspaces can be used. You will need to perform the TestCloudConnection.exe procedure on the onboarded machine from each workspace (to determine, if there are any changes to the *.blob.core.windows.net URLs between the workspaces).

## Verify client connectivity to Microsoft Defender for Endpoint service URLs

Verify, the proxy configuration is completed successfully. The WinHTTP can then discover and communicate through the proxy server in your environment, and then the proxy server will allow  traffic to the Defender for Endpoint service URLs.

1. Download the [Microsoft Defender for Endpoint Client Analyzer tool](https://aka.ms/mdeanalyzer) to the PC, where Defender for Endpoint sensor is running on. For downlevel servers, use the latest preview edition is available for download [Microsoft Defender for Endpoint Client Analyzer tool Beta](https://aka.ms/BetaMDEAnalyzer).

2. Extract the contents of MDEClientAnalyzer.zip on the device.

3. Open an elevated command line:
   1. Go to **Start** and type **cmd**.
   1. Right-click **Command prompt** and select **Run as administrator**.

4. Enter the following command and press **Enter**:

    ```command prompt
    HardDrivePath\MDEClientAnalyzer.cmd
    ```

    Replace *HardDrivePath* with the path, where the MDEClientAnalyzer tool was downloaded. For example:

    ```command prompt
    C:\Work\tools\MDEClientAnalyzer\MDEClientAnalyzer.cmd
    ```

5. The tool creates and extracts the *MDEClientAnalyzerResult.zip* file in the folder to use in the *HardDrivePath*.

6. Open *MDEClientAnalyzerResult.txt* and verify that you've performed the proxy configuration steps to enable server discovery and access to the service URLs.

   The tool checks the connectivity of Defender for Endpoint service URLs. Ensure the Defender for Endpoint client is configured to interact. The tool will print the results in the *MDEClientAnalyzerResult.txt* file for each URL that can potentially be used to communicate with the Defender for Endpoint services. For example:

   ```text
   Testing URL : https://xxx.microsoft.com/xxx
   1 - Default proxy: Succeeded (200)
   2 - Proxy auto discovery (WPAD): Succeeded (200)
   3 - Proxy disabled: Succeeded (200)
   4 - Named proxy: Doesn't exist
   5 - Command line proxy: Doesn't exist
   ```

If any one of the connectivity options returns a (200) status, then the Defender for Endpoint client can communicate with the tested URL properly using this connectivity method.

However, if the connectivity check results indicate a failure, an HTTP error is displayed (see HTTP Status Codes). You can then use the URLs in the table shown in [Enable access to Defender for Endpoint service URLs in the proxy server](#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server). The URLs available for use will depend on the region selected during the onboarding procedure.

> [!NOTE]
> The Connectivity Analyzer tool's cloud connectivity checks are not compatible with Attack Surface Reduction rule [Block process creations originating from PSExec and WMI commands](attack-surface-reduction-rules-reference.md#block-process-creations-originating-from-psexec-and-wmi-commands). You will need to temporarily disable this rule, to run the connectivity tool. Alternatively, you can temporarily add [ASR exclusions](attack-surface-reduction-rules-deployment-implement.md#customize-attack-surface-reduction-rules) when running the analyzer.
>
> When the TelemetryProxyServer is set in Registry or via Group Policy, Defender for Endpoint will fall back, it fails to access the defined proxy.