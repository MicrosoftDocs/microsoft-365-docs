---
title: How updates are handled in Microsoft Managed Desktop
description: Keeping Microsoft Managed Desktop up-to-date is a balance of speed and stability.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jdeckerms
ms.localizationpriority: medium
ms.date: 09/24/2018
---

# How updates are handled in Microsoft Managed Desktop


<!--This topic is the target for a "Learn more" link in the Admin Portal (aka.ms/update-rings); do not delete.-->

<!--Update management -->

Microsoft Managed Desktop connects all devices to a modern cloud-based infrastructure. Keeping Windows, Office, drivers, firmware, and Microsoft Store for Business application updates up to date is a balance of speed and stability. Deployment rings will be used to ensure OS and policies are rolled out in a safe manner. 

## Update rings

Microsoft Managed Desktop uses four Azure AD groups to manage updates:

- Test: The test ring is only designed for test and validation of changes made in the customer tenant.  
- First: First is intended to be an early test ring with limited tech savvy users that are willing to install software early and be subject to some pre-release updates.
- Fast: The fast ring is where we would expect a large set of users.  The goal for this ring is to keep devices updated and secure with a quick pace of software delivery.  
- Broad: The slow ring is a balanced conservative roll out of quality and feature updates.  Quality updates are still delivered at a fast pace, but not immediately. 

The updates in the ring system are categorized as quality, or feature updates:
- Quality updates include security, critical, and driver updates.  These are usually monthly updates. 
- Feature updates contain not only security and quality revisions, but also significant feature additions and changes; they are released semi-annually. 

How ring promotion works:
- Microsoft Managed Desktop deploys a new feature or quality update according the schedule specified below.
- During deployment, Microsoft Managed Desktop monitors for signs of failure or other disruption (via telemetry signals and our end-user support system); if any are detected, then the deployment to all current and future rings is immediately paused.
    - Example: if an issue is discovered while deploying a quality update to the First ring, then First, Fast, and Broad will all be paused until the issue is resolved.
    - Compatibility issues may be reported by filing a ticket in the Microsoft Managed Desktop IT Admin portal.
- Feature and quality updates are paused independently.  Pause is in effect for 35 days by default but can be reduced or extended depending on whether the issue is remediated.
- Once the rings are un-paused, deployment resumes according to the schedule below.
- This promotion process applies to both feature and quality updates, though the timeline varies for each.

<table>
<tr><th colspan="5">Rings and deferral settings</th></tr>
<tr><th>Update type</th><th>Test ring</th><th>First</th><th>Fast</th><th>Broad</th></tr>
<tr><td>Quality updates for operating system</td><td>0 days</td><td>0 days</td><td>1 day</td><td>5 days</td></tr>
<tr><td>Feature updates for operating system</td><td>Semi-annual channel (targeted) + 0 days</td><td>Semi-annual channel (targeted) + 30 days</td><td>Semi-annual channel (targeted) + 60 days</td><td>Semi-annual channel + 30 days</td></tr>
<tr><td>Drivers/firmware</td><td colspan="4">Follows the schedule for quality updates</td></tr>
<tr><td>Anti-virus definition</td><td colspan="4">Updated with each scan</td></tr>
<tr><td>Office Pro-Plus click to run</td><td colspan="4">Aligned with semi-annual channel</td></tr>
</table>


## Windows Insider Program

Microsoft Managed Desktop does not support devices that are part of the Windows Insider program. This program is used to validate pre-release Windows software and is intended for non-mission critical devices. While this is an important Microsoft initiative, it is not intended for broad deployment in production environments. 

Any devices found with Windows Insider builds will be put into the Test ring and not be included for update SLAs.

## Bandwidth management

Delivery optimization is used for all operating system and driver updates. It minimizes the download size from the Windows Update (WU) service by seeking updates from peers within the corporate network.


