---
title: Assign devices to a deployment group
description:  How to specify which deployment group you want devices to be in
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
ms.author: tiaraquan
manager: dougeby
ms.topic: article
---

# Assign devices to a deployment group

Microsoft Managed Desktop will assign devices to the various deployment groups. You can specify or change the group a device is assigned to using the Admin portal. You change the assignment after a device is registered or after a user has enrolled.

> [!IMPORTANT]
> If you change the assignment, policies that are specific to that group will be applied to the device. The change might install the latest version of Windows 10 (including any new feature or quality updates). It's best to move just a few devices at first and then check the resulting user experience. Be aware that certain updates will restart the device. Double-check that you've selected the right devices to assign. It can take up to 24 hours for the assignment to take effect.

**To assign devices to a deployment group:**

If you want to move separate devices to different groups, repeat these steps for each group.

1. In Microsoft Endpoint Manager, select **Devices** in the left pane.
1. In the **Microsoft Managed Desktop** section, select **Devices**.
1. Select the devices you want to assign. All selected devices will be assigned to the group you specify.
1. Select **Device actions** from the menu.
1. Select **Assign device to group**. A fly-in opens.
1. Use the dropdown menu to select the group to move devices to, and then select **Save**. The **Group assigned by** column will change to **Pending**.

When the assignment is complete, **Group assigned by** column will change to **Admin** (indicated that you made the change) and the **Group** column will show the new group assignment.

> [!NOTE]
> You can't move devices to other groups if they're in the "error" or "pending" registration state.
>
>If a device hasn't been properly removed, it could show a status of "ready." If you move such a device, it's possible that the move won't complete. If you don't see **Group assigned by** column change to **Pending** in Step 5, check that the device is available by searching for it in Intune. For more information, see [See device details in Intune](/mem/intune/remote-actions/device-inventory).
