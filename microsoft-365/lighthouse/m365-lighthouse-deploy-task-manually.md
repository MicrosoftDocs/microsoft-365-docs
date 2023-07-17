---
title: "Deploy a task manually in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: shcallaw, kywirpel
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
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to deploy a task manually."
---

# Deploy a task manually in Microsoft 365 Lighthouse

Tasks that require configurations that can't be deployed automatically through Microsoft 365 Lighthouse require manual deployment. Once the manual deployment is complete, set the task status to **Compliant** to reflect the current state of the task.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

Additionally, each partner tenant user must meet the following requirements:

- The partner tenant user must have DAP/GDAP access to the applicable tenant.

  - For DAP, an admin agent group membership.

  - For GDAP, a role that can create Conditional Access (CA) policies.

- The partner tenant user must enable MFA for their user account in the partner tenant.

## Deploy a task manually

1. In the left navigation pane in Lighthouse, select **Tenant**.

2. From the tenant list, select the tenant you want to view.

3. Select the **Deployment Plan** tab.

4. From the task list, select the task you want to deploy manually.

5. From the task details pane, select **Mark as compliant**.

6. In the confirmation dialog box, type your name as it appears within Lighthouse.

7. Select **Save**.

The task status will be updated to **Compliant**, and the Task Details pane will reflect which Lighthouse user completed the implementation steps.

If the task status changes and is no longer compliant, you can reset the status to **Not compliant**. To do this:

1. In the left navigation pane in Lighthouse, select **Tenant**.

2. From the tenant list, select the tenant you want to view.

3. Select the **Deployment Plan** tab.

4. From the task list, select the task you want to update.

5. In the task details pane, select **Mark as not compliant**.

6. In the **Mark task as not compliant** dialog box, select **Save**.

Tasks that must be deployed manually can also be dismissed regardless of their deployment status. Tasks that have been dismissed after being set as **Compliant**, will revert to **Not compliant** when reinstated.

## Related content

[Deploy a task automatically](m365-lighthouse-deploy-task-automatically.md) (article)\
[Dismiss a task](m365-lighthouse-dismiss-task.md) (article)\
[Reinstate a task](m365-lighthouse-reinstate-task.md) (article)\
[Overview of deployment tasks in Microsoft 365 Lighthouse](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
