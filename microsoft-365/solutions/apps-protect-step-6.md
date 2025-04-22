---
title: "Step 6. Use app protection actions"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: how-to
ms.date: 04/21/2025
description: Step 6. Use app protection actions.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 6. Use app protection actions

In addition to applying conditional launch actions as part of your app protection policy, you have more app protection actions. You can remove organizational or corporate app data by creating a device based wipe request or a user based wipe request. This form of protection is applied when either a member of your organization leaves, the devices is lost, or the device is stolen. This method only removes your organization data, not personal data on the device.

## Device based wipe

You can create a device based wipe request for an end-user. Sometimes end-users have multiple devices, such as a tablet and a phone. You can choose which device to wipe. In addition, you can see the state of the wipe request in Intune. For more information, see [Create a device based wipe request](/intune/intune-service/apps/apps-selective-wipe#create-a-device-based-wipe-request).

## User based wipe

You can also create a user based wipe request. This wipe request removes organizational data from all managed apps on all the user's devices. You can also see the state of the wipe request in Intune. For more information, see [Create a user based wipe request](/intune/intune-service/apps/apps-selective-wipe#create-a-user-based-wipe-request).

## Additional actions

In addition to the above actions, you can also do the following actions:
- [Monitor your wipe requests](/intune/intune-service/apps/apps-selective-wipe#monitor-your-wipe-requests)
- [Delete a device wipe request](/intune/intune-service/apps/apps-selective-wipe#delete-a-device-wipe-request)
- [Delete a user wipe request](/intune/intune-service/apps/apps-selective-wipe#delete-a-user-wipe-request)

## After securing and protecting apps in Intune

Once you have reviewed and completed the steps provided in this solution, you're ready to configure, protect, assign, and monitor the managed apps your organization uses.

For more information about how to proceed, see the following articles:
- [App configuration policies for Microsoft Intune](/intune/intune-service/apps/app-configuration-policies-overview)
- [App protection policies overview](/intune/intune-service/apps/app-protection-policy)
- [Data protection framework using app protection policies](/intune/intune-service/apps/app-protection-framework)
- [Assign apps to groups with Microsoft Intune](/intune/intune-service/apps/apps-deploy)
- [Monitor app information and assignments with Microsoft Intune](/intune/intune-service/apps/apps-monitor)