---
title: "Understand deployment insights in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: jatingupta
ms.date: 09/27/2024
audience: Admin
ms.topic: concept-article
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn more about deployment insights."
---

# Understand deployment insights in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides deployment insights within and across the tenants you manage. Deployment insights are derived from a combination of signals that are either detected by Lighthouse or entered into Lighthouse by a user in the partner tenant. Deployment insights help you:

- Understand the deployment status across all customer tenants, users, and tasks.

- Review deployment exceptions such as **Dismissed** tasks and **Excluded** users.

- Review regressions such as tasks that change from a **Compliant** or **Dismissed** status to a status of **Not compliant** or **Not licensed**.

- Quantify threats based on user- and task-level deployment progress.

- Prioritize deployment activities based on risk.

To access deployment insights, in the left navigation pane in [Lighthouse](https://lighthouse.microsoft.com), select **Deployment** > **Deployment insights**.

## Watch: Deployment insights

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=2dcf8c3e-a69c-4dff-a027-b2e9c282b818]

Check out the other [Microsoft 365 Lighthouse videos](https://www.youtube.com/playlist?list=PLnWjfDdQkUQSCbV-ftVD311_fZxghB22C) on our YouTube channel.

## Deployment insights page
The **Deployment insights** page includes the following:

- Tenant progress
- User progress
- Deployment insights based on customer tenants and tasks

> [!NOTE]
> The **Deployment insights** page measures deployment progress across all customer tenants that have an onboarding status of **Active**. By default, the deployment insights are filtered to display insights for all tenants but can be filtered by tenant tag.

:::image type="content" source="../media/m365-lighthouse-deployment-insights-overview/m365-lighthouse-deployment-insights-overview-page.png" alt-text="Screenshot of deployment insights page" lightbox="../media/m365-lighthouse-deployment-insights-overview/m365-lighthouse-deployment-insights-overview-page.png":::

### Tenant progress

The tenant progress graph measures deployment progress by customer tenant, reporting the status of each tenant's deployment plan as one of the following:

- **Complete** – The status of all deployment tasks is **Compliant** or **Dismissed**.

- **Not complete** – The status of one or more of the deployment tasks is **Not compliant** or **Not licensed**.

### User progress

The user progress graph measures deployment progress by user, reporting deployment progress status as one of the following:

- **Complete** – The status of all deployment tasks is **Compliant**, **Excluded**, or **Not targeted**.

- **Not complete** – The status of one or more of the deployment tasks is either **Not compliant** or **Not licensed**.

### Deployment insights table

The deployment insights table organizes information by customer tenant and task.

The data on the **Tenants** tab can be filtered by deployment plan status and baseline. It provides the following information for each customer tenant:

| **Column**  | **Description**                                |
|------------------------|------------------------------------------------|
| Tenant                 | The name of the customer tenant.                      |
| Baseline               | The baseline that's assigned to the customer tenant.    |
| Deployment plan status | The status of the deployment plan&mdash;either **Complete** or **Not complete**.   |
| Task progress          | The number of total tasks that are in a state of completion&mdash;either **Compliant** or **Dismissed**.    |
| Dismissed tasks        | The number of tasks that have been **Dismissed**.   |
| Not licensed tasks     | The number of tasks for which the customer tenant is **Not licensed**.      |
| Regressed tasks        | The number of tasks that have regressed from a state of completion (either **Compliant** or **Dismissed**) to a state of either **Not compliant** or **Not licensed**. |
| User progress          | The number of users for which all deployment tasks are **Compliant**, **Excluded**, or **Not targeted**. |
| Excluded users         | The number of users that have a status of **Excluded** for one or more deployment tasks.   |
| Exclusions             | The number of instances of a user having a status of **Excluded** across all deployment tasks.   |

To better understand deployment insights, here are a few examples of how different tenant configurations and deployment activities are reflected in the deployment insights table.

In this example, all customer tenants have 100 users and have been assigned a baseline that includes 10 tasks:

- A – Complete, with no tasks that have been **Dismissed** and no users that have been **Excluded**
- B – Complete, with one task that has been **Dismissed**
- C – Complete, with 1 user **Excluded** from 1 task
- D – Complete, with 1 user **Excluded** from 5 tasks
- E – Complete, with 5 users **Excluded** from 1 task
- F – Complete, with 50 users **Excluded** from 5 tasks
- G – Complete, with 100 users **Excluded** from 10 tasks
- H – Not complete, with 1 user that is **Not compliant** for 1 task
- I – Not complete, with 1 task for which 100 users are **Not compliant**
- J – Not complete, with 1 task that has regressed to a state of **Not licensed**
- K – Not complete, with 1 newly detected user with a status of **Not Licensed** for all tasks
- L – Not complete, with 1 user with from which all licenses have been unassigned

| Tenant | Baseline         | Deployment plan status | Task progress | Dismissed tasks | Not licensed tasks | Regressed tasks | User progress | Users excluded | User exclusions |
|--------|------------------|------------------------|---------------|-----------------|--------------------|-----------------|---------------|----------------|-----------------|
| A      | Default baseline | Complete               | 10/10         | 0               | 0                  | 0               | 100/100       | 0              | 0               |
| B      | Default baseline | Complete               | 10/10         | 1               | 0                  | 0               | 100/100       | 0              | 0               |
| C      | Default baseline | Complete               | 10/10         | 0               | 0                  | 0               | 100/100       | 1              | 1               |
| D      | Default baseline | Complete               | 10/10         | 0               | 0                  | 0               | 100/100       | 1              | 5               |
| E      | Default baseline | Complete               | 10/10         | 0               | 0                  | 0               | 100/100       | 5              | 5               |
| F      | Default baseline | Complete               | 10/10         | 0               | 0                  | 0               | 100/100       | 50             | 250             |
| G      | Default baseline | Complete               | 10/10         | 0               | 0                  | 0               | 100/100       | 100            | 1,000           |
| H      | Default baseline | Not complete           | 9/10          | 0               | 0                  | 0               | 99/100        | 0              | 0               |
| I      | Default baseline | Not complete           | 9/10          | 0               | 0                  | 0               | 0/100         | 0              | 0               |
| J      | Default baseline | Not complete           | 9/10          | 0               | 1                  | 1               | 0/100         | 0              | 0               |
| K      | Default baseline | Not complete           | 0/10          | 0               | 0                  | 10               | 99/100        | 0              | 0               |
| L      | Default baseline | Not complete           | 0/10          | 0               | 0                  | 10              | 99/100        | 0              | 0               |

### Deployment insights details by tenant

Select any customer tenant from the list to open the deployment insights details pane for that tenant, which provides the following information:

- Overview
- Dismissed tasks
- Excluded users
- Required licenses

> [!NOTE]
> Deployment insights for dismissed tasks, excluded users, and required licenses are also available on the **Tenants** page.

#### Overview tab

The **Overview** tab provides the status of each deployment task assigned to the customer tenant and includes the following information:

| **Column**  | **Description**                                                                                                              |
|-------------|------------------------------------------------------------------------------------------------------------------------------|
| Tasks        | The name of the task.                                                                                                        |
| Task status | The status of the deployment task.                                                                                           |
| User status | The number of users who've completed the task, who've been excluded from the task, or who haven't been targeted for the task. |

#### Dismissed tasks tab

The **Dismissed tasks** tab provides details about tasks that have been dismissed from the deployment plan and allows you to reinstate tasks. The tab includes the following information:

| **Column**    | **Description**                                           |
|---------------|-----------------------------------------------------------|
| Task          | The name of the task.                                     |
| Reason        | The reason provided for the dismissal of the task.        |
| Justification | The justification provided for the dismissal of the task. |

#### Excluded users tab

The **Excluded users** tab provides details about users who've been excluded from a deployment task. This tab includes the following information:

| **Column**               | **Description**                                                      |
|--------------------------|----------------------------------------------------------------------|
| Tasks with excluded users | The name of the task from which one or more users have been excluded. |
| Excluded users           | The names of each user who's been excluded.                       |

#### Required licenses tab

The **Required licenses** tab provides details about deployment tasks where one or more users require additional licensing to complete the task. This tab includes the following information:

| **Column**                    | **Description**                                                     |
|-------------------------------|---------------------------------------------------------------------|
| Tasks with not-licensed users | The name of the task for which one or more users aren't licensed. |
| Not-licensed users            | The name of each user who isn't licensed to complete the task.     |

### Deployment insights table by task

To view deployment insights by task, select the **Tasks** tab. The data on the **Tasks** tab can be filtered by baseline and provides the following information:

| **Column**       | **Description**                                                             |
|------------------|-----------------------------------------------------------------------------|
| Task             | The name of the task.                                                       |
| Baseline         | The baseline associated with the task.                                      |
| Assigned tenants | The number of tenants to which this task has been assigned.                 |
| Compliant        | The number of tenants with a task status of **Compliant**.     |
| Not compliant    | The number of tenants with a task status of **Not compliant**. |
| Dismissed        | The number of tenants with a task status of **Dismissed**.     |
| Not licensed     | The number of tenants with a task status of **Not licensed**.  |

Select any task from the list to open the deployment insights details pane for that task, which provides the following information:

| **Column**          | **Description**                                                     |
|---------------------|---------------------------------------------------------------------|
| Tenant              | The name of the customer tenant.                                    |
| Task status         | The deployment status of the task for the tenant.                   |
| Total users         | The number of users who are assigned to the task.                   |
| Compliant users     | The number of users who are **Compliant**.                          |
| Not compliant users | The number of users who are **Not compliant**.                      |

## Next steps

For information on how to manage tenants by using deployment insights, see [Manage tenants by using deployment insights in Microsoft 365 Lighthouse](m365-lighthouse-manage-tenants-using-deployment-insights.md).

## Related content

[Overview of deployment tasks in Microsoft 365 Lighthouse](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of using Micrososft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Understand deployment statuses in Microsoft 365 Ligthouse](m365-lighthouse-understand-deployment-statuses.md) (article)
