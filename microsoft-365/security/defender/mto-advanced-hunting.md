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
- Microsoft 365 Defender multi-tenant view

[!include[Prerelease information](../../includes/prerelease.md)]

## Advanced hunting

Advanced hunting in Microsoft 365 Defender multi-tenant allows you to proactively hunt for intrusion attempts and breach activity affecting your email, data, devices, and accounts over multiple tenants at the same time.

## Run cross tenant queries

In multi-tenant view, you can use any of the queries you currently have access to. They are filtered by tenant in the Queries tab. Select a tenant to view the queries under each:

   :::image type="content" source="../../media/defender/mto-cross-tenants-query.png" alt-text="Screenshot of the Microsoft 365 Defender cross tenants advanced hunting query page" lightbox="../../media/defender/mto-cross-tenants-query.png":::

Once you have loaded the query in the query editor, you can then specify the scope of the query by tenant by selecting Tenant scope.  

   :::image type="content" source="../../media/defender/mto-cross-tenants-query-scope.png" alt-text="Screenshot of the Microsoft 365 Defender cross tenants advanced hunting query scope" lightbox="../../media/defender/mto-cross-tenants-query-scope.png":::

This opens a side pane from which you can specify the tenants to include in the query.

   :::image type="content" source="../../media/defender/mto-cross-tenants-sidepane.png" alt-text="Screenshot of the Microsoft 365 Defender cross tenants advanced hunting query side pane"scope column"" lightbox="../../media/defender/mto-cross-tenants-sidepane.png":::

>[!NOTE]
>Queries that use the `join` operator are currently not supported in multi-tenant advanced hunting.

From the Advanced hunting page you can run your cross-tenant query by selecting **Tenant scope**. This query will run on the combined data set of all the tenants you've selected.

The query results contains the tenant id:

   :::image type="content" source="../../media/defender/mto-cross-tenants-query-tenant-id.png" alt-text="Screenshot of the Microsoft 365 Defender ross tenants advanced hunting query scope column" lightbox="../../media/defender/mto-cross-tenants-query-tenant-id.png":::

To learn more about advanced hunting in Microsoft 365 Defender, read [Proactively hunt for threats with advanced hunting in Microsoft 365 Defender](advanced-hunting-overview.md).

## Custom detection rules

Likewise, you can manage custom detection rules from multiple tenants in the Customer detection rules page.

## View custom detection rules by tenant

1. To view custom detection rules, go to the [Custom detection rules page](https://mto.security.microsoft.com/v2/custom_detection) in the Microsoft 365 Defender multi-tenant view.
2. View the **Tenant Name** column to see which tenant the detection rule comes from:

   :::image type="content" source="../../media/defender/mto-custom-detection-tenant-name.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant custom detection page" lightbox="../../media/defender/mto-custom-detection-tenant-name.png":::

3. To view only a specific tenant’s custom detection rules, select **Filter**

   :::image type="content" source="../../media/defender/mto-custom-detection-filter-scope.png" alt-text="Screenshot of the Microsoft 365 Defender custom detection rule filter" lightbox="../../media/defender/mto-custom-detection-filter-scope.png":::

4. Select the tenant or tenants and select Apply.

To read more about custom detection rules, read [Custom detections overview](custom-detections-overview.md).

## Manage custom detection rules

You can, **Run**, **Turn off** and **Delete** detection rules from Microsoft 365 Defender multi-tenant.

To manage detection rules:

1. Go to the [Custom detection rules](https://mto.security.microsoft.com/v2/custom_detection) in the Microsoft 365 Defender multi-tenant view
2. Choose the detection rule you want to manage

When you select a single detection rule, a flyout panel will open with the detection rule details:

   :::image type="content" source="../../media/defender/custom-detection-rule-details.png" alt-text="Screenshot of the Microsoft 365 Defender custom detection rule details page" lightbox="../../media/defender/custom-detection-rule-details.png":::

Select **Open detection rules** to view this rule in a new tab for the specific tenant in the [Microsoft 365 Defender portal](https://security.microsoft.com). To learn more, see [Custom detection rules](./custom-detection-rules.md).
