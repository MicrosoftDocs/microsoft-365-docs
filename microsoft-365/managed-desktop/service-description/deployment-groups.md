---
title: Device deployment groups
description: The deployment groups used to manage updates and other changes
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
ms.author: jaimeo
manager: laurawi
ms.topic: article
---

# Device deployment groups

Microsoft Managed Desktop uses deployment groups to manage the release of updates and configuration changes to devices. Devices are added to deployment groups ("rings" or "update groups") automatically when they are enrolled into Microsoft Managed Desktop. Deployment groups allow for devices to receive changes in a phased timeline.

You might want to assign certain devices for test purposes only, or designate specific early adopters to receive the changes first. If you have critical devices such as those used by executives or that do business-critical functions, you might want to keep them in the group that gets updates on the slowest cadence. Microsoft Managed Desktop allows you to specify that a device should stay in any one of the following groups.

- **Test**: best for devices that are used for testing or users who can tolerate frequent changes and exposure to new features and also provide early feedback. This group receives changes frequently and experiences in this group have a strong effect. The Test group is exempt from any established service level agreements and user support. Microsoft Managed Desktop won't automatically assign devices to this group; it will only have devices you specify.
- **First**: ideal for early adopters, volunteer or designated validators, IT Pros, or representatives of business functions, that is, people who can validate changes and provide you feedback on the experience.
- **Broad** receives changes last. Most of your organization will typicallygit push  be in this group. You can also specify devices that must be in this group and should only receive changes last because they're doing business critical functions or belong to users in critical roles. 
- **Automatic**: select this option when you want Microsoft Managed Desktop to automatically assign devices to one of the other groups. (We won't automatically assign devices to Test.) If you want to release a device that you've previously specified so it can be automatically assigned again, select this option. 

Microsoft Managed Desktop uses some additional groups to control deployments, but you won't be able to assign devices to them. You can, however, move devices from those groups to one of the groups in this article. For more information about how Windows updates are managed in groups, see [How updates are handled in Microsoft Managed Desktop](updates.md).

If a device is in a group you've specified, **Group assigned by** will say **Admin**. If Microsoft Managed Desktop has assigned the group, it will say **Auto**. While a device is in the process of moving to a group, it will say **Pending**. The **Group** field always shows the group the device is currently in and only updates when a move is complete.

> [!IMPORTANT]
> Don't try to directly modify the membership of these groups. Always follow the steps described in [Assign devices to a deployment group](../get-started/assign-deployment-group.md).

