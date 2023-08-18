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


You can use the **App Configuration Status** report to view configuration based on the following columns:

## View the report

1. Sign in to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Select **Apps** > **Monitor** > **App configuration status**.

The following list provides details about app protection status: 
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
> The **Last Sync** column represents the same value in both the in-console User status report and the App Protection Policy [exportable .csv report](/mdm/intune/app-protection-policies-monitor#export-app-protection-activities). The difference is a small delay in synchronization between the value in the two reports.
>
> The time referenced in Last Sync is when Intune last saw the app instance. When a user launches an app, it might notify the Intune App Protection service at that launch time, depending on when it last checked in. See [the retry interval times for App Protection Policy check-in](/mem/intune/apps/app-protection-policy-delivery). If a user hasn't used that particular app in the last check-in interval (which is usually 30 minutes for active usage), and they launch the app, then:
>
> - The App Protection Policy exportable .csv report has the newest time, within 1 minute (minimum) to 30 minutes (maximum).
> - The User status report has the newest time instantly.
>
> For example, consider a targeted and licensed user who launches a protected app at 12:00 PM:
>
> - If this is a sign in for the first time, that means the user was signed out before, and doesn't have an app instance registration with Intune. After the user signs in, the user gets a new app instance registration, and can be checked-in immediately (with the same time delays listed previously for future check-ins). Thus, the Last Sync time is 12:00 PM in the User status report, and 12:01 PM (or 12:30 PM at latest) in the App Protection Policy report.
> - If the user is just launching the app, the Last Sync time reported depends on when the user last checked in.

## Diagnostic logs
[Diagnostic Logs](/mem/intune/apps/app-configuration-policies-overview#diagnostic-logs)
[Using logs to show a configuration parameter](/mem/intune/apps/app-configuration-policies-overview#using-logs-to-show-a-configuration-parameter)


## Monitor app configuration status
[Monitor iOS/iPadOS app configuration status per device](/mem/intune/apps/app-configuration-policies-use-ios#monitor-iosipados--app-configuration-status-per-device)



## After configuring apps in Intune

Once you have completed the above steps, you'll be ready to configure, protect, assign, and monitor the managed apps your organization uses.

For more information about how to proceed, see the following topics:
- [App configuration policies for Microsoft Intune](/mem/intune/apps/app-configuration-policies-overview)
- [App protection policies overview](/mem/intune/apps/app-protection-policy)
- [Assign apps to groups with Microsoft Intune](/mem/intune/apps/apps-deploy)
- [Monitor app information and assignments with Microsoft Intune](/mem/intune/apps/apps-monitor)
