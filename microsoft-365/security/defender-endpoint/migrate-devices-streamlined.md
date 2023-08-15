---
title: Migrate devices to use the streamlined onboarding method
description: Learn how to use Client analyzer to verify client connectivity to Defender for Endpoint
keywords: connectivity, client analyzer, service connection
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
ms.topic: how-to
ms.subservice: mde
ms.date: 08/01/2023
---

# Migrate devices to use the streamlined connectivity method

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


[!Include[Prerelease information](../../includes/prerelease.md)]


In this article, you'll learn how to migrate (reonboard) devices that are currently onboarded to Defender for Endpoint to use the streamlined device connectivity method. For more information on streamlined connectivity, see [Onboarding devices using streamlined connectivity](configure-device-connectivity.md). 

Streamlined connectivity supports migrating devices onboarded to Defender for Endpoint to use the simplified method. Devices must meet the same prerequisites listed in [Streamlined connectivity](configure-device-connectivity.md#prerequisites). 


In most cases, a full device offboarding isn't necessary when reonboarding. For details on each OS, see the preceding section. You'll be able to run the updated onboarding package and reboot your device to switch connectivity over. 

>[!IMPORTANT]
>For migrating devices already onboarded to Defender for Endpoint: 
>-	Offboarding is not required. You can simply run the updated onboarding package using instructions in the preceeding section and reboot the device (Windows) or restart the service (macOS and Linux).
>-	A device reboot is required for connectivity to switch from using standard to streamlined connectivity (for Windows and macOS). Otherwise, reonboarding will be incomplete.

>[!IMPORTANT]
>Preview limitiations and known issues: <br>
>-For device migrations (reonboarding): Offboarding is not required to switch over to streamlined connectivity method. Once the updated onboarding package is run, a full device reboot is required for  Windows devices and a service restart for macOS and Linux. For more information, see the details below. 
>-Windows 10 versions 1607, 1703, 1709, and 1803 do not support reonboarding. You will need to offboard first and onboard using the updated package. These versions also require a longer URL list. 

## Migrating devices using the streamlined method

The following table lists the available tools based on the endpoint that you need to onboard.

Migration recommendation:

- **Start small** - It is recommended to start with a small set of devices first, apply to onboarding blob using any of the supported deployment tools, then monitor for connectivity. 

- **Validate and monitor** - After onboarding the small set of devices, validate that devices have successfully onboarded and are communicating with the service. 

- **Complete migration** - At this stage, you can gradually roll out the migration to a larger set of devices and remove the old URLs from your network device to complete the migration.


Validate device prerequisites before proceeding with device migrations (link to other doc). Learn more about streamlined connectivity <link to the other doc>. This is a continuation of those articles with a focus on migrating devices. 

To reonboard devices using the streamlined connectivity method, you'll need to use the streamlined onboarding package. For more information on how to access the package, see [Streamlined connectivity](configure-device-connectivity.md).

Depending on the OS, migrations require a device reboot or service restart once the onboarding package is applied:

- Windows: reboot the device
- macOS: Reboot the device or restart the MDE service by running:
  1.	`sudo launchctl unload /Library/LaunchDaemons/com.microsoft.fresno.plist`
  2.	`sudo launchctl load /Library/LaunchDaemons/com.microsoft.fresno.plist` 
	
- Linux: Restart the Defender for Endpoint service by running: `sudo systemctl restart mdatp`

### [Windows 10 and 11](#tab/windows10and11)

### Windows 10 and 11

>[!IMPORTANT]
>Windows 10 version 1607, 1703, 1709, and 1803 do not support reonboarding. To migrate existing devices, you will need to fully offboard and onboard using the streamlined onboarding package.

For more information on prerequisites, see [Onboarding Windows Client](onboard-windows-client.md).

### Local script

Use the guidance in [Local script (up to 10 devices)](configure-endpoints-script.md). After completing the steps, you must then restart the device. Device connectivity won't start if you don't restart the device.

### Group policy

Use the guidance in [Group policy](configure-endpoints-gp.md). After completing the steps, you must then restart the device. Device connectivity won't start if you don't restart the device.

### Microsoft Intune
Follow the guidance in [Intune](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection).

### Microsoft Configuration Manager 

Follow the guidance in [Intune](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection).

### VDI

Use the guidance in [Onboard non-persistent virtual desktop infrastructure (VDI) devices](/microsoft-365/security/defender-endpoint/configure-endpoints-vdi). After completing the steps, you must then restart the device. Device connectivity to streamlined approach won't start if you don't reboot the device.



### [**Windows Server**](#tab/Windowsserver)

### Windows Server

For specific OS and device prerequisites, see [Onboard Windows Server overview](onboard-windows-server.md). Streamlined connectivity is only supported for Windows Server running unified agent (non-MMA). 

For general Windows server onboarding instructions, see [Onboard Windows servers to the Microsoft Defender for Endpoint service](/microsoft-365/security/defender-endpoint/configure-server-endpoints).


### Microsoft Defender for Cloud
Streamlined connectivity doesn't support onboarding through Microsoft Defender for Cloud at this time. 


### Group policy

Use the guidance in [Group policy](configure-endpoints-gp.md). After completing the steps, you must then restart the device. Device connectivity won't start if you don't restart the device.

### Microsoft Configuration Manager 

Follow the guidance in 

### VDI

Use the guidance in [Onboard non-persistent virtual desktop infrastructure (VDI) devices](/microsoft-365/security/defender-endpoint/configure-endpoints-vdi). After completing the steps, you must then restart the device. Device connectivity to streamlined approach won't start if you don't reboot the device.


### [**macOS**](#tab/macOS)

### macOS

For specific OS and device prerequisites, see [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md).

Requires Defender for Endpoint version 101.23052.0004 or later.

For general instructions on onboarding Defender for Endpoint on macOS, see [Microsoft Defender for Endpoint on macOS](microsoft-defender-endpoint-mac.md).


### Local script
Use the guidance in [Manual deployment for Microsoft Defender for Endpoint on macOS](mac-install-manually.md).

After completing the steps, you must either reboot the device or restart the service using the following commands: 

1.	`sudo launchctl unload /Library/LaunchDaemons/com.microsoft.fresno.plist` 
2.	`sudo launchctl load /Library/LaunchDaemons/com.microsoft.fresno.plist` 

Device connectivity to streamlined approach won't start if you don't reboot the device.



### Microsoft Intune

1. In Microsoft Intune, navigate to **Devices > macOS** and create a new custom policy for the new onboarding method. Don't assign it yet.

2. Remove the assignment of any standard policies  onboarding package to devices you'll reonboard. 

3. Add the assignment of the new onboarding policy. 

4. Reboot the macOS device.


### JAMF Pro

1.	Exclude device from any existing 'onboarding' policies in JAMF Pro.

2.	Create a new onboarding policy for the �streamlined� connectivity approach. 

3.	Include device in the new streamlined onboarding policy.

4.	Reboot device if previously onboarded to MDE. Alternatively, you can restart the service using:

    1.	sudo launchctl unload /Library/LaunchDaemons/com.microsoft.fresno.plist 
    2.	sudo launchctl load /Library/LaunchDaemons/com.microsoft.fresno.plist 
	
For more JAMF guidelines, see [Deploying Microsoft Defender for Endpoint on macOS with JAMF Pro](mac-install-with-jamf.md).




