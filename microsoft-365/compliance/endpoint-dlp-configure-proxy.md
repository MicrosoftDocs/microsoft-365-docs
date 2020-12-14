---
title: "Configure device proxy and internet connection settings for Endpoint DLP"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 07/21/2020
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- m365solution-mip
- m365initiative-compliance
search.appverid: 
- MET150
description: "Learn how to Configure device proxy and internet connection settings for Endpoint DLP."
---

# Configure device proxy and internet connection settings for Endpoint DLP

Microsoft Endpoint DLP uses Microsoft Windows HTTP (WinHTTP) to report data and communicate with the Microsoft endpoint cloud service. The embedded Endpoint DLP runs in system context using the LocalSystem account.

> [!TIP] For organizations that use forward proxies as a gateway to the Internet, you can use network protection to investigate behind a proxy. For more information, see [Investigate connection events that occur behind forward proxies](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/investigate-behind-proxy).

The WinHTTP configuration setting is independent of the Windows Internet (WinINet) Internet browsing proxy settings and can only discover a proxy server by using the following discovery methods:

- Auto-discovery methods:
    - Transparent proxy
    - Web Proxy Auto-discovery Protocol (WPAD)
> [!NOTE] If you’re using Transparent proxy or WPAD in your network topology, you don’t need special configuration settings. For more information on Defender for Endpoint URL exclusions in the proxy, see Enable access to Defender for Endpoint service URLs in the proxy server <!--LINK IN SAME TOPIC -->.

- Manual static proxy configuration:
    - Registry based configuration
    - WinHTTP configured using netsh command – Suitable only for desktops in a stable topology (for example: a desktop in a corporate network behind the same proxy)

## Configure the proxy server manually using a registry-based static proxy

Configure a registry-based static proxy to allow only Microsoft Endpoint DLP to report diagnostic data and communicate with Microsoft endpoint cloud service if a computer is not be permitted to connect to the Internet.

The static proxy is configurable through Group Policy (GP). The group policy can be found under:
- Administrative Templates > Windows Components > Data Collection and Preview Builds > Configure Authenticated Proxy usage for the Connected User Experience and Telemetry Service
    - Set it to **Enabled** and select **Disable Authenticated Proxy usage**: Image of Group Policy setting1
- **Administrative Templates > Windows Components > Data Collection and Preview Builds > Configure connected user experiences and telemetry**:
    - Configure the proxy: Image of Group Policy setting2
    - The policy sets two registry values TelemetryProxyServer as REG_SZ and DisableEnterpriseAuthProxy as REG_DWORD under the registry key HKLM\Software\Policies\Microsoft\Windows\DataCollection.
    - The registry value TelemetryProxyServer takes the following string format:
    - <server name or ip>:<port>
    - For example: 10.0.0.6:8080
    - The registry value DisableEnterpriseAuthProxy should be set to 1.


## See also

- [Learn about Endpoint data loss prevention ](endpoint-dlp-learn-about.md)
- [Using Endpoint data loss prevention ](endpoint-dlp-using.md)
- [Overview of data loss prevention](data-loss-prevention-policies.md)
- [Create, test, and tune a DLP policy](create-test-tune-dlp-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows 10 machines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure AD joined devices](https://docs.microsoft.com/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
