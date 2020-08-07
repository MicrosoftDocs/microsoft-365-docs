---
title: Device management roadmap for Microsoft 365 
keywords: Microsoft 365, Microsoft 365 for enterprise, Microsoft 365 documentation, mobile device management, Intune
author: JoeDavies-MSFT 
ms.author: josephd
manager: laurawi
ms.date: 08/10/2020
ms.topic: conceptual 
f1.keywords:
- NOCSH
ms.prod: microsoft-365-enterprise
ms.service: 
ms.technology: 
ms.assetid: fb4182e6-5e78-45d0-9641-d791c4519441
audience: ITPro
ms.custom: microsoft-intune
description: The roadmap to set up device management for Microsoft 365.
---

# Device management roadmap for Microsoft 365


Microsoft 365 for enterprise includes features to help manage devices, and their apps, within your organization. Managing mobile devices helps you secure and protect your organization's resources.

There are two options for device management.

## Microsoft Intune

Intune gives you options to manage access to your organization using Mobile Device Management (MDM) or Mobile Application Management (MAM). MDM is when users "enroll" their devices in Intune. Once enrolled, they are managed devices, and can receive any policies, rules, and settings used by your organization. For example, you can install specifics apps, create a password policy, install a VPN connection, and more.

Users with their own personal devices may not want to enroll their devices or be managed by Intune and your policies. But you still need to protect your organization's resources and data. In this scenario, you can protect your apps using MAM. For example, you can use a MAM policy that requires a user to enter a PIN when accessing SharePoint on the device.

You'll also determine how you're going to manage personal or organization-owned devices. You may want to treat devices differently, depending on their use. 

Start [here](https://docs.microsoft.com/mem/intune/fundamentals/planning-guide).

## Basic Mobility and Security
 
This is built into Microsoft 365 and helps you secure and manage your users' mobile devices like iPhones, iPads, Androids, and Windows phones. You can create and manage device security policies, remotely wipe a device, and view detailed device reports. 

Start [here](https://support.microsoft.com/office/set-up-basic-mobility-and-security-dd892318-bc44-4eb1-af00-9db5430be3cd).
 
## Identity and device access recommendations

Microsoft provides a set of recommendations for [identity and device access](microsoft-365-policies-configurations.md) to ensure a secure and productive workforce. For device access, use the recommendations and settings in the following articles along with the steps in this phase:

- [Prerequisites](identity-access-prerequisites.md)
- [Common identity and device access policies](identity-access-policies.md)

## How Microsoft does device management for Microsoft 365

Learn how IT experts at Microsoft [manage devices with EMS](https://www.microsoft.com/itshowcase/deploying-and-managing-microsoft-365#primaryR8).

## How Contoso did device management for Microsoft 365

See how the Contoso Corporation, a fictional but representative multi-national business, [deployed their mobile device management infrastructure](contoso-mdm.md) with Microsoft 365 cloud services.

![The Contoso Corporation](../media/contoso-overview/contoso-icon.png)
