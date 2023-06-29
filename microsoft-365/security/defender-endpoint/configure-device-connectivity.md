---
title: Onboarding devices using streamlined device connectivity for Microsoft Defender for Endpoint 
description: Learn how to use a simplified domain or static IP ranges during onboarding when connecting devices to Microsoft Defender for Endpoint         
author: mjcaparas
ms.author: macapara 
manager: dansimp 
ms.date: 6/28/2023
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
---

# Onboarding devices using streamlined device connectivity for Microsoft Defender for Endpoint 



[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


[!Include[Prerelease information](../../includes/prerelease.md)]

The Microsoft Defender for Endpoint service requires the use of proxy configurations to report diagnostic data and communicate data to the service. 

To simplify the configuration of network requirements and ease management, you now have the option of onboarding devices to Defender for Endpoint using a reduced URL set. The Defender for Endpoint-recognized simplified domain: **\*.endpoint.security.microsoft.com** replaces the following core Defender for Endpoint services: Cloud Protection/MAPS, Malware Sample Submission Storage, AutoIR Sample Storage,  Defender for Endpoint Command & Control, and EDR Cyberdata. 

Alternatively, you can now configure connectivity using dedicated static IP ranges for Microsoft Defender for Endpoint. For more information, see [Configure connectivity using static IP ranges](#option-2-configure-connectivity-using-static-ip-ranges).

> [!NOTE] 
> The simplified connectivity method will **not change how Microsoft Defender for Endpoint functions on a device nor will it change the end-user experience**. Only the URLs or IPs that a device uses to connect to the service will change. 

Prior to the availability of the simplified method of device connectivity, specific URLs had to be added to the allowed domains list. For more information, see [Configure your environment to connect to the Defender for Endpoint service](configure-environment.md#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server). 


In this article, you'll be guided on how to migrate previously onboarded Defender for Endpoint devices and onboard new devices using the simplified method of device connectivity so you can leverage the straightforward deployment and management of Defender for Endpoint cloud connectivity services.  

This solution also provides support for network devices without hostname resolution or wildcard support through provision of dedicated Defender for Endpoint static IP range. For more information, see [Configure connectivity using static IP ranges](#option-2-configure-connectivity-using-static-ip-ranges).

## Consolidated services 
Previously, you may have been using endpoints listed in the table below. 

The following table lists the Defender for Endpoint service URLs that are consolidated under the new simplified domain: **\*.endpoint.security.microsoft.com**.

>[!NOTE] 
>You will need to onboard devices using the modified onboarding script to leverage this reduced URL set. 

>[!IMPORTANT]
> The following Defender for Endpoint URLs consolidated under the simplified domain should no longer be required for connectivity if \*.endpoint.security.microsoft.com is allowed and devices are onboarded using the updated onboarding script. For more information, see   . You ill need to maintain connectivity with other required services not consolidated that are relevant to your organization (for example, CRL, SmartScreen/Network Protection, and WNS). For more information on the detailed list of URLs, [Download the spreadsheet here](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx).

JOEY!! LINK TO THE MODIFIED SPREADSHEET HERE!!!

### Consolidated endpoints

The following table lists the consolidated endpoints. 

>[!NOTE]
>Applies to Windows, macOS, and Linux.

| Category                                       | Service URLs                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| MAPS: cloud-delivered protection                       | \*.wdcp.microsoft.com <br>*.wd.microsoft.com                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Cloud protection &  <br>security intelligence updates for macOS and Linux  |unitedstates.x.cp.wd.microsoft.com <br>europe.x.cp.wd.microsoft.com <br>unitedkingdom.x.cp.wd.microsoft.com<br> x.cp.wd.microsoft.com  <br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Malware Sample Submission Storage                      |ussus1eastprod.blob.core.windows.net <br>ussus2eastprod.blob.core.windows.net <br>ussus3eastprod.blob.core.windows.net <br>ussus4eastprod.blob.core.windows.net <br>wsus1eastprod.blob.core.windows.net <br>wsus2eastprod.blob.core.windows.net <br>ussus1westprod.blob.core.windows.net <br>ussus2westprod.blob.core.windows.net <br>ussus3westprod.blob.core.windows.net <br>ussus4westprod.blob.core.windows.net <br>wsus1westprod.blob.core.windows.net <br>wsus2westprod.blob.core.windows.net <br>usseu1northprod.blob.core.windows.net <br>wseu1northprod.blob.core.windows.net <br>usseu1westprod.blob.core.windows.net <br>wseu1westprod.blob.core.windows.net <br>ussuk1southprod.blob.core.windows.net <br>wsuk1southprod.blob.core.windows.net <br>ussuk1westprod.blob.core.windows.net <br>wsuk1westprod.blob.core.windows.net  |
| Defender for Endpoint AutoIR Sample Storage                              | automatedirstrprdcus.blob.core.windows.net <br>automatedirstrprdeus.blob.core.windows.net <br>automatedirstrprdcus3.blob.core.windows.net <br>automatedirstrprdeus3.blob.core.windows.net <br>automatedirstrprdneu.blob.core.windows.net <br>automatedirstrprdweu.blob.core.windows.net <br>automatedirstrprdneu3.blob.core.windows.net <br>automatedirstrprdweu3.blob.core.windows.net <br>automatedirstrprduks.blob.core.windows.net <br>automatedirstrprdukw.blob.core.windows.net                                                                                                                                                                                                                                                                                                                                                        |
| Defender for Endpoint Command and Control                                |winatp-gw-cus.microsoft.com <br>winatp-gw-eus.microsoft.com <br>winatp-gw-cus3.microsoft.com <br>winatp-gw-eus3.microsoft.com <br>winatp-gw-neu.microsoft.com <br>winatp-gw-weu.microsoft.com <br>winatp-gw-neu3.microsoft.com <br>winatp-gw-weu3.microsoft.com <br>winatp-gw-uks.microsoft.com <br>winatp-gw-ukw.microsoft.com |
|EDR Cyberdata | events.data.microsoft.com  <br>us-v20.events.data.microsoft.com <br>eu-v20.events.data.microsoft.com  <br>uk-v20.events.data.microsoft.com  <br>


## Services not included in the consolidated domain

You'll need to maintain connectivity with the required Defender for Endpoint services that are not included in the consolidation. For a complete list of the consolidated URLs, [Download the spreadsheet here - MARYSIA TO MAKE NEW EXCEL SHEET].

The following table lists the services that are **not** included in consolidation effort. You must ensure that you maintain connectivity with the following required endpoints: 


|     Category                             |     Endpoint/URL   (not included)                                                                                                               |
|------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
|     CRL *                                |  <br><br>crl.microsoft.com <br>ctldl.windowsupdate.com <br>www.microsoft.com/pkiops/* <br>www.microsoft.com/pki/* <br>                                                    |
|     EDR Cyberdata **                    |    <br><br>events.data.microsoft.com <br>us-v20.events.data.microsoft.com <br>eu-v20.events.data.microsoft.com <br>uk-v20.events.data.microsoft.com     |
|     MU / WU                              |     <br><br>go.microsoft.com <br>definitionupdates.microsoft.com <br>https://www.microsoft.com/security/encyclopedia/adlpackages.aspx                   |
|     SmartScreen/ Network   Protection    |     <br><br>*.smartscreen-prod.microsoft.com <br>*.smartscreen.microsoft.com                                                                            |
|     Windows Notification   Service ***    |    <br><br>*.wns.windows.com  <br>login.microsoftonline.com  <br>login.live.com <br>                                                            |



\* In fully disconnected environments with no access to CRL, PreferStaticProxyForHttpRequest is a workaround for use in tandem with TelemetryProxyServer,  although should have common practice to update CTL. Clients should always have access to CRL (web browsing). 

** EDR Cyberdata is in scope for future consolidation work. This service has static IPs available under the 'OneDSCollector' Azure service tag. For more information,  see [Home Page - Azure IP Ranges](https://azureipranges.azurewebsites.net/). Traffic for these IPs is not limited to EDR cyber data - its shared across Microsoft applications such as Office, Intune, Teams, and others.  

*** WNS is an optional service used for decreasing initial connection time of Live Response. Still get full functionality of Live Response without this URL. * 

For more information on the full list, see [Download the spreadsheet here](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx).




## Before you begin 

Use the streamlined device connectivity solution on devices that have previously been onboarded to Defender for Endpoint. 
 
### Operating systems prerequisites

The following Operating Systems are supported: 

-   Windows 10, with at least KB5011487 (March 8, 2022) - excluding versions 1607 and 1703
-   Windows 11, with at least KB5011493 (March 8, 2022) 
-   Windows Server 2019, with at least KB5011503 (March 8, 2022) 
-   Windows Server 2022, with at least KB5011497 (March 8, 2022) 
-   Fully updated versions of Server 2012 R2, Server 2016 R2 running Defender for Endpoint modern unified solution (requires installation through MSI).
- macOS and Linux with Defender for Endpoint product version 101.23052.0003 or later. 
 

-   Minimum Defender Antivirus component versions: 
    - **Antimalware Client:** 4.18.2211.5 
    - **Engine:** 1.1.19900.2 
    - **Antivirus (Security Intelligence):** 1.381.1853.0 

 

## Stage 1. Configure your environment for cloud connectivity 

Because some URLs and IPs have been consolidated into the new domain, you'll need to configure your existing network device settings to connect using the new method instead.  For more information, see [Configure your network environment to ensure connectivity with Defender for Endpoint service](configure-environment.md). 

Defender for Endpoint services consolidated under the simplified method should no longer be required for connectivity. However, some URLs are not included in the consolidation. For more information on the list of services not included in the consolidation, see [Services not included in the consolidated domain](#services-not-included-in-the-consolidated-domain).

The following list provides options you can use to configure your environment for cloud connectivity:

- [Option 1: Use the simplified domain](#option-1-configure-using-the-simplified-domain)
- [Option 2: Use static IP ranges](#option-2-configure-connectivity-using-static-ip-ranges)
 




### Option 1: Configure connectivity using the simplified domain

Configure your environment to allow connections with the simplified Defender for Endpoint domain: **\*.endpoint.security.microsoft.com**. For more information, see [Configure your network environment to ensure connectivity with Defender for Endpoint service](configure-environment.md).

Ensure you have connectivity with other required Defender for Endpoint [services not consolidated](#services-not-included-in-the-consolidated-domain) under simplified method. 

### Option 2: Configure connectivity using static IP ranges 

Alternatively, if you're using the IP range method, allow firewall or proxy connections to **all of the following Defender for Endpoint** **IP** **addresses**. These ranges cover the following Defender for Endpoint services: MAPS, Malware Sample Submission Storage, AutoIR Sample Storage, Defender for Endpoint Command and Control.



| <u>**Location** </u>  | <u>**IP Range Prefix** </u>  |
|-----------------------|------------------------------|
| <u>Central US </u>    | <u>20.15.141.0/24 </u>       |
| <u>East US </u>       | <u>20.242.181.0/24 </u>      |
| <u>East US 2 </u>     | <u>20.10.127.0/24 </u>       |
| <u>West US </u>       | <u>13.83.125.0/24 </u>       |
| <u>North Europe </u>  | <u>4.208.13.0/24 </u>        |
| <u>West Europe </u>   | <u>20.8.195.0/24 </u>        |
| <u>UK South </u>      | <u>20.26.63.224/28 </u>      |
| <u>UK West </u>       | <u>20.254.173.48/28 </u>     |

>[!WARNING]
>**The Defender for Endpoint static IP ranges do not include EDR Cyberdata.** This service has static IPs available under the 'OneDSCollector' Azure service tag. For more information, see [Home Page - Azure IP Ranges](https://azureipranges.azurewebsites.net/). Traffic for these IPs is not limited to EDR cyber data - its shared across Microsoft applications such as Office, Intune, Teams, and others.


As with URL method, please ensure you maintain connectivity with other required [services not consolidated](#services-not-included-in-the-consolidated-domain).  The following static IPs only cover the following services: MAPS, Malware Sample Submission Storage, AutoIR Sample Storage, Defender for Endpoint Command and Control.


>[!IMPORTANT]
> In compliance with Defender for Endpoint security and compliance standards, your data will be processed and stored in accordance with your tenant's physical location. Based on client location, traffic may flow through any of these IP regions (which correspond to Azure datacenter regions). For more information, see [Data storage and privacy](/microsoft-365/security/defender-endpoint/data-storage-privacy).  

## Stage 2. Onboard devices using the simplified method

>[!NOTE:]
>For tenants created before *this date*, this will show as the default method. Once you have configured your network environment to communicate with the full list of required URLs you can begin onboarding or migrating devices.  

Confirm devices meet [prerequisites](#operating-systems-prerequisites) and have fully updated Microsoft Defender Antivirus versions.

Configure devices to communicate through connectivity infrastructure. For more information, see [Configure device proxy and Internet connection settings ](/microsoft-365/security/defender-endpoint/configure-proxy-internet).


### Use Defender for Endpoint Client Analyzer to validate connectivity with new URLs pre-onboarding 

Run Defender for Endpoint Client Analyzer on device to confirm pre-onboarding connectivity with new endpoints: 

1.  Download and extract [Client analyzer](https://aka.ms/BetaMDEAnalyzer).

2.  Download the 'simplified' onboarding package for relevant OS by navigating to ***Settings \> Endpoints \> Device management\> Onboarding*** in Microsoft 365 Defender portal.  

    1.  Extract the .cmd from onboarding package  

3.  Open a command prompt as an administrator. 

4.  Run **mdeclientanalyzer.cmd -o \<path to cmd file\>** from within MDEClientAnalyzer folder. The command will use parameters from onboarding script to test connectivity.

5.  View connectivity results within HTML output file or command prompt.



### Onboard devices using the streamlined method

To leverage the new simplified onboarding method, you will need to onboard devices using the updated onboarding script. The onboarding script is required to establish communication with the updated URL/static IP ranges. 

1. Navigate to the Microsoft 365 Defender portal settings page.

2. Select **Settings > Endpoints > Device management> Onboarding**.

:::image type="content" source="images/simplified-connectivity-options.png" alt-text="Screenshot of onboarding page with simplified connectivity options":::

3. Navigate to the 'Simplified Connectivity options' toggle at the top of the page. Toggle to display the streamlined onboarding approach. 


>[!NOTE]
>If your tenant was created after *INSERT DATE HERE* , you will see the simplified option as the default setting.


4. Select the relevant OS from the operating system dropdown. 
 
5. Onboard using the deployment method of choice. See the preceeding section for guidelines on each deployment method.

:::image type="content" source="images/connectivity-options.png" alt-text="Screenshot of onboarding page with operating system options":::

  


Rebooting devices is mandatory for devices that are currently onboarded to MDE. The switch will not be made until this occurs.   

>[!IMPORTANT]
>Reonboarding scenario; Reboot is required if devices have been previously onboarded to MDE. If you are migrating devices, you are not required to offboard. You can simply rerun the script & reboot. 

For more information on what tools are supported and how to use them see the next section. 

### Migrating devices using the strealined method

The following table lists the available tools based on the endpoint that you need to onboard.


MARYSIA - PLEASE VERIFY WHICH OF THE TOOLS FOR EACH OF THE OSES NEED TO BE REMOVED / OR NOT APPLICABLE - THANK YOU!!

|Endpoint|Deployment tool|
|---|---|
|**Windows**|[Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Intune/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)|
|**Windows servers | [Integration with Microsoft Defender for Cloud](azure-server-integration.md)
|**macOS**|[Local script](mac-install-manually.md) <br> [Microsoft Intune](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md)|
|**Linux servers**|[Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md) <br> [Chef](linux-deploy-defender-for-endpoint-with-chef.md)<br> [Saltstack](linux-install-with-saltack.md)|

## [**Windows 10 and 11 **](#tab/windows10and11)

## Windows 10 and 11

These our recommended approaches to migrating to the streamlined connectivity.

## [**Windows Server**](#tab/Windowsserver)

## Windows Server


Choose one of the following options to onboard Windows client devices to Defender for Business:

- [Local script](#local-script-for-windows-10-and-11) (for onboarding devices manually in the Microsoft 365 Defender portal)
- [Group Policy](#group-policy-for-windows-10-and-11) (if you're already using Group Policy in your organization)
- [Microsoft Intune](#intune-for-windows-10-and-11) (if you're already using Intune)

### Local script for Windows 10 and 11

1.  In Microsoft 365 Defender, navigate to select **Settings \> Endpoints \> Device management \> Onboarding**. 

2.  Select the applicable OS as the operating system. 

3.  Select appropriate deployment method. 

4.  Select **Download onboarding package**.  

5.  On a Windows device, extract the contents of the configuration package to a location, such as the Desktop folder. You should have a file named WindowsDefenderATPLocalOnboardingScript.cmd. 

6.  Open a command prompt as an administrator. 

7.  Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type %userprofile%\\Desktop\\WindowsDefenderATPLocalOnboardingScript.cmd, and then press the Enter key (or select **OK**). 

8.  After the script runs, [Run a detection test](/microsoft-365/security/defender-endpoint/run-detection-test). 

9.  If the device has been previously onboarded to Defender for Endpoint, restart the device.

    >[!IMPORTANT]
    >Restart the test device if it was previously onboarded to Defender for Endpoint. You may see the `OnboardedInfo` registry key switch but **you must still restart the device** for sensor communication to switch. <br><br>
    > For pre-onboarded devices, this step is mandatory for completing re-onboarding to the simplified domain. 




### Local script for Windows 10 and 11

### Intune for Windows 10 and 11






## [**macOS**](#tab/macos)

## macOS

Choose one of the following options to onboard Mac:

- [Local script for Mac](#local-script-for-mac) (*recommended*)
- [Intune for Mac](#intune-for-mac) (if you're already using Intune)

### Local script for Mac

### Intune for Mac

## [**Linux**](#tab/linux)

## Linux

---




For more information on migrating a device that was previously onboarded to the simplified domain, see [Migrating a device to the simplified domain](#migrating-a-device-to-the-simplified-domain).


## Verifying device connectivity for migrated devices


You can use the following methods to check that you have successfully connected devices:

- Client analyzer
- Registry editor??

### Use Defender for Endpoint Client Analyzer to validate connectivity post-onboarding for new endpoints

#### Validate connectivity before onboarding endpoints


1. Download ‘simplified’ onboarding package for relevant OS from ** Settings > Endpoints > Device management> Onboarding ** in Microsoft 365 Defender portal.

a. Extract the .cmd from onboarding package.

2. Open Command Prompt as administrator.

3. There are two options:

  a. Run `mdeclientanalyzer.cmd -o <path to cmd file>` from within MDEClientAnalyzer folder. The command will use parameters from onboarding script to test connectivity.

  b. Run `mdeclientanalyzer.cmd -g <GW_US, GW_UK, GW_EU>`, where parameter - MISSING BITS!!

4. View connectivity results within HTML output file or command prompt.



#### Validate connectivity after onboarding endpoints

1.  Open a command prompt as an administrator.

2.  From within folder, run MDEClientAnalyzer.cmd. The script will use what is configured on device to test connectivity.  

3.  View connectivity results within HTML output file or command prompt.


For more information, see [Verify client connectivity to Microsoft Defender for Endpoint service URLs](/microsoft-365/security/defender-endpoint/configure-proxy-internet#verify-client-connectivity-to-microsoft-defender-for-endpoint-service-urls).


### Registry editor
Check "OnboardedInfo" field in the Registry Editor (Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Advanced Threat Protection). 


>[!NOTE]
>The field may be updated in Registry prior to reboot (reboot is still necessary for previously onboarded devices for full connectivity switch).


### PowerShell detection test 

1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command runs, the Command Prompt window closes automatically. If successful, the detection test is marked as completed, and a new alert appears in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) for the newly onboarded device within about 10 minutes.



## Offboarding steps 

Use the following steps to offboard a device: 

1.  Run the 'simplified' offboarding script for the applicable OS found under the Endpoint settings offboarding page.  

2.  Restart the device.