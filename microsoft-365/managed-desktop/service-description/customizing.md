---
title: Exceptions to the service plan
description: How to request exceptions to the standard service plan
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Exceptions to the service plan

Microsoft Managed Desktop provides a curated device list, [standard device settings](device-policies.md), applications requirements, and certain [configurable settings](../working-with-managed-desktop/config-setting-overview.md), all designed to provide a secure, productive, and pleasant experience for users. It’s best to always stay with the service as provided. However, we recognize that some details of the service might not fit exactly with your organization’s needs. If you feel you need to alter the service in some way, it’s important that you follow the following processes to request those changes.
 
## Types of exceptions

An exception is any addition or change to the Microsoft Managed Desktop base configuration; examples range from USB ports configuration to deploying a new device driver. We group various exceptions as follows:

|Type  |Description  |
|---------|---------|
|Productivity software     |  Foreground software needed by users, restricted by the [application requirements](mmd-app-requirements.md)       |
|Security agents & VPNs     |  Software used to secure, monitor, or change the behavior of the device or network       |
|Digital experience monitoring     |  Software used to track data on a user’s device to report to IT       |
|Hardware or software drivers     |   Device drivers, restricted by the [application requirements](mmd-app-requirements.md)      |
|Policies     | Windows 10 or Microsoft 365 Apps for enterprise settings on a managed device        |
|Devices     | Devices that are not on the Microsoft Managed Desktop [device list](device-list.md)        |
|Other     |  Anything not covered by the other areas       |
 
## Request an exception

Submit requests through the Microsoft Managed Desktop Admin portal by creating a change request. Be sure to include these details:

- Exemption type: Which category of exception is it? (see the previous table)
- Requirement: What is the specific business requirement for the exception?
- Proposal: Which solution is your business requesting?
- Timeline: How long do you want this exception to last? 

## How we assess an exception request

When we review exception requests, we assess these factors in this order:
 
1. Some applications and policies which Microsoft Managed Desktop deploys to all devices aren't negotiable, so your request must not affect those. See [Device configuration](device-policies.md) for more information.
2. Restricted productivity software required by a user to do their job will likely be approved. 
3. If we can meet your requirement by using Microsoft technology, we’ll likely approve your request for an exception migration period of three to 12 months (depending on the scope of the project).
4. If we can’t meet your requirement by using Microsoft technology, we’ll likely approve your request unless it violates one of the conditions below.  

These principles ensure that Microsoft Managed Desktop can always meet your needs while tracking deviations from our standard template. 

## Key conditions

We review exceptions to ensure they don't violate any of these conditions:

- An exception must not adversely impact system security. 
- Maintaining the exception must not incur a significant cost for either Microsoft Managed Desktop operations or support.
- An exception must not affect system stability, for example, by causing kernel mode crashes or hangs.
- The change must not restrict us from operating the service or conflict with core Microsoft Managed Desktop technology.

These conditions could change in the future. If we do make such changes, we’ll provide 30 days notice prior to those conditions coming into effect.  If Microsoft Managed Desktop delivers an alternative way to meet an approved exception, Microsoft Managed Desktop will notify the customer should Microsoft Managed Desktop alter the way in supporting the exception. 

## Revoking approval for an exception

After a requested exception is approved and deployed, it’s possible that we might discover problems that violate the key conditions that weren’t evident when we approved the change in the first place. In this situation, we might have to revoke approval for the exception.
 
If this happens, we’ll notify you by using the Microsoft Managed Desktop admin portal. From the first time we notify you, you have 90 days to remove the exception before the devices with the exception are no longer bound by Microsoft Managed Desktop service level agreements. We'll send you several notifications according to a strict timeline--however, a severe incident or threat might require us to change the timeline or our decisions about an exception. We won't *remove* an exception without your consent, but any device with a revoked exception will no longer be bound by our service level agreement. Here is the timeline of notifications we will send you:

- **First notice:** We provide the first notice of our decision to revoke approval, including information about why we’re revoking it, the actions we advise you to take, the deadline for those actions, and steps to follow if you want to appeal the decision. This notice occurs 90 days in advance before the exception needs to be removed from all devices. 
- **Second notice (30 days later):** We provide a second notice, including the same information provided in the first notice. 
- **Third notice (60 days after the first notice):** We provide a third notice, including the same information provided in the first notice. 
- **Final notice (one week before the 90-day deadline):** We provide a fourth notice, including the same information provided in the first notice.
- **90 days after first notice:** Microsoft Managed Desktop service level agreements no longer apply to any devices that have the revoked exception. At any time, you can challenge the decision and provide additional information for consideration, including upgrade, configuration changes, or change of software. 


