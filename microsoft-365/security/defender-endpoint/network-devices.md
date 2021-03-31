---
title: Network devices vulnerabilities assessment
description: Security recommendations and vulnerability detection are now available for operating systems of switches, routers, WLAN controllers and firewalls.
keywords: mdatp threat & vulnerability management, threat and vulnerability management, mdatp tvm weaknesses page, finding weaknesses through tvm, tvm vulnerability list, vulnerability details in tvm
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---
# Network devices vulnerabilities assessment

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

Microsoft Defender for Endpoint is being expanded to include vulnerability assessments for unmanaged network devices that are deployed in the organization. Threat and vulnerability management security recommendations and vulnerability detection are now available for operating systems of switches, routers, WLAN controllers, and firewalls.  

A Microsoft Defender for Endpoint device will perform authenticated scans of preconfigured network devices using Simple Network Management Protocol (SNMP) (read-only).

The following SNMP Object Identifiers (OIDs) are used to obtain information from the target network device:

- 1.3.6.1.2.1.1.5.0 - sysName
- 1.3.6.1.2.1.1.1 – sysDescr

## Operating systems that are supported

The following operating systems are currently supported:

- Cisco IOS, IOS-XE, NX-OS
- Juniper JUNOS
- HPE ArubaOS, Procurve Switch Software
- Palo Alto Networks PAN-OS

Additional networking vendors and OS will be added over time, based on data gathered from customer usage. Therefore, you are encouraged to configure all your network devices, even if they’re not specified in this list.

## Preparations to do in advance

There will be two types of devices to keep in mind:

- **Assessment device**: A device that's already onboarded that you will use to scan the network devices.
- **Network devices**: The network devices you plan to scan and onboard.

Follow these steps before you install the network scanner and configure new assessment jobs:

1. Allocate a Defender for Endpoint onboarded device (client or server) that has a network connection to the management port for the network devices you plan on scanning. SNMP traffic between the Defender for Endpoint assessment device and the targeted network devices must be allowed (for example, by the Firewall).

2. Decide which network devices will be assessed for vulnerabilities (for example: a Cisco switch or a Palo Alto Networks firewall).  

3. Make sure SNMP read-only is enabled on all configured network devices to allow the Defender for Endpoint assessment device to query the configured network devices. ‘SNMP write’ is not needed for the proper functionality of this feature.

4. Obtain the IP addresses of the network devices to be scanned (or the subnets where these devices are deployed).

5. Obtain the SNMP credentials of the network devices (for example: Community String, noAuthNoPriv, authNoPriv, authPriv). You’ll be required to provide the credentials when configuring a new assessment job.  

6. Proxy client configuration: No additional configuration is required other than the Defender for Endpoint device proxy requirements.

7. To allow the network scanner to be authenticated and work properly, it is essential that you add the following domains/URLs:

    - login.windows.net  
    - *.securitycenter.windows.com
    - login.microsoftonline.com

    Note: These URLs are not specified in the Defender for Endpoint documented list of allowed data collection.

## Permissions

To configure assessment jobs, the following user permission option is required: **Manage security settings in Security Center**. You can find the permission by going to **Settings** > **Roles**. For more information, see [Create and manage roles for role-based access control](user-roles.md)

## Install the network scanner

1. Go to **Microsoft 365 security** > **Settings** > **Endpoints** > **Assessment jobs** (under 'Network assessments').
    1. In the Microsoft Defender Security Center, go to Settings > Assessment jobs page.

2. Download the network scanner and install it on the designated Defender for Endpoint assessment device.

![Download scanner button](images/assessment-jobs-download-scanner.png)

## Network scanner installation & registration

The signing-in process can be completed on the designated assessment device itself or any other device (for example, your personal client device).

To complete the network scanner registration process:

1. Copy and follow the URL that appears on the command line and use the provided installation code to complete the registration process.
    - Note: You may need to change Command Prompt settings to be able to copy the URL.

2. Enter the code and sign in using a Microsoft account that has the Defender for Endpoint permission called "Manage security settings in Security Center."

3. When finished, you should see a message confirming you have signed in.

## Configure a new assessment job  

In the Assessment jobs page in Settings, select **Add network assessment job**.  Follow the set-up flow where you will choose network devices to be scanned regularly and added to the device inventory.

To prevent device duplication in the network device inventory, make sure each IP address is configured only once across multiple assessment devices.

![Add network assessment job button](images/assessment-jobs-add.png)

### Scan and add network devices

In the set-up flow, you can perform a one time test scan to verify that:

- There is connectivity between the Defender for Endpoint assessment device and the configured target network devices.
- The configured SNMP credentials are correct.

Once the results show up, you can choose which devices will be included in the periodic scan. If you skip viewing the scan results, all configured IP addresses will be added to the network assessment job (regardless of the device’s response). The scan results can also be exported.

Newly discovered devices will be shown under the new Network devices tab in the Device inventory page (it may take up to two hours after adding an assessment job until the devices are updated).

## Troubleshooting

### Network scanner installation has failed

Verify that the required URLs are added to the allowed domains in your firewall.  

### The Microsoft.com/devicelogin web page did not show up

Verify that the required URLs are added to the allowed domains in your firewall.

### Duplication of network devices in device inventory

To prevent device duplication in the network device inventory, make sure each IP address is configured only once across multiple assessment devices.  

### Network devices are not shown in the device inventory after several hours

The scan results should be updated a few hours after the initial scan that took place after completing the assessment job configuration. 

If devices are still not shown, verify that the service ‘MdatpNetworkScanService’ is running on your assessment devices, on which you installed the network scanner, and perform a “Run scan” in the relevant assessment job configuration.  

If you still don’t get results after 5 minutes, please restart the service.  

### Devices are shown as disconnected

Validate that the scanner is running properly. Then go to the scan definition and select “Run test.” Check what error messages are returning from the relevant IP addresses.

### Required threat and vulnerability management user permission

Registration finished with an error: "It looks like you don't have sufficient permissions for adding a new agent. The required permission is 'Manage security settings in Security Center'."

Press any key to exit.

Ask your system administrator to assign you the required permissions or ask another relevant member to help you with the sign in process by providing them with the sign-in code and link.

### Registration process fails using provided link in the command line in registration process

Try a different browser or copy the sign-in link and code to a different device.

### Text too small or can’t copy text from command line

Change command line settings on your device to allow copying and change text size.

## Limitations

Each assessment device can support up to 1,500 successful IP addresses scan.  

For example, if you scan 10 different subnets where only 100 IP addresses return successful results, you will be able to scan additional 1,400 IP addresses from other subnets on the same assessment device.  

Note: In case of multiple IP address ranges/subnets to scan, the test scan results will take several minutes to show up.

## Related articles

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Software inventory](tvm-software-inventory.md)
- [Dashboard insights](tvm-dashboard-insights.md)
- [View and organize the Microsoft Defender for Endpoint Devices list](machines-view-overview.md)
