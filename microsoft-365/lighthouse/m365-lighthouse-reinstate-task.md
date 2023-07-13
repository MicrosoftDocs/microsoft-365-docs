---
title: "Reinstate a task in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: kywirpel
ms.date: 07/03/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to reinstate a deployment task in Lighthouse."
---

# Reinstate a task in Microsoft 365 Lighthouse

You can reinstate a dismissed deployment task within Microsoft 365 Lighthouse.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

Additionally, each partner tenant user must meet the following requirements:

- The partner tenant user must have DAP/GDAP access to the applicable tenant.

  - For DAP, an admin agent group membership.

  - For GDAP, a role that can create Conditional Access (CA) policies.

- The partner tenant user must enable MFA for their user account in the partner tenant.

## Reinstate a task

1. In the left navigation in Lighthouse, select **Tenants**.
2. Select the appropriate tenant from the list.
3. Select **Deployment plan** tab.
4. From the task list, select the task you want to reinstate.
5. From the task details pane, select **Reinstate**.
6. From the **Reinstate task** dialog box, select **Reinstate**.

You can also select **More actions** (ellipsis icon) option directly from the task list to reinstate the task. Once a task is reinstated, status detection and reporting will update accordingly.

## Next steps

If you want to investigate why a task was dismissed, you can audit the exception using Lighthouse insights. For more information, see [Manage tenants using insights](m365-lighthouse-manage-tenants-using-deployment-insights.md).

## Related content

[Dismiss a task in Microsoft 365 Lighthouse](m365-lighthouse-dismiss-task.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
