---
title: Fix unhealthy sensors in Microsoft Defender for Endpoint
description: Fix device sensors that are reporting as misconfigured or inactive so that the service receives data from the device.
keywords: misconfigured, inactive, fix sensor, sensor health,  no sensor data, sensor data, impaired communications, communication
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
- tier2
ms.topic: conceptual
ms.date: 11/23/2020
ms.subservice: mde
search.appverid: met150
---

# Fix unhealthy sensors in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-fixsensor-abovefoldlink)

Devices can be categorized as misconfigured or inactive are flagged for varying causes. This section provides some explanations as to what might have caused a device to be categorized as inactive or misconfigured.

## Inactive devices

An inactive device isn't necessarily flagged because of an issue. The following actions taken on a device can cause a device to be categorized as inactive:

- Device isn't in use
- Device was reinstalled or renamed
- Device was offboarded
- Device isn't sending signals


### Device isn't in use

Any device that isn't in use for more than seven days retains 'Inactive' status in the portal.

### Device was reinstalled or renamed
A new device entity is generated in Microsoft 365 Defender for reinstalled or renamed devices. The previous device entity remains, with an 'Inactive' status in the portal. If you reinstalled a device and deployed the Defender for Endpoint package, search for the new device name to verify that the device is reporting normally.

### Device was offboarded
If the device was offboarded, it still appears in devices list. After seven days, the device health state should change to inactive.

### Device isn't sending signals
If the device isn't sending any signals to any Microsoft Defender for Endpoint channels for more than seven days for any reason, a device can be considered inactive; this includes conditions that fall under misconfigured devices classification.

Do you expect a device to be in 'Active' status? [Open a support ticket](https://support.microsoft.com/getsupport?wf=0&tenant=ClassicCommercial&oaspworkflow=start_1.0.0.0&locale=en-us&supportregion=en-us&pesid=16055&ccsid=636206786382823561).

## Misconfigured devices
Misconfigured devices can further be classified to:
- Impaired communications
- No sensor data

### Impaired communications
This status indicates that there's limited communication between the device and the service.

The following suggested actions can help fix issues related to a misconfigured device with impaired communications:

- [Ensure the device has Internet connection](troubleshoot-onboarding.md#troubleshoot-onboarding-issues-on-the-device)</br>
  The Microsoft Defender for Endpoint sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Microsoft Defender for Endpoint service.

- [Verify client connectivity to Microsoft Defender for Endpoint service URLs](configure-proxy-internet.md#verify-client-connectivity-to-microsoft-defender-for-endpoint-service-urls)</br>
  Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Microsoft Defender for Endpoint service URLs.

If you took corrective actions and the device status is still misconfigured, [open a support ticket](https://go.microsoft.com/fwlink/?LinkID=761093&clcid=0x409).

### No sensor data
A misconfigured device with status 'No sensor data' has communication with the service but can only report partial sensor data.

Follow theses actions to correct known issues related to a misconfigured device with status 'No sensor data':

- [Ensure the device has Internet connection](troubleshoot-onboarding.md#troubleshoot-onboarding-issues-on-the-device)</br>
  The Microsoft Defender for Endpoint sensor requires Microsoft Windows HTTP (WinHTTP) to report sensor data and communicate with the Microsoft Defender for Endpoint service.

- [Verify client connectivity to Microsoft Defender for Endpoint service URLs](configure-proxy-internet.md#verify-client-connectivity-to-microsoft-defender-for-endpoint-service-urls)</br>
  Verify the proxy configuration completed successfully, that WinHTTP can discover and communicate through the proxy server in your environment, and that the proxy server allows traffic to the Microsoft Defender for Endpoint service URLs.

- [Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-the-diagnostics-service-is-enabled)</br>
If the devices aren't reporting correctly, you should verify that the Windows diagnostic data service is set to automatically start. Also verify that the Windows diagnostic data service is running on the endpoint.

- [Ensure that Microsoft Defender Antivirus isn't disabled by policy](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy)</br>
If your devices are running a third-party antimalware client, Defender for Endpoint agent requires that the Microsoft Defender Antivirus Early Launch Antimalware (ELAM) driver is enabled.

If you took corrective actions and the device status is still misconfigured, [open a support ticket](https://go.microsoft.com/fwlink/?LinkID=761093&clcid=0x409).

## See also
- [Check sensor health state in Microsoft Defender for Endpoint](check-sensor-status.md)
- [Client analyzer overview](overview-client-analyzer.md)
- [Download and run the client analyzer](download-client-analyzer.md)
- [Run the client analyzer on Windows](run-analyzer-windows.md)
- [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md)
- [Data collection for advanced troubleshooting on Windows](data-collection-analyzer.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
