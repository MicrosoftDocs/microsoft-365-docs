---
title: Troubleshoot Microsoft Defender for Endpoint onboarding issues
description: Troubleshoot issues that might arise during the onboarding of devices or to the Microsoft Defender for Endpoint service.
keywords: troubleshoot onboarding, onboarding issues, event viewer, data collection and preview builds, sensor data and diagnostics
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
- tier3
ms.topic: troubleshooting
ms.subservice: mde
search.appverid: met150
ms.date: 06/14/2023
---

# Troubleshoot Microsoft Defender for Endpoint onboarding issues

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Windows Server 2012 R2
- Windows Server 2016
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

You might need to troubleshoot the Microsoft Defender for Endpoint onboarding process if you encounter issues.
This page provides detailed steps to troubleshoot onboarding issues that might occur when deploying with one of the deployment tools and common errors that might occur on the devices.

Before you start troubleshooting issues with onboarding tools, it's important to check if the minimum requirements are met for onboarding devices to the services. [Learn about the licensing, hardware, and software requirements to onboard devices to the service](minimum-requirements.md).

## Troubleshoot issues with onboarding tools

If you've completed the onboarding process and don't see devices in the [Devices list](investigate-machines.md) after an hour, it might indicate an onboarding or connectivity problem.

### Troubleshoot onboarding when deploying with Group Policy

Deployment with Group Policy is done by running the onboarding script on the devices. The Group Policy console doesn't indicate if the deployment has succeeded or not.

If you've completed the onboarding process and don't see devices in the [Devices list](investigate-machines.md) after an hour, you can check the output of the script on the devices. For more information, see [Troubleshoot onboarding when deploying with a script](#troubleshoot-onboarding-when-deploying-with-a-script).

If the script completes successfully, see [Troubleshoot onboarding issues on the devices](#troubleshoot-onboarding-issues-on-the-device) for additional errors that might occur.

### Troubleshoot onboarding issues when deploying with Microsoft Endpoint Configuration Manager

When onboarding devices using the following versions of Configuration Manager:

- Microsoft Endpoint Configuration Manager
- System Center 2012 Configuration Manager
- System Center 2012 R2 Configuration Manager

Deployment with the above-mentioned versions of Configuration Manager is done by running the onboarding script on the devices. You can track the deployment in the Configuration Manager Console.

If the deployment fails, you can check the output of the script on the devices.

If the onboarding completed successfully but the devices aren't showing up in the **Devices list** after an hour, see [Troubleshoot onboarding issues on the device](#troubleshoot-onboarding-issues-on-the-device) for additional errors that might occur.

### Troubleshoot onboarding when deploying with a script

**Check the result of the script on the device:**

1. Click **Start**, type **Event Viewer**, and press **Enter**.

2. Go to **Windows Logs** \> **Application**.

3. Look for an event from **WDATPOnboarding** event source.

If the script fails and the event is an error, you can check the event ID in the following table to help you troubleshoot the issue.

> [!NOTE]
> The following event IDs are specific to the onboarding script only.

<br>

****

|Event ID|Error Type|Resolution steps|
|:---:|---|---|
|`5`|Offboarding data was found but couldn't be deleted|Check the permissions on the registry, specifically <p> `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`.|
|`10`|Onboarding data couldn't be written to registry|Check the permissions on the registry, specifically <p> `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`. <p> Verify that the script has been run as an administrator.|
|`15`|Failed to start SENSE service|Check the service health (`sc query sense` command). Make sure it's not in an intermediate state (*'Pending_Stopped'*, *'Pending_Running'*) and try to run the script again (with administrator rights). <p> If the device is running Windows 10, version 1607 and running the command `sc query sense` returns `START_PENDING`, reboot the device. If rebooting the device doesn't address the issue, upgrade to KB4015217 and try onboarding again.|
|`15`|Failed to start SENSE service|If the message of the error is: System error 577  or error 1058 has occurred, you need to enable the Microsoft Defender Antivirus ELAM driver, see [Ensure that Microsoft Defender Antivirus is not disabled by a policy](#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy) for instructions.|
|`30`|The script failed to wait for the service to start running|The service could have taken more time to start or has encountered errors while trying to start. For more information on events and errors related to SENSE, see [Review events and errors using Event viewer](event-error-codes.md).|
|`35`|The script failed to find needed onboarding status registry value|When the SENSE service starts for the first time, it writes onboarding status to the registry location <p> `HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection\Status`. <p> The script failed to find it after several seconds. You can manually test it and check if it's there. For more information on events and errors related to SENSE, see [Review events and errors using Event viewer](event-error-codes.md).|
|`40`|SENSE service onboarding status isn't set to **1**|The SENSE service has failed to onboard properly. For more information on events and errors related to SENSE, see [Review events and errors using Event viewer](event-error-codes.md).|
|`65`|Insufficient privileges|Run the script again with administrator privileges.|
|

### Troubleshoot onboarding issues using Microsoft Intune

You can use Microsoft Intune to check error codes and attempt to troubleshoot the cause of the issue.

If you have configured policies in Intune and they aren't propagated on devices, you might need to configure automatic MDM enrollment.

Use the following tables to understand the possible causes of issues while onboarding:

- Microsoft Intune error codes and OMA-URIs table
- Known issues with non-compliance table
- Mobile Device Management (MDM) event logs table

If none of the event logs and troubleshooting steps work, download the Local script from the **Device management** section of the portal, and run it in an elevated command prompt.

#### Microsoft Intune error codes and OMA-URIs

<br>

****

|Error Code Hex|Error Code Dec|Error Description|OMA-URI|Possible cause and troubleshooting steps|
|:---:|---|---|---|---|
|0x87D1FDE8|-2016281112|Remediation failed|Onboarding <p> Offboarding|**Possible cause:** Onboarding or offboarding failed on a wrong blob: wrong signature or missing PreviousOrgIds fields. <p> **Troubleshooting steps:** <p> Check the event IDs in the [View agent onboarding errors in the device event log](#view-agent-onboarding-errors-in-the-device-event-log) section. <p> Check the MDM event logs in the following table or follow the instructions in [Diagnose MDM failures in Windows](/windows/client-management/mdm/diagnose-mdm-failures-in-windows-10).|
||||Onboarding <p> Offboarding <p> SampleSharing|**Possible cause:** Microsoft Defender for Endpoint Policy registry key doesn't exist or the OMA DM client doesn't have permissions to write to it. <p> **Troubleshooting steps:** Ensure that the following registry key exists: `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection` <p> If it doesn't exist, open an elevated command and add the key.|
||||SenseIsRunning <p> OnboardingState <p> OrgId|**Possible cause:** An attempt to remediate by read-only property. Onboarding has failed. <p> **Troubleshooting steps:** Check the troubleshooting steps in [Troubleshoot onboarding issues on the device](#troubleshoot-onboarding-issues-on-the-device). <p> Check the MDM event logs in the following table or follow the instructions in [Diagnose MDM failures in Windows](/windows/client-management/mdm/diagnose-mdm-failures-in-windows-10).|
||||All|**Possible cause:** Attempt to deploy Microsoft Defender for Endpoint on non-supported SKU/Platform, particularly Holographic SKU. <p> Currently supported platforms: <p> Enterprise, Education, and Professional.<p> Server isn't supported.|
|0x87D101A9|-2016345687|SyncML(425): The requested command failed because the sender doesn't have adequate access control permissions (ACL) on the recipient.|All|**Possible cause:** Attempt to deploy Microsoft Defender for Endpoint on non-supported SKU/Platform, particularly Holographic SKU.<p> Currently supported platforms: <p> Enterprise, Education, and Professional.|
|

#### Known issues with non-compliance

The following table provides information on issues with non-compliance and how you can address the issues.

<br>

****

|Case|Symptoms|Possible cause and troubleshooting steps|
|:---:|---|---|
|`1`|Device is compliant by SenseIsRunning OMA-URI. But is non-compliant by OrgId, Onboarding and OnboardingState OMA-URIs.|**Possible cause:** Check that user passed OOBE after Windows installation or upgrade. During OOBE onboarding couldn't be completed but SENSE is running already. <p> **Troubleshooting steps:** Wait for OOBE to complete.|
|`2`|Device is compliant by OrgId, Onboarding, and OnboardingState OMA-URIs, but is non-compliant by SenseIsRunning OMA-URI.|**Possible cause:** Sense service's startup type is set as "Delayed Start". Sometimes this causes the Microsoft Intune server to report the device as non-compliant by SenseIsRunning when DM session occurs on system start. <p> **Troubleshooting steps:** The issue should automatically be fixed within 24 hours.|
|`3`|Device is non-compliant|**Troubleshooting steps:** Ensure that Onboarding and Offboarding policies aren't deployed on the same device at same time.|
|

#### Mobile Device Management (MDM) event logs

View the MDM event logs to troubleshoot issues that might arise during onboarding:

Log name: Microsoft\Windows\DeviceManagement-EnterpriseDiagnostics-Provider

Channel name: Admin

<br>

****

|ID|Severity|Event description|Troubleshooting steps|
|---|---|---|---|
|1819|Error|Microsoft Defender for Endpoint CSP: Failed to Set Node's Value. NodeId: (%1), TokenName: (%2), Result: (%3).|Download the [Cumulative Update for Windows 10, 1607](https://go.microsoft.com/fwlink/?linkid=829760).|
|

## Troubleshoot onboarding issues on the device

If the deployment tools used do not indicate an error in the onboarding process, but devices are still not appearing in the devices list in an hour, go through the following verification topics to check if an error occurred with the Microsoft Defender for Endpoint agent.

- [View agent onboarding errors in the device event log](#view-agent-onboarding-errors-in-the-device-event-log)
- [Ensure the diagnostic data service is enabled](#ensure-the-diagnostics-service-is-enabled)
- [Ensure the service is set to start](#ensure-the-service-is-set-to-start)
- [Ensure the device has an Internet connection](#ensure-the-device-has-an-internet-connection)
- [Ensure that Microsoft Defender Antivirus is not disabled by a policy](#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy)

### View agent onboarding errors in the device event log

1. Click **Start**, type **Event Viewer**, and press **Enter**.

2. In the **Event Viewer (Local)** pane, expand **Applications and Services Logs** \> **Microsoft** \> **Windows** \> **SENSE**.

   > [!NOTE]
   > SENSE is the internal name used to refer to the behavioral sensor that powers Microsoft Defender for Endpoint.

3. Select **Operational** to load the log.

4. In the **Action** pane, click **Filter Current log**.

5. On the **Filter** tab, under **Event level:** select **Critical**, **Warning**, and **Error**, and click **OK**.

   :::image type="content" source="images/filter-log.png" alt-text="The Event Viewer log filter" lightbox="images/filter-log.png":::

6. Events which can indicate issues appear in the **Operational** pane. You can attempt to troubleshoot them based on the solutions in the following table:

   <br>

   ****

   |Event ID|Message|Resolution steps|
   |:---:|---|---|
   |`5`|Microsoft Defender for Endpoint service failed to connect to the server at _variable_|[Ensure the device has Internet access](#ensure-the-device-has-an-internet-connection).|
   |`6`|Microsoft Defender for Endpoint service isn't onboarded and no onboarding parameters were found. Failure code: _variable_|[Run the onboarding script again](configure-endpoints-script.md).|
   |`7`|Microsoft Defender for Endpoint service failed to read the onboarding parameters. Failure code: _variable_|[Ensure the device has Internet access](#ensure-the-device-has-an-internet-connection), then run the entire onboarding process again.|
   |`9`|Microsoft Defender for Endpoint service failed to change its start type. Failure code: variable|If the event happened during onboarding, reboot and re-attempt running the onboarding script. For more information, see [Run the onboarding script again](configure-endpoints-script.md). <br><br>If the event happened during offboarding, contact support.|
   |`10`|Microsoft Defender for Endpoint service failed to persist the onboarding information. Failure code: variable|If the event happened during onboarding, re-attempt running the onboarding script. For more information, see [Run the onboarding script again](configure-endpoints-script.md). <br><br>If the problem persists, contact support.|
   |`15`|Microsoft Defender for Endpoint can't start command channel with URL: _variable_|[Ensure the device has Internet access](#ensure-the-device-has-an-internet-connection).|
   |`17`|Microsoft Defender for Endpoint service failed to change the Connected User Experiences and Telemetry service location. Failure code: variable|[Run the onboarding script again](configure-endpoints-script.md). If the problem persists, contact support.|
   |`25`|Microsoft Defender for Endpoint service failed to reset health status in the registry. Failure code: _variable_|Contact support.|
   |`27`|Failed to enable Microsoft Defender for Endpoint mode in Windows Defender. Onboarding process failed. Failure code: variable|Contact support.|
   |`29`|Failed to read the offboarding parameters. Error type: %1, Error code: %2, Description: %3|Ensure the device has Internet access, then run the entire offboarding process again.|
   |`30`|Failed to disable $(build.sense.productDisplayName) mode in Microsoft Defender for Endpoint. Failure code: %1|Contact support.|
   |`32`|$(build.sense.productDisplayName) service failed to request to stop itself after offboarding process. Failure code: %1|Verify that the service start type is manual and reboot the device.|
   |`55`|Failed to create the Secure ETW autologger. Failure code: %1|Reboot the device.|
   |`63`|Updating the start type of external service. Name: %1, actual start type: %2, expected start type: %3, exit code: %4|Identify what is causing changes in start type of mentioned service. If the exit code isn't 0, fix the start type manually to expected start type.|
   |`64`|Starting stopped external service. Name: %1, exit code: %2|Contact support if the event keeps re-appearing.|
   |`68`|The start type of the service is unexpected. Service name: %1, actual start type: %2, expected start type: %3|Identify what is causing changes in start type. Fix mentioned service start type.|
   |`69`|The service is stopped. Service name: %1|Start the mentioned service. Contact support if the issue persists.|
   |

There are additional components on the device that the Microsoft Defender for Endpoint agent depends on to function properly. If there are no onboarding related errors in the Microsoft Defender for Endpoint agent event log, proceed with the following steps to ensure that the additional components are configured correctly.

<span id="ensure-the-diagnostics-service-is-enabled" />

### Ensure the diagnostic data service is enabled

   > [!NOTE]
   > In Windows 10 build 1809 and later, the Defender for Endpoint EDR service no longer has a direct dependency on the DiagTrack service.
   > The EDR cyber evidence can still be uploaded if this service is not running. 

If the devices aren't reporting correctly, you might need to check that the Windows diagnostic data service is set to automatically start and is running on the device. The service might have been disabled by other programs or user configuration changes.

First, you should check that the service is set to start automatically when Windows starts, then you should check that the service is currently running (and start it if it isn't).

### Ensure the service is set to start

**Use the command line to check the Windows diagnostic data service startup type**:

1. Open an elevated command-line prompt on the device:

   a. Click **Start**, type **cmd**, and press **Enter**.

   b. Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command, and press **Enter**:

   ```console
   sc qc diagtrack
   ```

   If the service is enabled, then the result should look like the following screenshot:

   :::image type="content" source="images/windefatp-sc-qc-diagtrack.png" alt-text="The result of the sc query command for diagtrack" lightbox="images/windefatp-sc-qc-diagtrack.png":::

   If the `START_TYPE` isn't set to `AUTO_START`, then you need to set the service to automatically start.

**Use the command line to set the Windows diagnostic data service to automatically start:**

1. Open an elevated command-line prompt on the device:

   a. Click **Start**, type **cmd**, and press **Enter**.

   b. Right-click **Command prompt** and select **Run as administrator**.

2. Enter the following command, and press **Enter**:

   ```console
   sc config diagtrack start=auto
   ```

3. A success message is displayed. Verify the change by entering the following command, and press **Enter**:

   ```console
   sc qc diagtrack
   ```

4. Start the service. In the command prompt, type the following command and press **Enter**:

   ```console
   sc start diagtrack
   ```

### Ensure the device has an Internet connection

The Microsoft Defender for Endpoint sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Microsoft Defender for Endpoint service.

WinHTTP is independent of the Internet browsing proxy settings and other user context applications and must be able to detect the proxy servers that are available in your particular environment.

To ensure that sensor has service connectivity, follow the steps described in the [Verify client connectivity to Microsoft Defender for Endpoint service URLs](configure-proxy-internet.md#verify-client-connectivity-to-microsoft-defender-for-endpoint-service-urls) topic.

If the verification fails and your environment is using a proxy to connect to the Internet, then follow the steps described in [Configure proxy and Internet connectivity settings](configure-proxy-internet.md) topic.

### Ensure that Microsoft Defender Antivirus is not disabled by a policy

> [!IMPORTANT]
> The following only applies to devices that have **not** yet received the August 2020 (version 4.18.2007.8) update to Microsoft Defender Antivirus.
>
> The update ensures that Microsoft Defender Antivirus cannot be turned off on client devices via system policy.

**Problem**: The Microsoft Defender for Endpoint service doesn't start after onboarding.

**Symptom**: Onboarding successfully completes, but you see error 577 or error 1058 when trying to start the service.

**Solution**: If your devices are running a third-party antimalware client, the Microsoft Defender for Endpoint agent needs the Early Launch Antimalware (ELAM) driver to be enabled. You must ensure that it's not turned off by a system policy.

- Depending on the tool that you use to implement policies, you need to verify that the following Windows Defender policies are cleared:

  - DisableAntiSpyware
  - DisableAntiVirus

  For example, in Group Policy there should be no entries such as the following values:

  - `<Key Path="SOFTWARE\Policies\Microsoft\Windows Defender"><KeyValue Value="0" ValueKind="DWord" Name="DisableAntiSpyware"/></Key>`
  - `<Key Path="SOFTWARE\Policies\Microsoft\Windows Defender"><KeyValue Value="0" ValueKind="DWord" Name="DisableAntiVirus"/></Key>`

> [!IMPORTANT]
> The `disableAntiSpyware` setting is discontinued and will be ignored on all Windows 10 devices, as of the August 2020 (version 4.18.2007.8) update to Microsoft Defender Antivirus.

- After clearing the policy, run the onboarding steps again.

- You can also check the previous registry key values to verify that the policy is disabled, by opening the registry key `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`.

  :::image type="content" source="images/atp-disableantispyware-regkey.png" alt-text="The registry key for Microsoft Defender Antivirus" lightbox="images/atp-disableantispyware-regkey.png":::

   > [!NOTE]
   > All Windows Defender services (wdboot, wdfilter, wdnisdrv, wdnissvc, and windefend) should be in their default state. Changing the startup of these services is unsupported and may force you to reimage your system.
   >
   > Example default configurations for WdBoot and WdFilter:
   >
   > - `<Key Path="SYSTEM\CurrentControlSet\Services\WdBoot"><KeyValue Value="0" ValueKind="DWord" Name="Start"/></Key>`
   > - `<Key Path="SYSTEM\CurrentControlSet\Services\WdFilter"><KeyValue Value="0" ValueKind="DWord" Name="Start"/></Key>`

## Troubleshoot onboarding issues 

> [!NOTE]
> The following troubleshooting guidance is only applicable for Windows Server 2016 and lower.

If you encounter issues while onboarding a server, go through the following verification steps to address possible issues.


- [Ensure Microsoft Monitoring Agent (MMA) is installed and configured to report sensor data to the service](configure-server-endpoints.md)
- [Ensure that the server proxy and Internet connectivity settings are configured properly](configure-server-endpoints.md)

You might also need to check the following:

- Check that there's a Microsoft Defender for Endpoint Service running in the **Processes** tab in **Task Manager**. For example:

  :::image type="content" source="images/atp-task-manager.png" alt-text="The process view with Microsoft Defender for Endpoint Service running" lightbox="images/atp-task-manager.png":::

- Check **Event Viewer** \> **Applications and Services Logs** \> **Operation Manager** to see if there are any errors.

- In **Services**, check if the **Microsoft Monitoring Agent** is running on the server. For example,

  :::image type="content" source="images/atp-services.png" alt-text="The services" lightbox="images/atp-services.png":::

- In **Microsoft Monitoring Agent** \> **Azure Log Analytics (OMS)**, check the Workspaces and verify that the status is running.

  :::image type="content" source="images/atp-mma-properties.png" alt-text="The Microsoft Monitoring Agent Properties" lightbox="images/atp-mma-properties.png":::

- Check to see that devices are reflected in the **Devices list** in the portal.

## Confirming onboarding of newly built devices

There may be instances when onboarding is deployed on a newly built device but not completed.

The steps below provide guidance for the following scenario:

- Onboarding package is deployed to newly built devices
- Sensor doesn't start because the Out-of-box experience (OOBE) or first user logon hasn't been completed
- Device is turned off or restarted before the end user performs a first logon
- In this scenario, the SENSE service won't start automatically even though onboarding package was deployed

> [!NOTE]
> User Logon after OOBE is no longer required for SENSE service to start on the following or more recent Windows versions: 
> Windows 10, version 1809 or Windows Server 2019, or Windows Server 2022 with [April 22 2021 update rollup](https://support.microsoft.com/kb/5001384). 
> Windows 10, version 1909 with [April 2021 update rollup](https://support.microsoft.com/kb/5001396). 
> Windows 10, version 2004/20H2 with [April 28 2021 update rollup](https://support.microsoft.com/kb/5001391). 


> [!NOTE]
> The following steps are only relevant when using Microsoft Endpoint Configuration Manager. For more information about onboarding using Microsoft Endpoint Configuration Manager, see [Microsoft Defender for Endpoint](/mem/configmgr/protect/deploy-use/windows-defender-advanced-threat-protection).

1. Create an application in Microsoft Endpoint Configuration Manager.

   :::image type="content" source="images/mecm-1.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-1" lightbox="images/mecm-1.png":::

2. Select **Manually specify the application information**.

   :::image type="content" source="images/mecm-2.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-2" lightbox="images/mecm-2.png":::

3. Specify information about the application, then select **Next**.

   :::image type="content" source="images/mecm-3.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-3" lightbox="images/mecm-3.png":::

4. Specify information about the software center, then select **Next**.

   :::image type="content" source="images/mecm-4.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-4" lightbox="images/mecm-4.png":::

5. In **Deployment types** select **Add**.

   :::image type="content" source="images/mecm-5.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-5" lightbox="images/mecm-5.png":::

6. Select **Manually specify the deployment type information**, then select **Next**.

   :::image type="content" source="images/mecm-6.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-6" lightbox="images/mecm-6.png":::

7. Specify information about the deployment type, then select **Next**.

   :::image type="content" source="images/mecm-7.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-7" lightbox="images/mecm-7.png":::

8. In **Content** \> **Installation program** specify the command: `net start sense`.

   :::image type="content" source="images/mecm-8.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-8" lightbox="images/mecm-8.png":::

9. In **Detection method**, select **Configure rules to detect the presence of this deployment type**, then select **Add Clause**.

   :::image type="content" source="images/mecm-9.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-9" lightbox="images/mecm-9.png":::

10. Specify the following detection rule details, then select **OK**:

    :::image type="content" source="images/mecm-10.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-10" lightbox="images/mecm-10.png":::

11. In **Detection method** select **Next**.

    :::image type="content" source="images/mecm-11.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-11" lightbox="images/mecm-11.png":::

12. In **User Experience**, specify the following information, then select **Next**:

    :::image type="content" source="images/mecm-12.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-12" lightbox="images/mecm-12.png":::

13. In **Requirements**, select **Next**.

    :::image type="content" source="images/mecm-13.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-13" lightbox="images/mecm-13.png":::

14. In **Dependencies**, select **Next**.

    :::image type="content" source="images/mecm-14.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-14" lightbox="images/mecm-14.png":::

15. In **Summary**, select **Next**.

    :::image type="content" source="images/mecm-15.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-15" lightbox="images/mecm-15.png":::

16. In **Completion**, select **Close**.

    :::image type="content" source="images/mecm-16.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-16" lightbox="images/mecm-16.png":::

17. In **Deployment types**, select **Next**.

    :::image type="content" source="images/mecm-17.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-17" lightbox="images/mecm-17.png":::

18. In **Summary**, select **Next**.

    :::image type="content" source="images/mecm-18.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-18" lightbox="images/mecm-18.png":::

    The status is then displayed:
    :::image type="content" source="images/mecm-19.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-19" lightbox="images/mecm-19.png":::

19. In **Completion**, select **Close**.

    :::image type="content" source="images/mecm-20.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-20" lightbox="images/mecm-20.png":::

20. You can now deploy the application by right-clicking the app and selecting **Deploy**.

    :::image type="content" source="images/mecm-21.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-21" lightbox="images/mecm-21.png":::

21. In **General** select **Automatically distribute content for dependencies** and **Browse**.

    :::image type="content" source="images/mecm-22.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-22" lightbox="images/mecm-22.png":::

22. In **Content** select **Next**.

    :::image type="content" source="images/mecm-23.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-23" lightbox="images/mecm-23.png":::

23. In **Deployment settings**, select **Next**.

    :::image type="content" source="images/mecm-24.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-24" lightbox="images/mecm-24.png":::

24. In **Scheduling** select **As soon as possible after the available time**, then select **Next**.

    :::image type="content" source="images/mecm-25.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-25" lightbox="images/mecm-25.png":::

25. In **User experience**, select **Commit changes at deadline or during a maintenance window (requires restarts)**, then select **Next**.

    :::image type="content" source="images/mecm-26.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-26" lightbox="images/mecm-26.png":::

26. In **Alerts** select **Next**.

    :::image type="content" source="images/mecm-27.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-27" lightbox="images/mecm-27.png":::

27. In **Summary**, select **Next**.

    :::image type="content" source="images/mecm-28.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-28" lightbox="images/mecm-28.png":::
      

    The status is then displayed
    :::image type="content" source="images/mecm-29.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-29" lightbox="images/mecm-29.png":::

28. In **Completion**, select **Close**.

    :::image type="content" source="images/mecm-30.png" alt-text="The Microsoft Endpoint Configuration Manager configuration-30" lightbox="images/mecm-30.png":::

## Related topics

- [Troubleshoot Microsoft Defender for Endpoint](troubleshoot-mdatp.md)
- [Onboard devices](onboard-configure.md)
- [Configure device proxy and Internet connectivity settings](configure-proxy-internet.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
