---
title: "Step 7. Verify app configuration"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: how-to
ms.date: 04/21/2025
description: Step 7. Verify app configuration.
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
- **Microsoft Entra Device ID**: The Microsoft Entra device ID is displayed if the device is Microsoft Entra joined.
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

> [!NOTE]
> The **Last Sync** column represents the same value in the in-console **User status report**, the **App Protection Policy** [exportable .csv report](/mem/intune/apps/app-protection-policies-monitor), and the **App Configuration Report**. The difference is a small delay in synchronization between the value in the reports.

## Understand app configuration diagnostic logs

You can validate configuration by using the **Intune Diagnostic Log** for settings deployed through the managed app configuration policies. See the following resources related to app configuration logs:

- [iOS/iPadOS configuration on unmanaged devices](/mem/intune/apps/app-configuration-policies-overview?branch=main#iosipados-configuration-on-unmanaged-devices)
- [iOS/iPadOS configuration on managed devices](/mem/intune/apps/app-configuration-policies-overview?branch=main#iosipados-configuration-on-managed-devices)
- [Android configuration on managed devices](/mem/intune/apps/app-configuration-policies-overview?branch=main#android-configuration-on-managed-devices)

## Monitor app configuration status for managed devices

Once a configuration policy has been assigned, you can monitor app configuration status for each *managed* device. In the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), select **Devices** > **All devices**. From the list of managed devices, select a specific device to display a pane for the device. On the device pane, select **App configuration**.  

## Troubleshoot app configuration

Before you start troubleshooting app configuration, collect some basic information to help you better understand the problem and reduce the time to find a resolution.

Collect background information by answering the following questions:

- Which policy setting is or isn't being applied? Is any app config policy being applied at all?
- What is the version or build release of the targeted application? Is it the most current in the mobile store?
- Did app configuration settings work on previous application releases, but started breaking on this new release?
- What application is targeted in the app config settings? Is this a public store application or custom LOB?
- How many users/applications are affected? Are all or only subset (only 10 out of 100 affected)? 
- What platform or device types are impacted (Android or iOS)?
- Have you reviewed the application publishers documentation around supported application configuration settings for the specific app (publishers may change settings from time to time for a number of reasons)? 
- What communication channel was used to deploy your App Config settings (Managed Devices or Managed Apps)?

### Recommended investigation flow

Successfully applying app configuration settings for mobile apps relies on adding proper settings based on guidance from the publisher (developer) of the mobile app. Also, success also relies on the related [delivery channel](/microsoft-365/solutions/apps-config-overview#delivery-channels-for-app-configuration-policies) dependencies used when deploying app configuration settings. See the steps below for more information.

#### Step 1: Verify prerequisites for deploying app configuration settings

App configuration can be delivered either through the mobile device management (MDM) OS channel on enrolled devices (Managed App Configuration channel for iOS or the Android in the Enterprise channel for Android) or through the Mobile Application Management (MAM) channel.

Confirm your app configuration channel you selected for the app configuration policy:

- Both communication channels or methods require that the user must be assigned an Intune license. 
- User, app, and device must meet the requirements under related app configuration policy channel.
  - For managed devices, the device must be properly enrolled in Intune MDM with a healthy enrollment profile and has synced with the service recently.
  - For managed apps, the app must support the Intune SDK and any related app protection policy must be applied correctly.  

#### Step 2: Check status of your app config policy when using the Managed Devices channel

When the device is MDM enrolled, you can use the **Troubleshooting + support** > **Troubleshoot** dashboard in Intune to help review a specific user and device details. You can find and select a user by entering a display name or email. You can then select policy from the tab options. Once selected, you can review the list of currently assigned policies for that user to validate the intended app config policy is assigned. Additionally, you can select the assigned app config policy for review.

#### Step 3: Check status of your app config policy when using Managed Apps channel

Similar to the previous step used for reviewing a policy, using the **Managed Devices** channel, use the **Troubleshooting** dashboard to validate the specific user is targeted with the intended app config policy. However, app config policies using the **Managed Apps** channel currently doesn't have a monitoring feature. 

#### Step 4: Collect device data

Since the **Managed Devices** channel uses the MDM agent, the related app config policy would be incorporated with other device policies. Thus, we have no manual method to collect app config logs under **Managed Devices**. However, when using **Managed Apps** as the configuration channel, you can review the `IntuneMAMDiagnostics.txt` file just as you would for App Protection Policies. 

For related information, see [Troubleshooting Intune app protection policy using log files on local devices](https://techcommunity.microsoft.com/t5/intune-customer-success/support-tip-troubleshooting-intune-app-protection-policy-using/ba-p/330372).   

### Additional troubleshooting scenarios

#### Scenario 1

When checking the status of your app config policy when using the **Managed Devices** channel, if the status reports are **Not Applicable**, do the following action:

- Review your configuration to confirm the targeted app is the app associated with your Application Configuration Policy. For example, if you select an iOS app from Apple Volume Purchase Program, that VPP managed app must be installed on the MDM enrolled device. The public store app would have a different ID than the VPP app used in targeting. Confirm the user or device has installed the MDM managed app you targeted. This could be deployed as required via MDM or available to be installed from the Company Portal or Managed Play Store on Android.

#### Scenario 2

When some of your app config settings are applying to the app correctly, but others aren't, do the following action:

- Review and compare the publisher's documentation defining needed configuration string or values versus the string or values you have set in your configuration. The app publishers change publicly documented settings from time to time based on OS updates and other dynamics. Also, make sure your users have the most current version of the store app installed to include fixes and security updates.  

#### Scenario 3

None of your app config policy settings are applying correctly to the app based on the communication channel used (**Managed Apps** or **Managed Devices**), do the following action:

- Review the publishers documentation again for the string or settings used. You may want to try using the other option for device enrollment type of the policy. For example, Edge Managed NTLM policy settings can only apply in user context. So, this means only managed apps can be used to allow Managed NTLM single sign-on sites.  

For more troubleshooting information, see the following resources:

- [App configuration policies for Microsoft Intune](/mem/intune/apps/app-configuration-policies-overview)
- [Troubleshooting app protection policy user issues](/troubleshoot/mem/intune/app-protection-policies/troubleshoot-mam)
- [Frequently asked questions about MAM and app protection](/mem/intune/apps/mam-faq)

## After configuring apps in Intune

Once you have reviewed and completed the steps provided in this solution, you're ready to configure, protect, assign, and monitor the managed apps your organization uses.

For more information about how to proceed, see the following articles:

- [App configuration policies for Microsoft Intune](/mem/intune/apps/app-configuration-policies-overview)
- [App protection policies overview](/mem/intune/apps/app-protection-policy)
- [Data protection framework using app protection policies](/mem/intune/apps/app-protection-framework)
- [Assign apps to groups with Microsoft Intune](/mem/intune/apps/apps-deploy)
- [Monitor app information and assignments with Microsoft Intune](/mem/intune/apps/apps-monitor)
