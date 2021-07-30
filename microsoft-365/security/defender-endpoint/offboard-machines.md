---
title: Offboard devices from the Microsoft Defender for Endpoint service
description: Onboard Windows 10 devices, servers, non-Windows devices from the Microsoft Defender for Endpoint service
keywords: offboarding, Microsoft Defender for Endpoint offboarding, offboarding
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
ms.topic: conceptual
ms.technology: mde
---

# Offboard devices from the Microsoft Defender for Endpoint service

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

**Platforms**
- macOS
- Linux
- Windows Server 2012 R2
- Windows Server 2016

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-offboarddevices-abovefoldlink)

Follow the corresponding instructions depending on your preferred deployment method.

>[!NOTE]
> The status of a device will be switched to [Inactive](fix-unhealthy-sensors.md#inactive-devices) 7 days after offboarding. <br> 
> Offboarded devices' data (such as Timeline, Alerts, Vulnerabilities, etc.) will remain in the portal until the configured [retention period](data-storage-privacy.md#how-long-will-microsoft-store-my-data-what-is-microsofts-data-retention-policy) expires. <br>
> The device's profile (without data) will remain in the [Devices List](machines-view-overview.md) for no longer than 180 days.
> In addition, devices that are not active in the last 30 days are not factored in on the data that reflects your organization's threat and vulnerability management [exposure score](tvm-exposure-score.md) and Microsoft Secure Score for Devices. <br>
> To view only active devices, you can filter by [health state](machines-view-overview.md#health-state), [device tags](machine-tags.md) or [machine groups](machine-groups.md). 

## Offboard Windows 10 devices
- [Offboard devices using a local script](configure-endpoints-script.md#offboard-devices-using-a-local-script)
- [Offboard devices using Group Policy](configure-endpoints-gp.md#offboard-devices-using-group-policy)
- [Offboard devices using Mobile Device Management tools](configure-endpoints-mdm.md#offboard-and-monitor-devices-using-mobile-device-management-tools)

## Offboard Servers
- [Offboard servers](configure-server-endpoints.md#offboard-windows-servers)

## Offboard non-Windows devices
- [Offboard non-Windows devices](configure-endpoints-non-windows.md#offboard-non-windows-devices)

