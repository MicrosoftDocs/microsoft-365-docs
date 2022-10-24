---
title: Manage mobile devices for frontline workers
author: lanachin
ms.author: v-lanachin
ms.reviewer: mabolan
manager: samanro
ms.topic: article
audience: admin
ms.service: microsoft-365-frontline
ms.localizationpriority: high
search.appverid: MET150
description: Get an overview of managing mobile devices for frontline workers in your organization. 
ms.collection: 
    - m365-frontline
    - highpri
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
---

# Manage mobile devices for frontline workers

## Overview

Across every industry, frontline workers make up a large segment of the workforce. Frontline worker roles include retail associates, factory workers, field and service technicians, healthcare personnel, and many more.

Because the workforce is largely mobile and often shift-based, managing the devices that frontline workers use is a key fundamental. Some questions to consider:

- Do workers use company-owned devices or their own personal devices?
- Are company-owned devices shared between workers or assigned to an individual?
- Do workers take devices home or leave them at the workplace?

It’s important to set a secure, compliant baseline to manage devices for your workforce, whether they’re shared devices or workers’ own devices. This article gives you an overview of common frontline worker device scenarios and management capabilities to help empower your workforce while safeguarding company data.

## My Staff

With the [My Staff](/azure/active-directory/roles/my-staff-configure) feature in Azure Active Directory (Azure AD), you can delegate common user management tasks to frontline managers through the My Staff portal. Frontline managers can perform password resets or manage phone numbers for frontline workers directly from the store or factory floor, without having to route the requests to helpdesk, operations, or IT.

My Staff also enables frontline managers to register their team members' phone numbers for SMS sign-in. If [SMS-based authentication](/azure/active-directory/authentication/howto-authentication-sms-signin) is enabled in your organization, frontline workers can sign in to Teams and other apps using only their phone numbers and a one-time passcode sent via SMS. This makes signing in for frontline workers simple, secure, and fast.

## Shared devices

Many frontline workers use shared mobile devices to do work. Shared devices are company-owned devices that are shared between employees across tasks, shifts, or locations.

Here’s an example of a typical scenario. An organization has a pool of devices in charging cradles to be shared across all employees. At the start of a shift, an employee picks up a device from the pool, and signs in to Teams and other business apps essential to their role. At the end of their shift, they sign out and return the device to the pool. Even within the same shift, a worker might return a device when they finish a task or clock out for lunch, and then pick up a different one when they clock back in.

Shared devices present unique security challenges. For example, employees may have access to company or customer data that shouldn’t be available to others on the same device.

This section provides an overview of capabilities available to manage shared devices for frontline workers.

### Shared device mode

[Shared device mode](/azure/active-directory/develop/msal-shared-devices) is a feature of Azure AD that enables you to configure devices to be shared by employees. This feature enables single sign-on (SSO) and device-wide sign-out for Microsoft Teams and all other apps that support shared device mode. You can integrate this capability into your line-of-business (LOB) apps using the Microsoft Authentication Library (MSAL).

Here's how shared device mode works, using Teams as an example. When an employee signs in to Teams at the start of their shift, they’re automatically signed in to all other apps that support shared device mode on the device. At the end of their shift, when they sign out of Teams, they're signed out globally from all other apps that support shared device mode. After sign-out, the employee's data and company data in Teams (including apps hosted within it) and in all other apps that support shared device mode can no longer be accessed. The device is ready for the next employee and can be safely handed off.

You use a mobile device management (MDM) solution like Microsoft Intune in Microsoft Endpoint Manager to prepare a device to be shared by installing the [Microsoft Authenticator app](https://support.microsoft.com/account-billing/how-to-use-the-microsoft-authenticator-app-9783c865-0308-42fb-a519-8cf666fe0acc) and turning on shared mode. Teams and all other apps that support shared device mode use the shared mode setting to manage users on the device. The MDM solution you use should also perform a device cleanup when sign out occurs.

Shared device mode is currently supported on Android devices. Here's some resources to help you get started.

#### Enroll Android devices into shared device mode

To manage and enroll Android devices into shared device mode using Intune, devices must be running Android OS version 8.0 or later, and have Google Mobile Services (GMS) connectivity. To learn more, see:

- [Set up Intune enrollment for Android Enterprise dedicated devices](/mem/intune/enrollment/android-kiosk-enroll)
- [Enroll Android Enterprise dedicated devices into Azure AD shared device mode](https://techcommunity.microsoft.com/t5/intune-customer-success/enroll-android-enterprise-dedicated-devices-into-azure-ad-shared/ba-p/1820093)

You can also choose to deploy the Microsoft Managed Home Screen app to tailor the experience for users on their Intune-enrolled Android dedicated devices. Managed Home Screen acts as a launcher for other approved apps to run on top of it, and lets you customize devices and restrict what employees can access. For example, you can define how apps appear on the home screen, add your company logo, set custom wallpaper, and allow employees to set a session PIN. You can even configure sign-out to happen automatically after a specified period of inactivity.  To learn more, see:

- [Configure the Microsoft Managed Home Screen app for Android Enterprise](/mem/intune/apps/app-configuration-managed-home-screen-app)
- [How to set up Microsoft Managed Home Screen on dedicated devices in multi-app kiosk mode](https://techcommunity.microsoft.com/t5/intune-customer-success/how-to-setup-microsoft-managed-home-screen-on-dedicated-devices/ba-p/1388060)

#### For developers creating apps for shared device mode

If you're a developer, see the following resources for more information about how to integrate your app with shared device mode:

- [Shared device mode for Android devices](/azure/active-directory/develop/msal-android-shared-devices)
- [Shared device mode for iOS devices](/azure/active-directory/develop/msal-ios-shared-devices)

## Personal devices (BYOD)

Some organizations use a bring-your-own-device (BYOD) model where frontline workers use their own mobile devices to access Teams and other business apps. Here's an overview of some ways to manage access and compliance on personal devices.

### Enroll Android and iOS personal devices

In addition to your company-owned devices, you can [enroll](/mem/intune/enrollment/device-enrollment) users' personally owned devices into management in Intune. For BYOD enrollment, you add device users in the Microsoft Endpoint Manager admin center, configure their enrollment experience, and set up Intune policies. Users complete enrollment themselves in the Intune Company Portal app that's installed on their device.

In some cases, users may be reluctant to enroll their personal devices into management. If device enrollment isn't an option, you can choose a mobile application management (MAM) approach and use [app protection policies](/mem/intune/apps/app-protection-policies) to manage apps that contain corporate data. For example, you can apply app protection policies to Teams and Office mobile apps to prevent company data from being copied to personal apps on the device.

To learn more, see ["Personal devices vs Organization-owned devices" in the Intune planning guide](/mem/intune/fundamentals/intune-planning-guide#personal-devices-vs-organization-owned-devices) and [Deployment guidance: Enroll devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-enrollment).

## Related articles

- [Frontline worker management](/azure/active-directory/fundamentals/frontline-worker-management)
