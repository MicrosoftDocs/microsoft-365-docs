---
title: "Step 7. Verify app configuration"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Step 5. Verify app configuration.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 7. Verify app configuration

You can use reports and logs to help view app configuration status.

## View the app configuration status report

The App Configuration Status report, available in the Intune console, provides details about the configuration state of each app based on user.

The report provided the following list of app configuration status: 
- **User**: The name of the user.
- **Email**: The email of the user.
- **App**: The name of the app that is being protected.
- **App version**: The version of the app.
- **Device Name**: Names of any devices that are associated with the user's account.
- **App Instance ID**: The string that identities a unique user + app + device that has checked-in with the Intune service.
- **Device type**: The type of device or operating system of the device.
- **AAD Device ID**: The AAD device ID is displayed if the device is AAD-joined.
- **Platform**: The operating system of the device.
- **Policy name**: The name of the app protection policy targeted to the app for the user.
- **Last sync**: The timestamp of the last sync of the app with Microsoft Intune.
- **Device Name**: Names of any devices that are associated with the user's account.
- **Device manufacturer**: The manufacturer of the Android device.
- **Device model**: The Android device model.
- **Android patch version**: The date of the last Android Security Patch received by the device.
- **Platform version**: The operating system version.
- **iOS SDK version**: The current iOS MAM SDK version of the iOS app.
- **MDM device ID**: The MDM device ID is displayed if the device is enrolled with Microsoft Intune MDM.
 
>[!NOTE]
> The **Last Sync** column represents the same value in the in-console **User status report**, the **App Protection Policy** [exportable .csv report](/mdm/intune/app-protection-policies-monitor#export-app-protection-activities), and the **App Configuration Report**. The difference is a small delay in synchronization between the value in the reports.

## Understand app configuration diagnostic logs

You can validate configuration by using the **Intune Diagnostic Log** for settings deployed through the managed app configuration policies. See the following resources related to app configuration logs:
- [iOS/iPadOS configuration on unmanaged devices](/mem/intune/apps/app-configuration-policies-overview?branch=main#iosipados-configuration-on-unmanaged-devices)
- [iOS/iPadOS configuration on managed devices](/mem/intune/apps/app-configuration-policies-overview?branch=main#iosipados-configuration-on-managed-devices)
- [Android configuration on managed devices](/mem/intune/apps/app-configuration-policies-overview?branch=main#android-configuration-on-managed-devices)

## Monitor app configuration status for managed devices

Once a configuration policy has been assigned, you can monitor app configuration status for each *managed* device. In the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), select **Devices** > **All devices**. From the list of managed devices, select a specific device to display a pane for the device. On the device pane, select **App configuration**.  

## After configuring apps in Intune

Once you have reviewed and completed the steps provided in this solution, you'll be ready to configure, protect, assign, and monitor the managed apps your organization uses.

For more information about how to proceed, see the following topics:
- [App configuration policies for Microsoft Intune](/mem/intune/apps/app-configuration-policies-overview)
- [App protection policies overview](/mem/intune/apps/app-protection-policy)
- [Assign apps to groups with Microsoft Intune](/mem/intune/apps/apps-deploy)
- [Monitor app information and assignments with Microsoft Intune](/mem/intune/apps/apps-monitor)
