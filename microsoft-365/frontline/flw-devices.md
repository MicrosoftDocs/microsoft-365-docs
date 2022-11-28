---
title: Manage devices for frontline workers
author: lanachin
ms.author: v-lanachin
ms.reviewer: mabolan
manager: samanro
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
ms.localizationpriority: high
search.appverid: MET150
description: Get an overview of managing mobile shared and BYOD devices for frontline workers in your organization. 
ms.collection: 
  - m365-frontline
  - highpri
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 11/28/2022
---

# Manage devices for frontline workers

Across every industry, frontline workers make up a large segment of the workforce. Frontline worker roles include retail associates, factory workers, field and service technicians, healthcare personnel, and many more.

## Overview

Because the workforce is largely mobile and often shift-based, managing the devices that frontline workers use is a key fundamental. Some questions to consider:

- Do workers use company-owned devices or their own personal devices?
- Are company-owned devices shared between workers or assigned to an individual?
- Do workers take devices home or leave them at the workplace?

It’s important to set a secure, compliant baseline to manage devices for your workforce, whether they’re shared devices or workers’ own devices. This article gives you an overview of common frontline worker device scenarios and management capabilities to help empower your workforce while safeguarding company data.

## Device types

Shared, BYOD, and kiosk devices are the most common device types used by frontline workers.

|Device type|Description|Why to use|Deployment considerations|
|-----------|-----------|----------|--------------------------|
|Shared devices |Devices are owned and managed by your organization. Employees access devices while at work. |Worker productivity and customer experience are a top priority. <br> Workers can't access organization resources while not at work. <br> Local laws may prevent personal devices from being used for business purposes. |Sign in/out can add friction to worker experience. <br> Potential for inadvertent sharing of sensitive data. <br> |
|Bring-your-own devices (BYOD) |Personal devices are owned by the user and managed by your organization. |Your existing MDM solution prevents your organization from adopting a shared devices model. <br> Shared devices or dedicated devices may be impractical from a cost or business-readiness perspective. |Support complexity may not be feasible in field locations. <br> Personal devices vary in OS, storage, and connectivity. <br> Some workers may not have reliable access to a personal mobile device. <br> You could incur potential liability for wages if workers access resources while not clocked in. <br> Personal device use may be against union rules or government regulations. |
|Kiosk devices |Devices are owned and managed by your organization. Users don't need to sign in or out. |Device has a dedicated purpose. <br> Use case doesn't require user authentication. <br> |Collaboration, communication, task, and workflow applications need a user identity to function. <br> Not possible to audit user activity. <br> Unable to use some security capabilities including multi-factor authentication. |

Shared devices and BYOD are commonly adopted in frontline deployments. You can use capabilities discussed in subsequent sections of this article may to resolve or mitigate your organization’s concerns over user experience, unauthorized worker access to data, and resources and ability to deploy and manage devices at scale.

> [!NOTE]
> Kiosk device deployments aren’t recommended because they don’t allow user auditing and user-based security capabilities like multi-factor authentication. [Learn more about kiosk devices](/windows/configuration/kiosk-methods).

### Shared devices

Many frontline workers use shared mobile devices to do work. Shared devices are company-owned devices that are shared between employees across tasks, shifts, or locations.

Here’s an example of a typical scenario. An organization has a pool of devices in charging cradles to be shared across all employees. At the start of a shift, an employee picks up a device from the pool, and signs in to Teams and other business apps essential to their role. At the end of their shift, they sign out and return the device to the pool. Even within the same shift, a worker might return a device when they finish a task or clock out for lunch, and then pick up a different one when they clock back in.

Shared devices present unique security challenges. For example, employees may have access to company or customer data that shouldn’t be available to others on the same device.

### Personal devices (BYOD)

Some organizations use a bring-your-own-device (BYOD) model where frontline workers use their own mobile devices to access Teams and other business apps. Here's an overview of some ways to manage access and compliance on personal devices.

### Device operating system

The deployment model you select will partly determine the device operating systems you support. For example, if you implement a BYOD model, you’ll need to support both Android and iOS devices. If you implement a shared devices model, the device OS you choose will determine the capabilities available. For example, Windows devices natively support the ability to store multiple user profiles for automated sign-on and easy authentication with Windows Hello. With Android and iOS, additional steps and pre-requisites apply.

|Device OS|Considerations|
|---------|--------------|
|Windows |Native support for storing multiple user profiles on the device <br> Supports Windows Hello for passwordless authentication <br> Simplified deployment and management capabilities when used in conjunction with Microsoft Intune |
|Android |[Limited native capabilities](https://source.android.com/docs/devices/admin/multi-user) for storing multiple user profiles on devices <br> Android devices can be enrolled in shared device mode to automate single sign-on and sign-out. <br> Robust management of controls and APIs <br> Existing ecosystem of devices built for frontline use |
|iOS and iPadOS |iOS devices can be enrolled in shared device mode to automate single sign-on and sign-out. <br> Storing multiple user profiles on iPadOS devices is possible with Shared iPad for Business. Conditional access isn't available with Shared iPad for Business due to the way Apple partitions user profiles. |

In a shared devices deployment, the ability to store multiple user profiles on a device to simplify user sign on and the ability to clear app data from the previous user (single sign-out) are practical requirements for frontline deployments. These capabilities are native on Windows devices and iPads using Shared iPad for Business.

### Enroll Android and iOS personal devices

In addition to your company-owned devices, you can [enroll](/mem/intune/enrollment/device-enrollment) users' personally owned devices into management in Intune. For BYOD enrollment, you add device users in the Microsoft Endpoint Manager admin center, configure their enrollment experience, and set up Intune policies. Users complete enrollment themselves in the Intune Company Portal app that's installed on their device.

In some cases, users may be reluctant to enroll their personal devices into management. If device enrollment isn't an option, you can choose a mobile application management (MAM) approach and use [app protection policies](/mem/intune/apps/app-protection-policies) to manage apps that contain corporate data. For example, you can apply app protection policies to Teams and Office mobile apps to prevent company data from being copied to personal apps on the device.

To learn more, see ["Personal devices vs Organization-owned devices" in the Intune planning guide](/mem/intune/fundamentals/intune-planning-guide#personal-devices-vs-organization-owned-devices) and [Deployment guidance: Enroll devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-enrollment).

## User identity

<!--daisy-->




## My Staff

With the [My Staff](/azure/active-directory/roles/my-staff-configure) feature in Azure Active Directory (Azure AD), you can delegate common user management tasks to frontline managers through the My Staff portal. Frontline managers can perform password resets or manage phone numbers for frontline workers directly from the store or factory floor, without having to route the requests to helpdesk, operations, or IT.

My Staff also enables frontline managers to register their team members' phone numbers for SMS sign-in. If [SMS-based authentication](/azure/active-directory/authentication/howto-authentication-sms-signin) is enabled in your organization, frontline workers can sign in to Teams and other apps using only their phone numbers and a one-time passcode sent via SMS. This makes signing in for frontline workers simple, secure, and fast.

### Shared device mode

[Shared device mode](/azure/active-directory/develop/msal-shared-devices) is a feature of Azure AD that enables you to configure devices to be shared by employees. This feature enables single sign-on (SSO) and device-wide sign-out for Microsoft Teams and all other apps that support shared device mode. You can integrate this capability into your line-of-business (LOB) apps using the Microsoft Authentication Library (MSAL).

Here's how shared device mode works, using Teams as an example. When an employee signs in to Teams at the start of their shift, they’re automatically signed in to all other apps that support shared device mode on the device. At the end of their shift, when they sign out of Teams, they're signed out globally from all other apps that support shared device mode. After sign-out, the employee's data and company data in Teams (including apps hosted within it) and in all other apps that support shared device mode can no longer be accessed. The device is ready for the next employee and can be safely handed off.

You use a mobile device management (MDM) solution like Microsoft Intune in Microsoft Endpoint Manager to prepare a device to be shared by installing the [Microsoft Authenticator app](https://support.microsoft.com/account-billing/how-to-use-the-microsoft-authenticator-app-9783c865-0308-42fb-a519-8cf666fe0acc) and turning on shared mode. Teams and all other apps that support shared device mode use the shared mode setting to manage users on the device. The MDM solution you use should also perform a device cleanup when sign out occurs.

Shared device mode is currently supported on Android devices. Here's some resources to help you get started.

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

## Related articles

- [Frontline worker management](/azure/active-directory/fundamentals/frontline-worker-management)
