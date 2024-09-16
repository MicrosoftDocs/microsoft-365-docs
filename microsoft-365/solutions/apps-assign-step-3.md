---
title: "Step 3. Verify and monitor app assignments"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 09/12/2024
description: Step 3. Verify and monitor app assignments.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 3. Verify and monitor app assignments

Microsoft Intune provides a variety of reports to help monitor apps. These reports help you understand whether apps are licensed, installed, protected, configured, or restricted. You can also monitor individual apps and monitor apps on individual devices.

## Understand app reports

You can use reports in Intune to help verify and monitor app licenses. You can also determine which apps are discovered and installed on a device. If you've applied app policies, you can determine which apps are configured and protected that use those policies. Intune also provides a report to help you determine which apps are restricted on a device and which apps are co-managed by both Intune and Configuration Manager.

### App licenses report

Intune provides a list of all the app licenses your tenant currently has in use. For more information about app licenses for Intune, see [Monitor app licenses used in Intune](/microsoft-365/solutions/apps-license-manage#monitor-app-licenses-used-in-intune). For more information about the **App licenses** report, see [Monitor app information and assignments with Microsoft Intune](/mem/intune/apps/apps-monitor).

### Discovered apps report

To determine a list of detected apps that are on Intune enrolled devices for your tenant, you can view a list of discovered apps. The **Discovered apps** report refreshes every seven days from the time of enrollment (not a weekly refresh for the entire tenant). For more information, see [Intune discovered apps](/mem/intune/apps/app-discovered-apps#monitor-discovered-apps-with-intune).

> [!NOTE]
> For personal devices, Intune never collects information on applications that are unmanaged. On corporate devices, any app, whether it's a managed app or not, is collected for this report.

### App install status report

If you need a detailed list of apps that are either installed, in the process of being installed, or have failed installation, you can use the **App Install Status** report. This report provides the **Version**, **Publisher**, and **Platform** for each app. For more information, see [App Install Status report](/mem/intune/fundamentals/reports#app-install-status-report-operational).

### App protection status report

If you've applied an app protection policy to your managed apps, you can view an app protection status report. This report is helpful if you need to check app policy compliance or users that are affected by an app protection policy. This report provides a complete set of information, such as compliance state, app version, platform version, and the last sync timestamp. For more information, see [How to monitor app protection policies](/mem/intune/apps/app-protection-policies-monitor).

### App configuration status report

By assigning app configuration policies to the members of your organization, you can help eliminate app setup problems. The settings contained in the app configuration policy are automatically applied when the app is configured on the end user's device. You can view the **App Configuration Status** in the app monitoring section of Intune. The report provides details about each app, such as user, app, app version, last sync, and policy name. For more information about troubleshooting apps, see [Reports for managed apps](/mem/intune/fundamentals/filters-reports-troubleshoot#reports-for-managed-apps).

### Devices with restricted apps report

You can include a list of restricted apps when you create a device compliance policy for [Android device administrator devices](/mem/intune/protect/compliance-policy-create-android#device-security) or [iOS devices](/mem/intune/protect/compliance-policy-create-ios#device-security). A device that has at least one app installed which is found on the restricted apps list will be marked as noncompliant. For more information, see [Devices with restricted apps report](/mem/intune/fundamentals/reports#devices-with-restricted-apps-report-operational).

### Co-managed workloads report

The **Co-Managed Workloads** report allows you to get details about apps on Windows devices managed by both Intune and Configuration Manager. Co-management is best for environments that already manage devices using Configuration Manager, and want to integrate Microsoft Intune workloads. Co-management is the act of moving workloads from Configuration Manager to Intune and telling the Windows client who the management authority is for that particular workload. For more information, see [Co-managed workloads report](/mem/intune/fundamentals/reports#co-managed-workloads-report-organizational).

## Monitor individual apps

Intune provides app reports for individually selected apps. You can determine general app status, app install status for a device, and app install status for a user.

### App status overview

The **Overview** pane for an individual app provides details about the app as it relates to a devices and user. The app pane provides two charts, **Device status** and **User status**. Both charts provide five different app states (**Installed**, **Not Installed**, **Failed**, **Install Pending**, and **Not Applicable**). For an individual app, these charts can help confirm that all looks good, or that there are issues to resolve.

### Device install status report

The **Overview** pane for an individual app also includes a link to an app report related to the device with the app. The **Devices install status** report provides  a list of devices and status information related to the specific app. App installation details related to the device includes UPN, Platform, Version, Status, Status details, and Last check-in. For more information, see [Device Install Status report for apps](/mem/intune/fundamentals/reports#device-install-status-report-for-apps-operational).

### User install status report

In addition, the **Overview** pane for an individual app includes a link to an app report related to the user of the app. The **User install status** report provides  a list of users and status information related to the specific app. App installation details related to the user includes  Name, UPN, Failures, Installs, Pending, Not Installed, and Not Applicable. For more information, see [User Install Status for apps report](/mem/intune/fundamentals/reports#user-install-status-for-apps-report-operational).

## Monitor individual devices

Intune provides app reports for individually selected devices.

### Managed apps report

The **Managed Apps** report provides a report of apps on a specific device. The state of the app includes **installed**, **not installed**, or **available for install**. The report provides additional details related to the device, include application, version, resolved intent, and installation status of the app. This report allows you to see installation and diagnostic details. For more information, see [Managed Apps report](/mem/intune/fundamentals/reports#managed-apps-report-operational).

## Next step

[:::image type="content" source="../media/assign-managed-apps/assign-managed-apps-04.png" alt-text="Step 4. Troubleshoot app deployment issues." border="false" :::](apps-assign-step-4.md)

Continue with [Step 3](apps-assign-step-4.md) to troubleshoot app deployment issues using Microsoft Intune.