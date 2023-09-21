---
title: Check the device health at Microsoft Defender for Endpoint
description: Check the sensor health on devices to identify which ones are misconfigured, inactive, or aren't reporting sensor data.
keywords: sensor, sensor health, misconfigured, inactive, no sensor data, sensor data, impaired communications, communication
ms.service: microsoft-365-security
ms.subservice: mde
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
ms.date: 05/16/2023
search.appverid: met150
---

# Check service health at Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-checksensor-abovefoldlink)

The **Device health** tile provides information on the individual device's ability to provide sensor data and communicate with the Defender for Endpoint service. It reports how many devices require attention and helps you identify problematic devices and take action to correct known issues.

There are two status indicators on the tile that provide information on the number of devices that aren't reporting properly to the service:

- **Misconfigured** - These devices might partially be reporting sensor data to the Defender for Endpoint service and might have configuration errors that need to be corrected.
- **Inactive** - Devices that have stopped reporting to the Defender for Endpoint service for more than seven days in the past month.

Clicking any of the groups directs you to **Device inventory**, filtered according to your choice.

On **Device inventory**, you can filter the health state list by the following status:

- **Active** - Devices that are actively reporting to the Defender for Endpoint service.
- **Misconfigured** - These devices might partially be reporting sensor data to the Defender for Endpoint service but have configuration errors that need to be corrected. Misconfigured devices can have either one or a combination of the following issues:
  - **No sensor data** - Devices has stopped sending sensor data. Limited alerts can be triggered from the device.
  - **Impaired communications** - Ability to communicate with device is impaired. Sending files for deep analysis, blocking files, isolating device from network and other actions that require communication with the device may not work.
- **Inactive** - Devices that have stopped reporting to the Defender for Endpoint service.

You can also download the entire list in CSV format using the **Export** feature. For more information on filters, see [View and organize the Devices list](machines-view-overview.md).

> [!NOTE]
> Export the list in CSV format to display the unfiltered data. The CSV file will include all devices in the organization, regardless of any filtering applied in the view itself and can take a significant amount of time to download, depending on how large your organization is.


You can view the device details when you click on a misconfigured or inactive device.

## See also

- [Fix unhealthy sensors in Defender for Endpoint](fix-unhealthy-sensors.md)
- [Client analyzer overview](overview-client-analyzer.md)
- [Download and run the client analyzer](download-client-analyzer.md)
- [Run the client analyzer on Windows](run-analyzer-windows.md)
- [Run the client analyzer on macOS or Linux](run-analyzer-macos-linux.md)
- [Data collection for advanced troubleshooting on Windows](data-collection-analyzer.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
