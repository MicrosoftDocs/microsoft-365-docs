---
title: Onboard Windows servers to the Microsoft Defender for Endpoint service
description: Onboard Windows servers so that they can send sensor data to the Microsoft Defender for Endpoint sensor.
keywords: onboard server, server, 2012r2, 2016, 2019, server onboarding, device management, configure Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers, onboard Microsoft Defender for Endpoint servers
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.author: macapara
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365-initiative-defender-endpoint
ms.topic: article
ms.technology: mde
---

# Onboard Windows servers to the Microsoft Defender for Endpoint service

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- Windows Server 2012 R2
- Windows Server 2016
- Windows Server Semi-Annual Enterprise Channel
- Windows Server 2019 and later
- Windows Server 2019 core edition
- Windows Server 2022
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configserver-abovefoldlink)

Defender for Endpoint extends support to also include the Windows Server operating system. This support provides advanced attack detection and investigation capabilities seamlessly through the Microsoft 365 Defender console. Support for Windows Server provides deeper insight into server activities, coverage for kernel and memory attack detection, and enables response actions.

This topic describes how to onboard specific Windows servers to Microsoft Defender for Endpoint.

For guidance on how to download and use Windows Security Baselines for Windows servers, see [Windows Security Baselines](/windows/device-security/windows-security-baselines).

## Windows Server onboarding overview

You'll need to complete the following general steps to successfully onboard servers.

:::image type="content" source="images/server-onboarding-tools-methods.png" alt-text="An illustration of onboarding flow for Windows Servers and Windows 10 devices" lightbox="images/server-onboarding-tools-methods.png":::

**Windows Server 2012 R2 and Windows Server 2016**:

- Download installation and onboarding packages
- Apply the installation package
- Follow the onboarding steps for the corresponding tool

**Windows Server Semi-Annual Enterprise Channel and Windows Server 2019**:

- Download the onboarding package
- Follow the onboarding steps for the corresponding tool

>[!IMPORTANT]
>In order to be eligible to purchase Microsoft Defender for Endpoint Server SKU, you must have already purchased a combined minimum of any of the following, Windows E5/A5, Microsoft 365 E5/A5 or Microsoft 365 E5 Security subscription licenses.  For more information on licensing, see the [Product Terms](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftDefenderforEndpointServer/all).

### New Windows Server 2012 R2 and 2016 functionality in the modern unified solution

The previous implementation of onboarding Windows Server 2012 R2 and Windows Server 2016 required the use of Microsoft Monitoring Agent (MMA).

The new unified solution package makes it easier to onboard servers by removing dependencies and installation steps. In addition, this unified solution package comes with the following major improvements:

- [Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows) with [Next-generation protection](/microsoft-365/security/defender-endpoint/next-generation-protection) for Windows Server 2012 R2
- [Attack Surface Reduction (ASR) rules](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules)
- [Network Protection](/microsoft-365/security/defender-endpoint/network-protection)
- [Controlled Folder Access](/microsoft-365/security/defender-endpoint/controlled-folders)
- [Potentially Unwanted Application (PUA) blocking](/microsoft-365/security/defender-endpoint/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus)
- [Improved detection capabilities](/microsoft-365/security/defender-endpoint/overview-endpoint-detection-response)
- [Expanded response capabilities](/microsoft-365/security/defender-endpoint/respond-machine-alerts) on devices and [files](/microsoft-365/security/defender-endpoint/respond-file-alerts)
- [EDR in Block Mode](/microsoft-365/security/defender-endpoint/edr-in-block-mode)
- [Live Response](/microsoft-365/security/defender-endpoint/live-response)
- [Automated Investigation and Response (AIR)](/microsoft-365/security/defender-endpoint/automated-investigations)
- [Tamper Protection](/microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection)

Depending on the server that you're onboarding, the unified solution installs Microsoft Defender Antivirus and/or the EDR sensor. The following table indicates what component is installed and what is built in by default.

|Server version|AV|EDR|
|----|----|----|
|Windows Server 2012 R2 SP1|![Yes.](images/svg/check-yes.svg)|![Yes.](images/svg/check-yes.svg)|
|Windows Server 2016|Built-in|![Yes.](images/svg/check-yes.svg)|
|Windows Server 2019 or later|Built-in|Built-in|

If you have previously onboarded your servers using MMA, follow the guidance provided in [Server migration](server-migration.md) to migrate to the new solution.

#### Known issues and limitations in the new, unified solution package for Windows Server 2012 R2 and 2016

The following specifics apply to the new unified solution package for Windows Server 2012 R2 and 2016:

- Ensure connectivity requirements as specified in [Enable access to Microsoft Defender for Endpoint service URLs in the proxy server](/microsoft-365/security/defender-endpoint/configure-proxy-internet?enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server) are met. They are equivalent to those for Windows Server 2019.
- We have identified an issue with Windows Server 2012 R2 connectivity to cloud when static TelemetryProxyServer is used **and** the certificate revocation list (CRL) URLs are not reachable from the SYSTEM account context. The immediate mitigation is to either use an alternative proxy option ("system-wide") that provides such connectivity, or configure the same proxy via the WinInet setting on the SYSTEM account context.
Alternatively, use the instructions provided at [Workaround for a known issue with TelemetryProxyServer on disconnected machines](#workaround-for-a-known-issue-with-telemetryproxyserver-on-disconnected-machines) to install a certificate as a workaround.
- Previously, the use of the Microsoft Monitoring Agent (MMA) on Windows Server 2016 and below allowed for the OMS / Log Analytics gateway to provide connectivity to Defender cloud services. The new solution, like Microsoft Defender for Endpoint on Windows Server 2019, Windows Server 2022, and Windows 10, does not support this gateway.
- On Windows Server 2016, verify that Microsoft Defender Antivirus is installed, is active and up to date. You can download and install the latest platform version using Windows Update. Alternatively, download the update package manually from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4052623) or from [MMPC](https://go.microsoft.com/fwlink/?linkid=870379&arch=x64).
- On Windows Server 2012 R2, there is no user interface for Microsoft Defender Antivirus. In addition, the user interface on Windows Server 2016 only allows for basic operations. To perform operations on a device locally, refer to [Manage Microsoft Defender for Endpoint with PowerShell, WMI, and MPCmdRun.exe](/microsoft-365/security/defender-endpoint/manage-mde-post-migration-other-tools). As a result, features that specifically rely on user interaction, such as where the user is prompted to make a decision or perform a specific task, may not work as expected. It is recommended to disable or not enable the user interface nor require user interaction on any managed server as it may impact protection capability.
- Not all Attack Surface Reduction rules are available on all operating systems. See [Attack Surface Reduction (ASR) rules](/microsoft-365/security/defender-endpoint/attack-surface-reduction-rules).
- To enable [Network Protection](/microsoft-365/security/defender-endpoint/network-protection), additional configuration is required:
  - `Set-MpPreference -EnableNetworkProtection Enabled`
  - `Set-MpPreference -AllowNetworkProtectionOnWinServer 1`
  - `Set-MpPreference -AllowNetworkProtectionDownLevel 1`
  - `Set-MpPreference -AllowDatagramProcessingOnWinServer 1`

  In addition, on machines with a high volume of network traffic, performance testing in your environment is highly recommended before enabling this capability broadly. You may need to account for additional resource consumption.
- On Windows Server 2012 R2, Network Events may not populate in the timeline. This issue requires a Windows Update released as part of the [October 12, 2021 monthly rollup (KB5006714)](https://support.microsoft.com/topic/october-12-2021-kb5006714-monthly-rollup-4dc4a2cd-677c-477b-8079-dcfef2bda09e).
- Operating system upgrades are not supported. Offboard then uninstall before upgrading.
- Automatic exclusions for **server roles** are not supported on Windows Server 2012 R2; however, built-in exclusions for operating system files are. For more information about adding exclusions, see [Virus scanning recommendations for Enterprise computers that are running currently supported versions of Windows](https://support.microsoft.com/topic/virus-scanning-recommendations-for-enterprise-computers-that-are-running-currently-supported-versions-of-windows-kb822158-c067a732-f24a-9079-d240-3733e39b40bc).
- On machines that have been upgraded from the previous, MMA-based solution and the EDR sensor is a (preview) version older than 10.8047.22439.1056, uninstalling and reverting back to the MMA-based solution may lead to crashes. If you are on such a preview version, please update using KB5005292.
- To deploy and onboard the new solution using Microsoft Endpoint Manager, this currently requires creating a package. For more information on how to deploy programs and scripts in Configuration Manager, see [Packages and programs in Configuration Manager](/configmgr/apps/deploy-use/packages-and-programs). MECM 2107 with the hotfix rollup or later is required to support policy configuration management using the Endpoint Protection node.

## Workaround for a known issue with TelemetryProxyServer on disconnected machines

Problem description:
When using the TelemetryProxyServer setting to specify a proxy to be used by the EDR component of Microsoft Defender for Endpoint, on machines that have no other way to access the Certificate Revocation List (CRL) URL, a missing intermediate certificate will cause the EDR sensor to not successfully connect to the cloud service.

Affected scenario:
-Microsoft Defender for Endpoint with Sense version number 10.8048.22439.1065 or earlier preview versions running on Windows Server 2012 R2
-Using the TelemetryProxyServer proxy configuration; other methods are not affected

Workaround:
1. Ensure the machine is running Sense version 10.8048.22439.1065 or higher by either installing using the latest package available from the onboarding page, or by applying KB5005292.
2. Download and unzip the certificate from https://github.com/microsoft/mdefordownlevelserver/blob/main/InterCA.zip
3. Import the certificate to the Local Computer trusted "Intermediate Certification Authorities" store.
You can use the PowerShell command:
Import-Certificate -FilePath .\InterCA.cer -CertStoreLocation Cert:\LocalMachine\Ca

## Integration with Microsoft Defender for Cloud

Microsoft Defender for Endpoint integrates seamlessly with Microsoft Defender for Cloud. You can onboard servers automatically, have servers monitored by Azure Defender appear in Defender for Endpoint, and conduct detailed investigations as a Microsoft Defender for Cloud customer.

For more information, see [Integration with Microsoft Defender for Cloud](azure-server-integration.md).

> [!NOTE]
> For Windows Server 2012 R2 and 2016 running the modern unified solution, integration with Microsoft Defender for Cloud / Microsoft Defender for servers for automated deployment or upgrade is not yet available for all plans. You can manually install the new solution on these machines, or use Microsoft Defender for server P1 to test the new solution. More information at [New Defender for servers plans](/azure/defender-for-cloud/release-notes#new-defender-for-servers-plans).

> [!NOTE]
> - The integration between Microsoft Defender for servers and Microsoft Defender for Endpoint has been expanded to support Windows Server 2022, [Windows Server 2019, and Windows Virtual Desktop (WVD)](/azure/security-center/release-notes#microsoft-defender-for-endpoint-integration-with-azure-defender-now-supports-windows-server-2019-and-windows-10-virtual-desktop-wvd-in-preview).
> - Server endpoint monitoring utilizing this integration has been disabled for Office 365 GCC customers.

## Windows Server 2012 R2 and Windows Server 2016

### Prerequisites

#### Prerequisites for Windows Server 2012 R2

If you have fully updated your machines with the latest [monthly rollup](https://support.microsoft.com/topic/october-12-2021-kb5006714-monthly-rollup-4dc4a2cd-677c-477b-8079-dcfef2bda09e) package, there are **no** additional prerequisites.

The installer package will check if the following components have already been installed via an update:

- [Update for customer experience and diagnostic telemetry](https://support.microsoft.com/help/3080149/update-for-customer-experience-and-diagnostic-telemetry)
- [Update for Universal C Runtime in Windows](https://support.microsoft.com/topic/update-for-universal-c-runtime-in-windows-c0514201-7fe6-95a3-b0a5-287930f3560c)

#### Prerequisites for Windows Server 2016

- The Servicing Stack Update (SSU) from September 14, 2021 or later must be installed.
- The Latest Cumulative Update (LCU) from September 20, 2018 or later must be installed.  It is recommended to install the latest available SSU and LCU on the server.  - The Microsoft Defender Antivirus feature must be enabled/installed and up to date. You can download and install the latest platform version using Windows Update. Alternatively, download the update package manually from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4052623) or from [MMPC](https://go.microsoft.com/fwlink/?linkid=870379&arch=x64).

#### Prerequisites for running with third-party security solutions

If you intend to use a third-party antimalware solution, you'll need to run Microsoft Defender Antivirus in passive mode. You must remember to set to passive mode during the installation and onboarding process.

> [!NOTE]
> If you're installing Microsoft Defender for Endpoint on Servers with McAfee Endpoint Security (ENS) or VirusScan Enterprise (VSE), the version of the McAfee platform may need to be updated to ensure Microsoft Defender Antivirus is not removed or disabled. For more information including the specific version numbers required, see, [McAfee Knowledge Center article](https://kc.mcafee.com/corporate/index?page=content&id=KB88214).

#### Update package for Microsoft Defender for Endpoint on Windows Server 2012 R2 and 2016

To receive regular product improvements and fixes for the EDR Sensor component, ensure Windows Update [KB5005292](https://go.microsoft.com/fwlink/?linkid=2168277) gets applied or approved. In addition, to keep protection components updated, see [Manage Microsoft Defender Antivirus updates and apply baselines](/microsoft-365/security/defender-endpoint/manage-updates-baselines-microsoft-defender-antivirus#monthly-platform-and-engine-versions).

If you're using Windows Server Update Services (WSUS) and/or Microsoft Endpoint Configuration Manager, this new "Microsoft Defender for Endpoint update for EDR Sensor" is available under the category "Microsoft Defender for Endpoint".

### Onboarding steps summary

- STEP 1: [Download the installation and onboarding packages](#step-1-download-installation-and-onboarding-packages)
- STEP 2: [Apply the installation and onboarding package](#step-2-apply-the-installation-and-onboarding-package)
- STEP 3: [Complete the onboarding steps](#step-3-complete-the-onboarding-steps)

### STEP 1: Download installation and onboarding packages

You will need to download both the **installation** and **onboarding** packages from the portal.

> [!div class="mx-imgBorder"]
> ![Image of onboarding dashboard](images/install-agent-onboard.png)

   > [!NOTE]
   > On Windows Server 2012R2, Microsoft Defender Antivirus will get installed by the installation package and will be active unless you set it to passive mode. On Windows Server 2016, Microsoft Defender Antivirus must be installed as a feature (see [Switch to MDE](/microsoft-365/security/defender-endpoint/switch-to-mde-phase-2#re-enable-microsoft-defender-antivirus-on-windows-server-2016)) first and fully updated before proceeding with the installation.
   >
   > If you are running a non-Microsoft antimalware solution ensure you add exclusions for Microsoft Defender Antivirus ([from this list of Microsoft Defender Processes on the Defender Processes tab](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx)) to the non-Microsoft solution before installation.  It is also recommended to add non-Microsoft security solutions to the Defender Antivirus exclusion list.

The **installation package** contains an MSI file that installs the Microsoft Defender for Endpoint agent.

The **onboarding package** contains the following files:

- `OptionalParamsPolicy` - contains the setting that enables sample collection
- `WindowsDefenderATPOnboardingScript.cmd` - contains the onboarding script

Use the following steps to download the packages:

1. In Microsoft 365 Defender, go to **Settings > Device Management > Onboarding**.

2. Select **Windows Server 2012 R2 and 2016**.

3. Select **Download installation package** and save the .msi file.

4. Select **Download onboarding package** and save the .zip file.

5. Install the installation package using any of the options to install Microsoft Defender Antivirus. The installation requires administrative permissions.

### STEP 2: Apply the installation and onboarding package

In this step you will install the prevention and detection components required before onboarding your device to the Microsoft Defender for Endpoint cloud environment, to prepare the machine for onboarding. Ensure all [prerequisites](#prerequisites) have been met.

   > [!NOTE]
   > Microsoft Defender Antivirus will get installed and will be active unless you set it to passive mode.

#### Options to install the Microsoft Defender for Endpoint packages

In the previous section, you downloaded an installation package. The installation package contains the installer for all Microsoft Defender for Endpoint components.

You can use any of the following options to install the agent:

- [Install using the command line](#install-microsoft-defender-for-endpoint-using-the-command-line)
- [Install using a script](#install-microsoft-defender-for-endpoint-using-a-script)
- [Apply the installation and onboarding packages using Group Policy](#apply-the-microsoft-defender-for-endpoint-installation-and-onboarding-packages-using-group-policy)

##### Install Microsoft Defender For Endpoint using the command line

Use the installation package from the previous step to install Microsoft Defender for Endpoint.

Run the following command to install Microsoft Defender for Endpoint:

```console
Msiexec /i md4ws.msi /quiet
```

To uninstall, ensure the machine is offboarded first using the appropriate offboarding script. Then, use Control Panel \> Programs \> Programs and Features to perform the uninstall.

Alternatively, run the following uninstall command to uninstall Microsoft Defender for Endpoint:

```console
Msiexec /x md4ws.msi /quiet
```

You must use the same package you used for installation for the above command to succeed.

The `/quiet` switch suppresses all notifications.

> [!NOTE]
> Microsoft Defender Antivirus doesn't automatically go into passive mode. You can choose to set Microsoft Defender Antivirus to run in passive mode if you are running a non-Microsoft antivirus/antimalware solution. For command line installations, the optional `FORCEPASSIVEMODE=1` immediately sets the Microsoft Defender Antivirus component to Passive mode to avoid interference. Then, to ensure Defender Antivirus remains in passive mode after onboarding to support capabilities like EDR Block, set the "ForceDefenderPassiveMode" registry key.

Support for Windows Server provides deeper insight into server activities, coverage for kernel and memory attack detection, and enables response actions.

##### Install Microsoft Defender for Endpoint using a script

You can use the [installer script](server-migration.md#installer-script) to help automate installation, uninstallation, and onboarding. For more information, see the instructions in the following section to use the script with Group Policy.

##### Apply the Microsoft Defender for Endpoint installation and onboarding packages using Group policy

1. Create a group policy: <br> Open the [Group Policy Management Console](/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click **Group Policy Objects** you want to configure and click **New**. Enter the name of the new GPO in the dialogue box that is displayed and click **OK**.

2. Open the [Group Policy Management Console](/internet-explorer/ie11-deploy-guide/group-policy-and-group-policy-mgmt-console-ie11) (GPMC), right-click the Group Policy Object (GPO) you want to configure and click **Edit**.

3. In the **Group Policy Management Editor**, go to **Computer configuration**, then **Preferences**, and then **Control panel settings**.

4. Right-click **Scheduled tasks**, point to **New**, and then click **Immediate Task (At least Windows 7)**.

5. In the **Task** window that opens, go to the **General** tab. Under **Security options** click **Change User or Group** and type SYSTEM and then click **Check Names** then **OK**. NT AUTHORITY\SYSTEM appears as the user account the task will run as.

6. Select **Run whether user is logged on or not** and check the **Run with highest privileges** check box.

7. In the Name field, type an appropriate name for the scheduled task (for example, Defender for Endpoint Deployment).

8. Go to the **Actions** tab and select **New...** Ensure that **Start a program** is selected in the **Action** field. The [installer script](server-migration.md#installer-script) handles the installation, and immediately perform the onboarding step after installation completes. Select *C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe* then provide the arguments:

    ```console
     -ExecutionPolicy RemoteSigned \\servername-or-dfs-space\share-name\install.ps1 -OnboardingScript \\servername-or-dfs-space\share-name\windowsdefenderatponboardingscript.cmd
    ```

    > [!NOTE]
    > If you need to troubleshoot agent installation issues, add '-etl -log' to the install.ps1 script parameters.
    >
    > The recommended execution policy setting is `Allsigned`. This requires importing the script's signing certificate into the Local Computer Trusted Publishers store if the script is running as SYSTEM on the endpoint.

    Replace \\servername-or-dfs-space\share-name with the UNC path, using the file server's fully qualified domain name (FQDN), of the shared *install.ps1* file. The installer package md4ws.msi must be placed in the same directory.  Also ensure that the permissions of the UNC path allow read access to the computer account that's installing the platform.

    For scenarios where you want Microsoft Defender Antivirus to co-exist with non-Microsoft antimalware solutions, add the $Passive parameter to set passive mode during installation.

9. Select **OK** and close any open GPMC windows.

10. To link the GPO to an Organization Unit (OU), right-click and select **Link an existing GPO**. In the dialogue box that is displayed, select the Group Policy Object that you wish to link. Click **OK**.

For additional configuration settings, see [Configure sample collection settings](configure-endpoints-gp.md#configure-sample-collection-settings) and [Other recommended configuration settings](configure-endpoints-gp.md#other-recommended-configuration-settings).

### STEP 3: Complete the onboarding steps

The following steps are only applicable if you're using a third-party anti-malware solution. You'll need to apply the following Microsoft Defender Antivirus passive mode setting. Verify that it was configured correctly:

1. Set the following registry entry:
    - Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`
    - Name: `ForceDefenderPassiveMode`
    - Type: `REG_DWORD`
    - Value: `1`

   :::image type="content" source="images/atp-verify-passive-mode.png" alt-text="The passive mode verification result" lightbox="images/atp-verify-passive-mode.png":::

> [!IMPORTANT]
>
> - When you use Microsoft Defender for Cloud to monitor servers, a Defender for Endpoint tenant is automatically created (in the US for US users, in the EU for European users, and in the UK for UK users).
Data collected by Defender for Endpoint is stored in the geo-location of the tenant as identified during provisioning.
> - If you use Defender for Endpoint before using Microsoft Defender for Cloud, your data will be stored in the location you specified when you created your tenant even if you integrate with Microsoft Defender for Cloud at a later time.
> - Once configured, you cannot change the location where your data is stored. If you need to move your data to another location, you need to contact Microsoft Support to reset the tenant.
> - The Onboarding package for Windows Server 2019 and Windows Server 2022 through Microsoft Endpoint Manager currently ships a script. For more information on how to deploy scripts in Configuration Manager, see [Packages and programs in Configuration Manager](/configmgr/apps/deploy-use/packages-and-programs).
> - A local script is suitable for a proof of concept but should not be used for production deployment. For a production deployment, we recommend using Group Policy, or Microsoft Endpoint Configuration Manager.

## Windows Server Semi-Annual Enterprise Channel (SAC), Windows Server 2019 and Windows Server 2022

### Download package

1. In Microsoft 365 Defender, go to **Settings > Device Management > Onboarding**.

2. Select **Windows Server 1803 and 2019**.

3. Select **Download package**. Save it as WindowsDefenderATPOnboardingPackage.zip.

4. Follow the steps provided in the [Complete the onboarding steps](#step-3-complete-the-onboarding-steps) section.

## Verify the onboarding and installation

Verify that Microsoft Defender Antivirus and Microsoft Defender for Endpoint are running.

## Run a detection test to verify onboarding

After onboarding the device, you can choose to run a detection test to verify that a device is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Microsoft Defender for Endpoint device](run-detection-test.md).

> [!NOTE]
> Running Microsoft Defender Antivirus is not required but it is recommended. If another antivirus vendor product is the primary endpoint protection solution, you can run Defender Antivirus in Passive mode. You can only confirm that passive mode is on after verifying that Microsoft Defender for Endpoint sensor (SENSE) is running.

1. Run the following command to verify that Microsoft Defender Antivirus is installed:

    > [!NOTE]
    > This verification step is only required if you're using Microsoft Defender Antivirus as your active antimalware solution.

    ```DOS
    sc.exe query Windefend
    ```

    If the result is 'The specified service doesn't exist as an installed service', then you'll need to install Microsoft Defender Antivirus.

    For information on how to use Group Policy to configure and manage Microsoft Defender Antivirus on your Windows servers, see [Use Group Policy settings to configure and manage Microsoft Defender Antivirus](use-group-policy-microsoft-defender-antivirus.md).

2. Run the following command to verify that Microsoft Defender for Endpoint is running:

    ```DOS
    sc.exe query sense
    ```

    The result should show it is running. If you encounter issues with onboarding, see [Troubleshoot onboarding](troubleshoot-onboarding.md).

## Run a detection test

Follow the steps in [Run a detection test on a newly onboarded device](run-detection-test.md) to verify that the server is reporting to Defender for the Endpoint service.

## Next steps

After successfully onboarding devices to the service, you'll need to configure the individual components of Microsoft Defender for Endpoint. Follow the [Adoption order](prepare-deployment.md#adoption-order) to be guided on enabling the various components.

## Offboard Windows servers

You can offboard Windows Server 2012 R2, Windows Server 2016, Windows Server (SAC), Windows Server 2019, and Windows Server 2019 Core edition in the same method available for Windows 10 client devices.

- [Offboard devices using Group Policy](configure-endpoints-gp.md#offboard-devices-using-group-policy)
- [Offboard devices using Configuration Manager](configure-endpoints-sccm.md#offboard-devices-using-configuration-manager)
- [Offboard and monitor devices using Mobile Device Management tools](configure-endpoints-mdm.md#offboard-and-monitor-devices-using-mobile-device-management-tools)
- [Offboard devices using a local script](configure-endpoints-script.md#offboard-devices-using-a-local-script)

After offboarding, you can proceed to uninstall the unified solution package on Windows Server 2012 R2 and Windows Server 2016.

For other Windows server versions, you have two options to offboard Windows servers from the service:

- Uninstall the MMA agent
- Remove the Defender for Endpoint workspace configuration

> [!NOTE]
> These offboarding instructions for other Windows server versions also apply if you are running the previous Microsoft Defender for Endpoint for Windows Server 2016 and Windows Server 2012 R2 that requires the MMA. Instructions to migrate to the new unified solution are at [Server migration scenarios in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/server-migration).

## Related topics

- [Onboard previous versions of Windows](onboard-downlevel.md)
- [Onboard Windows 10 devices](configure-endpoints.md)
- [Onboard non-Windows devices](configure-endpoints-non-windows.md)
- [Configure proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Run a detection test on a newly onboarded Defender for Endpoint device](run-detection-test.md)
- [Troubleshooting Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
