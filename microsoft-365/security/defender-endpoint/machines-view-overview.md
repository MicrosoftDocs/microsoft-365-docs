---
title: View and organize the Microsoft Defender for Endpoint devices list
description: Learn about the available features that you can use from the Devices list such as sorting, filtering, and exporting the list to enhance investigations.
keywords: sort, filter, export, csv, device name, domain, last seen, internal IP, health state, active alerts, active malware detections, threat category, review alerts, network, connection, malware, type, password stealer, ransomware, exploit, threat, general malware, unwanted software
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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

# View and organize the Microsoft Defender for Endpoint Devices list

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-machinesview-abovefoldlink)

The **Devices list** shows a list of the devices in your network where alerts were generated. By default, the queue displays devices seen in the last 30 days.

At a glance you'll see information such as domain, risk level, OS platform, and other details for easy identification of devices most at risk.

There are several options you can choose from to customize the devices list view. On the top navigation you can:

- Add or remove columns
- Export the entire list in CSV format
- Select the number of items to show per page
- Apply filters

During the onboarding process, the **Devices list** is gradually populated with devices as they begin to report sensor data. Use this view to track your onboarded endpoints as they come online, or download the complete endpoint list as a CSV file for offline analysis.

> [!NOTE]
> If you export the device list, it will contain every device in your organization. It might take a significant amount of time to download, depending on how large your organization is. Exporting the list in CSV format displays the data in an unfiltered manner. The CSV file will include all devices in the organization, regardless of any filtering applied in the view itself.

![Image of devices list with list of devices.](images/device-inventory.png)

## Sort and filter the device list

You can apply the following filters to limit the list of alerts and get a more focused view.

### Device name

Select the name of the device you're interested in investigating.

### Domain

Select the domain you're interested in investigating.

### Risk level

The risk level reflects the overall risk assessment of the device based on a combination of factors, including the types and severity of active alerts on the device. Resolving active alerts, approving remediation activities, and suppressing subsequent alerts can lower the risk level.

### Exposure level

The exposure level reflects the current exposure of the device based on the cumulative impact of its pending security recommendations. The possible levels are low, medium, and high. Low exposure means your devices are less vulnerable from exploitation.

If the exposure level says "No data available," there are a few reasons why this may be the case:

- Device stopped reporting for more than 30 days. In that case it's considered inactive, and the exposure isn't computed.
- Device OS not supported - see [minimum requirements for Microsoft Defender for Endpoint](minimum-requirements.md).
- Device with stale agent (unlikely).

### OS Platform

Select only the OS platforms you're interested in investigating.

### Windows 10 versions

Select only the Windows 10 versions you're interested in investigating.

### Health state

Filter by the following device health states:

- **Active**: Devices that are actively reporting sensor data to the service.
- **Inactive**: Devices that have stopped sending signals for more than 7 days.
- **Misconfigured**: Devices that have impaired communications with service or are unable to send sensor data. Misconfigured devices can further be classified to:
  - No sensor data
  - Impaired communications

  For more information on how to address issues on misconfigured devices see, [Fix unhealthy sensors](fix-unhealthy-sensors.md).

### Onboarding status

Onboarding status indicates whether the device is currently onboarded to Microsoft Defender for Endpoint or not. You can filter by the following states:

- **Onboarded**: The endpoint is onboarded to Microsoft Defender for Endpoint.

- **Can be onboarded**: The endpoint was discovered in the network as a supported device, but it's not currently onboarded. Microsoft highly recommends onboarding these devices.

- **Unsupported**: The endpoint was discovered in the network, but is not supported by Microsoft Defender for Endpoint.

- **Insufficient info**: The system couldn't determine the supportability of the device.

### Last device update

Filter your view based on when the device was last updated.

### First seen

Filter your view based on when the device was first seen in the network or when it was first reported by the Microsoft Defender for Endpoint sensor.

### Tags

Filter the list based on the grouping and tagging that you've added to individual devices. See [Create and manage device tags](machine-tags.md).

## Related topics

- [Investigate devices in the Microsoft Defender for Endpoint Devices list](investigate-machines.md)
