---
title: "Manage your tenant list in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: crimora, ebamoh
ms.date: 09/20/2024
audience: Admin
ms.topic: how-to
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

To help you manage your tenant list in Microsoft 365 Lighthouse, you can apply custom tags to your tenants. These tags can be used to organize your tenants and can also help you filter the existing views and insights available to relevant sets of tenants. You can manage your tags from the **Tenants** page. Once tags are created and assigned, you can go to any page in Lighthouse that has a Tenants filter and use it to filter the data based on a tag.

## Before you begin

You must hold the Administrator role in Lighthouse to manage your tenant list.

## Create a tag

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Tenants**.

2. Select **Manage Tags**.

3. In the **Manage tags** pane, select **Create tag**.

4. Enter a name and optional description.

5. Select **Save**.

## Edit a tag

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Tenants**.

2. Select **Manage Tags**.

3. In the **Manage tags** pane, select the three dots (more actions) next to the tag that you want to edit, and then select **Edit tag**.

4. Edit the name, description, or assigned tenants as needed.

5. Select **Save**.

## Assign a tag to a tenant

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Tenants**.

2. From the list of tenants, select the three dots (more actions) next to the tenant that you want to tag, and then select **Tags**.

3. Select a tag from the list. You can select only one tag at a time.

    Tags that are already assigned to the tenant have a check mark next to the tag name. 

To assign a tag to multiple tenants, select the checkbox next to each tenant in the list that you want to tag, select **Assign Tags**, and then select a tag from the list.

> [!NOTE]
> You can create up to 30 unique Tags and assign them to as many tenants as needed.

## Delete a tag

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Tenants**.

2. Select **Manage Tags**.

3. In the **Manage tags** pane, select the three dots (more actions) next to the tag that you want to delete, and then select **Delete tag**.

4. In the confirmation dialog, select **Confirm**.

## Remove a tag from a tenant

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Tenants**.

2. From the list of tenants, select the three dots (more actions) next to the tenant that has a tag you want to remove, and then select **Tags**.

4. Select the tag you want to remove.

    Tags that are currently assigned to the tenant have a check mark next to the name. 

To remove a tag from multiple tenants, select the checkbox next to each tenant in the list that has a tag you want to remove, select **Assign Tags**, and then select a checked tag from the list.

## Next steps

After you create and assign tags, you can use those tags to filter your tenants. Go to any page in Lighthouse that has a Tenants filter, select the filter, and then enter a tag to filter by or browse tags and select one or more tags from the list. You can also create new tags to support specific views based on each page.

## Related content

[Overview of the Tenants page](m365-lighthouse-tenants-page-overview.md) (article)\
[View your Microsoft Entra roles in Microsoft 365 Lighthouse](m365-lighthouse-view-your-roles.md) (article)\
[View tenant service health](m365-lighthouse-view-service-health.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
