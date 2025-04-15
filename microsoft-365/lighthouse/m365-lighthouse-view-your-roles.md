---
title: "View your assigned roles in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: taylorau
ms.date: 04/10/2025
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
description: "For Managed Service Provider (MSP) technicians using Microsoft 365 Lighthouse, learn how to view your assigned Lighthouse roles and Microsoft Entra roles in Lighthouse."
---

# View your assigned roles in Microsoft 365 Lighthouse

Lighthouse role-based access control (RBAC) roles and Microsoft Entra roles determine the actions you can perform in Microsoft 365 Lighthouse:

- *Lighthouse RBAC roles* determine the data you can access and change within your partner tenant. Lighthouse RBAC roles don't provide access to customer data.

- *Microsoft Entra roles* provide access to customer data and are based on the granular delegated administrative privileges (GDAP) relationships you set up with your customers.

## Before you begin

You must have access to a partner tenant that has onboarded to the Microsoft 365 Lighthouse service.

## View your assigned roles

There are two ways to view your assigned roles:

- In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Roles** > **Assigned roles**.

- To view the roles you hold for a specific tenant:

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
[Manage Lighthouse RBAC permissions in Microsoft 365 Lighthouse](m365-lighthouse-manage-lighthouse-rbac-permissions.md) (article)\
[Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) (article)
