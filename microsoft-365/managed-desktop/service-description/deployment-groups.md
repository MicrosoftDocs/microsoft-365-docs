---
title: Device deployment groups
description: The deployment groups used to manage updates and other changes
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Device deployment groups

Microsoft Managed Desktop uses deployment groups to manage the release of updates and configuration changes to devices. Devices are added to deployment groups ("rings" or "update groups") automatically when they're enrolled into Microsoft Managed Desktop. Deployment groups allow for devices to receive changes in a phased timeline.

You might want to assign certain devices for test purposes only, or designate specific early adopters to receive the changes first. If you have critical devices, such as those used by executives or that do business-critical functions, you might want to keep them in the group that gets updates on the slowest cadence. Microsoft Managed Desktop allows you to specify that a device should stay in any one of the following groups.

| Group | Description |
| ----- | ----- |
| Test | The Test group is best for devices that are used for testing, or users who can tolerate frequent changes, exposure to new features, and are able to provide early feedback.<br><br>This group receives changes frequently and experiences in this group have a strong effect. The Test group is exempt from any established service level agreements and user support. It's best to move just a few devices at first and then review the user experience. Microsoft Managed Desktop won't automatically assign devices to this group. This group will only contain devices you specify.
| First | The First group is ideal for early adopters, volunteer, designated validators, IT Pros, or representatives of business functions. That is, people who can validate changes and provide you feedback on the experience.
| Fast | The Fast group is ideal for representatives of business functions. These individuals can validate changes prior to broad deployment.
| Broad | The Broad group receives changes last.<br><br>Most of your organization will typically be in this group. You can specify devices that must be in this group. These devices should receive changes last because they're doing business critical functions, or belong to users in critical roles.
| Automatic | Select Automatic when you want Microsoft Managed Desktop to automatically assign devices to one of the other groups.<br><br>We won't automatically assign devices to Test. If you want to release a device that you've previously specified so it can be automatically assigned again, select this option.

For more information about how Windows updates are managed in groups, see [How updates are handled in Microsoft Managed Desktop](updates.md).

## Labels

The Group assigned by column contains the following labels:

| Label | Description |
| ----- | ----- |
| Admin | The device is in a group you've specified. |
| Auto | Microsoft Managed Desktop assigned the group. |
| Pending | The device is in the process of moving to a group. |

The **Group** column always shows the group the device is currently in and only updates when a move is complete.

> [!IMPORTANT]
> Don't try to directly modify the membership of these groups. Always follow the steps described in [Assign devices to a deployment group](../working-with-managed-desktop/assign-deployment-group.md).
