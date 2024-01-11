---
title: Advanced hunting in multi-tenant management in Microsoft Defender XDR
description: Learn about advanced hunting in multi-tenant management in Microsoft Defender XDR
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
ms.date: 1/5/2024
---

# Advanced hunting in multi-tenant management in Microsoft Defender XDR

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

Advanced hunting in multi-tenant management in Microsoft Defender XDR allows you to proactively hunt for intrusion attempts and breach activity in email, data, devices, and accounts across multiple tenants at the same time.

## Run cross-tenant queries

In multi-tenant management, you can use any of the queries you currently have access to. They're filtered by tenant in the **Queries** tab. Select a tenant to view the queries available under each one.

Once you load the query in the query editor, you can then specify the scope of the query by tenant by selecting **Tenant scope**:

   :::image type="content" source="../../media/defender/mto-cross-tenants-query.png" alt-text="Screenshot of the Microsoft Defender XDR cross tenants advanced hunting query page" lightbox="../../media/defender/mto-cross-tenants-query.png":::

This action opens a side pane from which you can specify the tenants to include in the query:

   :::image type="content" source="../../media/defender/mto-cross-tenants-sidepane.png" alt-text="Screenshot of the Microsoft Defender XDR cross tenants advanced hunting query side pane scope" lightbox="../../media/defender/mto-cross-tenants-sidepane.png":::

Select the tenants you want to include in your query. Select **Apply**, then **Run query**.

> [!NOTE]
> Queries that use the `join` operator are currently not supported in multi-tenant management advanced hunting.

The query results contain the tenant ID:

   :::image type="content" source="../../media/defender/mto-cross-tenants-query-tenant-id.png" alt-text="Screenshot of the Microsoft Defender XDR ross tenants advanced hunting query scope column" lightbox="../../media/defender/mto-cross-tenants-query-tenant-id.png":::

To learn more about advanced hunting in Microsoft Defender XDR, read [Proactively hunt for threats with advanced hunting in Microsoft Defender XDR](advanced-hunting-overview.md).

## Custom detection rules

Likewise, you can manage custom detection rules from multiple tenants in the custom detection rules page.

### View custom detection rules by tenant

1. To view custom detection rules, go to the [Custom detection rules page](https://mto.security.microsoft.com/v2/custom_detection) in multi-tenant management in Microsoft Defender XDR.
2. View the **Tenant name** column to see which tenant the detection rule comes from:

   :::image type="content" source="../../media/defender/mto-custom-detection-tenant-name.png" alt-text="Screenshot of the Microsoft Defender XDR multi-tenant custom detection page" lightbox="../../media/defender/mto-custom-detection-tenant-name.png":::

To view only a specific tenant's custom detection rules, select **Filter**, choose the tenant or tenants and select **Apply**.

To read more about custom detection rules, read [Custom detections overview](custom-detections-overview.md).

### Manage custom detection rules

You can **Run**, **Turn off**, and **Delete** detection rules from multi-tenant management in Microsoft Defender XDR.

To manage detection rules:

1. Go to the [Custom detection rules page](https://mto.security.microsoft.com/v2/custom_detection) in multi-tenant management in Microsoft Defender XDR
2. Choose the detection rule you want to manage

When you select a single detection rule, a flyout panel opens with the detection rule details:

   :::image type="content" source="../../media/defender/custom-detection-rule-details.png" alt-text="Screenshot of the Microsoft Defender XDR custom detection rule details page" lightbox="../../media/defender/custom-detection-rule-details.png":::

Select **Open detection rules** to view this rule in a new tab for the specific tenant in the [Microsoft Defender portal](https://security.microsoft.com). To learn more, see [Custom detection rules](./custom-detection-rules.md).
