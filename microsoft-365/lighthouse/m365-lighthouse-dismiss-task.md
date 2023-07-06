---
title: "Dismiss a task in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: shcallaw, kywirpel
ms.date: 06/21/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to dismiss a deployment task."
---

# Dismiss a task in Microsoft 365 Lighthouse

You can dismiss tasks from the deployment plan where a Managed Service Provider (MSP) chooses to accept the associated risk of not completing the task or to resolve the task through a third party or other alternate mitigation. The dismissal of a task doesn’t affect the configuration of the managed tenant. Once dismissed, Microsoft 365 Lighthouse will no longer detect configurations or report the deployment status for that task. Tasks can be dismissed or reinstated at any time.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

Additionally, each partner tenant user must meet the following requirements:

- The partner tenant user must have DAP/GDAP access to the applicable tenant.

  - For DAP, an admin agent group membership.

  - For GDAP, a role that can create Conditional Access (CA) policies.

- The partner tenant user must enable MFA for their user account in the partner tenant.

## Dismiss a task

1. In the left navigation in Lighthouse, select **Tenants**.

2. Select the appropriate tenant from the list.

3. Select **Deployment plan** tab.

4. From the task list, select the task you want to dismiss.

5. From the task details pane, select **Dismiss**.

6. Select one of the following reasons for dismissing the task:

    1. Risk accepted

    2. Resolved through third party

    3. Resolved through alternate mitigation

7. In the Justification field, provide a reason for dismissing the task.

8. Select **Save**.

You can also select **More actions** (ellipsis icon) option directly from the task list to dismiss the task.

## Next steps

If the status of a dismissed task changes, you can reinstate the task. For more information, see [Reinstate a task in Microsoft 365 Lighthouse](m365-lighthouse-reinstate-task.md).

## Related content

[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
