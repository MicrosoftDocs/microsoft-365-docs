---
title: Review events and errors using Event Viewer
description: Get descriptions and further troubleshooting steps (if necessary) for all events reported by the Microsoft Defender for Endpoint service.
keywords: troubleshoot, event viewer, log summary, failure code, failed, Microsoft Defender for Endpoint service, can't start, broken, can't start
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
ms.topic: conceptual
ms.date: 05/21/2018
ms.subservice: mde
search.appverid: met150
---


# Review events and errors using Event Viewer

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-enablesiem-abovefoldlink)

## View events in the Defender for Endpoint service event log

You can review event IDs in the [Event Viewer](https://msdn.microsoft.com/library/aa745633(v=bts.10).aspx) on individual devices. This can help when, for example, a device isn't appearing in the Devices list. In this scenario, you can look for event IDs on the device and then use the table below to determine further troubleshooting steps based on the corresponding event ID.

To open the Defender for Endpoint service event log:

1. Select **Start** on the Windows menu, type **Event Viewer**, and press **Enter** to open the Event Viewer.
2. In the log list, under **Log Summary**, scroll until you see **Microsoft-Windows-SENSE/Operational**. Double-click the item to
   open the log.

   You can also access the log by expanding **Applications and Services Logs** \> **Microsoft** \> **Windows** \> **SENSE** and select **Operational**.

   > [!NOTE]
   > SENSE is the internal name used to refer to the behavioral sensor that powers Microsoft Defender for Endpoint.

3. Events recorded by the service will appear in the log.

See the following table for a list of events recorded by the service.

   |Event ID|Message|Description|Action|
   |---|---|---|---|
   |1|Microsoft Defender for Endpoint service started (Version `variable`).|Occurs during system startup, shut down, and during onboarding.|Normal operating notification; no action required.|
   |2|Microsoft Defender for Endpoint service shutdown.|Occurs when the device is shut down or offboarded.|Normal operating notification; no action required.|
   |3|Microsoft Defender for Endpoint service failed to start. Failure code: `variable`.|Service didn't start.|Review other messages to determine possible cause and troubleshooting steps.|
   |4|Microsoft Defender for Endpoint service contacted the server at `variable`.|Variable = URL of the Defender for Endpoint processing servers. <p> This URL will match that seen in the Firewall or network activity.|Normal operating notification; no action required.|
   |5|Microsoft Defender for Endpoint service failed to connect to the server at `variable`.|Variable = URL of the Defender for Endpoint processing servers. <p> The service couldn't contact the external processing servers at that URL.|Check the connection to the URL. See [Configure proxy and Internet connectivity](configure-proxy-internet.md).|
   |6|Microsoft Defender for Endpoint service isn't onboarded and no onboarding parameters were found.|The device didn't onboard correctly and won't be reporting to the portal.|Onboarding must be run before starting the service. <p> Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |7|Microsoft Defender for Endpoint service failed to read the onboarding parameters. Failure: `variable`.|Variable = detailed error description. The device didn't onboard correctly and won't be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |8|Microsoft Defender for Endpoint service failed to clean its configuration. Failure code: `variable`.|**During onboarding:** The service failed to clean its configuration during the onboarding. The onboarding process continues. <p> **During offboarding:** The service failed to clean its configuration during the offboarding. The offboarding process finished but the service keeps running.|**Onboarding:** No action required. <p> **Offboarding:** Reboot the system. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |9|Microsoft Defender for Endpoint service failed to change its start type. Failure code: `variable`.|**During onboarding:** The device didn't onboard correctly and won't be reporting to the portal. <p>**During offboarding:** Failed to change the service start type. The offboarding process continues. |Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |10|Microsoft Defender for Endpoint service failed to persist the onboarding information. Failure code: `variable`.|The device didn't onboard correctly and won't be reporting to the portal.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |11|Onboarding or re-onboarding of Defender for Endpoint service completed.|The device onboarded correctly.|Normal operating notification; no action required. <p> It may take several hours for the device to appear in the portal.|
   |12|Microsoft Defender for Endpoint failed to apply the default configuration.|Service was unable to apply the default configuration.|This error should resolve after a short period of time.|
   |13|Microsoft Defender for Endpoint device ID calculated: `variable`.|Normal operating process.|Normal operating notification; no action required.|
   |15|Microsoft Defender for Endpoint cannot start command channel with URL: `variable`.|Variable = URL of the Defender for Endpoint processing servers. <p> The service couldn't contact the external processing servers at that URL.|Check the connection to the URL. See [Configure proxy and Internet connectivity](configure-proxy-internet.md).|
   |17|Microsoft Defender for Endpoint service failed to change the Connected User Experiences and Telemetry service location. Failure code: `variable`.|An error occurred with the Windows telemetry service.|[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy)">Ensure the diagnostic data service is enabled. <p> Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |18|OOBE (Windows Welcome) is completed.|Service will only start after any Windows updates have finished installing.|Normal operating notification; no action required.|
   |19|OOBE (Windows Welcome) has not yet completed.|Service will only start after any Windows updates have finished installing.|Normal operating notification; no action required. <p> If this error persists after a system restart, ensure all Windows updates have full installed.|
   |20|Cannot wait for OOBE (Windows Welcome) to complete. Failure code: `variable`.|Internal error.|If this error persists after a system restart, ensure all Windows updates have full installed.|
   |25|Microsoft Defender for Endpoint service failed to reset health status in the registry. Failure code: `variable`.|The device didn't onboard correctly. It will report to the portal, however the service may not appear as registered in SCCM or the registry.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |26|Microsoft Defender for Endpoint service failed to set the onboarding status in the registry. Failure code: `variable`.|The device didn't onboard correctly. <p> It will report to the portal, however the service may not appear as registered in SCCM or the registry.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |27|Microsoft Defender for Endpoint service failed to enable SENSE aware mode in Microsoft Defender Antivirus. Onboarding process failed. Failure code: `variable`.|Normally, Microsoft Defender Antivirus will enter a special passive state if another real-time antimalware product is running properly on the device, and the device is reporting to Defender for Endpoint.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md). <p> Ensure real-time antimalware protection is running properly.|
   |28|Microsoft Defender for Endpoint Connected User Experiences and Telemetry service registration failed. Failure code: `variable`.|An error occurred with the Windows telemetry service.|[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy). <p> Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |29|Failed to read the offboarding parameters. Error type: %1, Error code: %2, Description: %3|This event occurs when the system can't read the offboarding parameters.|Ensure the device has Internet access, then run the entire offboarding process again. Ensure the offboarding package hasn't expired.|
   |30|Microsoft Defender for Endpoint service failed to disable SENSE aware mode in Microsoft Defender Antivirus. Failure code: `variable`.|Normally, Microsoft Defender Antivirus will enter a special passive state if another real-time antimalware product is running properly on the device, and the device is reporting to Defender for Endpoint.|Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md). <p> Ensure real-time antimalware protection is running properly.|
   |31|Microsoft Defender for Endpoint Connected User Experiences and Telemetry service unregistration failed. Failure code: `variable`.|An error occurred with the Windows telemetry service during onboarding. The offboarding process continues.|[Check for errors with the Windows telemetry service](troubleshoot-onboarding.md#ensure-the-diagnostic-data-service-is-enabled).|
   |32|Microsoft Defender for Endpoint service failed to request to stop itself after offboarding process. Failure code: %1|An error occurred during offboarding.|Reboot the device.|
   |33|Microsoft Defender for Endpoint service failed to persist SENSE GUID. Failure code: `variable`.|A unique identifier is used to represent each device that is reporting to the portal. <p> If the identifier doesn't persist, the same device might appear twice in the portal.|Check registry permissions on the device to ensure the service can update the registry.|
   |34|Microsoft Defender for Endpoint service failed to add itself as a dependency on the Connected User Experiences and Telemetry service, causing onboarding process to fail. Failure code: `variable`.|An error occurred with the Windows telemetry service.|[Ensure the diagnostic data service is enabled](troubleshoot-onboarding.md#ensure-that-microsoft-defender-antivirus-is-not-disabled-by-a-policy). <p> Check that the onboarding settings and scripts were deployed properly. Try to redeploy the configuration packages. <p> See [Onboard Windows client devices](configure-endpoints.md).|
   |35| Communication quotas are updated. Disk quota in MB: `variable`, daily upload quota in MB: `variable`| Variable = disk quota in MB. |Normal operating notification; no action required.|
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
   |48|Failed to add a provider [%1] to event trace session [%2]. Error code: %3. This means that events from this provider will not be reported.|Failed to add a provider to ETW session. As a result, the provider events aren't reported.|Check the error code. If the error persists contact Support.|
   |49|Invalid cloud configuration command received and ignored. Version: %1, status: %2, error code: %3, message: %4|Received an invalid configuration file from the cloud service that was ignored.|If this error persists, contact Support.|
   |50|New cloud configuration applied successfully. Version: %1.|Successfully applied a new configuration from the cloud service.|Normal operating notification; no action required.|
   |51|New cloud configuration failed to apply, version: %1. Successfully applied the last known good configuration, version %2.|Received a bad configuration file from the cloud service. Last known good configuration was applied successfully.|If this error persists, contact Support.|
   |52|New cloud configuration failed to apply, version: %1. Also failed to apply last known good configuration, version %2. Successfully applied the default configuration.|Received a bad configuration file from the cloud service. Failed to apply the last known good configuration - and the default configuration was applied.|The service will attempt to download a new configuration file within 5 minutes. If you don't see event #50 - contact Support.|
   |53|Cloud configuration loaded from persistent storage, version: %1.|The configuration was loaded from persistent storage on service startup.|Normal operating notification; no action required.|
   |54| Global (per-pattern) state changed. State: %1, pattern: %2 | If state = 0: Cyber-data reporting rule has reached its defined capping quota and won't send more data until the capping quota expires. If state = 1: The capping quota expired and the rule will resume sending data. | Normal operating notification; no action required. |
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
   |84|Set Microsoft Defender Antivirus running mode. Force passive mode: %1, result code: %2.|Set defender running mode (active or passive).|Normal operating notification; no action required.|
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
   |104|Failed to queue asynchronous driver unload. Failure code: %1.|Occurs during offboarding.|Normal operating notification; no action required.|
   |105 |Failed to wait for driver unload| Occurs during offboarding.|Normal operating notification; no action required.|
   |106  |Microsoft Defender for Endpoint service failed to start. Failure code %1 ; Failed to load MsSense DLL. Module.  | Occurs during startup.   | Contact support. |
   |107  | Microsoft Defender for Endpoint service failed to start. Failure code %1 ; Issue with MsSense DLL Module.  | Occurs during startup.   | Contact support. |
   |108  |Update phase:%1, new platform version: %2, message: %3.|Occurs during update.|Normal operating notification; no action required.|
   |109  | Update phase:%1 new platform version: %2, failure message: %3, error: %4.  | Occurs during update.   |Contact support. |
   |110  |Failed to remove MDEContain WFP filters.   | Occurs during offboarding.   | Contact support.  |
   |307| Failed to update driver permissions Failure code: %1. |Occurs during onboarding.    |Contact support.   |
   |308 | Failed to ACL on Folder %1 Failure code: %2.  |Occurs during onboarding.    | Contact support.  |
   |401  | Microsoft Defender for Endpoint service failed to generate key. Failure code: %1.  | Failed to create crypto key.|If machine is not reporting, contact support. Otherwise, no action required.   |
   |402 |Microsoft Defender for Endpointservice failed to persist authentication state. Failure code: %1.| Failed to persist authentication state.   | If machine is not reporting, contact support. Otherwise, no action required.  |
   |403|Registration of Microsoft Defender for Endpoint service completed.|Successful registration to authentication service.|Normal operating notification; no action required.|
   |404  |Microsoft Defender for Endpoint service successfully generated a key.  |Successful crypto key generation.  |Normal operating notification; no action required.|
   |405|Failed to communicate with authentication service. %1 request failed, hresult: %2,  HTTP error code: %3. |Failed to send request to authentication service.|Normal operating notification; no action required.|
   |406|Request for %1 rejected by authentication service. Hresult: %2, error code: %3.    | Request returned undesired response.  |Normal operating notification; no action required. |
   |407|Microsoft Defender for Endpoint service failed to sign message (authentication). Failure code: %1.  |Failed to sign request.    |Normal operating notification; no action required.   |
   |408|Microsoft Defender for Endpoint service failed to remove persist authentication state. State: %1, Failure code: %2.   |Failed to persist authentication state. |If machine is not reporting, contact support. Otherwise, no action required.|
   |409| Microsoft Defender for Endpoint service failed to open key. Failure code: %1.  |Failed to open crypto key.|If machine is not reporting, contact support. Otherwise, no action required.|
   |410|Registration is required as part of re-onboarding of Microsoft Defender for Endpoint service.   |Occurs during reonboarding. |Normal operating notification; no action required.|
   |411|Cyber telemetry upload has been suspended for Microsoft Defender for Endpoint service due to invalid/expired token.|Cyber upload temporarily suspended.|Normal operating notification; no action required.|
   |412|Cyber telemetry upload been resumed for Microsoft Defender for Endpoint service due to newly refreshed token.|Cyber upload successfully resumed.|Normal operating notification; no action required.|
   |1800| CSP: Get `Node&apos;s` Value. NodeId: (%1), TokenName: (%2).  | An operation of Get is about to start.   | Contact support. |
   |1801|CSP: Failed to Get `Node&apos;s` Value. NodeId: (%1), TokenName: (%2), Result: (%3).   | An operation of Get has failed.   |Contact support.|
   |1802| CSP: Get `Node&apos;s` Value complete. NodeId: (%1), TokenName: (%2), Result: (%3).  | An operation of Get has succeeded.   |Contact support. |
   |1803| CSP: Get Last Connected value complete. Result (%1), IsDefault: (%2).  |Last time the device communicated with CNC.    | Normal operating notification; no action required. |
   |1804| CSP: Get Org ID value complete. Result: (%1), IsDefault: (%2).  |The org ID device get during onboarding.    |Normal operating notification; no action required. |
   |1805|CSP: Get Sense Is Running value complete. Result: (%1).   | Sense running message after onboarding.   |Normal operating notification; no action required.  |
   |1806| CSP: Get Onboarding State value complete. Result: (%1), IsDefault: (%2).  | Get is Sense onboarded.   | Normal operating notification; no action required. |
   |1807| CSP: Get Onboarding value complete. Onboarding Blob Hash: (%1), IsDefault: (%2), Onboarding State: (%3), Onboarding State IsDefault: (%4).  | Get is Sense onboarded and onboarding blob hash.   | Normal operating notification; no action required. |
   |1808| CSP: Get Offboarding value complete. Offboarding Blob Hash: (%1), IsDefault: (%2).  |Get offboarding blob hash.   | Normal operating notification; no action required. |
   |1809| CSP: Get Sample Sharing value complete. Result: (%1), IsDefault: (%2).  |Get is sample upload is allowed. | Normal operating notification; no action required.  |
   |1810| CSP: Onboarding process. Started. |Started onboarding flow.| Normal operating notification; no action required. |
   |1811| CSP: Onboarding process. Delete Offboarding blob complete. Result: (%1).  |Deleted offboarding blob as part of onboarding flow.   |Normal operating notification; no action required.  |
   |1812|CSP: Onboarding process. Write Onboarding blob complete. Result: (%1).   | Wrote onboarding blob to registry as part of onboarding flow.   |Normal operating notification; no action required. |
   |1813| CSP: Onboarding process. The service started successfully.  | Started Sense service as part of onboarding flow.   |Normal operating notification; no action required.  |
   |1814| CSP: Onboarding process. Pending service running state complete. Result: (%1).  | Finished waiting for Sense to start as part of onboarding flow.   |Normal operating notification; no action required. |
   |1815|CSP: Set Sample Sharing value complete. Previous Value: (%1), IsDefault: (%2), New Value: (%3), Result: (%4).  |Set sample sharing value.    |Normal operating notification; no action required.  |
   |1816|CSP: Offboarding process. Delete Onboarding blob complete. Result (%1).   |Deleted onboarding blob as part of offboarding flow.   | Normal operating notification; no action required. |
   |1817|CSP: Offboarding process. Write Offboarding blob complete. Result (%1).|Wrote offboarding blob to registry as part of offboarding flow. |Normal operating notification; no action required.  |
   |1818|CSP: Set `Node&apos;s` Value started. NodeId: (%1), TokenName: (%2).   | An operation of Set is about to start.   |Normal operating notification; no action required.|
   |1819|CSP: Failed to Set `Node&apos;s` Value. NodeId: (%1), TokenName: (%2), Result: (%3).   | An operation of Set has failed.   |Contact support. |
   |1820|CSP: Set `Node&apos;s` Value complete. NodeId: (%1), TokenName: (%2), Result: (%3).   | An operation of Set has succeeded.   |Normal operating notification; no action required.  |
   |1821|CSP: Set Telemetry Reporting Frequency started. New value: (%1).   | Start setting the value of TelemetryReportingFrequency.  | Normal operating notification; no action required.|
   |1822| CSP: Set Telemetry Reporting Frequency complete. Previous value: (%1), IsDefault: (%2), New value: (%3), Result: (%4).  |  Finish setting the value of TelemetryReportingFrequency.| Normal operating notification; no action required. |
   |1823|  CSP: Get Telemetry Reporting Frequency complete. Value: (%1), Registry Value: (%2), IsDefault: (%3). |  Gets the value of TelemetryReportingFrequency.| Normal operating notification; no action required. |
   |1824| CSP: Get Group Ids complete. Value: (%1), IsDefault: (%2).  |Got groupIds from registry.   |Normal operating notification; no action required. |
   |1825| CSP: Set Group Ids exceeded allowed limit. Allowed: (%1), Actual: (%2).  | Failed to set groupIds due to length.   | Normal operating notification; no action required. |
   |1826| CSP: Set Group Ids complete. Value: (%1), Result: (%2).  | Set groupIds.   | Normal operating notification; no action required. |
   |1827| CSP: Onboarding process. Service is running: (%1), Previous Onboarding Blob Hash: (%2), IsDefault: (%3), Onboarding State: (%4), Onboarding State IsDefault: (%5), New Onboarding Blob Hash: (%6).  | Trace values as part of onboarding.   | Normal operating notification; no action required. |
   |1828| CSP: Onboarding process. Service is running: (%1), Previous Offboarding Blob Hash: (%2), IsDefault: (%3), Onboarding State: (%4), Onboarding State IsDefault: (%5), New Offboarding Blob Hash: (%6).  | Trace values as part of offboarding.   | Normal operating notification; no action required.  |
   |1829|CSP: Failed to Set Sample Sharing Value. Requested Value: (%1), Allowed Values between (%2) and (%3).   |Invalid value for SampleSharing operation.    |Contact support.  |
   |1830| CSP: Failed to Set Telemetry Reporting Frequency Value. Requested Value: (%1).  | Setting the value of TelemetryReportingFrequency failed.  | Contact support if problem persists.|
   |1831|CSP: Get Sense is running. Service is configured as delay-start, and `hasn&apos;t` started yet.   |Get SenseIsRunning result.    |Normal operating notification; no action required.  |
   |1832| CSP: Get Device Tagging Group complete. Value: (%1), IsDefault: (%2).  | Get DeviceTagging Group from registry completed.  | Normal operating notification; no action required. |
   |1833| CSP: Get Device Tagging Criticality value complete. In Registry: (%1), IsDefault: (%2), Conversion Succeeded: (%3), Result: (%4).  | Get DeviceTagging Criticality from registry completed.  | Normal operating notification; no action required. |
   |1834| CSP: Get Device Tagging Identification Method value complete. In Registry: (%1), IsDefault: (%2), Conversion Succeeded: (%3), Result: (%4).  |  Get DeviceTagging Id Method from registry completed. | Normal operating notification; no action required. |
   |1835| CSP: Set Device Tagging Group complete. Value: (%1), Result: (%2).  | Set DeviceTagging Group in registry completed.  |  Normal operating notification; no action required.|
   |1836| CSP: Set Device Tagging Group exceeded allowed limit. Allowed: (%1), Actual: (%2).  | Set DeviceTagging Group failed as maximum Length Limit exceeded.  |Contact support if problem persists. |
   |1837| CSP: Set Device Tagging Criticality value complete. Previous Value: (%1), IsDefault: (%2), New Value: (%3), Result: (%4).  | Set DeviceTagging Criticality in registry completed. |Normal operating notification; no action required. |
   |1838|  CSP: Failed to Set Device Tagging Criticality Value. Requested Value: (%1), Allowed Values between (%2) and (%3). |  Set DeviceTagging Criticality failed as value was not within expected range. | Contact support if problem persists. |
   |1839| CSP: Set Device Tagging Identification Method value complete. Previous Value: (%1), IsDefault: (%2), New Value: (%3), Result: (%4).  |  Set DeviceTagging Id Method in registry completed. | Normal operating notification; no action required. |
   |1840| CSP: Failed to Set Device Tagging Identification Method Value. Requested Value: (%1), Allowed Values between (%2) and (%3). |  Set DeviceTagging Id Method failed as value was not within expected range. | Contact support if problem persists. |

## View Defender for Endpoint events in the System event log

Microsoft Defender for Endpoint events also appear in the System event log.

To open the System event log:

1. Select **Start** on the Windows menu, type **Event Viewer**, and press **Enter**  to open the Event Viewer.
2. In the log list, under **Log Summary**, scroll until you see **System**. Double-click the item to open the log.

You can use this table for more information on the Defender for Endpoint events in the System events log and to determine further troubleshooting steps.

   |Event ID|Message|Description|Action|
   |---|---|---|---|
   |1|The backing-file for the real-time session "SenseNdrPktmon" has reached its maximum size. As a result, new events will not be logged to this session until space becomes available.|This real-time session, between Pktmon - the built-in Windows service that captures network traffic, and our agent (SenseNDR) - that analyzes packets asynchroniously, is configured to limited to prevent potential performance issues. As a result, this alert may appear if too many packets are intercepted in a short time period, causing some packets to be skipped. This alert is more common with high network traffic.|Normal operating notification; no action required.|

## See also

- [Onboard Windows client devices](configure-endpoints.md)
- [Configure device proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Troubleshoot Microsoft Defender for Endpoint](troubleshoot-onboarding.md)
- [Client analyzer overview](overview-client-analyzer.md)
- [Download and run the client analyzer](download-client-analyzer.md)
- [Understand the analyzer HTML report](analyzer-report.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
