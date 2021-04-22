---
title: How updates are handled in Microsoft Managed Desktop
description: Keeping Microsoft Managed Desktop up to date is a balance of speed and stability.
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
f1.keywords:
- NOCSH
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
---

# How updates are handled in Microsoft Managed Desktop


<!--This topic is the target for a "Learn more" link in the Admin Portal (aka.ms/update-rings); do not delete.-->

<!--Update management -->

Microsoft Managed Desktop connects all devices to a modern cloud-based infrastructure. Keeping Windows, Office, drivers, firmware, and Microsoft Store for Business applications up to date is a balance of speed and stability. Deployment groups will be used to ensure operating system updates and policies are rolled out in a safe manner. For more information, see the video [Microsoft Managed Desktop Change and Release Process](https://www.microsoft.com/videoplayer/embed/RE4mWqP).

Updates released by Microsoft are cumulative and are categorized as quality or feature updates.
For more information, see [Windows Update for Business: Update types](/windows/deployment/update/waas-manage-updates-wufb#update-types). 

## Update groups

Microsoft Managed Desktop uses four Azure AD groups to manage updates:

- **Test**: Used to validate Microsoft Managed Desktop policy changes, operating system updates, feature updates, and other changes pushed to the tenant. There should not be any users placed in the test group. The test group is exempt from any established service level agreements and user support. This group is available for use to validate compatibility of applications with new policy or operating system changes.  
- **First**: Contains early software adopters and devices that could be subject to pre-release updates. Devices in this group might experience outages if there are scenarios that were not covered during testing in the test ring.
- **Fast**: Prioritizes speed over stability. Useful for detecting quality issues before they are offered to the Broad group. This group serves as a next layer of validation but is typically more stable than the Test and First groups. 
- **Broad**: Last group to have feature and quality updates available. This group contains most of users in the tenant, and therefore favors stability over speed in deployment. Testing of apps should be done here as the environment is most stable. 

### Moving devices between update groups
You might want some devices to receive updates last and others that you want to go first. To move these devices into the appropriate update group, [submit an administrator support request](../working-with-managed-desktop/admin-support.md?view=o365-worldwide) and we will move the devices for you. 

> [!NOTE]
> If you need to move a user to a different update group, submit a support request. Do not move devices between update groups yourself. There are serious consequences if a device is moved incorrectly. The device could update unexpectedly and policies might conflict, changing the device configuration.

For more information on roles and responsibilities within these deployment groups, see [Microsoft Managed Desktop Roles and responsibilities](../intro/roles-and-responsibilities.md)

### Using Microsoft Managed Desktop update groups 
There are parts of the service that you manage, like app deployment, where it might be necessary to target all managed devices. In these instances, it makes sense to use update groups to reach those users with the understanding that you cannot add, remove, or change the membership of those groups. 

## How update deployment works:
1. Microsoft Managed Desktop deploys a new feature or quality update according the schedule specified in the following table.
2. During deployment, Microsoft Managed Desktop monitors for signs of failure or disruption based on diagnostic data and the user support system. If any are detected, we immediately pause the deployment to all current and future groups.
    - Example: if an issue is discovered while deploying a quality update to the First group, then update deployments to First, Fast, and Broad will all be paused until the issue is resolved.
    - You can report compatibility issues by filing a ticket in the Microsoft Managed Desktop Admin portal.
    - Feature and quality updates are paused independently. Pause is in effect for 35 days by default, but can be reduced or extended depending on whether the issue is remediated.
3. Once the groups are un-paused, deployment resumes according to the schedule in the table.

This deployment process applies to both feature and quality updates, though the timeline varies for each.




<table>
    <tr><th colspan="5">Update deployment settings</th></tr>
    <tr><th>Update type</th><th>Test</th><th>First</th><th>Fast</th><th>Broad</th></tr>
    <tr><td>Quality updates for operating system</td><td>0 days</td><td>0 days</td><td>0 days</td><td>3 days</td></tr>
    <tr><td>Feature updates for operating system</td><td>0 days</td><td>30 days</td><td>60 days</td><td>90 days</td></tr>
    <tr><td>Drivers/firmware</td><td colspan="4">Follows the schedule for quality updates</td></tr>
    <tr><td>Anti-virus definition</td><td colspan="4">Updated with each scan</td></tr>
    <tr><td>Microsoft 365 Apps for enterprise</td><td colspan="4"><a href="/microsoft-365/managed-desktop/get-started/m365-apps#updates-to-microsoft-365-apps">Learn more</a></td></tr>
    <tr><td>Microsoft Edge</td><td colspan="4"><a href="/microsoft-365/managed-desktop/get-started/edge-browser-app#updates-to-microsoft-edge">Learn more</a></td></tr>
    <tr><td>Microsoft Teams</td><td colspan="4"><a href="/microsoft-365/managed-desktop/get-started/teams#updates">Learn more</a></td></tr>
</table>

>[!NOTE]
>These deferral periods are intentionally designed to ensure high security and performance standards for all users. Furthermore, based on data gathered across all Microsoft Managed Desktop devices and the varying scope and impact of updates, Microsoft Managed Desktop reserves flexibility to modify the length of the above deferral periods for any and all deployment groups on an ad hoc basis.
>
>Microsoft Managed Desktop conducts an independent assessment of each Windows feature release to evaluate its necessity and usefulness to its managed tenants. Consequently, Microsoft Managed Desktop might or might not deploy all Windows feature updates. 

## Windows Insider Program

Microsoft Managed Desktop does not support devices that are part of the Windows Insider program. The Windows Insider program is used to validate pre-release Windows software and is intended for devices that aren't mission critical. While it's an important Microsoft initiative, it's not intended for broad deployment in production environments. 

Any devices found with Windows Insider builds might be put into the Test group and will be exempt from update service level agreements and user support from Microsoft Managed Desktop.

## Bandwidth management

We use [Delivery Optimization](/windows/deployment/update/waas-delivery-optimization) for all operating system and driver updates. This minimizes the download size from the Windows Update service by seeking updates from peers within the corporate network.