---
title: Onboarding devices using streamlined connectivity for Microsoft Defender for Endpoint 
description: Learn how to use a streamlined domain or static IP ranges during onboarding when connecting devices to Microsoft Defender for Endpoint         
author: siosulli
ms.author: siosulli 
manager: deniseb 
ms.topic: how-to
ms.service: defender-endpoint
ms.subservice: onboard
ms.localizationpriority: medium 
ms.collection: 
- m365-security
- tier1
ms.reviewer: pahuijbr
search.appverid: MET150
audience: ITPro
ms.date: 03/07/2024
---

# Onboarding devices using streamlined connectivity for Microsoft Defender for Endpoint 

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

[!Include[Prerelease information](../../includes/prerelease.md)]

> [!NOTE] 
>The streamlined onboarding method is currently in public preview. Make sure to review the prerequisites to confirm requirements and supported operating systems.

The Microsoft Defender for Endpoint service may require the use of proxy configurations to report diagnostic data and communicate data to the service. Prior to the availability of the streamlined connectivity method, other URLs were required and Defender for Endpoint static IP ranges weren't supported. For more information on full MDE connectivity processes, see [STEP 1: Configure your network environment to ensure connectivity with Defender for Endpoint service](configure-environment.md).

This article describes the streamlined device connectivity method and how to onboard new devices to use a simpler deployment and management of Defender for Endpoint cloud connectivity services. For more information on migrating previously onboarded devices, see [Migrating devices to streamlined connectivity](migrate-devices-streamlined.md). 

To simplify network configuration and management, you now have the option of onboarding devices to Defender for Endpoint using a reduced URL set or static IP ranges. See, [streamlined URL list](https://go.microsoft.com/fwlink/?linkid=2248278)

The Defender for Endpoint-recognized simplified domain: `*.endpoint.security.microsoft.com` replaces the following core Defender for Endpoint services:

- Cloud Protection/MAPS
- Malware Sample Submission Storage
- Auto-IR Sample Storage
- Defender for Endpoint Command & Control
- EDR Cyberdata

To support network devices without hostname resolution or wildcard support, you can alternatively configure connectivity using dedicated Defender for Endpoint static IP ranges. For more information, see [Configure connectivity using static IP ranges](#option-2-configure-connectivity-using-static-ip-ranges).


> [!NOTE] 
> The simplified connectivity method will **not change how Microsoft Defender for Endpoint functions on a device nor will it change the end-user experience**. Only the URLs or IPs that a device uses to connect to the service will change. 

> [!IMPORTANT]
> Preview limitations and known issues: <br/>
> - Streamlined connectivity does not support onboarding through API (includes Microsoft Defender for Cloud and Intune).
> - This onboarding method has specific prerequisites that do not apply to the standard onboarding method.

## Consolidated services 

The following Defender for Endpoint URLs consolidated under the streamlined domain should no longer be required for connectivity if `*.endpoint.security.microsoft.com` is allowed and devices are onboarded using the streamlined onboarding package. You will need to maintain connectivity with other required services not consolidated that are relevant to your organization (for example, CRL, SmartScreen/Network Protection, and WNS).


For the updated list of required URLs, see [Download the spreadsheet here](https://go.microsoft.com/fwlink/?linkid=2248278).

> [!IMPORTANT]
> If you are configuring using IP ranges, you will need to separately configure the EDR cyberdata service. This service is not consolidated on an IP level. See section below for more details.

| Category   | Consolidated URLs  |
|------------|---------------|
| MAPS: cloud-delivered protection   | `*.wdcp.microsoft.com` <br/>`*.wd.microsoft.com`  |
| Cloud protection &  <br/>security intelligence updates for macOS and Linux  | `unitedstates.x.cp.wd.microsoft.com` <br/>`europe.x.cp.wd.microsoft.com` <br/>`unitedkingdom.x.cp.wd.microsoft.com`<br/> `x.cp.wd.microsoft.com` <br/>`https://www.microsoft.com/security/encyclopedia/adlpackages.aspx` |
| Malware Sample Submission Storage   | `ussus1eastprod.blob.core.windows.net` <br/>`ussus2eastprod.blob.core.windows.net` <br/>`ussus3eastprod.blob.core.windows.net` <br/>`ussus4eastprod.blob.core.windows.net` <br/>`wsus1eastprod.blob.core.windows.net` <br/>`wsus2eastprod.blob.core.windows.net` <br/>`ussus1westprod.blob.core.windows.net` <br/>`ussus2westprod.blob.core.windows.net` <br/>`ussus3westprod.blob.core.windows.net` <br/>`ussus4westprod.blob.core.windows.net` <br/>`wsus1westprod.blob.core.windows.net`<br/>`wsus2westprod.blob.core.windows.net` <br/>`usseu1northprod.blob.core.windows.net` <br/>`wseu1northprod.blob.core.windows.net` <br/>`usseu1westprod.blob.core.windows.net` <br/>`wseu1westprod.blob.core.windows.net` <br/>`ussuk1southprod.blob.core.windows.net` <br/>`wsuk1southprod.blob.core.windows.net` <br/>`ussuk1westprod.blob.core.windows.net` <br/>`wsuk1westprod.blob.core.windows.net`  |
| Defender for Endpoint Auto-IR Sample Storage   | `automatedirstrprdcus.blob.core.windows.net` <br/>`automatedirstrprdeus.blob.core.windows.net` <br/>`automatedirstrprdcus3.blob.core.windows.net` <br/>`automatedirstrprdeus3.blob.core.windows.net` <br/>`automatedirstrprdneu.blob.core.windows.net` <br/>`automatedirstrprdweu.blob.core.windows.net` <br/>`automatedirstrprdneu3.blob.core.windows.net` <br/>`automatedirstrprdweu3.blob.core.windows.net` <br/>`automatedirstrprduks.blob.core.windows.net` <br/>`automatedirstrprdukw.blob.core.windows.net` |
| Defender for Endpoint Command and Control   | `winatp-gw-cus.microsoft.com` <br/>`winatp-gw-eus.microsoft.com` <br/>`winatp-gw-cus3.microsoft.com` <br/>`winatp-gw-eus3.microsoft.com` <br/>`winatp-gw-neu.microsoft.com` <br/>`winatp-gw-weu.microsoft.com` <br/>`winatp-gw-neu3.microsoft.com` <br/>`winatp-gw-weu3.microsoft.com` <br/>`winatp-gw-uks.microsoft.com` <br/>`winatp-gw-ukw.microsoft.com` |
| EDR Cyberdata | `events.data.microsoft.com` <br/>`us-v20.events.data.microsoft.com` <br/> `eu-v20.events.data.microsoft.com` <br/>`uk-v20.events.data.microsoft.com` |


## Before you begin 

Devices must meet specific prerequisites to use the streamlined connectivity method for Defender for Endpoint. Ensure the prerequisites are met before proceeding with onboarding.
 
### Prerequisites

**License:**

- Microsoft Defender for Endpoint Plan 1
- Microsoft Defender for Endpoint Plan 2
- Microsoft Defender for Business
- Microsoft Defender Vulnerability Management

**Minimum KB update (Windows)**

- SENSE version: 10.8040.*/ March 8, 2022 or higher (see table)

**Microsoft Defender Antivirus versions (Windows)**

- **Antimalware Client:** 4.18.2211.5 
- **Engine:** 1.1.19900.2 
- **Antivirus (Security Intelligence):** 1.391.345.0

**Defender Antivirus versions (macOS/Linux)**

- [macOS supported versions](microsoft-defender-endpoint-mac.md) with MDE product version 101.24022.*+
- [Linux supported versions](microsoft-defender-endpoint-linux.md) with MDE product version 101.24022.*+

**Supported Operating Systems**

-   Windows 10 version 1809 or later
    -    Windows 10 versions 1607, 1703, 1709, 1803 are supported on the streamlined onboarding package but require a different URL list, see [streamlined URL sheet](https://go.microsoft.com/fwlink/?linkid=2248278)
-   Windows 11
-   Windows Server 2019
-   Windows Server 2022
-   Windows Server 2012 R2, Server 2016 R2, fully updated running Defender for Endpoint modern unified solution (installation through MSI).
- [macOS supported versions](microsoft-defender-endpoint-mac.md) with MDE product version 101.24022.*+
- [Linux supported versions](microsoft-defender-endpoint-linux.md) with MDE product version 101.24022.*+

> [!IMPORTANT]
> - **Devices running on MMA agent are not supported** on the streamlined connectivity method and will need to continue using the standard URL set (Windows 7, Windows 8.1, Windows Server 2008 R2 MMA, Server 2012 & 2016 R2 not upgraded to modern unified agent). 
> - Windows Server 2012 R2 and Server 2016 R2 will need to upgrade to unified agent to leverage the new method. <br/>
> - Windows 10 1607, 1703, 1709, 1803 can leverage the new onboarding option but will use a longer list. For more information, see [streamlined URL sheet](https://go.microsoft.com/fwlink/?linkid=2248278).

| Windows   OS    |     Minimum   KB Required (March 8, 2022)    |
|:---|:---|
|     Windows 11    |     KB5011493   (March 8, 2022)    |
|     Windows 10 1809,   Windows Server 2019    |     KB5011503  (March 8, 2022)    |
|     Windows 10 19H2   (1909)    |     KB5011485   (March 8, 2022)    |
|     Windows 10 20H2,   21H2    |     KB5011487   (March 8, 2022)    |
|     Windows 10 22H2    |     KB5020953 (October   28, 2022)    |
|     Windows 10 1803*    |     < end of   service >     |
|     Windows 10 1709*    |     < end of   service >     |
|     Windows Server   2022    |     KB5011497   (March 8, 2022)    |
|     Windows Server   2012 R2, 2016*    |     Unified Agent    |
|     Windows Server   2016 R2    |     Unified Agent    |

## Streamlined connectivity process

The following illustration shows the streamlined connectivity process and the corresponding stages:

:::image type="content" source="media/streamlined-connectivity-process.png" alt-text="Illustration of  streamlined connectivity process":::


### Stage 1. Configure your network environment for cloud connectivity 

Once you confirm prerequisites are met, ensure your network environment is properly configured to support the streamlined connectivity method. Using the streamlined method (preview), follow the steps outlined in [Configure your network environment to ensure connectivity with Defender for Endpoint service](configure-environment.md). 

Defender for Endpoint services consolidated under the simplified method should no longer be required for connectivity. However, some URLs aren't included in the consolidation. 

Streamlined connectivity allows you to use the following option to configure cloud connectivity:

- [Option 1: Use the simplified domain](#option-1-configure-connectivity-using-the-simplified-domain)
- [Option 2: Use static IP ranges](#option-2-configure-connectivity-using-static-ip-ranges)
 
#### Option 1: Configure connectivity using the simplified domain

Configure your environment to allow connections with the simplified Defender for Endpoint domain: `*.endpoint.security.microsoft.com`. For more information, see [Configure your network environment to ensure connectivity with Defender for Endpoint service](configure-environment.md).

You must maintain connectivity with remaining required services listed under the [updated list](https://go.microsoft.com/fwlink/?linkid=2248278). For example, Certification Revocation List, Windows update, SmartScreen.

#### Option 2: Configure connectivity using static IP ranges 

With streamlined connectivity, IP-based solutions can be used as an alternative to URLs. These IPs cover the following services:

- MAPS
- Malware Sample Submission Storage
- Auto-IR Sample Storage
- Defender for Endpoint Command and Control

> [!IMPORTANT]
> The EDR Cyber data service must be configured separately if you are using the IP method (this service is only consolidated on a URL level).You must also maintain connectivity with other required services including SmartScreen, CRL, Windows Update, and other services.<br/>

In order to stay up to date on IP ranges, it is recommended to refer to the following Azure service tags for Microsoft Defender for Endpoint services. The latest IP ranges will always be found in the service tag. For more information, see [Azure IP ranges](https://azureipranges.azurewebsites.net/).

| Service tag name    |    Defender for Endpoint services included   |
|:---|:---|
| MicrosoftDefenderForEndpoint | MAPS, Malware Sample Submission Storage, Auto-IR Sample Storage,  Command and Control. |
| OneDsCollector | EDR Cyberdata <br/><br/> Note: The traffic under this service tag isn't limited to Defender for Endpoint and may include diagnostic data traffic for other Microsoft services. |

The following table lists the current static IP ranges. For latest list, refer to the Azure service tags.


|Geo|IP Ranges|
|------|-------|
|US|`20.15.141.0/24` <br/> `20.242.181.0/24` <br/>`20.10.127.0/24`<br/>`13.83.125.0/24`|
|EU|`4.208.13.0/24` <br/>`20.8.195.0/24`|
|UK|`20.26.63.224/28` <br/>`20.254.173.48/28`|
|AU|`68.218.120.64/28` <br/>`20.211.228.80/28`|

> [!IMPORTANT]
> In compliance with Defender for Endpoint security and compliance standards, your data will be processed and stored in accordance with your tenant's physical location. Based on client location, traffic may flow through any of these IP regions (which correspond to Azure datacenter regions). For more information, see [Data storage and privacy](/microsoft-365/security/defender-endpoint/data-storage-privacy).  

### Stage 2. Configure your devices to connect to Defender for Endpoint service

Configure devices to communicate through your connectivity infrastructure. Ensure devices meet prerequisites and have updated sensor and Microsoft Defender Antivirus versions.  For more information, see [Configure device proxy and Internet connection settings ](/microsoft-365/security/defender-endpoint/configure-proxy-internet).

### Stage 3. Verify client connectivity preonboarding

For more information, see [Verify client connectivity](verify-connectivity.md).

The following preonboarding checks can be run on both Windows and Xplat MDE Client analyzer: [Download the Microsoft Defender for Endpoint client analyzer](download-client-analyzer.md).

To test streamlined connectivity for devices not yet onboarded to Defender for Endpoint, you can use the Client Analyzer for Windows using the following commands: 

- Run `mdeclientanalyzer.cmd -o <path to cmd file>`  from within MDEClientAnalyzer folder. The command uses parameters from onboarding package to test connectivity.

- Run `mdeclientanalyzer.cmd -g <GW_US, GW_UK, GW_EU>` , where parameter is of GW_US, GW_EU, GW_UK. GW refers to the streamlined option. Run with applicable tenant geo.

As a supplementary check, you can also use the client analyzer to test whether a device meets pre-requisites: https://aka.ms/BetaMDEAnalyzer
 

> [!NOTE]
> For devices not yet onboarded to Defender for Endpoint, client analyzer will test against standard set of URLs. To test the streamlined approach, you will need to run with the switches listed earlier in this article. 

### Stage 4. Apply the new onboarding package required for streamlined connectivity

Once you configure your network to communicate with the full list of services, you can begin onboarding devices using the streamlined method. Note that onboarding via API isn't currently supported (includes Intune & Microsoft Defender for Cloud).  

Before proceeding, confirm devices meet the [prerequisites](#prerequisites) and have updated the sensor and Microsoft Defender Antivirus versions. 


To get the new package, in Microsoft Defender XDR, select **Settings > Endpoints > Device management> Onboarding**.


Select the applicable operating system and choose "Streamlined (preview)" from the Connectivity type dropdown menu.

 For new devices (not onboarded to Defender for Endpoint) supported under this method, follow onboarding steps from previous sections using the updated onboarded package with your preferred deployment method:

- [Onboard Windows Client](onboard-windows-client.md)
- [Onboard Windows Server](configure-server-endpoints.md)
- [Onboard non-Windows devices](configure-endpoints-non-windows.md)
- [Run a detection test on a device to verify it has been properly onboarded to Microsoft Defender for Endpoint](run-detection-test.md)


Exclude devices from any existing onboarding policies that use the standard onboarding package.

For migrating devices already onboarded to Defender for Endpoint, see [Migrating devices to the streamlined connectivity](migrate-devices-streamlined.md). You must reboot your device and follow specific guidance here.  

:::image type="content" source="media/migrate-devices-streamlined.png" alt-text="Screenshot of onboarding page with streamlined connectivity":::


When you're ready to set the default onboarding package to streamlined, you can turn on the following Advanced Feature setting in the Microsoft Defender portal (**Settings > Endpoints > Advanced Features**).

> [!NOTE]
> Before moving forward with this option, validate that your environment is ready and all devices meet prerequisites.


:::image type="content" source="media/advanced-setting-streamlined-connectivity.png" alt-text="Screenshot of advanced settings page with streamlined connectivity option":::

This setting sets the default onboarding package to 'streamlined' for applicable operating systems.  You can still use the standard onboarding package within the onboarding page but you must specifically select it in the drop-down.  
