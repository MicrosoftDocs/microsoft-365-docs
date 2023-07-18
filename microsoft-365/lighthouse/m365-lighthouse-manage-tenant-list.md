---
title: "Manage your tenant list in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: ragovind
ms.date: 7/03/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage your tenant list."
---

# Manage your tenant list in Microsoft 365 Lighthouse

To help you manage your tenant list in Microsoft 365 Lighthouse, you can apply custom tags to your tenants. These tags can be used to organize your tenants and can also help you filter the existing views and insights available to relevant sets of tenants. You can manage your tags from the Tenants page. Once created and assigned, you can filter the data within the Tenants, Users, Devices, Threat management, and Windows 365 pages based on a tag.

## Before you begin

You must be a Global Administrator of the partner tenant.

## Create a tag

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. Select **Manage Tags**.

3. In the **Manage tags** pane, select **Create tag**.

4. Enter a name and description.

5. Select **Save**.

## Edit a tag

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. Select **Manage Tags**.

3. In the **Manage tags** pane, select the tag that you want to edit.

4. Edit the name and/or description as needed.

5. Select **Save**.

## Assign a tag

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. From the list of tenants, select the three dots (more actions) next to the tenant you want to tag.

3. Select **Tags**.

4. Select a tag from the list. You can select only one tag at a time.

Tags that are already assigned to the tenant have a check mark to the right of the tag name. You can also assign a tag to multiple tenants by selecting the checkbox next to each tenant in the list, selecting **Assign Tags**, and then selecting a tag from the list.

> [!NOTE]
> You can create up to 30 unique Tags and assign them to as many tenants as needed.

## Delete a tag

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. Select **Manage Tags**.

3. In the **Manage tags** pane, select the tag that you want to delete.

4. Select **Delete**.

5. In the confirmation dialog, select **Confirm**.

## Remove a tag

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. From the list of tenants, select the three dots (more actions) next to the tenant you want to edit.

3. Select **Tags**.

4. Select the tag you want to remove.

Tags that are currently assigned have a check mark to the right of the name. You can also remove a tag from multiple tenants by selecting the checkbox next to each tenant in the list, selecting **Assign Tags**, and then selecting a checked tag from the list.

## Next steps

After you've created and assigned tags, you can use them to filter your tenants. Go to any of the other pages (Users, Devices, Threat management, or Windows 365) and select one or more tags from the Tenants filter. You can create new tags to support specific views based on each page.

## Related content

[Overview of the Tenants page](m365-lighthouse-tenants-page-overview.md) (article)\
[View your Azure Active Directory roles in Microsoft 365 Lighthouse](m365-lighthouse-view-your-roles.md) (article)\
[View tenant service health](m365-lighthouse-view-service-health.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
