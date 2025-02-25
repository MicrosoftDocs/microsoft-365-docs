---
title: "View your Microsoft Entra roles in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: taylorau
ms.date: 09/27/2024
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
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Provider (MSP) technicians using Microsoft 365 Lighthouse, learn how to view your Microsoft Entra roles across the different customer tenants that your organization manages."
---

# View your Microsoft Entra roles in Microsoft 365 Lighthouse

This article provides instructions for how to view your Microsoft Entra roles across the different customer tenants that your organization manages. Your role determines which actions you can perform in Lighthouse.

## Before you begin

You must have access to a partner tenant that has onboarded to the Microsoft 365 Lighthouse service.

## View your roles

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Tenants**.

2. From the list of tenants, select any tenant name to open the tenant details page.

3. Under **Your permissions**, select **View role**.

    On the **Roles** page, if you hold one or more roles in a customer tenant, you'll see a green checkmark in the **Enabled** column for that tenant, along with the number of roles you hold. If you don't hold any roles in a tenant, you'll see a red **X**.
 
4. For customer tenants with a green checkmark next to them, expand the tenant to see the list of roles you hold in that tenant. For more information about Microsoft Entra roles and the permissions they grant, see [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference).

    The **Roles** page also shows any custom tags that are applied to your tenants. You can filter the data on the page by assigned roles or tags.

## Next steps

If you don't have permission to perform an action that you need to perform in Lighthouse, reach out to someone who holds the Administrator role in Lighthouse and ask them to assign you an appropriate role for the action you're trying to perform.

## Related content

[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Manage your tenant list in Microsoft 365 Lighthouse](m365-lighthouse-manage-tenant-list.md) (article)
