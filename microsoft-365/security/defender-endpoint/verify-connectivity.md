---
title: Verify client connectivity to Microsoft Defender for Endpoint service URLs
description: Learn how to use Client analyzer to verify client connectivity to Defender for Endpoint
search.appverid: met150
ms.service: microsoft-365-security
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
ms.date: 09/19/2023
---


# STEP 3: Verify client connectivity to Microsoft Defender for Endpoint service URLs

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


[!Include[Prerelease information](../../includes/prerelease.md)]

Check that clients are able to connect to the Defender for Endpoint service URLs using the Defender for Endpoint Client Analyzer to ensure that endpoints are able to communicate telemetry to the service. 

For more information on the Defender for Endpoint Client Analyzer, see [Troubleshoot sensor health using Microsoft Defender for Endpoint Client Analyzer](overview-client-analyzer.md). 

> [!NOTE]
> You can run the Defender for Endpoint Client Analyzer on devices prior to onboarding and after onboarding. 
> - When testing on a device onboarded to Defender for Endpoint, the tool will use the onboarding parameters. <br>
> - When testing on a device not yet onboarded to Defender for Endpoint, the tool will use the defaults of US, UK, and EU.  


> [!NOTE]
> (Applies to public preview)<br>
> For the streamlined onboarding public preview, when testing connectivity on devices not yet onboarded to Defender for Endpoint, run `mdeclientanalyzer.cmd` with `-o <path to MDE onboarding package >`. The command will use geo parameters from the onboarding script to test connectivity. Otherwise, the default pre-onboarding test runs against the standard URL set. See the following section for more details.

Verify that the proxy configuration is completed successfully. The WinHTTP can then discover and communicate through the proxy server in your environment, and then the proxy server allows traffic to the Defender for Endpoint service URLs.

1. Download the [Microsoft Defender for Endpoint Client Analyzer tool](https://aka.ms/mdeanalyzer) where Defender for Endpoint sensor is running on. 

2. Extract the contents of MDEClientAnalyzer.zip on the device.

3. Open an elevated command line:

   1. Go to **Start** and type **cmd**.
   2. Right-click **Command prompt** and select **Run as administrator**.

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

   The tool checks the connectivity of Defender for Endpoint service URLs. Ensure the Defender for Endpoint client is configured to interact. The tool prints the results in the *MDEClientAnalyzerResult.txt* file for each URL that can potentially be used to communicate with the Defender for Endpoint services. For example:

   ```text
   Testing URL : https://xxx.microsoft.com/xxx
   1 - Default proxy: Succeeded (200)
   2 - Proxy auto discovery (WPAD): Succeeded (200)
   3 - Proxy disabled: Succeeded (200)
   4 - Named proxy: Doesn't exist
   5 - Command line proxy: Doesn't exist
   ```

If any one of the connectivity options returns a (200) status, then the Defender for Endpoint client can communicate with the tested URL properly using this connectivity method.

However, if the connectivity check results indicate a failure, an HTTP error is displayed (see HTTP Status Codes). You can then use the URLs in the table shown in [Enable access to Defender for Endpoint service URLs in the proxy server](configure-environment.md#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server). The URLs available for use depend on the region selected during the onboarding procedure.

> [!NOTE]
> The Connectivity Analyzer tool's cloud connectivity checks are not compatible with Attack Surface Reduction rule [Block process creations originating from PSExec and WMI commands](attack-surface-reduction-rules-reference.md#block-process-creations-originating-from-psexec-and-wmi-commands). You will need to temporarily disable this rule, to run the connectivity tool. Alternatively, you can temporarily add [ASR exclusions](attack-surface-reduction-rules-deployment-implement.md#customize-attack-surface-reduction-rules) when running the analyzer.
>
> When the TelemetryProxyServer is set in Registry or via Group Policy, Defender for Endpoint will fall back, it fails to access the defined proxy.


## (Public preview) Testing connectivity to the streamlined onboarding method 

If you're testing connectivity on a device that hasn't yet been onboarded to Defender for Endpoint using the streamlined approach (relevant for both new and migrating devices): 

1. Download the streamlined onboarding package for relevant OS.

2. Extract the .cmd from onboarding package.

3. Follow the instructions in the previous section to download the Client Analyzer. 

4. Run `mdeclientanalyzer.cmd -o <path to onboarding cmd file>` from within the MDEClientAnalyzer folder. The command uses geo parameters from the onboarding script to test connectivity.  

If you're testing connectivity on a device onboarded to Defender for Endpoint using the streamlined onboarding package, run the Defender for Endpoint Client Analyzer as normal. The tool uses the configured onboarding parameters to test connectivity.  

For more info on how to access streamlined onboarding script, see [Onboarding devices using streamlined device connectivity](configure-device-connectivity.md).  

## Next step

[Onboard Windows Client](onboard-windows-client.md)
[Onboard Windows Server](onboard-windows-server.md)
[Onboard non-Windows devices](configure-endpoints-non-windows.md)