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
description: Get an overview of managing shared devices for frontline workers in your organization. 
ms.collection: 
  - m365-frontline
  - highpri
  - essentials-manage
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 07/12/2024
---

# Manage shared devices for frontline workers

## Overview

Many frontline workers use shared mobile devices to do work. Shared devices are company-owned devices that are shared between employees across tasks, shifts, or locations.

Here’s an example of a typical scenario. An organization has a pool of devices in charging cradles to be shared across all employees. At the start of a shift, an employee picks up a device from the pool, and signs in to Microsoft Teams and other business apps essential to their role. At the end of their shift, they sign out and return the device to the pool. Even within the same shift, a worker might return a device when they finish a task or clock out for lunch, and then pick up a different one when they clock back in.

Shared devices present unique security challenges. For example, employees might have access to company or customer data that shouldn’t be available to others on the same device. Organizations deploying shared devices must define the sign-in and sign-out experience and implement controls to prevent unauthorized or unintended access to apps and data when devices are handed off between employees.

This article covers capabilities and considerations for deploying and managing shared devices to help empower your frontline workforce with the devices they need to get work done. Use this guidance to help plan and manage your frontline deployment.

## Shared device mode

We recommend using [shared device mode](/entra/identity-platform/msal-shared-devices) for your frontline worker shared devices, whenever possible.

Shared device mode is a Microsoft Entra ID feature that allows organizations to configure an Android, iOS, or iPadOS device so that it can be easily shared by multiple employees. Employees can sign in once and get access to their data across all supported apps without having access to other employees’ data. When they finish their shift or task, they sign out once and get signed out of the device and all supported apps, making the device ready for the next employee to use.

### Key benefits of enabling shared device mode on devices

- **Single sign-on**: Allow users to sign in to one app that supports shared device mode once and gain seamless authentication into all other apps that support shared device mode without having to reenter credentials. Exempt users from first-run experience screens on shared devices.
- **Single sign-out**: Allow users an easy way to sign out from a device without needing to sign out individually from each app that supports shared device mode. Provide users’ assurances that their data isn't inappropriately shown to subsequent users, given that the apps ensure cleaning up of any cached user data and app protection policies are applied.
- **Support for enforcing security requirements using Conditional Access policies**: Provides admins with the ability to target specific Conditional Access policies on shared devices, ensuring that employees only have access to company data when their shared device meets internal compliance standards.

### Get started with shared device mode

You can set up devices for shared device mode manually or through your mobile device management (MDM) solution using zero-touch provisioning. To learn more, see [Overview of shared device mode](/entra/identity-platform/msal-shared-devices).

Developers can add support for shared device mode to your apps using the Microsoft Authentication Library (MSAL). For more information about how to integrate your apps with shared device mode, see:

- [Shared device mode for Android devices](/entra/identity-platform/msal-android-shared-devices)
- [Tutorial: Use shared device mode in your Android application](/entra/identity-platform/tutorial-v2-shared-device-mode)
- [Shared device mode for iOS devices](/entra/msal/objc/shared-devices-ios)

## Multifactor authentication

[Microsoft Entra multifactor authentication (MFA)](/entra/identity/authentication/concept-mfa-howitworks) adds additional security over only using a password when a user signs in. MFA is a great way to increase security, although it might add friction to the sign-in experience for some users with the extra layer of security on top of having to remember their passwords.

It’s important to validate the user experience before your rollout so you can prepare for change management and readiness efforts.

If MFA isn’t feasible for your organization, you should plan to implement robust Conditional Access policies to reduce security risk. Some common Conditional Access policies to apply when MFA isn’t used on shared devices include:

- Device compliance
- Trusted network locations
- Device is managed

Be sure to evaluate Conditional Access policies and app protection policies you want to apply to ensure they meet the needs of your organization.

## Domain-less sign in

You can simplify the sign-in experience on Teams for iOS and Android by prefilling the domain name on the sign-in screen for users on shared and managed devices.

Users sign in by entering only the first part of their user principal name (UPN). For example, if the username is 123456@contoso.com or alexw@contoso.com, users can sign in by using only "123456" or "alexw", respectively, and their password. Signing in to Teams is faster and easier, especially for frontline workers on shared devices, who sign in and out regularly.

You can also enable domain-less sign in for your custom line-of business (LOB) apps.

[Learn more about domain-less sign-in](/microsoftteams/sign-in-teams?bc=%2Fmicrosoft-365%2Ffrontline%2Fbreadcrumb%2Ftoc.json&toc=%2Fmicrosoft-365%2Ffrontline%2Ftoc.json&view=o365-worldwide#enable-domain-less-sign-in-for-your-custom-apps).

## Conditional Access

Use [Conditional Access](/entra/identity/conditional-access/overview) policies to apply the right controls when needed to keep your organization secure. You can create rules that limit access based on identity-driven signals that include:

- User or group membership
- IP location information
- Device (only available if the device is enrolled in Microsoft Entra ID)
- App
- Real-time and calculated risk detection

For example, you can use a Conditional Access policy to restrict access so that only shared devices that are marked as compliant can access your organization's apps and services. Here are some resources to help you get started:

- [Plan a Conditional Access deployment](/entra/identity/conditional-access/plan-conditional-access)
- [Build a Conditional Access policy](/entra/identity/conditional-access/concept-conditional-access-policies)

## App protection policies

With mobile application management (MAM) from Intune, you can use [app protection policies](/mem/intune/apps/app-protection-policy) to ensure that data doesn’t leak to apps that don’t support shared device mode. To help prevent data loss, enable the following app protection policies on shared devices:

- Disable copy/paste to non-shared device mode enabled apps.
- Disable local file saving.
- Disable data transfer capabilities to non-shared device mode enabled apps.

## Automatically grant consent to apps for device features

On a shared device, it’s important to remove unnecessary screens that could pop up when a user accesses an app the first time. These screens can include prompts to grant the app permission to use device features, such as the microphone or camera, or access location. You can use [app configuration policies in Intune](/mem/intune/apps/app-configuration-policies-use-android#preconfigure-the-permissions-grant-state-for-apps) on Android shared devices to preconfigure app permissions to access device features.

If you're using a third-party MDM solution, check the documentation for options available to automatically grant consent to apps to access device features.

## Related articles

- [Overview of device management for frontline workers](flw-devices.md)
