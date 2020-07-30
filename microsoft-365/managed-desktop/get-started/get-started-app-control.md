---
title: Get started with app control
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.author: jaimeo
manager: laurawi
audience: ITpro
ms.topic: article
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Get started with app control

Before you enable app control in your environment, be sure to review and understand [how Microsoft Managed Desktop implements it](../service-description/app-control.md) and your roles and responsibilities.

Microsoft Managed Desktop simplifies app control by taking care of the more challenging aspects of getting a secure base policy. Your IT Administrators must still test your apps in the Test ring and review the logs for any warnings or errors. If an app needs an exemption, you can file a request, or Microsoft Managed Desktop Operation might, depending on who detects it first.

## Initial deployment of apps

When you first deploy apps, Microsoft Managed Desktop needs to assess their current behavior. The exact steps for enabling app control depend on whether devices have already been deployed in your environment.

### Devices not yet in use

If you don't yet have any devices in use, open a service ticket with Microsoft Managed Desktop Operations requesting that we turn on app control. Operations will progressively deploy policies to deployment groups following this schedule:

|Deployment group  |Policy type  |Timing  |
|---------|---------|---------|
|Test     |  Audit       |  Day 0       |
|First     | Enforced        | Day 1        |
|Fast     | Enforced        |  Day 2       |
|Broad     | Enforced        |  Day 3       |

You can always open another service request to pause or roll back part of this deployment at any time during the rollout.

### Devices already in use

If already have at least one Microsoft Managed Desktop device in use, follow these steps:

1. Open a service ticket with Microsoft Managed Desktop Operations requesting that we turn on app control. Operations will deploy an [Audit policy](../service-description/app-control.md#audit-policy) to all devices.
2. [Test your applications](../working-with-managed-desktop/work-with-app-control.md#add-a-new-app) to see if any would be blocked. If an application would be blocked, open a [signer request](../working-with-managed-desktop/work-with-app-control.md#add-or-remove-a-trusted-signer). 
3. Once you have completed your testing (whatever the results), notify Operations, noting any pending signer requests. Operations will progressively deploy policies to deployment groups following this schedule:

|Deployment group  |Policy type  |Timing  |
|---------|---------|---------|
|Test     |  Audit       |  Day 0       |
|First     | Enforced        | Day 1        |
|Fast     | Enforced        |  Paused, rollout on request       |
|Broad     | Enforced        |  Paused, rollout on request       |

You can always open another service request to pause or roll back part of this deployment at any time during the rollout.



