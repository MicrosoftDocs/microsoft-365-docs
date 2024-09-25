---
title: Device management roadmap for Microsoft 365 
keywords: Microsoft 365, Microsoft 365 for enterprise, Microsoft 365 documentation, mobile device management, Intune
author: kelleyvice-msft 
ms.author: kvice
manager: scotv
ms.date: 07/29/2024
ms.topic: conceptual 
f1.keywords:
- NOCSH
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.assetid: fb4182e6-5e78-45d0-9641-d791c4519441
audience: ITPro
ms.custom: microsoft-intune
ms.collection: 
- scotvorg
- must-keep
ms.localizationpriority: medium
description: The roadmap to set up device management for Microsoft 365.
---

# Device management roadmap for Microsoft 365

Microsoft 365 for enterprise includes features to help manage devices, and their apps, within your organization. Managing mobile devices helps you secure and protect your organization's resources.

There are two options for device management:

- [Microsoft Intune](#microsoft-intune)
- [Basic Mobility and Security](#basic-mobility-and-security)

## Microsoft Intune

You can use Microsoft Intune to manage access to your organization using mobile device management or mobile application management. Mobile device management is when users "enroll" their devices in Intune. After a device is enrolled, it is a managed device; therefore, it can receive your organization's  policies, rules, and settings. For example, you can install specific apps, create a password policy, install a VPN connection, and more.

Users with their own personal devices may not want to enroll their devices or be managed by Intune and your organization's policies. But you still need to protect your organization's resources and data. In this scenario, you can protect your apps using mobile application management. For example, you can use a mobile application management policy that requires a user to enter a PIN when accessing SharePoint Online on the device.

You'll also determine how you're going to manage personal devices and organization-owned devices. You might want to treat devices differently, depending on their uses.

## Basic Mobility and Security

This is built into Microsoft 365 and helps you secure and manage your users' mobile devices like iPhones, iPads, Androids, and Windows phones. You can create and manage device security policies, remotely wipe a device, and view detailed device reports.

## Choose between the two options

To help you better assess which device management option is best for you, see [Choose between Basic Mobility Security and Intune](/microsoft-365/admin/basic-mobility-security/choose-between-basic-mobility-and-security-and-intune).

Based on your assessment, get started managing your devices with:

- [Intune](/microsoft-365/solutions/manage-devices-with-intune-overview)
- [Basic Mobility and Security](https://support.microsoft.com/office/set-up-basic-mobility-and-security-dd892318-bc44-4eb1-af00-9db5430be3cd)

## Identity and device access recommendations

Microsoft provides a set of recommendations for [identity and device access](../security/office-365-security/zero-trust-identity-device-access-policies-overview.md) to ensure a secure and productive workforce. For device access, use the recommendations and settings in these articles:

- [Prerequisites](../security/office-365-security/zero-trust-identity-device-access-policies-prereq.md)
- [Common identity and device access policies](../security/office-365-security/zero-trust-identity-device-access-policies-common.md)

## How Contoso did device management for Microsoft 365

For information about how a fictional but representative multi-national business deployed their mobile device management infrastructure with Microsoft 365 cloud services, see [Mobile device management for Contoso](contoso-mdm.md).
