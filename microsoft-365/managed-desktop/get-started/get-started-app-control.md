---
title: Get started with app control
description:  
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# Work with app control

Before you enable app control in your environment be sure to review and understand how Microsoft Managed Desktop implements it and your roles and responsibilities. {LINK} 

Microsoft Managed Desktop simplifies app control by taking care of the more challenging aspects of getting a secure base policy. Your IT Administrators must still test your apps in the Test ring and review the logs for any warnings or errors. If an app needs an exemption, you can file a request, or Microsoft Managed Desktop Operation might, depending on who detects it first.

## Initial deployment of apps

When you first deploy apps, Microsoft Managed Desktop needs to assess their current behavior. The exact steps for enabling app control depend on whether devices have already been deployed in your environment.

### Devices already deployed

If you've already deployed {I FEEL LIKE WE SHOULD CLARIFY WHAT "DEPLOYING" A DEVICE MEANS} at least one device, follow these steps:

1. Open a service ticket with Microsoft Managed Desktop Operations requesting that we turn app control. Operations will deploy an [Audit Mode] policy to all devices.
2. [Test your applications] to see if any would be blocked. If an application would be blocked, open a [signer request]. 
3. Once you have completed your testing (regardless of results), notify Operations, noting any pending exemption requests. Operations will progressively deploy policies to deployment groups following this schedule:
    - Test: Audit Mode Policy: Day 0 
    - First: Enforced Policy: Day 1 
    - Fast: Enforced Policy: Day 3 
    - Broad: Enforced Policy: Day 7 

You can always open another service request to pause or roll back part of this deployment at any time during the rollout.

### Devices not yet deployed

If you haven't yet deployed any devices, open a service ticket with MMD Operations requesting that we turn App Control. Operations will progressively deploy policies to deployment groups following this schedule:
    - Test: Audit Mode Policy: Day 0 
    - First: Enforced Policy: Day 1 
    - Fast: Enforced Policy: Day 3 
    - Broad: Enforced Policy: Day 7 

You can always open another service request to pause or roll back part of this deployment at any time during the rollout.

