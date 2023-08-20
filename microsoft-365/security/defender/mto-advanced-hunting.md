---
title: Microsoft 365 Defender multi-tenant advanced hunting
description: Learn about advanced hunting in the Microsoft 365 Defender multi-tenant Unified View
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

# Microsoft 365 Defender multi-tenant advanced hunting

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft 365 Defender multi-tenant Unified View

[!include[Prerelease information](../../includes/prerelease.md)]

## Advanced hunting

Advanced hunting in Microsoft 365 Defender multi-tenant allows you to proactively hunt for intrusion attempts and breach activity affecting your email, data, devices, and accounts over multiple tenants at the same time.

   :::image type="content" source="../../media/defender/mto-advanced-hunting.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant advanced hunting page" lightbox="../../media/defender/mto-advanced-hunting.png":::

From the Advanced hunting page you can run your cross-tenant query by selecting **Tenant scope**. This query will run on the combined data set of all the tenants you've selected.

The query results contains the tenant id:

   :::image type="content" source="../../media/defender/mto-tenant-id.png" alt-text="Screenshot of the Defender 365 multi-tenant advanced hunting tenant id" lightbox="../../media/defender/mto-tenant-id.png":::

## Custom detection rules

You can manage custom detection rules from multiple tenants in the **Customer detection rules** page.

## View custom detection rules

1. To view custom detection rules, go to the [Custom detection rules page](https://mto.security.microsoft.com/v2/custom_detection) in the Microsoft 365 Defender multi-tenant portal.
2. View the **Tenant Name** column to see which tenant the detection rule comes from:

   :::image type="content" source="../../media/defender/mto-custom-detection.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant incidents page" lightbox="../../media/defender/mto-custom-detection.png":::

You can, **Run**, **Turn off** and **Delete** detection rules from Microsoft 365 Defender multi-tenant.

## Manage custom detection rules

To manage detection rules:

1. Go to the [Custom detection rules](https://mto.security.microsoft.com/v2/custom_detection) in the Microsoft 365 Defender multi-tenant portal
2. Choose the detection rule you want to manage

When you select a single detection rule, a flyout panel will open with the detection rule details:

   :::image type="content" source="../../media/defender/custom-detection-rule-details.png" alt-text="Screenshot of the Microsoft 365 Defender custom detection rule details page" lightbox="../../media/defender/custom-detection-rule-details.png":::

Select **Open detection rules** to view this rule in a new tab for the specific tenant in the [Microsoft 365 Defender portal](https://security.microsoft.com). To learn more, see [Custom detection rules](./custom-detection-rules.md).
