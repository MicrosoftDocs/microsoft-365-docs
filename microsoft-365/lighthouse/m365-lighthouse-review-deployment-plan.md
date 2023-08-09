---
title: "Review a deployment plan in Microsoft 365 Lighthouse"
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to Review a deployment plan."
---

# Review a deployment plan in Microsoft 365 Lighthouse

All tenants with an Onboarding status of **Active** are assigned the default baseline as their deployment plan. Deployment plans include a series of tasks that comprise the desired state for the tenant. Tasks may be automated through Microsoft 365 Lighthouse or require manual confirmation of implementation. Related tasks may also be grouped together.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

Additionally, each partner tenant user must meet the following requirements:

- The partner tenant user must have DAP/GDAP access to the applicable tenant.

  - For DAP, an admin agent group membership.

  - For GDAP, a role that can create Conditional Access (CA) policies.

- The partner tenant user must enable MFA for their user account in the partner tenant.

## Access a tenant deployment plan

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. From the tenant list, select the tenant you want to view.

3. Select the **Deployment Plan** tab.

The **Deployment Plan** tab lists all tasks included in the tenant's deployment plan and provides the following information for each task:

|Column|Description|
|---|---|
|Task|The name of the task.|
|Status|The status of the task.|
|Total users|Where applicable, the total number of users detected within the tenant.|
|Excluded|The number of users that have been excluded from the task.|
|Not compliant|The number of users whose configuration is Not compliant with the task.|
|Not licensed|The number of users that haven't been assigned licenses to the services required by the task.|
|Not targeted|The number of users that aren't targeted for assignment of the task.|
|Compliant|The number of users whose configuration is Compliant with the task.|

The **Deployment Plan** tab also supports the following actions:

- **Refresh:** Select to retrieve the most current task data.

- **Search:** Enter keywords to quickly locate a specific task in the list.

When a tenant’s onboarding status becomes **Active** or when you access a tenant within Lighthouse, Lighthouse queries the tenant for existing configurations. The deployment status is assigned to each task based on the status of each setting included in the subtask and, where applicable, for each user to which the subtask is assigned.

Deployment statuses are automatically determined by Lighthouse when detection is possible, and by user input when detection isn't possible.

## Related content

[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of deployment tasks](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Understanding deployment insights](m365-lighthouse-deployment-insights-overview.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
