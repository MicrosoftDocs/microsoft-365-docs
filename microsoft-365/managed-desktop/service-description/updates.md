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

Microsoft Managed Desktop connects all devices to a modern cloud-based infrastructure. Keeping Windows, Office, drivers, firmware, and Microsoft Store for Business applications up to date is a balance of speed and stability. Deployment groups will be used to ensure operating system updates and policies are rolled out in a safe manner. For more about this, see the video [Microsoft Managed Desktop Change and Release Process](https://www.microsoft.com/videoplayer/embed/RE4mWqP).

Updates released by Microsoft are cumulative and are categorized as quality or feature updates.
For more information, see [Windows Update for Business: Update types](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb#update-types). 

## Update groups

Microsoft Managed Desktop uses four Azure AD groups to manage updates:

- **Test**: Used to validate Microsoft Managed Desktop policy changes, operating system updates, feature updates, and other changes pushed to the tenant. There should not be any users placed in the test group. The test group is exempt from any established service level agreements and user support. This group is available for use to validate compatibility of applications with new policy or operating system changes.  
- **First**: Contains early software adopters and devices that could be subject to pre-release updates. Devices in this group might experience outages if there are scenarios which were not covered during testing in the test ring.
- **Fast**: Prioritizes speed over stability. Useful for detecting quality issues before they are offered to the Broad group. This group serves as a next layer of validation but is generally more stable than the Test and First groups. 
- **Broad**: Last group to have feature and quality updates available. This group contains the majority of users in the tenant, and therefore favors stability over speed in deployment. Testing of apps should be done here as the environment is most stable. 

> [!NOTE]
> If you need to move a user to a different update group, submit a support request. See [Support for Microsoft Managed Desktop](support.md) for more information on submitting support requests. If you move a user yourself, the move will be reverted.

For more information roles and responsibilities with these deployment groups, see [Microsoft Managed Desktop Roles and responsibilities](../intro/roles-and-responsibilities.md)

How update deployment works:
- Microsoft Managed Desktop deploys a new feature or quality update according the schedule specified below.
- During deployment, Microsoft Managed Desktop monitors for signs of failure or disruption (based on diagnostic data and the user support system). If any are detected, then the deployment to all current and future groups is immediately paused.
    - Example: if an issue is discovered while deploying a quality update to the First group, then update deployments to First, Fast, and Broad will all be paused until the issue is resolved.
    - Compatibility issues can be reported by filing a ticket in the Microsoft Managed Desktop Admin portal.
- Feature and quality updates are paused independently. Pause is in effect for 35 days by default, but can be reduced or extended depending on whether the issue is remediated.
- Once the groups are un-paused, deployment resumes according to the schedule below.
- This deployment process applies to both feature and quality updates, though the timeline varies for each.




<table>
    <tr><th colspan="5">Update deployment settings</th></tr>
    <tr><th>Update type</th><th>Test</th><th>First</th><th>Fast</th><th>Broad</th></tr>
    <tr><td>Quality updates for operating system</td><td>0 days</td><td>0 days</td><td>0 days</td><td>3 days</td></tr>
    <tr><td>Feature updates for operating system</td><td>0 days</td><td>30 days</td><td>60 days</td><td>90 days</td></tr>
    <tr><td>Drivers/firmware</td><td colspan="4">Follows the schedule for quality updates</td></tr>
    <tr><td>Anti-virus definition</td><td colspan="4">Updated with each scan</td></tr>
    <tr><td>Microsoft 365 Apps for enterprise</td><td colspan="4"><a href="https://docs.microsoft.com/microsoft-365/managed-desktop/get-started/m365-apps#updates-to-microsoft-365-apps">Learn more</a></td></tr>
    <tr><td>Microsoft Edge</td><td colspan="4"><a href="https://docs.microsoft.com/microsoft-365/managed-desktop/get-started/edge-browser-app#updates-to-microsoft-edge">Learn more</a></td></tr>
</table>

>[!NOTE]
>These deferral periods are intentionally designed to ensure high security and performance standards for all users. Furthermore, based on data gathered across all Microsoft Managed Desktop devices and the varying scope and impact of updates, Microsoft Managed Desktop reserves flexibility to modify the length of the above deferral periods for any and all deployment groups on an ad hoc basis.
>
>Microsoft Managed Desktop conducts an independent assessment of each Windows feature release to evaluate its necessity and usefulness to its managed tenants. Consequently, Microsoft Managed Desktop might or might not deploy all Windows feature updates. 

## Windows Insider Program

Microsoft Managed Desktop does not support devices that are part of the Windows Insider program. The Windows Insider program is used to validate pre-release Windows software and is intended for devices that aren't mission critical. While this is an important Microsoft initiative, it is not intended for broad deployment in production environments. 

Any devices found with Windows Insider builds might be put into the Test group and will be exempt from update service level agreements and user support from Microsoft Managed Desktop.

## Bandwidth management

We use [Delivery Optimization](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization) for all operating system and driver updates. This minimizes the download size from the Windows Update service by seeking updates from peers within the corporate network.


