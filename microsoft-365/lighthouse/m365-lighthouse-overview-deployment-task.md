---
title: "Overview of deployment tasks in Microsoft 365 Lighthouse"
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn about more about deployment tasks."
---

# Overview of deployment tasks in Microsoft 365 Lighthouse

A tenant's deployment plan is complete when all tasks are compliant or explicitly dismissed. Microsoft 365 Lighthouse assesses each task based on the following factors:

|Factor|Description|
|---|---|
|Is the tenant licensed for the required services associated with the task?|<ul><li>Tasks that aren't licensed won't be eligible for deployment.</li><li>Tasks that aren't licensed may be **Dismissed**.</li><li>Once Lighthouse detects that the tenant is licensed for the required services associated with the task, the status will be updated automatically.</li></ul>|
|Is the task related to other tasks?|<ul><li>Tasks related to other tasks must be completed in sequential order.</li><li>Subsequent tasks will be eligible for deployment once the pre-requisite tasks are **Compliant**.</li></ul>|
|Can the configuration associated with the task be deployed through Lighthouse?|<ul><li>Tasks that require configurations that can't be deployed through Lighthouse will require manual implementation.</li><li>Lighthouse can't deploy tasks when it can't detect any existing configuration.</li></ul>|
|Was the task dismissed?|<ul><li>Dismissed tasks aren't eligible for deployment.</li><li>Dismissed tasks can be **Reinstated**.</li><li>Once a task is **Reinstated**, the status will be updated automatically.</li></ul>|
|Is the task compliant?|<ul><li>Compliant tasks require no further action, but users may review task details and existing configurations.</li></ul>|

## Related content

[Deploy a task automatically](m365-lighthouse-deploy-task-automatically.md) (article)\
[Deploy a task manually](m365-lighthouse-deploy-task-manually.md) (article)\
[View task details](m365-lighthouse-view-task-details.md) (article)\
[Dismiss a task](m365-lighthouse-dismiss-task.md) (article)\
[Reinstate a task](m365-lighthouse-reinstate-task.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
