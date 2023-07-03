---
title: "Manage tenants using insights in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: kywirpel
ms.date: 05/05/2023
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
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage tenants using insights."
---

# Manage tenants using insights in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides deployment insights within and across the tenants you manage. The single view enables you to:

- Understand the deployment status across all tenants, users, and tasks.
- Review deployment exceptions such as **Dismissed** tasks and **Excluded** users.
- Review regressions such as tasks the change from a **Compliant** or **Dismissed** status to a status of **Not compliant** or **Not licensed**.
- Quantify threats based on user- and task-level deployment progress.
- Prioritize deployment activities based on risk.

## Manage deployment progress using deployment insights

1. In the left navigation pane in Lighthouse, select **Deployment \> Deployment insights**.

2. On the **Deployment insights** page, review the following areas to gather insight on your tenants' deployment progress.

|Area                |Description                             |
|--------------------|----------------------------------------|
|Tenant progress     | Provides deployment progress summary across all tenants. You can hover over the graph to see the number of tenants with deployment plans that are **Complete** and **Not complete**. Tenants for which all tasks are **Compliant** or **Dismissed** are **Complete**. Tenants for which one or more tasks are **Not compliant** or **Not Licensed**.        |
|User progress     | Provides user deployment progress summary for all users. You can hover over the graph to the exact number of users that are **Complete** and **Not complete**. <br>Users for whom all tasks are **Compliant**, **Dismissed**, or **Not targeted** are **Complete**. Users for whom one or more assigned tasks is **Not compliant** or **Not Licensed**.        |
|Tenants tab     | Provides detailed deployment progress for each tenant. You can use various data points from the table to determine the appropriate action. For example, the **Not licensed tasks** column indicates the number of tasks for which the tenant is not licensed. To resolve the issue, you can add a license or exclude the user from the task. The **Regressed tasks** column indicates a task status changed from a **Compliant** or **Dismissed** state. You can go to the specific tenant deployment plan and take the appropriate action.        |
|Tasks tab     |  Provides deployment progress for all tasks, including how many tenants the task is assigned to. For tasks that are **Not compliant** or **Not licensed**, you can take action to resolve the issue.       |

For additional solutions for common deployment issues, see [Deploying baselines](m365-lighthouse-faq.yml) section in Microsoft 365 Lighthouse frequently asked questions (FAQs).

## Review regressed tasks

1. In the left navigation pane in Lighthouse, select **Deployment \> Deployment insights**.

2. From the Tenants list, review tenants with regressed tasks indicated by the **Regressed tasks** column.

3. Select the desired tenant to see specific regressed tasks.

4. Select **View tenant deployment plan** to navigate you to the tenant's deployment plan.

5. From the **Deployment plan** tab, select the regressed task from the list.

6. Review the tenant's configuration and depending on the regression scenario, you can modify the deployment task, modify the tenant's configuration, modify the tenant's licensing, or dismiss the task to resolve the regression.

## Audit deployment exceptions using deployment insights

Every dismissed task and excluded user represent a potential threat. You can audit these exceptions to ensure they still meet your requirements.

### Audit dismissed tasks

1. In the left navigation pane in Lighthouse, select **Deployment \> Deployment insights**.

2. From the Tenants list, select the tenant with a dismissed task.

3. From the tenant details pane, select the **Dismissed tasks** tab.

4. From the list, review the reason and justification sections to determine if a task dismissal is still valid.

5. If no longer valid, select the task from the list and then select **Reinstate**.

### Audit excluded users

1. In the left navigation pane in Lighthouse, select **Deployment \> Deployment insights**.

2. From the Tenants list, select the tenant with an **Excluded** user.

3. From the tenant details pane, select the **Excluded users** tab.

4. From the task list, expand each task and determine if the listed user should still be **Excluded**.

5. If a user should no longer be excluded, select **View tenant deployment plan**.

6. From the tenant's **Deployment plan** tab, select the applicable deployment task.

7. From the task details pane, select **Deploy**. The deployment wizard is launched.

8. On the **Review deployment task** page, remove the user from the **Excluded users** field.

9. Select **Next**.

10. Select **Exit Wizard**.

## Related content

[Overview of deployment tasks](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of using baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Understand deployment statuses](m365-lighthouse-understand-deployment-statuses.md) (article)\
[Microsoft 365 Lighthouse frequently asked questions (FAQs)](m365-lighthouse-troubleshoot.md) (article)
