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

# Work with app control

Before you enable app control in your environment be sure to review and understand [how Microsoft Managed Desktop implements it](../service-description/app-control.md) and your roles and responsibilities.

Microsoft Managed Desktop simplifies app control by taking care of the more challenging aspects of getting a secure base policy. Your IT Administrators must still test your apps in the Test ring and review the logs for any warnings or errors. If an app needs an exemption, you can file a request, or Microsoft Managed Desktop Operation might, depending on who detects it first.

## Initial deployment of apps

When you first deploy apps, Microsoft Managed Desktop needs to assess their current behavior. The exact steps for enabling app control depend on whether devices have already been deployed in your environment.

### Devices already deployed

If you've already deployed at least one device, follow these steps:

1. Open a service ticket with Microsoft Managed Desktop Operations requesting that we turn on app control. Operations will deploy an [Audit policy](../service-description/app-control.md#audit-policy) to all devices.
2. [Test your applications](../working-with-managed-desktop/work-with-app-control.md#add-a-new-app) to see if any would be blocked. If an application would be blocked, open a [signer request](../working-with-managed-desktop/work-with-app-control.md#add-or-remove-a-trusted-signer). 
3. Once you have completed your testing (regardless of results), notify Operations, noting any pending signer requests. Operations will progressively deploy policies to deployment groups following this schedule:
    - Test: Audit Mode Policy: Day 0 
    - First: Enforced Policy: Day 1 
    - Fast: Enforced Policy: Day 3 
    - Broad: Enforced Policy: Day 7 

You can always open another service request to pause or roll back part of this deployment at any time during the rollout.

### Devices not yet deployed

If you haven't yet deployed any devices, open a service ticket with Microsoft Managed Desktop Operations requesting that we turn on app control. Operations will progressively deploy policies to deployment groups following this schedule:
    - Test: Audit Mode Policy: Day 0 
    - First: Enforced Policy: Day 1 
    - Fast: Enforced Policy: Day 3 
    - Broad: Enforced Policy: Day 7 

You can always open another service request to pause or roll back part of this deployment at any time during the rollout.

