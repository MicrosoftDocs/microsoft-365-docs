---
title: "Step 2. Enroll devices into management with Intune"
ms.author: bcarter
author: brendacarter
f1.keywords:
- enroll devices into management
- enroll devices to Intune
- Intune mobile device platforms
manager: dougeby
ms.date: 03/14/2025
audience: ITPro
description: Use Intune and Autopilot to enroll devices into management to ensure the apps running on them are compliant and to prevent corporate data leaks.
ms.topic: how-to
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- M365-security-compliance
- m365solution-managedevices
- m365solution-scenario
- zerotrust-solution
ms.custom: 
keywords: 
---

# Step 2. Enroll devices into management with Intune

There are several ways to secure the endpoint, a term often used to refer to the combined entity including devices, apps, and user identity. Security policies must be enforced consistently and reliably not only on the apps but the device itself. Enrolling the device to Microsoft Intune and registering with a cloud identity provider, such as Microsoft Entra ID, is a great start.

Whether a device is a personally owned *bring your own device* (BYOD) or a corporate-owned and fully managed device, it's good to have visibility into the endpoints that access your organization’s resources to ensure you’re only allowing healthy and compliant devices. This visibility should include the health and trustworthiness of mobile and desktop apps that run on endpoints. You want to ensure those apps are healthy and compliant and that they prevent corporate data from leaking to consumer apps or services through malicious intent or accidental means.

The device enrollment process establishes a relationship between the user, the device, and the Microsoft Intune service. Using Microsoft Intune as a standalone service enables you to use a single web-based administration console to manage Windows PCs, macOS, and the most popular mobile device platforms.

This article recommends methods for enrolling devices in Intune. For more information about these methods and how to deploy each one, see [Deployment guidance: Enroll devices in Microsoft Intune](/mem/intune-service/fundamentals/deployment-guide-enrollment).

:::image type="content" source="../media/devices/intune-mdm-step-1.png" alt-text="The first step of Mobile Device Management to enroll devices in Intune." lightbox="../media/devices/intune-mdm-step-1.png":::

Use the guidance in this article together with this illustrated version of enrollment options for each platform.

[![Thumbnail verson of the two pages of the Intune Enrollment Options poster](../media/devices/msft-intune-enrollment-options-thumb-landscape.png)](https://download.microsoft.com/download/e/6/2/e6233fdd-a956-4f77-93a5-1aa254ee2917/msft-intune-enrollment-options.pdf) <br/> [PDF](https://download.microsoft.com/download/e/6/2/e6233fdd-a956-4f77-93a5-1aa254ee2917/msft-intune-enrollment-options.pdf) | [Visio](https://download.microsoft.com/download/e/6/2/e6233fdd-a956-4f77-93a5-1aa254ee2917/msft-intune-enrollment-options.vsdx) <br/> Last reviewed March 2025

## Windows enrollment

There are several options for enrolling Windows 10 and Windows 11 devices. The most common methods include the following two:

- **Microsoft Entra ID join:** Joins the device with Microsoft Entra ID and enables users to sign in to Windows with their Microsoft Entra credentials. When Automatic Enrollment is configured within Intune, the device is automatically enrolled in Intune. The benefit of automatic enrollment is a single-step process for the user. Otherwise, they'll have to enroll separately through MDM-only enrollment and reenter their credentials. Users enroll this way either during initial Windows out-of-box experience (OOBE) or from Settings. The device is marked as a corporate-owned device in Intune.
- **Windows Autopilot:** Automates Microsoft Entra join and enrolls new corporate-owned devices into Intune. This method simplifies the out-of-box experience and removes the need to apply custom operating system images onto the devices. When admins use Intune to manage Autopilot devices, they can manage policies, profiles, apps, and more after they're enrolled. There are four types of Autopilot deployment:

  - Self-Deploying Mode (for kiosks, digital signage, or a shared device)

  - User Driven Mode (for traditional users)

  - Windows Autopilot for pre-provisioned deployment enables partners or IT staff to pre-provision a PC running Windows 10 or Windows 11 so that it's fully configured and business-ready.

  - Autopilot for existing devices enables you to easily deploy the latest version of Windows to your existing devices.

For additional options, including enrolling BYOD Windows devices, see, [Enroll Windows devices in Microsoft Intune](/mem/intune-service/fundamentals/deployment-guide-enrollment-windows).

## iOS and iPadOS enrollment

For user owned BYOD devices, you can let users enroll their personal devices with Intune using one of the following methods.

- Device enrollment is what you might think of as typical BYOD enrollment. It provides admins with a wide range of management options.
- User enrollment is a more streamlined enrollment process that provides admins with a subset of device management options.

For organizations that buy devices for their users, Intune supports the following iOS/iPadOS company-owned device enrollment methods:

- Apple's Automated Device Enrollment (ADE)
- Apple School Manager
- Apple Configurator Setup Assistant enrollment
- Apple Configurator direct enrollment

For more information, see [Enroll iOS and iPadOS devices in Microsoft Intune](/mem/intune-service/fundamentals/deployment-guide-enrollment-ios-ipados).

## Android enrollment

There are several options for Android enrollment that depend on the type of device, the type of enrollment you want to support, factors like the Android version you're using, and even the manufacturer (particularly Samsung). Most organizations use Android Work profiles for their end users, particular in BYOD scenarios.

With an Android work profile, the end user’s information is separated distinctly with data containers and separate apps for work and personal use. This is an ideal way for users to enroll their device while still maintaining the privacy of their own data and the security of corporate data.

However, if your organization is providing Android devices, you might choose to use what is called a fully managed (User Affinity) or dedicated (no User Affinity) device.

To learn more about Android enrollment, see [Enroll Android devices in Microsoft Intune](/mem/intune-service/fundamentals/deployment-guide-enrollment-android).

## macOS enrollment

Enrollment for macOS can be a tricky subject for lots of IT organizations. Unless a majority of your users are Mac users, you might not be managing these types of devices extensively. If you have a few macOS users, we recommend Intune-only enrollment. If you have a large number of macOS users, we recommend Intune + Jamf enrollment.

- **Intune-only enrollment:** This enrollment supports basic management of macOS devices. It requires a manual process much like most other user-based enrollment options. But if you have a small number of Mac devices this might be easier than setting up an entire automated infrastructure just for those few users. With Intune-only enrollment, you can deploy things like certificates, password configurations, and applications. You can also configure compliance policies, enable Conditional Access, and enforce encryption and device wipe.
- **Intune and Jamf enrollment:** When you want deeper support for Mac management, use Jamf + Intune for Conditional Access. Microsoft has a great solution that combines the extensive Mac management capabilities of Jamf with Intune compliance with Conditional Access policies. In this scenario you're still fully managing the device with Jamf while being able to take those signals from Jamf for increased security.

To learn more about macOS enrollment, see [Enroll macOS devices in Microsoft Intune](/mem/intune-service/fundamentals/deployment-guide-enrollment-macos).

## Next step

Go to [Step 3. Set up compliance policies for devices with Intune](manage-devices-with-intune-compliance-policies.md).
