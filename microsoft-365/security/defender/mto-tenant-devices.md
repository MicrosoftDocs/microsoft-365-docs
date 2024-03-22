---
title: Devices in multitenant management 
description: Learn about multitenant device view in multitenant management of the Microsoft Defender XDR.
search.appverid: met150
ms.service: defender-xdr
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 03/15/2024
---

# Devices

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

The **Devices** page in multitenant management enables you to quickly manage tenants and devices.

## Tenant device list

The Tenants page in multitenant management lists each tenant you have access to. Each tenant page includes details such as the number of devices and device types, the number of high value and high exposure devices, and the number of devices available to onboard:

   :::image type="content" source="../../media/multi-tenant/devices/devices-tenant-view.png" alt-text="Screenshot of the Microsoft Defender XDR tenants list in the Devices page" lightbox="../../media/multi-tenant/devices/devices-tenant-view.png":::

At the top of the page, you can view the number of tenants and the number of devices onboarded or discovered, across all tenants. You can also see the aggregate number of devices identified as:

- High risk
- High exposure
- Internet facing
- Can be onboarded
- Newly discovered
- High value

Select a tenant name to navigate to the device inventory for that tenant in the [Microsoft Defender XDR](https://security.microsoft.com/machines) portal where all data and inventory-related actions are available.

## Device inventory

The Device inventory page lists all the devices in each tenant that you have access to. The page is like the [Defender for Endpoint device inventory](../defender-endpoint/machines-view-overview.md) with the addition of the **Tenant name** column. Moreover, the device inventory page doesn't have the network, IOT, and uncategorized devices tabs.

You can navigate to the device inventory page by selecting **Assets > Devices** in Microsoft Defender XDR's navigation menu.

   :::image type="content" source="../../media/multi-tenant/devices/devices-device-inventory.png" alt-text="Screenshot of the Microsoft Defender XDR Devices page for multitenant management" lightbox="../../media/multi-tenant/devices/devices-device-inventory.png":::

The total number of devices, critical assets, high risk devices, and internet-facing devices for all tenants are shown at the top of the page.

You can search a specific device with the search function. You can sort and filter the device list according to the following fields to customize your view:

- Tenant name
- Risk level
- Criticality level
- Mitigation status
- Cloud platforms
- Operating system (OS) platforms
- Windows OS version
- Sensor health state
- Antivirus status
- Tags
- First seen
- Internet facing
- Group
- Exclusion state
- Managed by

To manage a device, select a specific device from the list. Device management tasks like managing tags, device exclusion, and reporting inaccuracy becomes available at the top of the device list.

   :::image type="content" source="../../media/multi-tenant/devices/devices-choose-device.png" alt-text="Screenshot of choosing a device from the device inventory list" lightbox="../../media/multi-tenant/devices/devices-choose-device.png":::

Selecting a device by clicking on the device name opens the device page in a new tab. You can further apply other actions on the device in the new tab.