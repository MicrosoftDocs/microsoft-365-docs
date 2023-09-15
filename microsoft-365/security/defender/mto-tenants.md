---
title: Manage tenants with multi-tenant management in Microsoft 365 Defender
description: Learn about the tenant list in multi-tenant management in Microsoft 365 Defender
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

# Manage tenants

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## View the tenants page

To view the list of tenants that appear in multi-tenant management, go to [Settings page](https://mto.security.microsoft.com/mtosettings) in multi-tenant management in Microsoft 365 Defender:

   :::image type="content" source="../../media/defender/mto-tenant-settings.png" alt-text="Screenshot of multi-tenant management in Microsoft 365 Defender" lightbox="../../media/defender/mto-tenant-settings.png":::

From the **Settings** page you can:

- **Add a tenant**: Select **Add tenants** > Choose the tenants to want to add > Select **Add tenant**.
- Select a tenant from the list to open the [Microsoft 365 Defender portal](https://security.microsoft.com) for that tenant.
- **Remove a tenant**: Select the tenant you'd like to remove > select **Remove**.

## Multi-tenant management status indicator

The multi-tenant management status indicator provides information on whether data issues exist for page you're viewing, such as data loading issues or permissions issues. The indicator appears in the bottom right corner of the page:

When no issue exists, the status indicator is a green tick:

- ![No data issues](../../media/defender/mto-nodata-issue.png)

When an issue exists, the status indicator shows a red warning sign:

- ![data issues](../../media/defender/mto-data-issues.png)

Hovering over the red warning sign displays the issues that have occurred and the tenant information. By expanding each section, you see all the tenants with this issue.

- ![tenant data issues](../../media/defender/mto-tenantdata-issues.png)
