---
title: Offboard devices
description: Onboard Windows devices, servers, non-Windows devices from the Microsoft Defender for Endpoint service
keywords: offboarding, Microsoft Defender for Endpoint offboarding, offboarding
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Offboard devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](https://go.microsoft.com/fwlink/?linkid=2229011)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

**Platforms**
- macOS
- Linux
- Windows Server 2012 R2
- Windows Server 2016

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-offboarddevices-abovefoldlink)

Follow the corresponding instructions depending on your preferred deployment method.

> [!NOTE]
> The status of a device will be switched to [Inactive](fix-unhealthy-sensors.md#inactive-devices) 7 days after offboarding.
>
> Offboarded devices' data (such as Timeline, Alerts, Vulnerabilities, etc.) will remain in the portal until the configured [retention period](data-storage-privacy.md#how-long-will-microsoft-store-my-data-what-is-microsofts-data-retention-policy) expires.
>
> The device's profile (without data) will remain in the [Devices List](machines-view-overview.md) for no longer than 180 days.
>
> In addition, devices that are not active in the last 30 days are not factored in on the data that reflects your organization's Defender Vulnerability Management [exposure score](tvm-exposure-score.md) and Microsoft Secure Score for Devices.
>
> To view only active devices, you can filter by [sensor health state](machines-view-overview.md#use-filters-to-customize-the-device-inventory-views), [device tags](machine-tags.md) or [machine groups](machine-groups.md).

## Offboard Windows devices

- [Offboard devices using a local script](configure-endpoints-script.md#offboard-devices-using-a-local-script)
- [Offboard devices using Group Policy](configure-endpoints-gp.md#offboard-devices-using-group-policy)
- [Offboard devices using Mobile Device Management tools](configure-endpoints-mdm.md#offboard-devices-using-mobile-device-management-tools)

## Offboard Servers

- [Offboard servers](configure-server-endpoints.md#offboard-windows-servers)

## Offboard non-Windows devices

- [Offboard non-Windows devices](configure-endpoints-non-windows.md#offboard-non-windows-devices)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
