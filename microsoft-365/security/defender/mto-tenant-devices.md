---
title: Devices in multi-tenant management 
description: Learn about multi-tenant device view in multi-tenant management of the Microsoft 365 Defender 
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
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
ms.date: 09/01/2023
---

# Multi-tenant devices

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Tenant device list

The Tenants page in multi-tenant management lists each tenant you have access to. For each tenant, the page includes details such as the number of devices and device types, the number of high value and high exposure devices, and the number of devices available to onboard:

   :::image type="content" source="../../media/defender/mto-tenant-page.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant device list" lightbox="../../media/defender/mto-tenant-page.png":::

At the top of the page, you can view the number of tenants and the number of devices onboarded or discovered, across all tenants. You can also see the aggregate number of devices identified as:

- High risk
- High exposure
- Internet facing
- Can be onboarded
- Newly discovered
- High value

Select a tenant name to navigate to the device inventory for that tenant in [Microsoft 365 Defender](https://security.microsoft.com/machines) portal where all data and inventory-related actions are available.

## Multi-tenant device inventory

You can manage devices originating from multiple tenants under **Device inventory**.

## View and investigate devices

1. To View or investigate an device, go to the [Device inventory page](https://mto.security.microsoft.com/machines) in multi-tenant management in Microsoft 365 Defender. The **Tenant name** and **Tenant ID** columns show which tenant the device belongs to:

   :::image type="content" source="../../media/defender/mto-device-inventory.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant incidents page" lightbox="../../media/defender/mto-device-inventory.png":::

2. Select the device you want to view. A flyout panel opens with the device details.
3. From the device details page you can **Open device page** to view this incident in a new tab for the specific tenant in the [Microsoft 365 Defender portal](https://security.microsoft.com).

For more information, see [Device inventory](../defender-endpoint/machines-view-overview.md).
