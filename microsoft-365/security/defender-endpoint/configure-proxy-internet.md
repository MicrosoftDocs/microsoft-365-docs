---
title: Configure device proxy and Internet connection settings
description: Configure the Microsoft Defender for Endpoint proxy and internet settings to enable communication with the cloud service.
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
ms.topic: conceptual
ms.subservice: mde
ms.date: 04/04/2023
---

# Configure device proxy and Internet connectivity settings

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)

> [!IMPORTANT]
> Devices that are configured for IPv6-only traffic are not supported.

The Defender for Endpoint sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Defender for Endpoint service. The embedded Defender for Endpoint sensor runs in system context using the LocalSystem account.

> [!TIP]
> For organizations that use forward proxies as a gateway to the Internet, you can use network protection to [investigate connection events that occur behind forward proxies](investigate-behind-proxy.md).

The WinHTTP configuration setting is independent of the Windows Internet (WinINet) browsing proxy settings (see, [WinINet vs. WinHTTP](/windows/win32/wininet/wininet-vs-winhttp)). It can only discover a proxy server by using the following discovery methods:

- Autodiscovery methods:

  - Transparent proxy
  
  - Web Proxy Auto-discovery Protocol (WPAD)

    > [!NOTE]
    > If you're using Transparent proxy or WPAD in your network topology, you don't need special configuration settings. For more information on Defender for Endpoint URL exclusions in the proxy, see [Enable access to Defender for Endpoint service URLs in the proxy server](#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server)

- Manual static proxy configuration:

  - Registry-based configuration
  
  - WinHTTP configured using netsh command: Suitable only for desktops in a stable topology (for example: a desktop in a corporate network behind the same proxy)

> [!NOTE]
> Defender antivirus and EDR proxies can be set independently.  In the sections that follow, be aware of those distinctions.

## Configure the proxy server manually using a registry-based static proxy

Configure a registry-based static proxy for Defender for Endpoint detection and response (EDR) sensor to report diagnostic data and communicate with Defender for Endpoint services if a computer isn't permitted to connect to the Internet.

> [!NOTE]
> When using this option on Windows 10, or Windows 11, or Windows Server 2019, or Windows Server 2022, it is recommended to have the following (or later) build and cumulative update rollup:
>
> - Windows 11
> - Windows 10, version 1809 or Windows Server 2019, or Windows Server 2022  - <https://support.microsoft.com/kb/5001384>
> - Windows 10, version 1909 - <https://support.microsoft.com/kb/4601380>
> - Windows 10, version 2004 - <https://support.microsoft.com/kb/4601382>
> - Windows 10, version 20H2 - <https://support.microsoft.com/kb/4601382>
>
> These updates improve the connectivity and reliability of the CnC (Command and Control) channel.

The static proxy is configurable through group policy (GP), both the settings under group policy values should be configured to the proxy server for using EDR. The group policy is available in Administrative Templates.

- **Administrative Templates > Windows Components > Data Collection and Preview Builds > Configure Authenticated Proxy usage for the Connected User Experience and Telemetry Service**.

  Set it to **Enabled** and select **Disable Authenticated Proxy usage**.

  :::image type="content" source="images/atp-gpo-proxy1.png" alt-text="The Group Policy setting1 status pane" lightbox="images/atp-gpo-proxy1.png":::

- **Administrative Templates > Windows Components > Data Collection and Preview Builds > Configure connected user experiences and telemetry**:

  Configure the proxy.

  :::image type="content" source="images/atp-gpo-proxy2.png" alt-text="The Group Policy setting2 status pane" lightbox="images/atp-gpo-proxy2.png":::


| Group Policy | Registry key | Registry entry | Value |
|:---|:---|:---|:---|
| Configure authenticated proxy usage for the connected user experience and the telemetry service | `HKLM\Software\Policies\Microsoft\Windows\DataCollection` | `DisableEnterpriseAuthProxy` | 1 (REG_DWORD) |
| Configure connected user experiences and telemetry | `HKLM\Software\Policies\Microsoft\Windows\DataCollection` | `TelemetryProxyServer` | ```servername:port or ip:port``` <br> <br> For example: ```10.0.0.6:8080``` (REG_SZ) |

> [!NOTE]
> If you are using 'TelemetryProxyServer' setting on devices that are otherwise **completely offline**, meaning the operating system is unable to connect for the online certificate revocation list or Windows Update, then it is required to add the additional registry setting `PreferStaticProxyForHttpRequest` with a value of `1`.<br>
> Parent registry path location for "PreferStaticProxyForHttpRequest" is "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection"<br>
> The following command can be used to insert the registry value in the correct location:<br>
> ```reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection" /v PreferStaticProxyForHttpRequest /t REG_DWORD /d 1 /f```<br>
> The above registry value is applicable only starting with MsSense.exe version 10.8210.* and later, or version 10.8049.* and later.



## Configure a static proxy for Microsoft Defender Antivirus

Microsoft Defender Antivirus [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md) provides near-instant, automated protection against new and emerging threats. Note, the connectivity is required for [custom indicators](manage-indicators.md) when Defender Antivirus is your active anti-malware solution. For [EDR in block mode](edr-in-block-mode.md) has primary anti-malware solution when using a non-Microsoft solution.

Configure the static proxy using the Group Policy available in Administrative Templates:

1. **Administrative Templates > Windows Components > Microsoft Defender Antivirus > Define proxy server for connecting to the network**. 

2. Set it to **Enabled** and define the proxy server. Note, the URL must have either http:// or https://. For supported versions for https://, see [Manage Microsoft Defender Antivirus updates](microsoft-defender-antivirus-updates.md).

   :::image type="content" source="images/proxy-server-mdav.png" alt-text="The proxy server for Microsoft Defender Antivirus" lightbox="images/proxy-server-mdav.png":::

3. Under the registry key `HKLM\Software\Policies\Microsoft\Windows Defender`, the policy sets the registry value `ProxyServer` as REG_SZ. 

   The registry value `ProxyServer` takes the following string format:

    ```text
    <server name or ip>:<port>

    For example: http://10.0.0.6:8080
    ```

> [!NOTE]

> If you are using static proxy setting on devices that are otherwise completely offline, meaning the operating system is unable to connect for the online certificate revocation list or Windows Update, then it is required to add the additional registry setting SSLOptions with a dword value of 0. Parent registry path location for "SSLOptions" is "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet"

> For resiliency purposes and the real-time nature of cloud-delivered protection, Microsoft Defender Antivirus will cache the last known working proxy. Ensure your proxy solution does not perform SSL inspection. This will break the secure cloud connection. 
>
> Microsoft Defender Antivirus will not use the static proxy to connect to Windows Update or Microsoft Update for downloading updates. Instead, it will use a system-wide proxy if configured to use Windows Update, or the configured internal update source according to the [configured fallback order](manage-protection-updates-microsoft-defender-antivirus.md). 
>
> If required, you can use **Administrative Templates > Windows Components > Microsoft Defender Antivirus > Define proxy auto-config (.pac)** for connecting to the network. If you need to set up advanced configurations with multiple proxies, use **Administrative Templates > Windows Components > Microsoft Defender Antivirus > Define addresses** to bypass proxy server and prevent Microsoft Defender Antivirus from using a proxy server for those destinations. 
>
> You can use PowerShell with the `Set-MpPreference` cmdlet to configure these options: 
>
> - ProxyBypass 
> - ProxyPacUrl 
> - ProxyServer 

> [!NOTE]
> To use the proxy correctly, configure these three different proxy settings:
>  - Microsoft Defender for Endpoint (MDE)
>  - AV (Antivirus)
>  - Endpoint Detection and Response (EDR)

## Configure the proxy server manually using netsh command

Use netsh to configure a system-wide static proxy.

> [!NOTE]
>
> - This will affect all applications including Windows services which use WinHTTP with default proxy.</br>

1. Open an elevated command line:
   1. Go to **Start** and type **cmd**.
   1. Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command and press **Enter**:

   ```command prompt
   netsh winhttp set proxy <proxy>:<port>
   ```

   For example: `netsh winhttp set proxy 10.0.0.6:8080`

To reset the winhttp proxy, enter the following command and press **Enter**:

```command prompt
netsh winhttp reset proxy
```

See [Netsh Command Syntax, Contexts, and Formatting](/windows-server/networking/technologies/netsh/netsh-contexts) to learn more.



## Related articles

- [Disconnected environments, proxies and Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/disconnected-environments-proxies-and-microsoft-defender-for/ba-p/3710502)
- [Use Group Policy settings to configure and manage Microsoft Defender Antivirus](use-group-policy-microsoft-defender-antivirus.md)
- [Onboard Windows devices](configure-endpoints.md)
- [Troubleshoot Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
- [Onboard devices without Internet access to Microsoft Defender for Endpoint](onboard-offline-machines.md)
