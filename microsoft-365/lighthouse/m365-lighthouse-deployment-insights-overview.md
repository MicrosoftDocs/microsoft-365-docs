---
title: "Understanding deployment insights in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: kywirpel
ms.date: 04/19/2023
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn more about deployment insights."
---

# Understanding deployment insights in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides deployment insights within and across the tenants you manage. Deployment insights are derived from a combination of signals that are either detected by Lighthouse or entered into Lighthouse by a user in the partner tenant. The single view enables you to:

- Understand the deployment status across all tenants, users, and tasks

- Review deployment exceptions such as **Dismissed** tasks and **Excluded** users

- Review regressions such as tasks that change from a **Compliant** or **Dismissed** status to a status of **Not compliant** or **Not licensed**.

- Quantify threats based on user- and task-level deployment progress

- Prioritize deployment activities based on risk

To access Deployment insights, in the left navigation pane in Lighthouse, select **Deployment \> Deployment insights**.

:::image type="content" source="../media/m365-lighthouse-deployment-insights-overview/m365-lighthouse-deployment-insights-overview-page.png" alt-text="Screenshot of deployment insights page" lightbox="../media/m365-lighthouse-deployment-insights-overview/m365-lighthouse-deployment-insights-overview-page.png":::

The Deployment insights page includes the following:

- Tenant progress

- User progress

- Deployment insights based on tenants and tasks

**Note:** The Deployment insights page measures deployment progress across all tenants that have an Onboarding Status of **Active**. By default, the deployment insights are filtered to display insights for all tenants but can be filtered by tenant tag.

## Tenant progress

The tenant progress graph measures deployment progress by tenant, reporting the status of each tenants’ deployment plans as either:

- **Complete** – the status of all deployment tasks is **Compliant** or **Dismissed**.

- **Not complete** – the status of for one or more of the deployment tasks is **Not compliant** or **Not licensed**.

## User progress

The user progress graph measures deployment progress by user, reporting users as either:

- **Complete** – the status for all deployment tasks is either **Compliant**, **Excluded**, or **Not targeted**.

- **Not complete** – the status for one or more of the deployment tasks is either **Not compliant** or **Not licensed**.

## Deployment insights table

The deployment insights table organizes information by tenant and task.

The **Tenants** tab pivot can be filtered by deployment plan status and baseline. It provides the following information for each tenant:

| **Column**  | **Description**                                |
|------------------------|------------------------------------------------|
| Tenant                 | The name of the tenant.                      |
| Baseline               | The baseline that is assigned to the tenant.    |
| Deployment plan status | The status of the deployment plan; either **Complete** or **Not complete**.   |
| Task progress          | The number of total tasks that are in a state of completion; either **Compliant** or **Dismissed**.    |
| Dismissed tasks        | The number of tasks that have been **Dismissed**.   |
| Not licensed tasks     | The number of tasks for which the tenant is **Not licensed**.      |
| Regressed tasks        | The number of tasks that have regressed from a state of completion (either **Compliant** or **Dismissed**) to a state of either **Not compliant** or **Not licensed**. |
| User progress          | The number of users for which all deployment tasks are either **Compliant**, **Excluded**, or **Not targeted**. |
| Excluded users         | The number of users that have a status of **Excluded** for one or more deployment tasks.   |
| Exclusions             | The number of instances of a user having a status of **Excluded** across all deployment tasks.   |

To better understand deployment insights, here are a few examples for how different tenant configurations and deployment activities are reflected in the deployment insights table.

In this example, all tenants have 100 users and have been assigned a baseline that includes 10 tasks:

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

## Deployment insights details by tenant

Selecting any tenant from the list opens the deployment insights details pane for that tenant, which provides the following information for each tenant:

- Overview
- Dismissed tasks
- Excluded users
- Required licenses

**NOTE**: Deployment insights around dismissed tasks, excluded users, and required licenses are also available from the **Tenant** page.

### Overview tab

The **Overview** tab provides the status of each deployment task assigned to the tenant with the following information:

| **Column**  | **Description**                                                                                                              |
|-------------|------------------------------------------------------------------------------------------------------------------------------|
| Tasks       | The name of the task.                                                                                                        |
| Task Status | The status of the deployment task.                                                                                           |
| User status | The number of users who have completed the task, who have been excluded from the task, or who haven't been targeted for the task. |

### Dismissed tasks tab

The **Dismissed tasks** tab provides details around tasks that have been dismissed from the deployment plan and allows you to reinstate tasks. The tab includes the following information:

| **Column**    | **Description**                                           |
|---------------|-----------------------------------------------------------|
| Task          | The name of the task.                                     |
| Reason        | The reason provided for the dismissal of the task.        |
| Justification | The justification provided for the dismissal of the task. |

### Excluded users tab

The **Excluded users** tab provides details around users that have been excluded from a deployment task. This tab includes the following information:

| **Column**               | **Description**                                                      |
|--------------------------|----------------------------------------------------------------------|
| Task with excluded users | The name of the task from which one or more users has been excluded. |
| Excluded users           | The names of each user that has been excluded.                       |

### Required licenses tab

The **Required licenses** tab provides details around deployment tasks for which one or more users requires additional licensing to complete the task. This tab includes the following information:

| **Column**                    | **Description**                                                     |
|-------------------------------|---------------------------------------------------------------------|
| Tasks with not licensed users | The name of the task from which one or more users aren't licensed. |
| Not licensed users            | The name of each user who isn't licensed to complete the task.     |

## Deployment insights table by task

To view deployment insights by task, select the **Tasks** tab. The **Tasks** tab can be filtered by baseline and category. It provides the following information for each tenant:

| **Column**       | **Description**                                                             |
|------------------|-----------------------------------------------------------------------------|
| Task             | The name of the task.                                                       |
| Baseline         | The baseline associated with the task.                                      |
| Assigned tenants | The number of tenants to which this task has been assigned.                 |
| Compliant        | The number of tenants in which the status of the task is **Compliant**.     |
| Not compliant    | The number of tenants in which the status of the task is **Not compliant**. |
| Dismissed        | The number of tenants in which the status of the task is **Dismissed**.     |
| Not licensed     | The number of tenants in which the status of the task is **Not licensed**.  |

Selecting any task from the list opens the deployment insights details pane for that task, which provides the following information:

| **Column**          | **Description**                                                     |
|---------------------|---------------------------------------------------------------------|
| Tenant              | The name of the tenant.                                             |
| Task status         | The deployment status of the task for the tenant.                   |
| Total users         | The number of users who are assigned to the task.                   |
| Compliant users     | The number of users who are **Compliant**.                          |
| Not compliant users | The number of users who are **Not compliant**.                      |
| Excluded users      | The number of users who are **Excluded** from this task.            |
| Not licensed users  | The number of users who are **Not licensed** to complete the task.  |
| Not targeted users  | The number of users who are **Not targeted** to complete this task. |

## Next Steps

For information on how to manage tenants using deployment insights, see [Manage deployments using insights in Microsoft 365 Lighthouse](m365-lighthouse-manage-tenants-using-deployment-insights.md).

## Related content

[Overview of deployment tasks](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of using baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Understand deployment statuses](m365-lighthouse-understand-deployment-statuses.md) (article)
