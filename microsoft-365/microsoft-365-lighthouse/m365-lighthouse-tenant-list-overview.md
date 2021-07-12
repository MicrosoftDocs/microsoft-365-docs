---
title: "Microsoft 365 Lighthouse tenant list overview"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about the tenant list."
---

# Microsoft 365 Lighthouse tenant list overview

> [!NOTE]
> The features described in this article are in Preview, are subject to change, and are only available to partners who meet the [requirements](m365-lighthouse-requirements.md). If your organization does not have Microsoft 365 Lighthouse, see [Sign up for Microsoft 365 Lighthouse](m365-lighthouse-sign-up.md).

The Microsoft 365 Lighthouse tenant list provides insights into the different tenants you have a contract with, including tenant onboarding status relative to Microsoft 365 Lighthouse. The tenant list also lets you tag tenants to provide different filters throughout Microsoft 365 Lighthouse, and drill down to learn more about a given tenant and the status of their deployment plan.

After your tenants meet the [Microsoft 365 Lighthouse onboarding requirements](m365-lighthouse-requirements.md), their status will show as **Active** in the tenant list.

To access the tenant list in Microsoft 365 Lighthouse, select **Tenants** in the left navigation pane to open the Tenants page.

## Tenant status

The following table shows the different status messages and their meaning.<br><br>

| Status message | Description |
|--|--|
| Active | Onboarding and data flow has started. |
| In process | Tenant discovered, but not fully onboarded. |
| Ineligible, DAP | Delegated Admin Privileges (DAP) setup is required. |
| Ineligible, user count | Tenant has more users than allowed. |
| Ineligible, license | Tenant does not have required license. |
| Inactive | Tenant is no longer active. |

Once you inactivate a tenant, you can't take action on the tenant while Microsoft 365 Lighthouse completes the inactivation process. It may take up to 48 hours for inactivation to complete.

If you decide to reactivate a tenant, it may take up to 48 hours for data to reappear.

## Tenant tags

You can tag your customer tenants with a custom label within Microsoft 365 Lighthouse. These tags can be used to organize your tenants and can also help you easily filter the existing views and insights available to relevant sets of customer tenants. You can also manage your tags and which tenants they're assigned to from the Tenants page.

## Related content

[Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)