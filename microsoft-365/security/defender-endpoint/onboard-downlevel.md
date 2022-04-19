---
title: Onboard previous versions of Windows on Microsoft Defender for Endpoint
description: Onboard supported previous versions of Windows devices so that they can send sensor data to the Microsoft Defender for Endpoint sensor
keywords: onboard, windows, 7, 81, oms, sp1, enterprise, pro, down level
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

# Onboard previous versions of Windows

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

**Platforms**

- Windows 7 SP1 Enterprise
- Windows 7 SP1 Pro
- Windows 8.1 Pro
- Windows 8.1 Enterprise
- Windows Server 2008 R2 SP1

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-downlevel-abovefoldlink)

Defender for Endpoint extends support to include down-level operating systems, providing advanced attack detection and investigation capabilities on supported Windows versions.

To onboard down-level Windows client endpoints to Defender for Endpoint, you'll need to:

- [Configure and update System Center Endpoint Protection clients](#configure-and-update-system-center-endpoint-protection-clients)
- [Install and configure Microsoft Monitoring Agent (MMA) to report sensor data](#install-and-configure-microsoft-monitoring-agent-mma)

For Windows Server 2008 R2 SP1, you have the option of [onboarding through Microsoft Defender for Cloud](#onboard-windows-servers-through-microsoft-defender-for-cloud).

> [!NOTE]
> Defender for Endpoint standalone server license is required, per node, in order to onboard a Windows server through Microsoft Monitoring Agent (Option 1). Alternatively, a Microsoft Defender for servers license is required, per node, in order to onboard a Windows server through Microsoft Defender for Cloud (Option 2), see [Supported features available in Microsoft Defender for Cloud](/azure/security-center/security-center-services).

> [!TIP]
> After onboarding the device, you can choose to run a detection test to verify that it is properly onboarded to the service. For more information, see [Run a detection test on a newly onboarded Defender for Endpoint endpoint](run-detection-test.md).

## Configure and update System Center Endpoint Protection clients

> [!IMPORTANT]
> This step is required only if your organization uses System Center Endpoint Protection (SCEP).

Defender for Endpoint integrates with System Center Endpoint Protection to provide visibility to malware detections and to stop propagation of an attack in your organization by banning potentially malicious files or suspected malware.

The following steps are required to enable this integration:

- Install the [January 2017 anti-malware platform update for Endpoint Protection clients](https://support.microsoft.com/help/3209361/january-2017-anti-malware-platform-update-for-endpoint-protection-clie)
- Configure the SCEP client Cloud Protection Service membership to the **Advanced** setting
- Configure your network to allow connections to the Microsoft Defender Antivirus cloud. For more information, see [Configure and validate Microsoft Defender Antivirus network connections](/microsoft-365/security/defender-endpoint/configure-network-connections-microsoft-defender-antivirus)

## Install and configure Microsoft Monitoring Agent (MMA)

### Before you begin

Review the following details to verify minimum system requirements:

- Install the [February 2018 monthly update rollup](https://support.microsoft.com/help/4074598/windows-7-update-kb4074598)

  > [!NOTE]
  > Only applicable for Windows Server 2008 R2, Windows 7 SP1 Enterprise, and Windows 7 SP1 Pro.

- Install the [Update for customer experience and diagnostic telemetry](https://support.microsoft.com/help/3080149/update-for-customer-experience-and-diagnostic-telemetry)

- Install either [.NET framework 4.5](https://www.microsoft.com/download/details.aspx?id=30653) (or later) or [KB3154518](https://support.microsoft.com/help/3154518/support-for-tls-system-default-versions-included-in-the-net-framework)

    > [!NOTE]
    > Only applicable for Windows Server 2008 R2, Windows 7 SP1 Enterprise, and Windows 7 SP1 Pro.
    >
    > Don't install .NET Framework 4.0.x, since it will negate the above installation.
    >
    > Installation of .NET 4.5 might require you to restart your computer after installation.

- Meet the Azure Log Analytics agent minimum system requirements. For more information, see [Collect data from computers in you environment with Log Analytics](/azure/log-analytics/log-analytics-concept-hybrid#prerequisites)

### Installation steps

1. Download the agent setup file: [Windows 64-bit agent](https://go.microsoft.com/fwlink/?LinkId=828603) or [Windows 32-bit agent](https://go.microsoft.com/fwlink/?LinkId=828604).

    >[!NOTE]
    >Due to the [deprecation of SHA-1 support by the MMA agent](/azure/azure-monitor/agents/agent-windows#sha-2-code-signing-support-requirement), the MMA agent needs to be version 10.20.18029 or newer.
    

2. Obtain the workspace ID:
   - In the Defender for Endpoint navigation pane, select **Settings > Device management > Onboarding**
   - Select the operating system
   - Copy the workspace ID and workspace key

3. Using the Workspace ID and Workspace key choose any of the following installation methods to install the agent:
    - [Manually install the agent using setup](/azure/log-analytics/log-analytics-windows-agents#install-agent-using-setup-wizard).

      On the **Agent Setup Options** page, select **Connect the agent to Azure Log Analytics (OMS)**

    - [Install the agent using the command line](/azure/log-analytics/log-analytics-windows-agents#install-agent-using-command-line).
    - [Configure the agent using a script](/azure/log-analytics/log-analytics-windows-agents#install-agent-using-dsc-in-azure-automation).

   > [!NOTE]
   > If you are a [US Government customer](gov.md), under "Azure Cloud" you'll need to choose "Azure US Government" if using the setup wizard, or if using a command line or a script - set the "OPINSIGHTS_WORKSPACE_AZURE_CLOUD_TYPE" parameter to 1.

4. If you're using a proxy to connect to the Internet see the Configure proxy and Internet connectivity settings section.

Once completed, you should see onboarded endpoints in the portal within an hour.

## Configure proxy and Internet connectivity settings
If your servers need to use a proxy to communicate with Defender for Endpoint, use one of the following methods to configure the MMA to use the proxy server:

- [Configure the MMA to use a proxy server](/azure/azure-monitor/platform/agent-windows#install-agent-using-setup-wizard)

- [Configure Windows to use a proxy server for all connections](configure-proxy-internet.md)

If a proxy or firewall is in use, please ensure that servers can access all of the Microsoft Defender for Endpoint service URLs directly and without SSL interception. For more information, see [enable access to Defender for Endpoint service URLs](configure-proxy-internet.md#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server). Use of SSL interception will prevent the system from communicating with the Defender for Endpoint service.

Once completed, you should see onboarded Windows servers in the portal within an hour.

## Onboard Windows servers through Microsoft Defender for Cloud

1. In the Microsoft 365 Defender navigation pane, select **Settings** > **Device management** > **Onboarding**.

2. Select **Windows Server 2008 R2 SP1** as the operating system.

3. Click **Onboard Servers in Microsoft Defender for Cloud**.

4. Follow the onboarding instructions in [Microsoft Defender for Endpoint with Microsoft Defender for Cloud](/azure/security-center/security-center-wdatp) and If you are using Azure ARC, follow the onboarding instructions in [Enabling the Microsoft Defender for Endpoint integration](/azure/security-center/security-center-wdatp#enabling-the-microsoft-defender-for-endpoint-integration).

After completing the onboarding steps, you'll need to [Configure and update System Center Endpoint Protection clients](#configure-and-update-system-center-endpoint-protection-clients).

> [!NOTE]
>
> - For onboarding via Microsoft Defender for servers to work as expected, the server must have an appropriate workspace and key configured within the Microsoft Monitoring Agent (MMA) settings.
> - Once configured, the appropriate cloud management pack is deployed on the machine and the sensor process (MsSenseS.exe) will be deployed and started.
> - This is also required if the server is configured to use an OMS Gateway server as proxy.



## Verify onboarding

Verify that Microsoft Defender AV and Microsoft Defender for Endpoint are running. 

> [!NOTE]
> Running Microsoft Defender AV is not required but it is recommended. If another antivirus vendor product is the primary endpoint protection solution, you can run Defender Antivirus in Passive mode. You can only confirm that passive mode is on after verifying that Microsoft Defender for Endpoint sensor (SENSE) is running. 

1. Run the following command to verify that Microsoft Defender AV is installed:

   ```sc.exe query Windefend```

    If the result is 'The specified service doesn't exist as an installed service', then you'll need to install Microsoft Defender AV. For more information, see [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-windows.md).

    For information on how to use Group Policy to configure and manage Microsoft Defender Antivirus on your Windows servers, see [Use Group Policy settings to configure and manage Microsoft Defender Antivirus](use-group-policy-microsoft-defender-antivirus.md).


2. Run the following command to verify that Microsoft Defender for Endpoint is running:

    ```sc.exe query sense```
    
    The result should show it is running. If you encounter issues with onboarding, see [Troubleshoot onboarding](troubleshoot-onboarding.md).

## Run a detection test
Follow the steps in [Run a detection test on a newly onboarded device](run-detection-test.md) to verify that the server is reporting to Defender for the Endpoint service.





## Onboarding endpoints with no management solution 

### Using Group Policy

**Step 1: Download the corresponding udpate for your endpoint.**

1. Navigate to c:\windows\sysvol\domain\scripts (Change control could be needed on one of the domain controllers.)
1. Create a folder named MMA.
1. Download the following and place them in the MMA folder:
   
    - Update for customer experience and diagnostic telemetry:
      - [For Windows Server 2008 R2 x64](https://www.microsoft.com/download/details.aspx?familyid=1bd1d18d-4631-4d8e-a897-327925765f71)
     
    For Windows Server 2008 R2 SP1, following updates are also required:

    February 2018 Monthly Roll up - KB4074598 (Windows Server 2008 R2)

    [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4074598)<br>
    Download updates for Windows Server 2008 R2 x64
    
    .NET Framework 3.5.1 (KB315418)<br>
    [For Windows Server 2008 R2 x64](https://download.microsoft.com/download/6/8/0/680ee424-358c-4fdf-a0de-b45dee07b711/windows6.1-kb3154518-x64.msu)
    
    >[!NOTE]
    > This article assumes you are using x64-based servers (MMA Agent .exe x64 New SHA-2 compliant version).


**Step 2: Create a file name DeployMMA.cmd (using notepad)**
Add the following lines to the cmd file. Note that you'll need your WORKSPACE ID and KEY.

The following command is an example. Replace the following values:
- KB - Use the applicable KB relevant to the endpoint you're onboarding
- Workspace ID and KEY - Use your ID and key


```dos
@echo off 
cd "C:"
IF EXIST "C:\Program Files\Microsoft Monitoring Agent\Agent\MonitoringHost.exe" ( 
exit
) ELSE (

wusa.exe C:\Windows\MMA\Windows6.1-KB3080149-x64.msu /quiet /norestart
wusa.exe C:\Windows\MMA\Windows6.1-KB4074598-x64.msu /quiet /norestart
wusa.exe C:\Windows\MMA\Windows6.1-KB3154518-x64.msu /quiet /norestart
wusa.exe C:\Windows\MMA\Windows8.1-KB3080149-x64.msu /quiet /norestart
"c:\windows\MMA\MMASetup-AMD64.exe" /c /t: "C:\Windows\MMA"c:\windows\MMA\ setup.exe /qn NOAPM=1 ADD_OPINSIGHTS_WORKSPACE=1
OPINSIGHTS_WORKSPACE_ID="<your workspace ID>"
OPINSIGHTS_WORKSPACE_KEY="<your workspace key>" AcceptEndUserLicenseAgreement=1
)

)
```





### Group Policy Configuration

Create a new group policy specifically for onboarding devices such as "Microsoft Defender for Endpoint Onboarding".

- Create a Group Policy Folder named "c:\windows\MMA"

     :::image type="content" source="images/grppolicyconfig1.png" alt-text="The folders location" lightbox="images/grppolicyconfig1.png":::

    **This will add a new folder on every server that gets the GPO applied, called MMA, and will be stored in c:\windows. This will contain the installation files for the MMA, prerequisites, and install script.**

- Create a Group Policy Files preference for each of the files stored in Net logon.

     :::image type="content" source="images/grppolicyconfig2.png" alt-text="The group policy - 1" lightbox="images/grppolicyconfig2.png":::

It copies the files from DOMAIN\NETLOGON\MMA\filename to
C:\windows\MMA\filename - **so the installation files are local to the server**:

:::image type="content" source="images/deploymma.png" alt-text="The deploy mma cmd properties" lightbox="images/deploymma.png":::

Repeat the process but create item level targeting on the COMMON tab, so the file only gets copied to the appropriate platform/Operating system version in scope:

:::image type="content" source="images/targeteditor.png" alt-text="The target editor" lightbox="images/targeteditor.png":::

For Windows Server 2008 R2 you'll need (and it will only copy down) the following:
- Windows6.1-KB3080149-x64.msu
- Windows6.1-KB3154518-x64.msu
- Windows6.1-KB4075598-x64.msu


Once this is done, you'll need to create a start-up script policy:

:::image type="content" source="images/startupprops.png" alt-text="The start up properties" lightbox="images/startupprops.png":::

The name of the file to run here is c:\windows\MMA\DeployMMA.cmd.
Once the server is restarted as part of the start-up process it will install the Update for customer experience and diagnostic telemetry KB, and then install the MMA Agent, while setting the Workspace ID and Key, and the server will be onboarded.

You could also use an **immediate task** to run the deployMMA.cmd if you don't want to reboot all the servers.

This could be done in two phases. First create **the files and the folder in** GPO - Give the system time to ensure the GPO has been applied, and all the servers have the install files. Then, add the immediate task. This will achieve the same result without requiring a reboot.

As the Script has an exit method and wont re-run if the MMA is installed, you could also use a daily scheduled task to achieve the same result. Similar to a Configuration Manager compliance policy it will check daily to ensure the MMA is present.

:::image type="content" source="images/schtask.png" alt-text="schedule task" lightbox="images/schtask.png":::

:::image type="content" source="images/newtaskprops.png" alt-text="The new task properties" lightbox="images/newtaskprops.png":::

:::image type="content" source="images/deploymmadowmload.png" alt-text="The deploy mma download properties" lightbox="images/deploymmadowmload.png":::

:::image type="content" source="images/tasksch.png" alt-text="The task scheduler" lightbox="images/tasksch.png":::

As mentioned in the onboarding documentation for Server specifically around Server 2008 R2 please see below:
For Windows Server 2008 R2 SP1, ensure that you fulfill the following requirements:

- Install the [February 2018 monthly update rollup](https://support.microsoft.com/help/4074598/windows-7-update-kb4074598)
- Install either [.NET framework 4.5](https://www.microsoft.com/download/details.aspx?id=30653) (or later) or [KB3154518](https://support.microsoft.com/help/3154518/support-for-tls-system-default-versions-included-in-the-net-framework)

Please check the KBs are present before onboarding Windows Server 2008 R2. This process allows you to onboard all the servers if you don't have Configuration Manager managing Servers.


## Offboard endpoints

You have two options to offboard Windows endpoints from the service:

- Uninstall the MMA agent
- Remove the Defender for Endpoint workspace configuration

> [!NOTE]
> Offboarding causes the Windows endpoint to stop sending sensor data to the portal but data from the endpoint, including reference to any alerts it has had will be retained for up to 6 months.

### Uninstall the MMA agent

To offboard the Windows endpoint, you can uninstall the MMA agent or detach it from reporting to your Defender for Endpoint workspace. After offboarding the agent, the endpoint will no longer send sensor data to Defender for Endpoint.
For more information, see [To disable an agent](/azure/log-analytics/log-analytics-windows-agents#to-disable-an-agent).

### Remove the Defender for Endpoint workspace configuration

You can use either of the following methods:

- Remove the Defender for Endpoint workspace configuration from the MMA agent
- Run a PowerShell command to remove the configuration

#### Remove the Defender for Endpoint workspace configuration from the MMA agent

1. In the **Microsoft Monitoring Agent Properties**, select the **Azure Log Analytics (OMS)** tab.

2. Select the Defender for Endpoint workspace, and click **Remove**.

    :::image type="content" source="images/atp-mma.png" alt-text="The Workspaces pane" lightbox="images/atp-mma.png":::

#### Run a PowerShell command to remove the configuration

1. Get your Workspace ID:

   1. In the navigation pane, select **Settings** > **Onboarding**.

   1. Select the relevant operating system and get your Workspace ID.

    
2. Open an elevated PowerShell and run the following command. Use the Workspace ID you obtained and replacing `WorkspaceID`:

    ```   
    $AgentCfg = New-Object -ComObject AgentConfigManager.MgmtSvcCfg
    # Remove OMS Workspace
    $AgentCfg.RemoveCloudWorkspace("WorkspaceID")
    # Reload the configuration and apply changes
    $AgentCfg.ReloadConfiguration()

    ```
