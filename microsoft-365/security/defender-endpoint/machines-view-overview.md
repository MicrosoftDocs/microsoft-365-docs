---
title: View and organize the Microsoft Defender for Endpoint devices list
description: Learn about the available features that you can use from the Devices list such as sorting, filtering, and exporting the list to enhance investigations.
keywords: sort, filter, export, csv, device name, domain, last seen, internal IP, health state, active alerts, active malware detections, threat category, review alerts, network, connection, malware, type, password stealer, ransomware, exploit, threat, general malware, unwanted software
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

# Device inventory

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-machinesview-abovefoldlink)

The device inventory helps you discover, explore, and investigate devices in your organization including computers, servers, mobile, network appliances and IoT devices. It can help you discover unknown devices and identify device management gaps in your network.

During the onboarding process, the **device inventory** is gradually populated with devices as they begin to report sensor data. Use this view to track devices as they are discovered. The device inventory has three tabs that list devices by:

- **Computers and Mobile**: Enterprise endpoints (workstations, servers and mobile devices)
- **Network devices**: Devices like routers and switches
- **IoT devices**: Devices like printers and cameras

## Navigate to the Device inventory page

Access the device inventory page by selecting **Device inventory** from the threat and vulnerability management navigation menu in the [Microsoft 365 Defender portal](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/portal-overview?view=o365-worldwide).

## Device inventory overview

The device inventory opens on the **Computers and Mobile** tab. At a glance you’ll see information such as domain, risk level, exposure level, OS platform, onboarding status, sensor health state, and other details for easy identification of devices most at risk.

![Image of devices list with list of devices.](images/device-inventory.png)

From the **Network devices** and **IoT devices** tabs, you’ll also see information such as vendor, model and OS distribution:

![Image of devices list with list of devices.](images/device-inventory-networkdevices.png)

A total count for the devices listed the current inventory view appear on top of each tab. The counts for devices that are not yet onboarded, or have been identified as high risk or having a high exposure can help you prioritize devices for security posture improvements.

## Explore the device inventory

There are several options you can choose from to customize the devices list view. On the top navigation for each tab you can:

- Search for a device by name
- Search for a device by the most recently used IP address or IP address prefix.  
- Add or remove columns
- Export the entire list in CSV format for offline analysis
- Select the date range to display
- Apply filters

> [!NOTE]
> If you export the device list, it will contain every device in your organization. It might take a significant amount of time to download, depending on how large your organization is. Exporting the list in CSV format displays the data in an unfiltered manner. The CSV file will include all devices in the organization, regardless of any filtering applied in the view itself.


You can use the sort and filter functionality available on each device inventory tab to get a more focused view. This can help you assess and manage the devices in your organization.

### Available filters

The following filters are available for all of the device inventory tabs:

### Risk level

The risk level reflects the overall risk assessment of the device based on a combination of factors, including the types and severity of active alerts on the device. Resolving active alerts, approving remediation activities, and suppressing subsequent alerts can lower the risk level.

### Exposure level

The exposure level reflects the current exposure of the device based on the cumulative impact of its pending security recommendations. The possible levels are low, medium, and high. Low exposure means your devices are less vulnerable from exploitation.

If the exposure level says “No data available,” there are a few reasons why this may be the case:

- Device stopped reporting for more than 30 days. In that case it’s considered inactive, and the exposure isn’t computed.
- Device OS not supported - see [minimum requirements for Microsoft Defender for Endpoint](https://microsoft-my.sharepoint.com/personal/siosulli_microsoft_com/Documents/Security%20Posture/TVM/minimum-requirements.md).
- Device with stale agent (unlikely).

### Tags

Filter the list based on the grouping and tagging that you’ve added to individual devices. See [Create and manage device tags](https://microsoft-my.sharepoint.com/personal/siosulli_microsoft_com/Documents/Security%20Posture/TVM/machine-tags.md).

### Device value

Filter the list based on the whether the device has been marked as high value or low value.

### Exclusion state

Filter the list based on whether the device has been excluded or not.

Depending on the tab you’re on you can also filter by:

### OS Platform

Select only the OS platforms you’re interested in investigating.

### Windows versions

Select only the Windows versions you’re interested in investigating.

### Sensor health state

Filter by the following device health states:

- **Active**: Devices that are actively reporting sensor data to the service.
- **Inactive**: Devices that have stopped sending signals for more than 7 days.
- **Misconfigured**: Devices that have impaired communications with service or are unable to send sensor data. Misconfigured devices can further be classified to:
  - No sensor data
  - Impaired communications

  For more information on how to address issues on misconfigured devices see, [Fix unhealthy sensors](https://microsoft-my.sharepoint.com/personal/siosulli_microsoft_com/Documents/Security%20Posture/TVM/fix-unhealthy-sensors.md).

### Onboarding status

Onboarding status indicates whether the device is currently onboarded to Microsoft Defender for Endpoint or not. You can filter by the following states:

- **Onboarded**: The endpoint is onboarded to Microsoft Defender for Endpoint.
- **Can be onboarded**: The endpoint was discovered in the network as a supported device, but it’s not currently onboarded. Microsoft highly recommends onboarding these devices.
- **Unsupported**: The endpoint was discovered in the network, but is not supported by Microsoft Defender for Endpoint.
- **Insufficient info**: The system couldn’t determine the supportability of the device.

### Antivirus status

Filter the view based on whether the antivirus status is disabled, not updated or unknown.

### First seen

Filter your view based on when the device was first seen in the network or when it was first reported by the Microsoft Defender for Endpoint sensor.

### Group

Filter the list based on the group you’re interested in investigating.

### Managed by

Managed by indicates how the device is being managed. You can filter by:

- Microsoft Defender for Endpoint
- Mobile device management (MDM)
- Unknown: This could be due the running an outdated Windows versions, SCCM being in place, or another third party MDM

**Available columns**

You can use the IP address column to view this information in your device inventory view. You can add this column through the “Customized columns” option. 

Name

Domain

OS distribution

First seen

## Related topics

[Investigate devices in the Microsoft Defender for Endpoint Devices list](https://microsoft-my.sharepoint.com/personal/siosulli_microsoft_com/Documents/Security%20Posture/TVM/investigate-machines.md)
