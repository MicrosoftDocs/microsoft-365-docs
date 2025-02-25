---
title: "Overview of Basic Mobility and Security for Microsoft 365"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/11/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-basic-mobility-security
ms.localizationpriority: medium
ms.collection: 
- Tier3
- scotvorg
- highpri
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
ms.custom:
- VSBFY23
- AdminSurgePortfolio
- AdminTemplateSet
- basic-mobility-security
search.appverid:
- MET150
description: "Manage and secure mobile devices connected to your Microsoft 365 organization by setting up and using Basic Mobility and Security."
---

# Overview of Basic Mobility and Security for Microsoft 365

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

You can manage and secure mobile devices when they're connected to your Microsoft 365 organization by using Basic Mobility and Security. Mobile devices like smartphones and tablets that are used to access work email, calendar, contacts, and documents play a significant part in making sure that employees get their work done anytime, from anywhere. So it’s critical that you help protect your organization's information when people use devices. You can use Basic Mobility and Security to set device security policies and access rules, and to wipe mobile devices if they’re lost or stolen.

:::image type="content" source="../../media/basic-mobility-security/bms-3-setup.png" alt-text="Basic Mobility and Security Setup.":::

## Privacy and security in Basic Mobility and Security

Microsoft Intune sends information to Microsoft 365 about the compliance status of each managed device, and then you can generate reports that show whether managed devices in your organization are compliant based upon the policies that were set. To learn more about Microsoft's commitment to the privacy and security, see the [Microsoft Trust Center](https://www.microsoft.com/trust-center).

## What types of devices can you manage?

You can use Basic Mobility and Security to manage many types of mobile devices like Android, iPhone, and iPad. To manage mobile devices used by people in your organization, each person must have an applicable Microsoft 365 license and their device must be enrolled in Basic Mobility and Security.

To see what Basic Mobility and Security supports for each type of device, see [Capabilities of Basic Mobility and Security](capabilities.md).

## Setup steps for Basic Mobility and Security

A [Directory Writers](/entra/identity/role-based-access-control/permissions-reference) admin must complete the following steps to activate and set up Basic Mobility and Security. For detailed steps, follow the guidance in [Set up Basic Mobility and Security](set-up.md).

Here's a summary of the steps:

**Step 1:** Activate Basic Mobility and Security by following steps in the [Set up Basic Mobility and Security](set-up.md).

**Step 2:** Set up Basic Mobility and Security by, for example, creating an APNs certificate to manage iOS devices and adding a Domain Name System (DNS) record for your domain.

**Step 3:** Create device policies and apply them to groups of users. When you do this, your users get an enrollment message on their device, and when they've completed enrollment, their devices are restricted by the policies you've set up for them. For more info, see [Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md).

:::image type="content" source="../../media/basic-mobility-security/basic-mobility-microsoft-purview.png" alt-text="Basic Security and Mobility policy settings.":::

## Device management tasks

After you've got Basic Mobility and Security set up and your users have enrolled their devices, you can manage the devices, block access, or wipe a device, if necessary. To learn more about some common device management tasks, including where to complete the tasks, see [Manage devices enrolled in Mobile Device Management for Microsoft 365](manage-enrolled-devices.md).

## Other ways to manage devices and apps

If you just need mobile app management (MAM), perhaps for people updating work projects on their own devices, Intune provides another option besides enrolling and managing devices. An Intune subscription allows you to set up MAM policies by using the Azure portal, even if people's devices aren't enrolled in Intune. For more info, see [App protection policies overview](/mem/intune/apps/app-protection-policy).

## Related content

[Set up Basic Mobility and Security](set-up.md) (article)\
[Enroll your mobile device using Basic Mobility and Security](enroll-your-mobile-device.md) (article)\
[Manage devices enrolled in Mobile Device Management for Microsoft 365](manage-enrolled-devices.md) (article)
