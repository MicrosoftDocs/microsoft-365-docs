---
title: Manage shared devices for frontline workers
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: aaglick
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
ms.localizationpriority: high
search.appverid: MET150
description: Get an overview of managing mobile shared devices for frontline workers in your organization. 
ms.collection: 
  - m365-frontline
  - highpri
  - essentials-manage
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 
---

# Manage shared devices for frontline workers

## Overview

Many frontline workers use shared mobile devices to do work. Shared devices are company-owned devices that are shared between employees across tasks, shifts, or locations.

Here’s an example of a typical scenario. An organization has a pool of devices in charging cradles to be shared across all employees. At the start of a shift, an employee picks up a device from the pool, and signs in to Microsoft Teams and other business apps essential to their role. At the end of their shift, they sign out and return the device to the pool. Even within the same shift, a worker might return a device when they finish a task or clock out for lunch, and then pick up a different one when they clock back in.

Shared devices present unique security challenges. For example, employees might have access to company or customer data that shouldn’t be available to others on the same device. Organizations deploying shared devices need controls to prevent unauthorized or unintended access to apps and data when devices are handed off between employees.

Use the guidance and considerations in this article to help you plan and manage your frontline shared devices deployment.

## Mobile device management

Microsoft Intune natively supports features important for deploying shared devices to frontline workers. These capabilities include:

- **Zero-touch provisioning:** Admins can enroll and preconfigure mobile devices without physical custody of the devices (for manual configuration). This capability is useful when deploying shared devices at scale to field locations. Devices can be shipped directly to frontline locations, where automated configuration and provisioning steps can be completed remotely.
- **Microsoft Entra Conditional Access:** Admins can implement automated access control decisions for cloud-based apps and resources through identity-driven signals. For example, prevent access by a shared or bring-your-own-device (BYOD) device that doesn’t have the latest security updates installed. [Learn more about how to secure your deployment](flw-setup-microsoft-365.md#step-6-configure-security).

If you’re using a third-party mobile device management (MDM) solution for your shared devices deployment, such as VMware Workspace ONE or SOTI MobiControl, it’s important to understand the associated capabilities, limitations, and available workarounds.

- Some third-party MDMs can clear app data when a global sign out occurs on an Android device. However, app data clearing can miss data stored in a shared location, delete app settings, or cause first-run experiences to reappear. Android devices enrolled in [shared device mode](#shared-device-mode) can selectively clear the necessary app data during device check-in or when a new user signs in to the device.

- You can [manually configure shared device mode](/entra/identity-platform/tutorial-v2-shared-device-mode#set-up-an-android-device-in-shared-mode) in third-party MDM solutions for Android devices. However, manual configuration steps don’t mark the device compliant in Microsoft Entra ID, which means Conditional Access isn’t supported in this scenario. If you choose to manually configure devices in shared device mode, you need to take additional steps to re-enroll Android devices in shared device mode with zero-touch provisioning to get Conditional Access support when third-party MDM support is available by uninstalling and reinstalling the Microsoft Authenticator app from the device.

A device can only be enrolled in one MDM solution, but you can use multiple MDM solutions to manage separate pools of devices. For example, you could use VMware Workspace ONE or SOTI MobiControl for shared devices and Intune for BYOD. If you use multiple MDM solutions, keep in mind that some users might not be able to access shared devices because of a mismatch in Conditional Access policies or mobile application management (MAM) policies.

|MDM solution |Zero touch provisioning|Microsoft Entra Conditional Access|
|-------------|---------------|-----------------------|
|Microsoft Intune |Supported for Android and iOS devices enrolled in shared device mode. |Supported for Android and iOS devices enrolled in shared device mode.|
|VMware Workspace ONE |Supported for Android. Currently unavailable for iOS. |Supported for Android and iOS devices enrolled in shared device mode. Currently unavailable for iOS.|
|SOTI MobiControl|Supported for Android. Currently unavailable for iOS.|Supported for Android and iOS devices enrolled in shared device mode. Currently unavailable for iOS.|
|JAMF (iOS only)|Currently not supported. |Currently unavailable for iOS. |

Windows devices enrolled in Intune support single sign out, zero touch provisioning, and Conditional Access. You don’t need to configure shared device mode on Windows devices.

## Shared device mode

[Shared device mode](/entra/identity-platform/msal-shared-devices) is a Microsoft Entra ID feature that allows organizations to configure an iOS, iPadOS, or Android device so that it can be easily shared by multiple employees, which is common in the frontline worker space. Employees can sign in once and get access to their data across all supported apps without having access to other employees’ data. When they're finished with their shift or task, they sign out once and get signed out of the device and all supported apps, making the device ready for the next employee to use.

### Why shared device mode?

Because mobile devices running Android, iOS, or iPadOS, were designed for single users, most apps optimize their experience for use by a single user. Part of this optimized experience means enabling single sign-on (SSO) across apps and keeping users signed in on their devices. When a user removes their account from an app, the app typically doesn't consider it a security-related event. Many apps even keep a user's credentials around for quick sign in. You might have even experienced this yourself when you deleted an app from your mobile device and then reinstalled it, only to discover you're still signed in.

To allow an organization's employees to use its apps across a pool of devices shared by those employees, developers need to enable the opposite experience. Employees should be able to pick a device from the pool and perform a single gesture (sign-in) to "make it theirs" during their shift. At the end of their shift, they should be able to perform another gesture to sign out globally on the device, with all their personal and company information removed so they can return it to the device pool and prevent other users from seeing their information.

To enable these scenarios, Microsoft Entra ID introduced the shared device mode feature.

### Key benefits of enabling shared device mode on devices

- **Single sign-on**: Allow users to sign in to one app that supports shared device mode once and gain seamless authentication into all other apps that support shared device mode without having to reenter credentials. Exempt users from first-run experience screens on shared devices.
- **Single sign-out**: Allow users an easy way to sign out from a device without needing to sign out individually from each app that supports shared device mode. Provide users’ assurances that their data isn't inappropriately shown to subsequent users, given that the apps ensure cleaning up of any cached user data and app protection policies are applied.
- **Support for enforcing security requirements using Conditional Access policies**: Provides admins with the ability to target specific Conditional Access policies on shared devices, ensuring that employees only have access to company data when their shared device meets internal compliance standards.

> [!NOTE]
> Shared device mode isn’t a full data loss prevention solution. Shared device mode should be used in conjunction with MAM policies to ensure that data doesn’t leak to areas of the device that aren’t leveraging shared device mode (for example, local file storage).

#### Supported scenarios

- User signs in to an app that supports shared device mode (line of business app, third-party app launcher, or Microsoft app) on an Android or iOS/iPadOS device using their Microsoft Entra ID credentials and is automatically signed in to all apps that support shared device mode on the device.
- User signs out from an app that supports shared device mode (line of business app, third-party app launcher, or Microsoft app) on an Android or iOS/iPadOS device and is signed out from all apps that support shared device mode on the device.
- If an admin set up a Conditional Access policy with the grant control that requires devices to be enrolled in an MDM solution and compliant, the user can sign in to a shared device mode-enabled app only if the device is compliant.

#### Unsupported scenarios

- User signs in to an app on the device that doesn’t support shared device mode. In this scenario, they don’t get single sign-on and single sign-out benefits.

### Prerequisites

To use shared device mode, the following prerequisites must be met.

- The device must have Microsoft Authenticator installed.
- The device must be enrolled in shared device mode in your MDM solution.
- All apps that need these benefits must integrate with the shared device mode APIs in the [Microsoft Authentication Library (MSAL)](/entra/identity-platform/msal-overview).

Things to consider:

- MAM policies are required to prevent data from moving from shared device mode-enabled apps to non-shared device mode-enabled apps.
- Some Microsoft apps don’t currently support shared device mode. See the list of [Microsoft apps that support shared device mode on Android](/entra/identity-platform/msal-android-shared-devices#microsoft-applications-that-support-shared-device-mode) and [Microsoft apps that support shared device mode on iOS](/entra/msal/objc/shared-devices-ios#microsoft-applications-that-support-shared-device-mode).
If the app you need lacks shared device mode integration, consider running a web-based version of your app in either Teams or Microsoft Edge to get the benefits of shared device mode.

### For developers creating apps for shared device mode

If you're a developer, see the following resources for more information about how to integrate your app with shared device mode:

- [Shared device mode for Android devices](/azure/active-directory/develop/msal-android-shared-devices)
- [Shared device mode for iOS devices](/azure/active-directory/develop/msal-ios-shared-devices)

## Shared device mode with Intune

**Enroll iOS devices into shared device mode**

To learn more about enrolling iOS devices into shared device mode in Intune, see [Set up enrollment for devices in shared device mode](/mem/intune/enrollment/automated-device-enrollment-shared-device-mode).

**Enroll Android devices into shared device mode**

To manage and enroll Android devices into shared device mode using Intune, devices must be running Android OS version 8.0 or later, and have Google Mobile Services (GMS) connectivity. To learn more, see:

- [Set up Intune enrollment for Android Enterprise dedicated devices](/mem/intune/enrollment/android-kiosk-enroll)
- [Enroll Android Enterprise dedicated devices into Microsoft Entra shared device mode](https://techcommunity.microsoft.com/t5/intune-customer-success/enroll-android-enterprise-dedicated-devices-into-azure-ad-shared/ba-p/1820093)

You can also choose to deploy the Microsoft Managed Home Screen app to tailor the experience for users on their Intune-enrolled Android dedicated devices. Managed Home Screen acts as a launcher for other approved apps to run on top of it, and lets you customize devices and restrict what employees can access. For example, you can define how apps appear on the home screen, add your company logo, set custom wallpaper, and allow employees to set a session PIN. You can even configure sign out to happen automatically after a specified period of inactivity. To learn more, see:

- [Configure the Microsoft Managed Home Screen app for Android Enterprise](/mem/intune/apps/app-configuration-managed-home-screen-app)
- [How to set up Microsoft Managed Home Screen on dedicated devices in multi-app kiosk mode](https://techcommunity.microsoft.com/t5/intune-customer-success/how-to-setup-microsoft-managed-home-screen-on-dedicated-devices/ba-p/1388060)

<!--For an overview of frontline device management in Intune, see [Get started with frontline worker device management](/mem/solutions/frontline-worker/frontline-worker-overview).-->

## Shared device mode with third-party MDM solutions and/or app launchers

Shared device mode is supported on some common third-party MDM and app launcher solutions. The following tables summarize support for shared device mode today.

**MDM solutions**

|MDM solution  |Supports shared device mode on Android |Supports shared device mode on iOS |
|---------|---------|---------|
|Microsoft Intune | Yes | Yes |
|VMware Workspace ONE | Yes | No |
|SOTI MobiControl     | Yes | No|
|JAMF    |  N/A |  [In preview](https://www.jamf.com/blog/jamf-microsoft-identity-management-shared-device-mode/)|

**App launchers**

|App launcher |Supports global sign in and sign out of shared device mode-enabled apps on Android |
|---------|---------|
|Microsoft Managed Home Screen |  Yes |
|VMware Workspace ONE Launcher |  No  |
|SOTI | Yes  |
|BlueFetch | Yes |

## What options do I have if my MDM solution or app launcher doesn't support shared device mode?

**Sign in**: If your app launcher doesn’t support global sign-in to shared device mode-enabled apps, the user must first sign in to the launcher and then sign in to Teams. To reduce the friction of the second sign in for Teams, consider using [domain-less sign-in](/microsoftteams/sign-in-teams?bc=%2Fmicrosoft-365%2Ffrontline%2Fbreadcrumb%2Ftoc.json&toc=%2Fmicrosoft-365%2Ffrontline%2Ftoc.json#simplify-the-sign-in-experience-with-domain-less-sign-in). With domain-less sign in, users only need to enter the first part of their user principal name (UPN) to sign in, along with their password.

**Sign out**: If your app launcher doesn’t support global sign-out for shared device mode-enabled apps, consider one of the following options, depending on your scenario:

- No broker app exists on the shard device. If the Authenticator app or Company Portal app isn't present on the device, you can use your MDM app data cleanup policies to clean app data between users. Most MDMs offer this feature to clean app data upon a launcher sign-out trigger.
- A broker app exists on the shared device. [PLACEHOLDER]

## What if I'm not using an app launcher?

[PLACEHOLDER]

## Authentication on shared devices

### Multifactor authentication

<!--Multifactor authentication is a process in which a user is prompted for an additional form of identification during sign in. For example, the prompt could be to enter a code or provide a fingerprint scan.-->

Microsoft Entra multifactor authentication (MFA) supports several forms of verification methods, including the Microsoft Authenticator app, FIDO2 keys, SMS, and voice calls. To learn more, see [How it works: Microsoft Entra multifactor authentication](/entra/identity/authentication/concept-mfa-howitworks).

Due to higher cost and legal restrictions, the most secure authentication methods might not be practical for many organizations. For example, FIDO2 security keys are typically considered too expensive, biometric tools like Windows Hello might run against existing regulations or union rules, and SMS sign in might not be possible if frontline workers aren’t permitted to bring their personal devices to work.

MFA provides a high level of security for apps and data but adds ongoing friction to user sign in. It's highly recommended that business and technical teams validate the user experience with MFA before a broad rollout so that the user impact can be properly considered in change management and readiness efforts.

If MFA isn't feasible for your organization, plan to use robust Conditional Access policies to reduce security risk. Some common Conditional Access policies to apply in scenarios when MFA isn't used on shared devices include:

- Device compliance
-	Trusted network locations
- Device is managed

### Passwordless authentication

To further simplify access for your frontline workforce, you can use passwordless authentication methods so that workers don’t need to remember or enter their passwords. Passwordless authentication methods are also typically more secure, and many can satisfy MFA requirements if necessary.

Before proceeding with a passwordless authentication method, determine whether it can work in your existing environment. Considerations like cost, OS support, personal device requirement, and MFA support, can affect whether an authentication method would work for your needs. For example, FIDO2 security keys are currently considered too expensive, and SMS and Authenticator sign in might not be possible if frontline workers aren’t permitted to bring their personal devices to work.

See the following table to assess passwordless authentication methods for your frontline scenario.

|Method|OS support|Requires personal device|Supports MFA|
|------|----------|----------|----------|
|Microsoft Authenticator |All |Yes |Yes |
|SMS sign in |Android and iOS |Yes |No |
|Windows Hello |Windows |No |Yes |
|FIDO2 key |Windows |No |Yes |

To learn more, see [Passwordless authentication options for Microsoft Entra ID](/entra/identity/authentication/concept-authentication-passwordless) and [Configure and enable users for SMS-based authentication using Microsoft Entra ID](/entra/identity/authentication/howto-authentication-sms-signin).

If you’re deploying shared devices and the previous passwordless options aren’t feasible, you can opt to disable strong password requirements so that users can provide simpler passwords to sign in to managed devices. If you choose to disable strong password requirements,  consider adding these strategies to your implementation plan.

- Only disable strong password requirements for users of shared devices.
- Create a Conditional Access policy that prevents these users from signing in to nonshared devices on nontrusted networks.

### Domain-less sign in

You can simplify the sign-in experience on Teams for iOS and Android by prefilling the domain name on the sign-in screen for users on shared and managed devices. 

Users sign in by entering only the first part of their user principal name (UPN). For example, if the username is 123456@contoso.com or adelev@contoso.com, users can sign in by using only "123456" or "adelev", respectively, and their password. Signing in to Teams is faster and easier, especially for frontline workers on shared devices, who sign in and out regularly

You can also enable domain-less sign in for your custom LOB apps.

Learn more about [domain-less sign-in](/microsoftteams/sign-in-teams?bc=%2Fmicrosoft-365%2Ffrontline%2Fbreadcrumb%2Ftoc.json&toc=%2Fmicrosoft-365%2Ffrontline%2Ftoc.json&view=o365-worldwide#enable-domain-less-sign-in-for-your-custom-apps).

## Authorization on shared devices

### Conditional Access

With [Conditional Access](/entra/identity/conditional-access/overview), you can create rules that limit access based on identity-driven signals that include:

- User or group membership
- IP location information
- Device (only available if the device is enrolled in Microsoft Entra ID)
- App
- Real-time and calculated risk detection

Conditional Access policies can be used to block access when a user is on a noncompliant device or while they’re on an untrusted network. For example, you might want to use Conditional Access to prevent users from accessing an inventory app when they aren’t on the work network or are using an unmanaged device, depending on your organization’s analysis of applicable laws.

Conditional Access is supported for:

- Shared Windows devices managed in Intune.
- Shared Android and iOS devices enrolled in shared device mode with zero-touch provisioning.

Conditional Access isn't supported for:

- Devices manually configured with shared device mode, including Android and iOS devices managed with third-party MDM solutions.
- iPad devices that use Shared iPad for Business.

### App protection policies

With mobile application management (MAM) from Intune, you can use app protection policies with apps that are integrated with the Intune [App SDK](/mem/intune/developer/app-sdk-get-started). This allows you to further protect your organization’s data within an app.

With app protection policies, you can add access control safeguards, such as:

- Control the sharing of data between apps.
- Prevent the saving of company app data to a personal storage location.
- Ensure the device’s operating system is up to date.

You can also use app protection policies to ensure that data doesn’t leak to apps that don’t support shared device mode. To prevent data loss, the following app protection policies must be enabled on shared devices:

- Disable copy/paste to non-shared device mode enabled apps.
- Disable local file saving.
- Disable data transfer capabilities to non-shared device mode enabled apps.

## App management

Your deployment plan should include an inventory and assessment of the apps that frontline workers need to do their jobs. This section covers considerations and necessary steps to ensure users have access to required apps and that the experience is optimized in your frontline implementation.

For the purposes of this assessment, apps are categorized in three groups:

- **Microsoft apps** are built and supported by Microsoft. Microsoft apps support Microsoft Entra ID and integrate with the Intune App SDK. However, not all Microsoft apps support shared device mode.
- **Third-party apps** are built and sold commercially by a third-party provider. Some apps don’t support Microsoft Entra ID, the Intune App SDK, or shared device mode. Work with the app provider and your Microsoft account team to confirm what the user experience will be.
- **Custom line-of-business apps** are developed by your organization to address internal business needs. If you build apps using Power Apps, your app is automatically  enabled with Microsoft Entra ID, Intune, and shared device mode.

The apps that frontline workers access must meet these requirements (as applicable) for global single-in and single sign out to be enabled.

- **Integrate custom and third-party apps with [MSAL](/entra/identity-platform/msal-overview):** Users can authenticate to your apps using Microsoft Entra ID, enable SSO, and Conditional Access policies can be applied.
- **Integrate apps with shared device mode (applies only to Android or iOS shared devices):** Apps can use the necessary shared device mode APIs in MSAL to perform automatic single sign-on and single sign out. Appropriately using these APIs allows you to integrate with shared device mode. This isn’t necessary if you’re running your app in Teams, Microsoft Edge, or Power Apps.
- **Integrate with the Intune App SDK (applies only to Android or iOS shared devices):** Apps can be managed in Intune to prevent unintended or unauthorized data exposure. This isn’t necessary if your MDM solution performs app data clears that wipe any sensitive data during device check-in flows (single sign out).

After you validate your apps, deploy them to managed devices using your MDM solution. This allows you to preinstall all the necessary apps during device enrollment so your frontline workers have everything they need on day one.

### Automatically grant consent to apps to access device features

On a shared device, it’s important to remove unnecessary screens that could pop up when a user accesses an app the first time. This can include prompts to grant the app permission to use device features, such as the microphone or camera, or access to location. You can use [app configuration policies in Intune](/mem/intune/apps/app-configuration-policies-use-android#preconfigure-the-permissions-grant-state-for-apps) on shared devices to preconfigure app permissions to access device features.

If you're using a third-party MDM solution, check the documentation for options available to automatically grant consent to apps to access device features.


<!--### Enroll Android and iOS personal devices

In addition to your company-owned devices, you can [enroll](/mem/intune/enrollment/device-enrollment) users' personally owned devices into management in Intune. For BYOD enrollment, you add device users in the Microsoft Intune admin center, configure their enrollment experience, and set up Intune policies. Users complete enrollment themselves in the Intune Company Portal app that's installed on their device.

In some cases, users may be reluctant to enroll their personal devices into management. If device enrollment isn't an option, you can choose a mobile application management (MAM) approach and use [app protection policies](/mem/intune/apps/app-protection-policies) to manage apps that contain corporate data. For example, you can apply app protection policies to Teams and Office mobile apps to prevent company data from being copied to personal apps on the device.

To learn more, see ["Personal devices vs Organization-owned devices" in the Intune planning guide](/mem/intune/fundamentals/intune-planning-guide#personal-devices-vs-organization-owned-devices) and [Deployment guidance: Enroll devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-enrollment).

## Authentication

Authentication features control who or what uses an account to gain access to applications, data, and resources. Organizations deploying shared devices to frontline workers need authentication controls that don’t impede worker productivity while preventing unauthorized or unintended access to applications and data when devices are transferred between authenticated users.

Microsoft’s frontline solution is delivered from the cloud and utilizes Microsoft Entra ID as the underlying identity service for securing Microsoft 365 applications and resources. These authentication features in Microsoft Entra ID address the unique considerations for shared devices deployments: automatic single sign-on, single sign out, and other strong authentication methods.

### Shared device mode

[Shared device mode](/azure/active-directory/develop/msal-shared-devices) is a feature of Microsoft Entra ID that enables you to configure devices to be shared by employees. This feature enables single sign-on (SSO) and device-wide sign out for Microsoft Teams and all other apps that support shared device mode. You can integrate this capability into your line-of-business (LOB) apps using the Microsoft Authentication Library (MSAL). Once a device is in shared device mode, applications that leverage Microsoft Authentication Library (MSAL) can detect that they’re running on a shared device and determine who the current active user is. With this information, applications can accomplish these authentication controls:

- **Automatic single sign-on:** If a user has already signed into another MSAL application, the user will be logged into any application compatible with Shared Device Mode. This is an improvement to the previous single sign-on experience because it further reduces the time it takes to access applications after signing into the first application by removing the need for a user to select a previously signed in account.
- **Single sign-out:** Once a user signs out of an app using MSAL, all other applications integrated with shared device mode can stop background processes and commence sign out data clearing processes to prevent unauthorized or unintended access by the next user.

Here's how shared device mode works, using Teams as an example. When an employee signs in to Teams at the start of their shift, they’re automatically signed in to all other apps that support shared device mode on the device. At the end of their shift, when they sign out of Teams, they're signed out globally from all other apps that support shared device mode. After sign out, the employee's data and company data in Teams (including apps hosted within it) and in all other apps that support shared device mode can no longer be accessed. The device is ready for the next employee and can be safely handed off.

Shared device mode is an improvement to the app data clear functionality for Android because it allows application developers to selectively clear personal user data without impacting app settings or cached data. With shared device mode, the flags that allow an application to remember if a first run experience is shown aren't deleted so users don’t see a first run experience every time they sign-on.

Shared device mode also allows a device to be enrolled into Microsoft Entra ID once for all users so that you can easily create profiles that secure app and data usage on the shared device. This allows you to support conditional access without having to re-enroll the device every time a new user authenticates into the device.

You use a mobile device management (MDM) solution like Microsoft Intune or Microsoft Configuration Manager to prepare a device to be shared by installing the [Microsoft Authenticator app](https://support.microsoft.com/account-billing/how-to-use-the-microsoft-authenticator-app-9783c865-0308-42fb-a519-8cf666fe0acc) and turning on shared mode. Teams and all other apps that support shared device mode use the shared mode setting to manage users on the device. The MDM solution you use should also perform a device cleanup when sign out occurs.

> [!NOTE]
> Shared device mode isn’t a full data loss prevention solution. Shared device mode should be used in conjunction with Microsoft Application Manager (MAM) policies to ensure that data doesn’t leak to areas of the device that aren’t leveraging shared device mode (e.g., local file storage).

#### Prerequisites and considerations

You’ll need to meet the following prerequisites to use shared device mode.

- The device must first have Microsoft Authenticator installed.
- The device must be enrolled in shared device mode.
- All the applications that need these benefits need to integrate with the shared device mode APIs in MSAL.

MAM policies are required to prevent data from moving from shared device mode enabled applications to non-shared device mode enabled applications.

Currently, zero-touch provisioning of shared device mode is only available with Intune. If you’re using a third-party MDM solution, devices must be enrolled in shared device mode using the [manual configuration steps](/azure/active-directory/develop/tutorial-v2-shared-device-mode#set-up-an-android-device-in-shared-mode).

> [!NOTE]
> Conditional access isn’t fully supported for devices that are configured manually.

Some Microsoft 365 applications don’t currently support shared device mode. The table below summarizes what is available. If the application you need lacks shared device mode integration, it’s recommended that you run a web-based version of your application in either Microsoft Teams or Microsoft Edge to get the benefits of shared device mode.

Shared device mode is currently supported on Android devices. Here's some resources to help you get started.

#### Enroll Android devices into shared device mode

To manage and enroll Android devices into shared device mode using Intune, devices must be running Android OS version 8.0 or later, and have Google Mobile Services (GMS) connectivity. To learn more, see:

- [Set up Intune enrollment for Android Enterprise dedicated devices](/mem/intune/enrollment/android-kiosk-enroll)
- [Enroll Android Enterprise dedicated devices into Microsoft Entra shared device mode](https://techcommunity.microsoft.com/t5/intune-customer-success/enroll-android-enterprise-dedicated-devices-into-azure-ad-shared/ba-p/1820093)

You can also choose to deploy the Microsoft Managed Home Screen app to tailor the experience for users on their Intune-enrolled Android dedicated devices. Managed Home Screen acts as a launcher for other approved apps to run on top of it, and lets you customize devices and restrict what employees can access. For example, you can define how apps appear on the home screen, add your company logo, set custom wallpaper, and allow employees to set a session PIN. You can even configure sign out to happen automatically after a specified period of inactivity.  To learn more, see:

- [Configure the Microsoft Managed Home Screen app for Android Enterprise](/mem/intune/apps/app-configuration-managed-home-screen-app)
- [How to set up Microsoft Managed Home Screen on dedicated devices in multi-app kiosk mode](https://techcommunity.microsoft.com/t5/intune-customer-success/how-to-setup-microsoft-managed-home-screen-on-dedicated-devices/ba-p/1388060)

#### For developers creating apps for shared device mode

If you're a developer, see the following resources for more information about how to integrate your app with shared device mode:

- [Shared device mode for Android devices](/azure/active-directory/develop/msal-android-shared-devices)
- [Shared device mode for iOS devices](/azure/active-directory/develop/msal-ios-shared-devices)

### Multifactor authentication

Microsoft Entra ID supports several forms of multifactor authentication with the Authenticator app, FIDO2 keys, SMS, voice calls, and more.

Due to higher cost and legal restrictions, the most secure authentication methods may not be practical for many organizations. For example, FIDO2 security keys are typically considered too expensive, biometric tools like Windows Hello may run against existing regulations or union rules, and SMS sign in may not be possible if frontline workers aren’t permitted to bring their personal devices to work.

multifactor authentication provides a high level of security for applications and data but adds ongoing friction to user sign-on. For organizations that choose BYOD deployments, multifactor authentication may or may not be a practical option. It's highly recommended that business and technical teams validate the user experience with multifactor authentication before broad rollout so that the user impact can be properly considered in change management and readiness efforts.

If multifactor authentication isn't feasible for your organization or deployment model, you should plan to leverage robust conditional access policies to reduce security risk.

#### Passwordless authentication

To further simplify access for your frontline workforce, you can leverage passwordless authentication methods so that workers don’t need to remember or type in their passwords. Passwordless authentication methods are also typically more secure, and many can satisfy MFA requirements if necessary.

Before proceeding with a passwordless authentication method, you’ll need to determine if it can work in your existing environment. Considerations like cost, OS support, personal device requirement, and MFA support can impact whether an authentication method would work for your needs. For example, FIDO2 security keys are currently considered too expensive, and SMS and Authenticator sign in may not be possible if frontline workers aren't permitted to bring their personal devices to work.

Refer to the table to assess passwordless authentication methods for your frontline scenario.

|Method|OS support|Requires personal device|Supports multifactor authentication |
|------|----------|------------------------|-------------------------------------|
|SMS sign in |Android and iOS |Yes |No |
|Windows Hello |Windows |No |Yes |
|Microsoft Authenticator |All |Yes |Yes |
|FIDO2 Key |Windows |No |Yes |

If you're deploying with shared devices and the previous passwordless options aren't feasible, you can opt to disable strong password requirements so that users can provide simpler passwords while logging into managed devices. If you choose to disable strong password requirements, you should consider adding these strategies to your implementation plan.

- Only disable strong password requirements for users of shared devices.
- Create a conditional access policy that prevents these users from logging into non-shared devices on non-trusted networks.

## Authorization

Authorization features control what an authenticated user can do or access. In Microsoft 365, this is achieved through a combination of Microsoft Entra Conditional Access policies and application protection policies.

Implementing robust authorization controls is a critical component of securing a frontline shared devices deployment, particularly if it isn't possible to implement strong authentication methods like multifactor authentication (MFA) for cost or practicality reasons.

<a name='azure-ad-conditional-access'></a>

### Microsoft Entra Conditional Access

With conditional access, you can create rules that limit access based on the following signals:

- User or group membership
- IP location information
- Device (only available if the device is enrolled in Microsoft Entra ID)
- Application
- Real-time and calculated risk detection

Conditional access policies can be used to block access when a user is on a non-compliant device or while they’re on an untrusted network. For example, you may want to use conditional access to prevent users from accessing an inventory application when they aren’t on the work network or are using an unmanaged device, depending on your organization’s analysis of applicable laws.

For BYOD scenarios where it makes sense to access data outside of work, such as HR-related information or non-business-related applications, you may choose to implement more permissive conditional access policies alongside strong authentication methods like multifactor authentication.

Conditional access is supported for:

- Shared Windows devices managed in Intune.
- Shared Android and iOS devices enrolled in shared device mode with zero-touch provisioning.
- BYOD for Windows, Android, and iOS managed with Intune or third-party MDM solutions.

Conditional access **not** supported for:

- Devices manually configured with shared device mode, including Android and iOS devices managed with third-party MDM solutions.
- iPad devices that use Shared iPad for Business.

> [!NOTE]
> Conditional access for Android devices managed with select third-party MDM solutions is coming soon.

For more information on conditional access, see the [Microsoft Entra Conditional Access documentation](/azure/active-directory/conditional-access/).

### App protection policies

With MAM from Intune, you can use app protection policies (APP) with applications that have integrated with Intune’s [APP SDK](/mem/intune/developer/app-sdk-get-started). This allows you to further protect your organization's data within an application.

With app protection policies you can add access control safeguards, such as:

- Require a PIN to open an app in a work context.
- Control the sharing of data between applications
- Prevent the saving of company app data to a personal storage location
- Ensure the device’s operating system is up to date

You can also use APPs to ensure that data doesn’t leak to applications that don't support shared device mode. To prevent data loss, the following APPs must be enabled on shared devices:

- Disable copy/paste to non-shared device mode enabled applications.
- Disable local file saving.
- Disable data transfer capabilities to non-shared device mode enabled applications.

APPs are helpful in BYOD scenarios because they allow you to protect your data at the app level without having to manage the entire device. This is important in scenarios where employees may have a device managed by another tenant (for example, a university or another employer) and can't be managed by another company.

## Application management

Your deployment plan should include an inventory and assessment of the applications that frontline workers will need to do their jobs. This section covers considerations and necessary steps to ensure that users have access to required applications and that the experience is optimized in the context of your frontline implementation.

For the purposes of this assessment, applications are categorized in three groups:

- **Microsoft applications** are built and supported by Microsoft. Microsoft applications support Microsoft Entra ID and integrate with Intune’s APP SDK. However, not all Microsoft applications are supported with shared device mode. [See a list of supported applications and availability.](authentication bookmark)
- **Third-party applications** are built and sold commercially by a third-party provider. Some applications don’t support Microsoft Entra ID, Intune’s APP SDK, or shared device mode. Work with the application provider and your Microsoft account team to confirm what the user experience will be.
- **Custom line-of-business applications** are developed by your organization to address internal business needs. If you build applications using Power Apps, your app will automatically be enabled with Microsoft Entra ID, Intune, and shared device mode.

The applications that frontline users access meet these requirements (as applicable) for global single-in and single sign out to be enabled.

- **Integrate custom and third-party applications with [MSAL](/azure/active-directory/develop/msal-overview):** Users can authenticate into your applications using Microsoft Entra ID, enable SSO, and conditional access policies can be applied.
- **Integrate applications with shared device mode (applies only to Android or iOS shared devices):** Applications can use the necessary shared device mode APIs in MSAL to perform automatic single sign-on and single sign out. Appropriately using these APIs allows you to integrate with shared device mode. This isn’t necessary if you’re running your application in Teams, Microsoft Edge, or PowerApps.
- **Integrate with Intune’s APP SDK (applies only to Android or iOS shared devices):** Applications can be managed in Intune to prevent unintended or unauthorized data exposure. This isn’t necessary if your MDM performs app data clears that wipe any sensitive data during device check-in flows (single sign out).

Once you’ve successfully validated your applications, you can deploy them to managed devices using your MDM solution. This allows you to preinstall all the necessary applications during device enrollment so that users have everything they need on day one.

### App launchers for Android devices

On Android devices, the best way of providing a focused experience as soon as an employee opens a device is to provide a customized launch screen. With a customized launch screen, you can show only the relevant applications an employee needs to use and widgets that highlight key information.

Most MDM solutions provide their own app launcher that can be used. For example, Microsoft provides Managed Home Screen. If you want to build your own custom app launcher for shared devices, you’ll need to integrate it with shared device mode so that single sign-on and single sign out works on your devices. The following table highlights some of the most common app launchers available today by Microsoft and third-party developers.

|App launcher |Capabilities|
|-------------|------------|
|Managed Home Screen |Use Managed Home Screen when you want your end users to have access to a specific set of applications on your Intune-enrolled dedicated devices. Because Managed Home Screen can be automatically launched as the default home screen on the device and appears to the end user as the only home screen, it's useful in shared devices scenarios when a locked down experience is required. |
|Microsoft Launcher |Microsoft Launcher lets users personalize their phone, stay organized on the go, and transfer work from their phone to their PC. Microsoft Launcher differs from Managed Home Screen because it allows the end user access to their standard home screen. Microsoft Launcher is therefore useful in BYOD scenarios. |
|VMware Workspace ONE Launcher |For customers using VMware, the Workspace ONE Launcher is he best tool to curate a set of applications that your frontline workforce needs access to. The sign out option from this launcher is also what enables Android App Data Clear for single sign out on VMware devices. VMware Workspace ONE Launcher doesn't currently support shared device mode. |
|Custom app launcher |If you want a fully customized experience, you can build out your own custom app launcher. You can integrate your launcher with shared device mode so that your users only need to sign in and out once. |

## Related articles

- [Frontline worker management](/azure/active-directory/fundamentals/frontline-worker-management)-->
