---
title: "View task details in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: shcallaw, kywirpel
ms.date: 05/05/2023
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view task details in Lighthouse."
---

# View task details in Microsoft 365 Lighthouse

Microsoft 365 Lighthouse provides detailed information on each task within a customer deployment plan. When you view a tenant's deployment plan, all tasks for which Lighthouse can detect existing configurations will have a status assigned to them for each setting and, where applicable, each user.

By default, each task is designated as **Compliant**, **Not compliant**, or **Not licensed**. For a definition of deployment statuses, see [Understand deployment statuses in Microsoft 365 Lighthouse](m365-lighthouse-understand-deployment-statuses.md). You can deploy, dismiss, or reinstate tasks from this view.

## Before you begin

Make sure you and your customer tenants meet the requirements listed in [Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md).

Additionally, each partner tenant user must meet the following requirements:

- The partner tenant user must have DAP/GDAP access to the applicable tenant.

  - For DAP, an admin agent group membership.

  - For GDAP, a role that can create Conditional Access (CA) policies.

- The partner tenant user must enable MFA for their user account in the partner tenant.

## View task details

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. Select an active tenant.

3. From the tenant page, select the **Deployment Plan** tab.

4. From the task list, select a task to see more details.

The task details pane provides an overview of the task, user progress information for the task, and a history of task status for the previous 30 days. 

The Overview tab provides the following information:

|Detail|Description|
|---|---|
|Status|The deployment status of the task.|
|Description|The description of the task.|
|Baseline|The baseline assigned to the tenant.|
|Category|The task category (for example, Identity, Devices, or Data).|
|Required services|The services that are required for completion of the task.|
|Management portal|The management portal where the configuration associated with the task is managed.|
|User impact|The impact of deploying the configuration associated with the task to the tenant's users.|
|For your users|Links to additional resources.|

The Deployment progress tab provides user status associated with the task. Users are compliant when all settings are **Compliant** or **Extra,** and no settings are **Missing** or **Not Compliant**. No progress is reported for tasks that have been dismissed.

The Detection history tab lists and shows a graphical view of each time Lighthouse has scanned the tenant to detect its configuration in the previous 30 days, providing the deployment status for the task and the number of users in each deployment status for each scan.  

## Related content

[Deploy a task manually](m365-lighthouse-deploy-task-manually.md) (article)\
[Deploy a task automatically](m365-lighthouse-deploy-task-automatically.md) (article)\
[Dismiss a task](m365-lighthouse-dismiss-task.md) (article)\
[Reinstate a task](m365-lighthouse-reinstate-task.md) (article)\
[Overview of deployment tasks in Microsoft 365 Lighthouse](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
