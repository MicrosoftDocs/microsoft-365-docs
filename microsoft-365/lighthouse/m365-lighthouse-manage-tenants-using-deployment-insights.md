---
title: "Manage tenants by using deployment insights in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: jatingupta
ms.date: 10/01/2024
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to manage tenants by using deployment insights."
---

# Manage tenants by using deployment insights in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides deployment insights within and across the tenants you manage. The single view lets you:

- Understand the deployment status across all tenants, users, and tasks.
- Review deployment exceptions such as **Dismissed** tasks and **Excluded** users.
- Review regressions such as tasks that change from a **Compliant** or **Dismissed** status to a status of **Not compliant** or **Not licensed**.
- Quantify threats based on user- and task-level deployment progress.
- Prioritize deployment activities based on risk.

## Manage deployment progress by using deployment insights

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Deployment insights**.

2. On the **Deployment insights** page, review the following areas to gather insights on customer tenants' deployment progress.

|Area                |Description                             |
|--------------------|----------------------------------------|
|Tenant progress     | Provides a deployment progress summary across all tenants. You can hover over the graph to see the number of tenants with deployment plans that are **Complete** and **Not complete**. Tenants for which all assigned tasks are **Compliant** or **Dismissed** are considered **Complete**. Tenants for which one or more assigned tasks are **Not compliant** or **Not licensed** are considered **Not complete**.        |
|User progress     | Provides a user-deployment progress summary for all users. You can hover over the graph to see the exact number of users that are **Complete** and **Not complete**. Users for whom all assigned tasks are **Compliant**, **Dismissed**, or **Not targeted** are considered **Complete**. Users for whom one or more assigned tasks is **Not compliant** or **Not licensed** are considered **Not complete**.        |
|Tenants tab     | Provides detailed deployment progress for each tenant. You can use various data points from the table to determine the appropriate action. For example, the **Not licensed tasks** column indicates the number of tasks for which the tenant is not licensed. To resolve the issue, you can add a license or exclude the user from the task. The **Regressed tasks** column indicates that a task status changed from a **Compliant** or **Dismissed** state. You can go to the specific tenant deployment plan and take the appropriate action.        |
|Tasks tab     |  Provides deployment progress for all tasks, including how many tenants the task is assigned to. For tasks that are **Not compliant** or **Not licensed**, you can take action to resolve the issue.       |

For additional solutions for common deployment issues, see the [Deploying baselines section in Microsoft 365 Lighthouse frequently asked questions (FAQs)](m365-lighthouse-faq.yml#deploying-baselines).

## Review regressed tasks

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Deployment insights**.

2. On the **Tenants** tab, look for tenants that have a number other than **0** in the **Regressed tasks** column.

3. Select the desired tenant to open the tenant details page and view the regressed tasks.

4. To see the tenant's deployment plan, select **View tenant deployment plan**.

5. From the **Deployment plan** tab, select the regressed task from the list to open the task details pane.

6. Review the tenant's configuration and, depending on the regression scenario, modify the deployment task, modify the tenant's configuration, modify the tenant's licensing, or dismiss the task to resolve the regression.

## Audit deployment exceptions by using deployment insights

Every dismissed task and excluded user represent a potential threat. You can audit these exceptions to ensure they still meet your requirements.

### Audit dismissed tasks

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Deployment insights**.

2. On the **Tenants** tab, select a tenant that has a number other than **0** in the **Dismissed tasks** column to open the tenant details pane.

3. From the tenant details pane, select the **Dismissed tasks** tab.

4. From the list of dismissed tasks, review the reason and justification for each task to determine if the dismissal is still valid.

5. If no longer valid, select the dismissed task from the list, and then select **Reinstate**.

### Audit excluded users

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Deployment** > **Deployment insights**.

2. On the **Tenants** tab, select a tenant that has a number other than **0** in the **Excluded users** column to open the tenant details pane.

3. From the tenant details pane, select the **Excluded users** tab.

4. From the list of tasks with excluded users, expand each task and determine if the listed user should still be excluded.

5. If a user should no longer be excluded, select **View tenant deployment plan**.

6. From the **Deployment plan** tab, select the applicable deployment task from the list to open the task details pane.

7. Select **Deploy**.

8. On the **Review deployment task** page, remove the user from the **Exclude users** box, and then select **Next**.

9. On the **Review tenant configurations** page, review the configurations, and then select **Next**.

10. On the **Confirm configuration** page, review the configuration settings, and then select **Deploy**.

## Related content

[Overview of deployment tasks](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of using baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Understand deployment statuses](m365-lighthouse-understand-deployment-statuses.md) (article)\
[Microsoft 365 Lighthouse frequently asked questions (FAQs)](m365-lighthouse-faq.yml) (article)
