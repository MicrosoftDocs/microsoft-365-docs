---
title: Review events and errors using Event Viewer
description: Get descriptions and further troubleshooting steps (if necessary) for all events reported by the Microsoft Defender for Endpoint service.
keywords: troubleshoot, event viewer, log summary, failure code, failed, Microsoft Defender for Endpoint service, can't start, broken, can't start
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 05/21/2018
ms.technology: mde
---


# Review events and errors using Event Viewer

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- Event Viewer
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-enablesiem-abovefoldlink)

You can review event IDs in the [Event Viewer](https://msdn.microsoft.com/library/aa745633(v=bts.10).aspx) on individual devices.

For example, if devices aren't appearing in the **Devices list**, you might need to look for event IDs on the devices. You can then use this table to determine further troubleshooting steps.

**Open Event Viewer and find the Microsoft Defender for Endpoint service event log:**

1. Click **Start** on the Windows menu, type **Event Viewer**, and press **Enter**.

2. In the log list, under **Log Summary**, scroll until you see **Microsoft-Windows-SENSE/Operational**. Double-click the item to
   open the log.

   You can also access the log by expanding **Applications and Services Logs** > **Microsoft** > **Windows** > **SENSE** and click on **Operational**.

   > [!NOTE]
   > SENSE is the internal name used to refer to the behavioral sensor that powers Microsoft Defender for Endpoint.

3. Events recorded by the service will appear in the log. See the following table for a list of events recorded by the service.

<br>

****

|Event ID|Message|Description|Action|
|---|---|---|---|
|1|Microsoft Defender for Endpoint service started (Version `variable`).|Occurs during system startup, shut down, and during onboarding.|Normal operating notification; no action required.|
|2|Microsoft Defender for Endpoint service shutdown.|Occurs when the device is shut down or offboarded.|Normal operating notification; no action required.|
|3|Microsoft Defender for Endpoint service failed to start. Failure code: `variable`.|Service didn't start.|Review other messages to determine possible cause and troubleshooting steps.|
|4|Microsoft Defender for Endpoint service contacted the server at `variable`.|Variable = URL of the Defender for Endpoint processing servers. <p> This URL will match that seen in the Firewall or network activity.|Normal operating notification; no action required.|
|5|Microsoft Defender for Endpoint service failed to connect to the server at `variable`.|Variable = URL of the Defender for Endpoint processing servers. <p> The service couldn't contact the external processing servers at that URL.|Check the connection to the URL. See [Configure proxy and Internet connectivity](configure-proxy-internet.md).|
|6|Microsoft Defender for Endpoint service is not onboarded and no onboarding parameters were found.|The device didn't onboard correctly and won't be reporting to the portal.|Onboarding must be run before starting the service. <p> Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|7|Microsoft Defender for Endpoint service failed to read the onboarding parameters. Failure: `variable`.|Variable = detailed error description. The device didn't onboard correctly and won't be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|8|Microsoft Defender for Endpoint service failed to clean its configuration. Failure code: `variable`.|**During onboarding:** The service failed to clean its configuration during the onboarding. The onboarding process continues. <p> **During offboarding:** The service failed to clean its configuration during the offboarding. The offboarding process finished but the service keeps running.|**Onboarding:** No action required. <p> **Offboarding:** Reboot the system. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|9|Microsoft Defender for Endpoint service failed to change its start type. Failure code: `variable`.|**During onboarding:** The device didn't onboard correctly and won't be reporting to the portal. <p>**During offboarding:** Failed to change the service start type. The offboarding process continues. |Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|10|Microsoft Defender for Endpoint service failed to persist the onboarding information. Failure code: `variable`.|The device didn't onboard correctly and won't be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|11|Onboarding or re-onboarding of Defender for Endpoint service completed.|The device onboarded correctly.|Normal operating notification; no action required. <p> It may take several hours for the device to appear in the portal.|
|12|Microsoft Defender for Endpoint failed to apply the default configuration.|Service was unable to apply the default configuration.|This error should resolve after a short period of time.|
|13|Microsoft Defender for Endpoint device ID calculated: `variable`.|Normal operating process.|Normal operating notification; no action required.|
|15|Microsoft Defender for Endpoint cannot start command channel with URL: `variable`.|Variable = URL of the Defender for Endpoint processing servers. <p> The service couldn't contact the external processing servers at that URL.|Check the connection to the URL. See [Configure proxy and Internet connectivity](configure-proxy-internet.md).|
|17|Microsoft Defender for Endpoint service failed to change the Connected User Experiences and Telemetry service location. Failure code: `variable`.|An error occurred with the Windows telemetry service.|[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy)">Ensure the diagnostic data service is enabled. <p> Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|18|OOBE (Windows Welcome) is completed.|Service will only start after any Windows updates have finished installing.|Normal operating notification; no action required.|
|19|OOBE (Windows Welcome) has not yet completed.|Service will only start after any Windows updates have finished installing.|Normal operating notification; no action required. <p> If this error persists after a system restart, ensure all Windows updates have full installed.|
|20|Cannot wait for OOBE (Windows Welcome) to complete. Failure code: `variable`.|Internal error.|If this error persists after a system restart, ensure all Windows updates have full installed.|
|25|Microsoft Defender for Endpoint service failed to reset health status in the registry. Failure code: `variable`.|The device didn't onboard correctly. It will report to the portal, however the service may not appear as registered in SCCM or the registry.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|26|Microsoft Defender for Endpoint service failed to set the onboarding status in the registry. Failure code: `variable`.|The device didn't onboard correctly. <p> It will report to the portal, however the service may not appear as registered in SCCM or the registry.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|27|Microsoft Defender for Endpoint service failed to enable SENSE aware mode in Microsoft Defender Antivirus. Onboarding process failed. Failure code: `variable`.|Normally, Microsoft Defender Antivirus will enter a special passive state if another real-time antimalware product is running properly on the device, and the device is reporting to Defender for Endpoint.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md). <p> Ensure real-time antimalware protection is running properly.|
|28|Microsoft Defender for Endpoint Connected User Experiences and Telemetry service registration failed. Failure code: `variable`.|An error occurred with the Windows telemetry service.|[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy). <p> Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|29|Failed to read the offboarding parameters. Error type: %1, Error code: %2, Description: %3|This event occurs when the system can&#39;t read the offboarding parameters.|Ensure the device has Internet access, then run the entire offboarding process again. Ensure the offboarding package hasn't expired.|
|30|Microsoft Defender for Endpoint service failed to disable SENSE aware mode in Microsoft Defender Antivirus. Failure code: `variable`.|Normally, Microsoft Defender Antivirus will enter a special passive state if another real-time antimalware product is running properly on the device, and the device is reporting to Defender for Endpoint.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md). <p> Ensure real-time antimalware protection is running properly.|
|31|Microsoft Defender for Endpoint Connected User Experiences and Telemetry service unregistration failed. Failure code: `variable`.|An error occurred with the Windows telemetry service during onboarding. The offboarding process continues.|[Check for errors with the Windows telemetry service](troubleshoot-onboarding.md#ensure-the-diagnostic-data-service-is-enabled).|
|32|Microsoft Defender for Endpoint service failed to request to stop itself after offboarding process. Failure code: %1|An error occurred during offboarding.|Reboot the device.|
|33|Microsoft Defender for Endpoint service failed to persist SENSE GUID. Failure code: `variable`.|A unique identifier is used to represent each device that is reporting to the portal. <p> If the identifier doesn't persist, the same device might appear twice in the portal.|Check registry permissions on the device to ensure the service can update the registry.|
|34|Microsoft Defender for Endpoint service failed to add itself as a dependency on the Connected User Experiences and Telemetry service, causing onboarding process to fail. Failure code: `variable`.|An error occurred with the Windows telemetry service.|[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy). <p> Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows 10 devices](configure-endpoints.md).|
|35|Microsoft Defender for Endpoint service failed to remove itself as a dependency on the Connected User Experiences and Telemetry service. Failure code: `variable`.|An error occurred with the Windows telemetry service during offboarding. The offboarding process continues.|Check for errors with the Windows diagnostic data service.|
|36|Microsoft Defender for Endpoint Connected User Experiences and Telemetry service registration succeeded. Completion code: `variable`.|Registering Defender for Endpoint with the Connected User Experiences and Telemetry service completed successfully.|Normal operating notification; no action required.|
|37|Microsoft Defender for Endpoint A module is about to exceed its quota. Module: %1, Quota: {%2} {%3}, Percentage of quota utilization: %4.|The device has almost used its allocated quota of the current 24-hour window. It's about to be throttled.|Normal operating notification; no action required.|
|38|Network connection is identified as low. Microsoft Defender for Endpoint will contact the server every %1 minutes. Metered connection: %2, internet available: %3, free network available: %4.|The device is using a metered/paid network and will be contacting the server less frequently.|Normal operating notification; no action required.|
|39|Network connection is identified as normal. Microsoft Defender for Endpoint will contact the server every %1 minutes. Metered connection: %2, internet available: %3, free network available: %4.|The device isn't using a metered/paid connection and will contact the server as usual.|Normal operating notification; no action required.|
|40|Battery state is identified as low. Microsoft Defender for Endpoint will contact the server every %1 minutes. Battery state: %2.|The device has low battery level and will contact the server less frequently.|Normal operating notification; no action required.|
|41|Battery state is identified as normal. Microsoft Defender for Endpoint will contact the server every %1 minutes. Battery state: %2.|The device doesn't have low battery level and will contact the server as usual.|Normal operating notification; no action required.|
|42|Microsoft Defender for Endpoint component failed to perform action. Component: %1, Action: %2, Exception Type: %3, Exception message: %4|Internal error. The service failed to start.|If this error persists, contact Support.|
|43|Microsoft Defender for Endpoint component failed to perform action. Component: %1, Action: %2, Exception Type: %3, Exception Error: %4, Exception message: %5|Internal error. The service failed to start.|If this error persists, contact Support.|
|44|Offboarding of Defender for Endpoint service completed.|The service was offboarded.|Normal operating notification; no action required.|
|45|Failed to register and to start the event trace session [%1]. Error code: %2|An error occurred on service startup while creating ETW session. This caused service start-up failure.|If this error persists, contact Support.|
|46|Failed to register and start the event trace session [%1] due to lack of resources. Error code: %2. This is most likely because there are too many active event trace sessions. The service will retry in 1 minute.|An error occurred on service startup while creating ETW session due to lack of resources. The service started and is running, but won't report any sensor event until the ETW session is started.|Normal operating notification; no action required. The service will try to start the session every minute.|
|47|Successfully registered and started the event trace session - recovered after previous failed attempts.|This event follows the previous event after successfully starting of the ETW session.|Normal operating notification; no action required.|
|48|Failed to add a provider [%1] to event trace session [%2]. Error code: %3. This means that events from this provider will not be reported.|Failed to add a provider to ETW session. As a result, the provider events aren't reported.|Check the error code. If the error persists contact Support.|</tr>
|49|Invalid cloud configuration command received and ignored. Version: %1, status: %2, error code: %3, message: %4|Received an invalid configuration file from the cloud service that was ignored.|If this error persists, contact Support.|
|50|New cloud configuration applied successfully. Version: %1.|Successfully applied a new configuration from the cloud service.|Normal operating notification; no action required.|
|51|New cloud configuration failed to apply, version: %1. Successfully applied the last known good configuration, version %2.|Received a bad configuration file from the cloud service. Last known good configuration was applied successfully.|If this error persists, contact Support.|
|52|New cloud configuration failed to apply, version: %1. Also failed to apply last known good configuration, version %2. Successfully applied the default configuration.|Received a bad configuration file from the cloud service. Failed to apply the last known good configuration - and the default configuration was applied.|The service will attempt to download a new configuration file within 5 minutes. If you don't see event #50 - contact Support.|
|53|Cloud configuration loaded from persistent storage, version: %1.|The configuration was loaded from persistent storage on service startup.|Normal operating notification; no action required.|
|55|Failed to create the Secure ETW autologger. Failure code: %1|Failed to create the secure ETW logger.|Reboot the device. If this error persists, contact Support.|
|56|Failed to remove the Secure ETW autologger. Failure code: %1|Failed to remove the secure ETW session on offboarding.|Contact Support.|
|57|Capturing a snapshot of the machine for troubleshooting purposes.|An investigation package, also known as forensics package, is being collected.|Normal operating notification; no action required.|
|59|Starting command: %1|Starting response command execution.|Normal operating notification; no action required.|
|60|Failed to run command %1, error: %2.|Failed to execute response command.|If this error persists, contact Support.|
|61|Data collection command parameters are invalid: SasUri: %1, compressionLevel: %2.|Failed to read or parse the data collection command arguments (invalid arguments).|If this error persists, contact Support.|
|62|Failed to start Connected User Experiences and Telemetry service. Failure code: %1|Connected User Experiences and Telemetry (diagtrack) service failed to start. Non-Microsoft Defender for Endpoint telemetry won't be sent from this machine.|Look for more troubleshooting hints in the event log: Microsoft-Windows-UniversalTelemetryClient/Operational.|
|63|Updating the start type of external service. Name: %1, actual start type: %2, expected start type: %3, exit code: %4|Updated start type of the external service.|Normal operating notification; no action required.|
|64|Starting stopped external service. Name: %1, exit code: %2|Starting an external service.|Normal operating notification; no action required.|
|65|Failed to load Microsoft Security Events Component Minifilter driver. Failure code: %1|Failed to load MsSecFlt.sys filesystem minifilter.|Reboot the device. If this error persists, contact Support.|
|66|Policy update: Latency mode - %1|The C&C connection frequency policy was updated.|Normal operating notification; no action required.|
|68|The start type of the service is unexpected. Service name: %1, actual start type: %2, expected start type: %3|Unexpected external service start type.|Fix the external service start type.|
|69|The service is stopped. Service name: %1|The external service is stopped.|Start the external service.|
|70|Policy update: Allow sample collection - %1|The sample collection policy was updated.|Normal operating notification; no action required.|
|71|Succeeded to run command: %1|The command was executed successfully.|Normal operating notification; no action required.|
|72|Tried to send first full machine profile report. Result code: %1|Informational only.|Normal operating notification; no action required.|
|73|Sense starting for platform: %1|Informational only.|Normal operating notification; no action required.|
|74|Device tag in registry exceeds length limit. Tag name: %2. Length limit: %1.|The device tag exceeds the length limit.|Use a shorter device tag.|
|81|Failed to create Microsoft Defender for Endpoint ETW autologger. Failure code: %1|Failed to create the ETW session.|Reboot the device. If this error persists, contact Support.|
|82|Failed to remove Microsoft Defender for Endpoint ETW autologger. Failure code: %1|Failed to delete the ETW session.|Contact Support.|
|84|Set Windows Defender Antivirus running mode. Force passive mode: %1, result code: %2.|Set defender running mode (active or passive).|Normal operating notification; no action required.|
|85|Failed to trigger Microsoft Defender for Endpoint executable. Failure code: %1|Starring SenseIR executable failed.|Reboot the device. If this error persists, contact Support.|
|86|Starting again stopped external service that should be up. Name: %1, exit code: %2|Starting the external service again.|Normal operating notification; no action required.|
|87|Cannot start the external service. Name: %1|Failed to start the external service.|Contact Support.|
|88|Updating the start type of external service again. Name: %1, actual start type: %2, expected start type: %3, exit code: %4|Updated the start type of the external service.|Normal operating notification; no action required.|
|89|Cannot update the start type of external service. Name: %1, actual start type: %2, expected start type: %3|Can't update the start type of the external service.|Contact Support.|
|90|Failed to configure System Guard Runtime Monitor to connect to cloud service in geo-region %1. Failure code: %2|System Guard Runtime Monitor won't send attestation data to the cloud service.|Check the permissions on register path: "HKLM\Software\Microsoft\Windows\CurrentVersion\Sgrm". If no issues spotted, contact Support.|
|91|Failed to remove System Guard Runtime Monitor geo-region information. Failure code: %1|System Guard Runtime Monitor won't send attestation data to the cloud service.|Check the permissions on register path: "HKLM\Software\Microsoft\Windows\CurrentVersion\Sgrm". If no issues spotted, contact Support.|
|92|Stopping sending sensor cyber data quota because data quota is exceeded. Will resume sending once quota period passes. State Mask: %1|Exceed throttling limit.|Normal operating notification; no action required.|
|93|Resuming sending sensor cyber data. State Mask: %1|Resume cyber data submission.|Normal operating notification; no action required.|
|94|Microsoft Defender for Endpoint executable has started|The SenseCE executable has started.|Normal operating notification; no action required.|
|95|Microsoft Defender for Endpoint executable has ended|The SenseCE executable has ended.|Normal operating notification; no action required.|
|96|Microsoft Defender for Endpoint Init has called. Result code: %2|The SenseCE executable has called MCE initialization.|Normal operating notification; no action required.|
|97|There are connectivity issues to the Cloud for the DLP scenario|There are network connectivity issues that affect the DLP classification flow.|Check the network connectivity.|
|98|The connectivity to the Cloud for the DLP scenario has been restored|The connectivity to the network was restored and the DLP classification flow can continue.|Normal operating notification; no action required.|
|99|Sense has encountered the following error while communicating with server: (%1). Result: (%2)|A communication error occurred.|Check the following events in the event log for further details.|
|100|Microsoft Defender for Endpoint executable failed to start. Failure code: %1|The SenseCE executable has failed to start.|Reboot the device. If this error persists, contact Support.|
|102|Microsoft Defender for Endpoint Network Detection and Response executable has started|The SenseNdr executable has started.|Normal operating notification; no action required.|
|103|Microsoft Defender for Endpoint Network Detection and Response executable has ended|The SenseNdr executable has ended.|Normal operating notification; no action required.|
|

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-eventerrorcodes-belowfoldlink)

## Related topics

- [Onboard Windows 10 devices](configure-endpoints.md)
- [Configure device proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Troubleshoot Microsoft Defender for Endpoint](troubleshoot-onboarding.md)
