---
title: Manage tenants with the Microsoft 365 Defender multi-tenant 
description: Learn about the tenant list in the Microsoft 365 Defender multi-tenant Unified View
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
- Microsoft 365 Defender multi-tenant

[!include[Prerelease information](../../includes/prerelease.md)]

## View the tenants page

To view the list of tenants that appear in the multi-tenant view, go to [Settings page](https://mto.security.microsoft.com/mtosettings) in the Microsoft 365 Defender multi-tenant portal:

   :::image type="content" source="../../media/defender/mto-multi-tenant-view.png" alt-text="Screenshot of the Microsoft 365 Defender multi-tenant settings page" lightbox="../../media/defender/mto-multi-tenant-view.png":::

From the **Settings** page you can:

- **Add a tenant**: Select **Add tenant** > Choose the tenants to want to add > Select **Add tenant**. Selecting a tenant from the list will open the [Microsoft 365 Defender portal](https://security.microsoft.com) for that tenant.

- **Remove a tenant**: Select the tenant you'd like to remove > select **Remove**.

## Multi-tenant view status indicator

The Multi-tenant view status indicator is always available in the bottom right corner of the Microsoft 365 Defender multi-tenant portal. This indicator provides information when data issues occur with the page you are viewing, such as data loading issues or permissions issues.

When an issue exists the status indicator will show a red warning sign hovering over it will display the issues that has occurred and the tenant information. By expanding each section, you’ll see all the tenants with this issue.
