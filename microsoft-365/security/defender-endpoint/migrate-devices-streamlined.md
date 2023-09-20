---
title: Migrate devices to use the streamlined onboarding method
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
ms.date: 09/20/2023
---

# Migrate devices to use the streamlined connectivity method

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


[!Include[Prerelease information](../../includes/prerelease.md)]


This article describes how to migrate (reonboard) devices that are currently onboarded to Defender for Endpoint to use the streamlined device connectivity method. For more information on streamlined connectivity, see [Onboarding devices using streamlined connectivity](configure-device-connectivity.md). Devices must meet the prerequisites listed in [Streamlined connectivity](configure-device-connectivity.md#prerequisites). 

In most cases, full device offboarding isn't required when reonboarding. You can run the updated onboarding package and reboot your device to switch connectivity over. For details on each operating system, see LINK.

> [!IMPORTANT]
> Preview limitations and known issues: <br>
> - For device migrations (reonboarding): Offboarding is not required to switch over to streamlined connectivity method. Once the updated onboarding package is run, a full device reboot is required for Windows devices and a service restart for macOS and Linux. For more information, see the details included in this article. <br>
> - Windows 10 versions 1607, 1703, 1709, and 1803 do not support reonboarding. Offboard first and then onboard using the updated package. These versions also require a longer URL list. 
> - Devices running the MMA agent are not supported and must continue using the MMA onboarding method.

## Migrating devices using the streamlined method

The following table lists the available tools based on the device's operating system.

Migration recommendation:

- **Start small**. It's recommended to start with a small set of devices first, apply the onboarding blob using any of the supported deployment tools, then monitor for connectivity. 

- **Validate and monitor**. After onboarding the small set of devices, validate that devices have successfully onboarded and are communicating with the service. 

- **Complete migration**. At this stage, you can gradually roll out the migration to a larger set of devices and remove the old URLs and previous onboarding policies from your network device to complete the migration.

Validate device prerequisites before proceeding with migrations (link to other doc). This information builds upon the previous article by focusing on migrations. 

To reonboard devices, use the streamlined onboarding package. For more information on how to access the package, see [Streamlined connectivity](configure-device-connectivity.md).

Depending on the OS, migrations require a device reboot or service restart once the onboarding package is applied:

- Windows: reboot the device
- macOS: Reboot the device or restart the Defender for Endpoint service by running:
  1.	`sudo launchctl unload /Library/LaunchDaemons/com.microsoft.fresno.plist`
  2.	`sudo launchctl load /Library/LaunchDaemons/com.microsoft.fresno.plist` 
	
- Linux: Restart the Defender for Endpoint service by running: `sudo systemctl restart mdatp`

### [Windows 10 and 11](#tab/windows10and11)

### Windows 10 and 11

>[!IMPORTANT]
>Windows 10 version 1607, 1703, 1709, and 1803 do not support reonboarding. To migrate existing devices, you will need to fully offboard and onboard using the streamlined onboarding package.

For more information on onboarding Windows client devices, see [Onboarding Windows Client](onboard-windows-client.md).

See prerequisites: [Prerequisites](configure-device-connectivity.md#prerequisites).

### Local script

Use the guidance in [Local script (up to 10 devices)](configure-endpoints-script.md). After completing the steps, you must restart the device for device connectivity to switch over.

### Group policy

Use the guidance in [Group policy](configure-endpoints-gp.md). After completing the steps, you must restart the device for device connectivity to switch over.

### Microsoft Intune

Follow the guidance in [Intune](/mem/intune/protect/endpoint-security-edr-policy#updating-the-onboarding-state-for-a-device). After completing the steps, you must restart the device for device connectivity to switch over.

### Microsoft Configuration Manager 

Follow the guidance in [Configuration Manager](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection#bkmk_updateatp).

### VDI

Use the guidance in [Onboard nonpersistent virtual desktop infrastructure (VDI) devices](/microsoft-365/security/defender-endpoint/configure-endpoints-vdi). After completing the steps, you must restart the device for device connectivity to switch over.

### [**Windows Server**](#tab/Windowsserver)

### Windows Server

For general Windows server onboarding instructions, see [Onboard Windows servers to the Microsoft Defender for Endpoint service](/microsoft-365/security/defender-endpoint/configure-server-endpoints).

See [Prerequisites](configure-device-connectivity.md#prerequisites).

### Microsoft Defender for Cloud

The streamlined connectivity method isn't currently supported through Microsoft Defender for Cloud. 

### Microsoft Configuration Manager 

Follow the guidance in [Configuration Manager](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection#bkmk_updateatp).

### Group policy

Use the guidance in [Group policy](configure-endpoints-gp.md). After completing the steps, you must restart the device for device connectivity to switch over.

### VDI

Use the guidance in [Onboard nonpersistent virtual desktop infrastructure (VDI) devices](/microsoft-365/security/defender-endpoint/configure-endpoints-vdi). After completing the steps, you must restart the device for device connectivity to switch over.


### [**macOS**](#tab/macOS)

### macOS

For specific OS and device prerequisites, see [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md).

Requires Defender for Endpoint version 101.23052.0004 or later.

For general instructions on onboarding Defender for Endpoint on macOS, see [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md).

### Local script

Use the guidance in [Manual deployment for Microsoft Defender for Endpoint on macOS](mac-install-manually.md).

After completing the steps, you must either reboot the device or restart the service. 

Device connectivity to the streamlined approach doesn't start until you reboot the device or restart the service.

### Microsoft Intune

1. In Microsoft Intune, create a new onboarding policy using Custom Configuration profile. Don't assign it yet. Follow the instructions under [Intune-based deployment for Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/mac-install-with-intune). 

2. Exclude the macOS device you're reonboarding from its existing onboarding policy. To learn more about excluding groups from policy assignments, see [Exclude groups from a policy assignment](/mem/intune/configuration/device-profile-assign#exclude-groups-from-a-policy-assignment).

3. Add the assignment of the policy using streamlined onboarding package.

4. Reboot the device.

### JAMF Pro

1.	Exclude device from any existing 'onboarding' policies in JAMF Pro.

2.	Create a new onboarding policy for the streamlined connectivity approach. 

3.	Include device in the new streamlined onboarding policy.

4.	Reboot device if previously onboarded to Defender for Endpoint. Alternatively, you can restart the service using the following commands:

    1.	`sudo launchctl unload /Library/LaunchDaemons/com.microsoft.fresno.plist` 
    2.	`sudo launchctl load /Library/LaunchDaemons/com.microsoft.fresno.plist` 
	
For more JAMF guidelines, see [Deploying Microsoft Defender for Endpoint on macOS with JAMF Pro](mac-install-with-jamf.md).


### [**Linux**](#tab/linux)

### Linux

For specific OS and device prerequisites, see [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md). 

Requires Defender for Endpoint version 101.23052.0009+ 

For general instructions on onboarding to Defender for Endpoint on Linux, see [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md).

### Local script

Use the guidance in [Deploy Microsoft Defender for Endpoint on Linux manually](linux-install-manually.md).

After completing the steps, you must either reboot the device or restart the service using `sudo systemctl restart mdatp`.
 
Device connectivity to streamlined approach doesn't start if you don't reboot the device.

### Third-party Linux deployment tools (Puppet, Ansible, Chef)

Replace the onboarding package file in the current deployment method.

---

## Verifying device connectivity with streamlined method for migrated devices


You can use the following methods to check that you have successfully connected Windows devices:

- [Client analyzer](#use-defender-for-endpoint-client-analyzer-windows-to-validate-connectivity-after-onboarding-for-migrated-endpoints)
- [Tracking with advanced hunting in Microsoft 365 Defender](#tracking-with-advanced-hunting-in-microsoft-365-defender)
- [Track locally using Event Viewer (for Windows)](#tracking-locally-on-a-device-through-windows-event-viewer)
- [Run tests to confirm connectivity with Defender for Endpoint services](#)
- Checking the registry editor
- [PowerShell detection test](#powershell-detection-test)


For macOS and Linux, you can use the following methods:

- MDATP connectivity tests
- Tracking with advanced hunting in Microsoft 365 Defender
- Run tests to confirm connectivity with Defender for Endpoint services

### Use Defender for Endpoint Client Analyzer (Windows) to validate connectivity after onboarding for migrated endpoints

Once onboarded, run the MDE Client Analyzer to confirm your device is connecting to the appropriate updated URLs.

Download the Microsoft Defender for Endpoint Client Analyzer tool where Defender for Endpoint sensor is running.

You can follow the same instructions as in [Verify client connectivity to Microsoft Defender for Endpoint service](verify-connectivity.md).  The script automatically uses the onboarding package configured on the device (should be streamlined version) to test connectivity. 

Ensure connectivity is established with the appropriate URLs. 

### Tracking with advanced hunting in Microsoft 365 Defender

You can use advanced hunting in Microsoft 365 Defender portal to view the connectivity type status. 

This information is found in the DeviceInfo table under the "ConnectivityType" column:

   **Column Name:** ConnectivityType

   **Possible Values:** Streamlined, Standard, *blank* 

   **Data type:** string

   **Description:** Type of connectivity from the device to the cloud

Once a device is migrated to use the streamlined method and the device establishes successful communication with the EDR command & control channel, the value is represented as *streamlined*.

If you move the device back to the regular method, the value is *standard*.

For devices that haven't yet attempted to reonboard, the value remains blank. 

For more information on using advanced hunting in Microsoft 365 Defender, see [Overview - Advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview).

### Tracking locally on a device through Windows Event Viewer

You can use Windows Event Viewer’s SENSE operational log to locally validate connections with the new streamlined approach. SENSE Event ID 4 tracks successful EDR connections.

Open the Defender for Endpoint service event log using the following steps:

1. On the Windows menu, select **Start**, then type **Event Viewer**. Then select **Event Viewer**.

2. In the log list, under **Log Summary**, scroll down until you see **Microsoft-Windows-SENSE/Operational**. Double-click the item to open the log. 

	:::image type="content" source="images/log-summary-event-viewer.png" alt-text="Screenshot of Event Viewer with log summary section":::

	You can also access the log by expanding**Applications and Services Logs>Microsoft>Windows>SENSE** and select **Operational**. 

3. Event ID 4 tracks successful connections with Defender for Endpoint Command & Control channel. Verify successful connections with updated URL. For example:

    ```
    Contacted server 6 times, all succeeded, URI: <region>.<geo>.endpoint.security.microsoft.com. 
	<EventData> 
	  <Data Name="UInt1">6</Data>  
	  <Data Name="Message1">https://<region>.<geo>.endpoint.security.microsoft.com>  
	</EventData> 
	```

4. Message1 contains the contacted URL. Confirm the event includes the streamlined URL (endpoint.security.microsoft, com).

5. Event ID 5 tracks errors if applicable. 

> [!NOTE]
> SENSE is the internal name used to refer to the behavioral sensor that powers Microsoft Defender for Endpoint. <br>
> Events recorded by the service will appear in the log. <br>
> For more information, see [Review events and error using Event Viewer](event-error-codes.md).


### Run tests to confirm connectivity with Defender for Endpoint services  

Once the device is onboarded to Defender for Endpoint, validate that it's continuing to appear in Device Inventory. The DeviceID should remain the same.

Check the Device Page Timeline tab to confirm events are flowing from the device. 

#### Live Response 

Ensure [Live Response](respond-machine-alerts.md#initiate-live-response-session) is working on your test device. Follow instructions in [Investigate entities on devices using live response](live-response.md).

Make sure to run a couple of basic commands post-connection to confirm connectivity (such as cd, jobs, connect).

#### Automated investigation and response 

Ensure that Automated investigation and response is working on your test device: [Configure automated investigation and response capabilities](/microsoft-365/security/defender/m365d-configure-auto-investigation-response).

For Auto-IR testing labs, navigate to  **Microsoft 365 Defender > Evaluations & Tutorials> Tutorials & Simulations > Tutorials>  Automated Investigation tutorials**.

#### Cloud-delivered protection 

1. Open a Command Prompt as an administrator.

2. Right-click the item in the Start menu, select **Run as administrator** then select **Yes** at the permissions prompt. 

3. Use the following argument with the Microsoft Defender Antivirus command-line utility (mpcmdrun.exe) to verify that your network can communicate with the Microsoft Defender Antivirus cloud service: 

	```
	"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -ValidateMapsConnection
	```

  > [!NOTE]
  > This command will only work on Windows 10, version 1703 or higher, or Windows 11. 
  > For more information, see [Manage Microsoft Defender Antivirus with the mpcmdrun.exe commandline tool](command-line-arguments-microsoft-defender-antivirus.md). 

#### Test Block at First Sight 

Follow instructions in [Microsoft Defender for Endpoint Block at First Sight (BAFS) demonstration](defender-endpoint-demonstration-block-at-first-sight-bafs.md).

#### Test SmartScreen 

Follow instructions in [Microsoft Defender SmartScreen Demo (msft.net)](https://demo.smartscreen.msft.net/). 


### PowerShell detection test
1. On the Windows device, create a folder: `C:\test-MDATP-test`.

2. Open Command Prompt as an administrator.

3. In the Command Prompt window, run the following PowerShell command:

   ```powershell
   powershell.exe -NoExit -ExecutionPolicy Bypass -WindowStyle Hidden $ErrorActionPreference = 'silentlycontinue';(New-Object System.Net.WebClient).DownloadFile('http://127.0.0.1/1.exe', 'C:\\test-MDATP-test\\invoice.exe');Start-Process 'C:\\test-MDATP-test\\invoice.exe'
   ```

After the command runs, the Command Prompt window closes automatically. If successful, the detection test is marked as completed.

For macOS and Linux, you can use the following methods:

- MDATP connectivity tests
- Tracking with advanced hunting in Microsoft 365 Defender
- Run tests to confirm connectivity with Defender for Endpoint services

### MDATP connectivity test (macOS and Linux)

Run `mdatp health –details` to confirm simplified_connectivity: "enabled".

Run `mdatp health –details edr` to confirm `edr_partner_geo_location` is available. The value should be `GW_<geo>` where 'geo' is your tenant’s geo-location.

Run mdatp connectivity test. Ensure the streamlined URL pattern is present. You should expect two for '\storage', one for '\mdav', one for '\xplat', and one for '/packages'.

For example: `https:mdav.us.endpoint.security.microsoft/com/storage`

### Tracking with advanced hunting in Microsoft 365 Defender

You can use advanced hunting in Microsoft 365 Defender portal to view the connectivity type status. 

This information is found in the DeviceInfo table under the "ConnectivityType" column:

   **Column Name:** ConnectivityType

   **Possible Values:** Streamlined, Standard, *blank* 

   **Data type:** string

   **Description:** Type of connectivity from the device to the cloud

Once a device is migrated to use the streamlined method and the device establishes successful communication with the EDR command & control channel, the value is represented as "streamlined".

If you move the device back to the regular method, the value is "standard".

For devices that haven't yet attempted to reonboard, the value remains blank. 

For more information on using advanced hunting in Microsoft 365 Defender, see [Overview - Advanced hunting](/microsoft-365/security/defender/advanced-hunting-overview).

### Use Defender for Endpoint Client Analyzer (cross-platform) to validate connectivity post-onboarding for newly migrated endpoints

Download and run the client analyzer for macOS or Linux. For more information, see [Download and run the client analyzer](download-client-analyzer.md).

Use the `–connectivity` switch to test with either an onboarding script or specific tenant geo-location.
