---
title: "Assign a baseline in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: jatingupta
ms.date: 10/21/2024
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to assign a baseline to a tenant."
---

# Assign a baseline in Microsoft 365 Lighthouse

By default, Microsoft 365 Lighthouse assigns the default baseline to all tenants. You can create and assign a baseline to accommodate varying customer requirements.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

Additionally, each partner tenant user must be a Microsoft 365 Lighthouse admin.

## Assign a baseline to a tenant

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Tenants**.
2. Select a tenant to which you want to assign a new baseline.
3. Select **Assign baseline**.
4. Select the baseline you want to assign to the selected tenants.

> [!NOTE]
> Baselines don't include tenant-specific attributes, and the assignment of a new baseline will overwrite any pre-existing customization to the configuration of a tenant's deployment plan, such as deployment task dismissals, user and user group exclusions, and deployment statuses of manual deployment tasks. These values will need to be re-entered for each tenant, as needed.

## Next steps

Once the baseline is assigned, Lighthouse queries the assigned tenants to detect and report their deployment status. [Review the deployment plan](m365-lighthouse-review-deployment-plan.md) to determine the next steps in the deployment process.

## Related content

[Create baselines](m365-lighthouse-create-a-baseline.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
