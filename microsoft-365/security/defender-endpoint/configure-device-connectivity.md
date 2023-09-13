---
title: Onboarding devices using streamlined connectivity for Microsoft Defender for Endpoint 
description: Learn how to use a simplified domain or static IP ranges during onboarding when connecting devices to Microsoft Defender for Endpoint         
author: mjcaparas
ms.author: macapara 
manager: dansimp 
ms.topic: how-to
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium 
ms.collection: 
- m365-security
- tier1
ms.reviewer: 
search.appverid: MET150
audience: ITPro
ms.date: 08/15/2023
---

# Onboarding devices using streamlined connectivity for Microsoft Defender for Endpoint 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


[!Include[Prerelease information](../../includes/prerelease.md)]

The Microsoft Defender for Endpoint service requires the use of proxy configurations to report diagnostic data and communicate data to the service. 

This article describes the streamlined device connectivity method and how to onboard new devices so that you can use the straightforward deployment and management of Defender for Endpoint cloud connectivity services. For more information on migrating previously onboarded devices, see [Migrating devices to streamlined connectivity](migrate-devices-streamlined.md). 


To simplify network configuration and management, you now have the option of onboarding devices to Defender for Endpoint using a reduced URL set or static IP ranges. 

The Defender for Endpoint-recognized simplified domain: **\*.endpoint.security.microsoft.com** replaces the following core Defender for Endpoint services: Cloud Protection/MAPS, Malware Sample Submission Storage, AutoIR Sample Storage,  Defender for Endpoint Command & Control, and EDR Cyberdata. 

Alternatively, to support network devices without hostname resolution or wildcard support, you can configure connectivity using dedicated Defender for Endpoint static IP ranges. For more information, see [Configure connectivity using static IP ranges](#option-2-configure-connectivity-using-static-ip-ranges).


Prior to the availability of the simplified method of device connectivity, specific URLs had to be added to the allowed domains list. Defender for Endpoint static IP ranges weren't supported. For more information, see [Configure your environment to connect to the Defender for Endpoint service](configure-environment.md#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server). 

>[!NOTE] 
>The simplified connectivity method will **not change how Microsoft Defender for Endpoint functions on a device nor will it change the end-user experience**. Only the URLs or IPs that a device uses to connect to the service will change. 

>[!IMPORTANT]
>Preview limitiations and known issues: <br/>
>- Streamlined connectivity does not support onboarding through Microsoft Defender for Cloud or Intune's API method.
>- This onboarding method has specific prerequisites that do not apply to the standard onboarding method.

## Consolidated services 


As part of this preview, this section lists the Defender for Endpoint services that have been consolidated under the new simplified domain. Previously, you may have been using these individual endpoints. 

The following table lists the Defender for Endpoint service URLs that are consolidated under the new simplified domain: **\*.endpoint.security.microsoft.com**.

For the full list of required URLs, see [Enable access to the Defender for Endpoint service URLs in the proxy server](configure-environment.md#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server).

>[!NOTE] 
>You will need to onboard devices using the strealined onboarding package to leverage the reduced URL set. 


>[!IMPORTANT]
>The following Defender for Endpoint URLs consolidated under the simplified domain should no longer be required for connectivity if **\*.endpoint.security.microsoft.com** is allowed and devices are onboarded using the streamlined onboarding package. For more information, see the preceeding section. <br/>
>You will need to maintain connectivity with other required services not consolidated that are relevant to your organization (for example, CRL, SmartScreen/Network Protection, and WNS). For more information on the detailed list of URLs, [Download the spreadsheet here](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx).

>[!NOTE]
>Applies to Windows, macOS, and Linux.


#### Consolidated endpoints (Windows, macOS, and Linux)


> [!NOTE]
> This list may evolve and new URLs may be added as more services get consolidated under the new domain.


> [!IMPORTANT]
> If you are configuring using IP ranges, you will need to separately configure the EDR cyberdata service. This service is not consolidated on an IP level. See section below for more details.

| Category   | Service URLs  |
|------------|---------------|
| MAPS: cloud-delivered protection   | `*.wdcp.microsoft.com` <br/>`*.wd.microsoft.com`  |
| Cloud protection &  <br/>security intelligence updates for macOS and Linux  | `unitedstates.x.cp.wd.microsoft.com` <br/>`europe.x.cp.wd.microsoft.com` <br/>`unitedkingdom.x.cp.wd.microsoft.com`<br/> `x.cp.wd.microsoft.com`  <br/>`https://www.microsoft.com/security/encyclopedia/adlpackages.aspx ` |
| Malware Sample Submission Storage   | `ussus1eastprod.blob.core.windows.net` <br/>`ussus2eastprod.blob.core.windows.net` <br/>`ussus3eastprod.blob.core.windows.net` <br/>`ussus4eastprod.blob.core.windows.net` <br/>`wsus1eastprod.blob.core.windows.net` <br/>`wsus2eastprod.blob.core.windows.net` <br/>`ussus1westprod.blob.core.windows.net` <br/>`ussus2westprod.blob.core.windows.net` <br/>`ussus3westprod.blob.core.windows.net` <br/>`ussus4westprod.blob.core.windows.net` <br/>`wsus1westprod.blob.core.windows.net`<br/>`wsus2westprod.blob.core.windows.net` <br/>`usseu1northprod.blob.core.windows.net` <br/>`wseu1northprod.blob.core.windows.net` <br/>`usseu1westprod.blob.core.windows.net` <br/>`wseu1westprod.blob.core.windows.net` <br/>`ussuk1southprod.blob.core.windows.net` <br/>`wsuk1southprod.blob.core.windows.net` <br/>`ussuk1westprod.blob.core.windows.net` <br/>`wsuk1westprod.blob.core.windows.net`  |
| Defender for Endpoint AutoIR Sample Storage   | `automatedirstrprdcus.blob.core.windows.net` <br/>`automatedirstrprdeus.blob.core.windows.net` <br/>`automatedirstrprdcus3.blob.core.windows.net` <br/>`automatedirstrprdeus3.blob.core.windows.net` <br/>`automatedirstrprdneu.blob.core.windows.net` <br/>`automatedirstrprdweu.blob.core.windows.net` <br/>`automatedirstrprdneu3.blob.core.windows.net` <br/>`automatedirstrprdweu3.blob.core.windows.net` <br/>`automatedirstrprduks.blob.core.windows.net` <br/>`automatedirstrprdukw.blob.core.windows.net` |
| Defender for Endpoint Command and Control   | `winatp-gw-cus.microsoft.com` <br/>`winatp-gw-eus.microsoft.com` <br/>`winatp-gw-cus3.microsoft.com` <br/>`winatp-gw-eus3.microsoft.com` <br/>`winatp-gw-neu.microsoft.com` <br/>`winatp-gw-weu.microsoft.com` <br/>`winatp-gw-neu3.microsoft.com` <br/>`winatp-gw-weu3.microsoft.com` <br/>`winatp-gw-uks.microsoft.com` <br/>`winatp-gw-ukw.microsoft.com` |
| EDR Cyberdata | `events.data.microsoft.com` <br/>`us-v20.events.data.microsoft.com` <br/>`eu-v20.events.data.microsoft.com` <br/>`uk-v20.events.data.microsoft.com` |


## Before you begin 

Devices must meet specific prerequisites to use the streamlined connectivity method for Defender for Endpoint. Ensure the prerequisites are met before proceeding with onboarding.
 
### Prerequisites

**License:**
  - Microsoft Defender for Endpoint Plan 1
  - Microsoft Defender for Endpoint Plan 2
  - Microsoft Defender for Business
  - Microsoft Defender Vulnerability Management

**Minimum KB update (Windows)**
  - SENSE version: 10.8040.*/ March 8th 2022 or higher (see table)

**Defender Antivirus versions (Windows)**
   - **Antimalware Client:** 4.18.2211.5 
   - **Engine:** 1.1.19900.2 
   - **Antivirus (Security Intelligence):** 1.381.1853.0 

**Supported Operating Systems**

-   Windows 10 version 1809 or later
    -    Windows 10 versions 1607, 1703, 1709, 1803 are supported on the streamlined onboarding package but require a different URL list (see updated URL sheet)
-   Windows 11
-   Windows Server 2019
-   Windows Server 2022
-   Windows Server 2012 R2, Server 2016 R2, fully updated running Defender for Endpoint modern unified solution (installation through MSI).
- macOS supported versions with Defender for Endpoint product version 101.23052.0003 +.*
- Linux supported versions with Defender for Endpoint product version 101.23052.0003 +.*

>[!IMPORTANT]
>- **Devices running on MMA agent are not supported** on the streamlined onboarding method and will need to continue using legacy URL set (Windows 7, Windows 8.1, Windows Server 2008 R2 MMA, Servers not upgraded to Unified Agent (MMA)). 
>- Windows Server 2012 R2 and Server 2016 R2 will need to upgrade to unified agent to leverage the new method. <br/>
>- Windows 10 1607, 1703, 1709, 1803 can leverage the new onboarding option but will need to use a longer list. For more information, see [Updated URL sheet - ADD LINK TO SHEET]().

| Windows   OS    |     Minimum   KB Required (March 8, 2022)    |
:---|:---
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

:::image type="content" source="images/streamlined-connectivity-process.png" alt-text="Illustration of  streamlined connectivity process":::


### Stage 1. Configure your network environment for cloud connectivity 

Once you confirm prerequisites are met, ensure your network environment is properly configured to support the streamlined connectivity method. Follow the steps outlined in using streamlined (preview method),  [Configure your network environment to ensure connectivity with Defender for Endpoint service](configure-environment.md). 

Defender for Endpoint services consolidated under the simplified method should no longer be required for connectivity. However, some URLs aren't included in the consolidation. 

Streamlined connectivity allows you to use the following option to configure cloud connectivity:

- [Option 1: Use the simplified domain](#option-1-configure-connectivity-using-the-simplified-domain)
- [Option 2: Use static IP ranges](#option-2-configure-connectivity-using-static-ip-ranges)
 

#### Option 1: Configure connectivity using the simplified domain

Configure your environment to allow connections with the simplified Defender for Endpoint domain: **\*.endpoint.security.microsoft.com**. For more information, see [Configure your network environment to ensure connectivity with Defender for Endpoint service](configure-environment.md).

You must maintain connectivity with remaining required services listed under the updated list: [LINK](). For example, Certification Revocation List, Windows update, SmartScreen.

#### Option 2: Configure connectivity using static IP ranges 

With streamlined connectivity, IP-based solutions can be used as an alternative to URLs. These IPs cover the following services:

- MAPS
- Malware Sample Submission Storage
- AutoIR Sample Storage
- Defender for Endpoint Command and Control

>[!IMPORTANT]
>The EDR Cyber data service must be configured separately if you are using the IP method (this service is only consolidated on a URL level). Similarly to Option 1, you must maintain connectivity with other required services including SmartScreen, CRL, Windows Update, and other services.<br/>
>It is recommended to refer to the following Azure service tags for Microsoft Defender for Endpoint services. The latest IP ranges will always be found in the service tag.  
>For more information, see [Download Azure IP Ranges and Service Tags – Public Cloud from Official Microsoft Download Center](https://www.microsoft.com/download/details.aspx?WT.mc_id=DP-MVP-5004154&id=56519), [Azure IP ranges](https://azureipranges.azurewebsites.net/).




| Service tag name    |    Defender for Endpoint services included   |
:---|:---
MicrosoftDefenderForEndpoint | MAPS, Malware Sample Submission Storage, AutoIR Sample Storage,  Command and Control.
OneDsCollector | EDR Cyberdata <br/><br/> Note: The traffic under this service tag isn't limited to Defender for Endpoint and includes diagnostic data traffic for other Microsoft services. 


The following table lists the current static IP ranges. For latest list, refer to the Azure service tags.


| **Geo**  | **IP Ranges**   |
|-----------------------|------------------------------|
| US    |20.15.141.0/24  <br/> 20.242.181.0/24 <br/>20.10.127.0/24<br/>13.83.125.0/24        |
| EU       |4.208.13.0/24  <br/>20.8.195.0/24       |
|UK      | 20.26.63.224/28  <br/>20.254.173.48/28     |


>[!IMPORTANT]
> In compliance with Defender for Endpoint security and compliance standards, your data will be processed and stored in accordance with your tenant's physical location. Based on client location, traffic may flow through any of these IP regions (which correspond to Azure datacenter regions). For more information, see [Data storage and privacy](/microsoft-365/security/defender-endpoint/data-storage-privacy).  

### Stage 2. Configure your devices to connect to Defender for Endpoint service

Configure devices to communicate through your connectivity infrastructure. Ensure devices meet prerequisites and have updated sensor and Microsoft Defender Antivirus versions.  For more information, see [Configure device proxy and Internet connection settings ](/microsoft-365/security/defender-endpoint/configure-proxy-internet).

### Stage 3. Verify client connectivity preonboarding


For more information, see [Verify client connectivity](verify-connectivity.md).

To test streamlined connectivity for devices not yet onboarded to Defender for Endpoint, you can use the Client Analyzer for Windows using the following commands: 

- Run `mdeclientanalyzer.cmd -o <path to cmd file>`  from within MDEClientAnalyzer folder. The command uses parameters from onboarding package to test connectivity.  

- Run `mdeclientanalyzer.cmd -g <GW_US, GW_UK, GW_EU>` , where parameter  is of GW_US, GW_EU, GW_UK. GW refers to the streamlined option. Run with applicable tenant geo. 
 

> [!NOTE]
> For devices not yet onboarded to Defender for Endpoint, client analyzer will test against standard set of URLs. To test the streamlined approach, you will need to run with the switches listed above. 

For Client Analyzer on macOS/Linux: **ADD INFO HERE**

### Stage 4. Apply the new onboarding package required for streamlined connectivity

Once you configure your network to communicate with the full list of services, you can begin onboarding devices using the streamlined method.  

Before proceeding, confirm devices meet the [prerequisites](#prerequisites) and have updated the sensor and Microsoft Defender Antivirus versions. 


To get the new package, in Microsoft 365 Defender, select **Settings > Endpoints > Device management> Onboarding**.


Select the applicable operating system and choose "Streamlined (preview)" from the Connectivity type dropdown menu.

 For new devices (not onboarded to Defender for Endpoint) supported under this method, follow onboarding steps from previous sections using the updated onboarded package with your preferred deployment method:

- [Onboard Windows Client](onboard-windows-client.md)
- [Onboard Windows Server](configure-server-endpoints.md)
- [Onboard non-Windows devices](configure-endpoints-non-windows.md)
- [Run a detection test on a device to verify it has been properly onboarded to Microsoft Defender for Endpoint](run-detection-test.md)


Exclude devices from any existing onboarding policies that use the standard onboarding package.

For migrating devices already onboarded to Defender for Endpoint, see [Migrating devices to the streamlined connectivity](migrate-devices-streamlined.md). You must reboot your device and follow specific guidance here.  

:::image type="content" source="images/migrate-devices-streamlined.png" alt-text="Screenshot of onboarding page with streamlined connectivity":::


Once you are ready to set the default onboarding package to streamlined, you can turn on the following Advanced Feature setting in the Microsoft 365 Defender portal (**Settings > Endpoints > Advanced Features**).

>[!NOTE]
>Validate that your environment is ready before moving forward with this option.


:::image type="content" source="images/advanced-setting-streamlined-connectivity.png" alt-text="Screenshot of advanced settings page with streamlined connectivity option":::

This setting will set the default onboarding package to 'streamlined' for applicable operating systems.  You will still have the option to use the standard onboarding package within the onboarding page but you will need to specifically select it in the drop-down.  




