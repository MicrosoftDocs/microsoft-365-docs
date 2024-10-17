---
title: "Understand deployment statuses in Microsoft 365 Lighthouse"
f1.keywords: CSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: jatingupta
ms.date: 09/27/2024
audience: Admin
ms.topic: conceptual
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to understand deployment statuses in Lighthouse."
---

# Understand deployment statuses in Microsoft 365 Lighthouse

When a tenant's onboarding status becomes **Active** or when you access a tenant within Microsoft 365 Lighthouse, Lighthouse queries the tenant for existing configurations. The deployment status is assigned to each task based on the status of each setting included in the subtask and, where applicable, for each user to which the subtask is assigned.

Lighthouse automatically determines deployment statuses when detection is possible. When detection isn't possible, Lighthouse relies on the status you manually set.

Tasks can have the following statuses:

|Task  Status|Description|
|---|---|
|Compliant|<ul><li>All settings included in the subtask are **Compliant**.</li><li>There are no settings that are **Not compliant**.</li><li>There are no settings that are **Missing** from all existing configurations. A task can be **Compliant** if a setting is **Compliant** in one or more existing configurations without being **Not compliant** in another.</li><li>There may be **Extra** settings detected within existing configurations.</li></ul>|
|Not compliant|<ul><li>One or more settings included in the subtask are **Not compliant**.</li><li>One or more settings are **Missing** from all existing configurations.</li><li>There may be **Extra** settings detected within existing configurations.</li><p>**Note:** Doesn't apply to subtasks that are **Not licensed**. </p></ul>|
|Not licensed|The tenant isn't licensed for the services required to deploy the configuration associated with the subtask.|
|Dismissed|The subtask was dismissed by a Lighthouse user.<p>**Note:** A Lighthouse user can dismiss **Not licensed** subtasks.</p>|

Lighthouse will stop detecting or reporting deployment status for subtasks that have been dismissed.

To determine the status of each subtask, Lighthouse detects the status of each setting included in the subtask.

Settings can be assigned the following statuses:

|Setting Status|Description|
|---|---|
|Compliant|The value detected in the existing configuration deployed to the customer tenant is equivalent to the value in the deployment plan for all targeted users.|
|Not compliant|The value detected in the existing configuration deployed to the customer tenant isn't equivalent to the value in the deployment plan for one or more targeted users.|
|Missing|There's no value detected in the tenant for a setting that is included in the deployment plan.|
|Extra|There's a value detected in the tenant for a setting that isn't included in the deployment plan.|

Where applicable, Lighthouse detects the status of each user for the applicable subtask.

Users can be assigned the following statuses:

|User Status|Description|
|---|---|
|Compliant|<ul><li>The user is targeted for the subtask.</li><li>The user has been assigned licenses for all services required by the subtask.</li><li>All settings included in the subtask are **Compliant**.</li><li>There are no settings that are **Not compliant**.</li><li>There are no settings that are **Missing** from all existing configurations. A user can be **Compliant** if a setting is **Compliant** in one or more existing configurations without being **Not compliant** in another.</li><li>There may be **Extra** settings detected within existing configurations.</li></ul>|
|Not compliant|<ul><li>The user is targeted for the subtask.</li><li>The user has been assigned licenses for all services required by the subtask.</li><li>One or more settings included in the subtask are **Not compliant**.</li><li>One or more settings are **Missing** from all existing configurations.</li><li>There may be **Extra** settings detected within existing configurations.</li><p>**Note:** Doesn't apply to subtasks that are **Not licensed**.</p></ul>|
|Excluded|The user has been excluded from the subtask.<p>**Note:** When a user is **Excluded** from a subtask, status detection and reporting will be updated accordingly, but existing configurations won't be affected.</p>|
|Not licensed|The user isn't licensed for the services required to deploy the prescribed configuration.<p>**Note:** Doesn't apply to users with **Not targeted** status.</p>|
|Not targeted|The user isn't the intended target for the subtask. For example, a user that isn't an admin is reported as **Not targeted** for a subtask that is assigned only to admins.|

## Related content

[Overview of deployment tasks in Microsoft 365 Lighthouse](m365-lighthouse-overview-deployment-task.md) (article)\
[Overview of using Microsoft 365 Lighthouse baselines to deploy standard tenant configurations](m365-lighthouse-deploy-standard-tenant-configurations-overview.md) (article)\
[Overview of permissions in Microsoft 365 Lighthouse](m365-lighthouse-overview-of-permissions.md) (article)\
[Configure Microsoft 365 Lighthouse portal security](m365-lighthouse-configure-portal-security.md) (article)\
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq.yml) (article)
