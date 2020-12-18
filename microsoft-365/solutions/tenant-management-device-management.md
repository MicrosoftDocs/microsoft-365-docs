---
title: Step 5. Device and app management for your Microsoft 365 for enterprise tenancies
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
- m365solution-tenantmanagement
ms.custom:
- Ent_Solutions
description: "An overview of device and app management for your Microsoft 365 tenant."
---

# Step 5. Device and app management for your Microsoft 365 for enterprise tenancies

Microsoft 365 for enterprise includes features to help manage devices and the use of apps on those devices within your organization with mobile device management (MDM) and mobile application management (MAM). You can use Microsoft Intune or Basic Mobility and Security to manage iOS, Android, macOS, and Windows devices to protect access to your organization's resources, including your data. For example, you can prevent emails from being sent to people outside your organization or isolate organization data from personal data on your worker's personal devices.

Here is the validation and management of users, their devices, and their use of local and cloud productivity apps like Microsoft Teams.

![Validation and management of users, devices, and apps](../media/tenant-management-overview/tenant-management-device-app-mgmt.png)

To help you secure and protect your organization's resources, Microsoft 365 for enterprise includes features to help manage devices and their access to apps. There are two options for device management:

- Microsoft Intune
- Basic Mobility and Security

## Microsoft Intune

You can use Microsoft Intune to manage access to your organization using MDM or MAM. MDM is when users "enroll" their devices in Intune. After a device is enrolled, it is a managed device; therefore, it can receive your organization's  policies, rules, and settings. For example, you can install specific apps, create a password policy, install a VPN connection, and more.

Users with their own personal devices may not want to enroll their devices or be managed by Intune and your organization's policies. But you still need to protect your organization's resources and data. In this scenario, you can protect your apps using MAM. For example, you can use an MAM policy that requires a user to enter a PIN when accessing SharePoint Online on the device.

You'll also determine how you're going to manage personal devices and organization-owned devices. You might want to treat devices differently, depending on their uses.

## Basic Mobility and Security

This is built into Microsoft 365 and helps you secure and manage your users' mobile devices like iPhones, iPads, Androids, and Windows phones. You can create and manage device security policies, remotely wipe a device, and view detailed device reports.

## Choose between the two options

To help you better assess which device management option is best for you, see [Choose between Basic Mobility Security and Intune](https://docs.microsoft.com/office365/securitycompliance/choose-between-mdm-and-intune).

Based on your assessment, you can manage your devices and their access to apps with:

- [Intune](https://docs.microsoft.com/mem/intune/fundamentals/planning-guide).
- [Basic Mobility and Security](https://support.microsoft.com/office/set-up-basic-mobility-and-security-dd892318-bc44-4eb1-af00-9db5430be3cd).
 
## Identity and device access configurations

Microsoft provides a set of configurations for [identity and device access](../security/office-365-security/microsoft-365-policies-configurations.md) to ensure a secure and productive workforce. These configurations include the use of:

- Azure AD Conditional Access policies
- Microsoft Intune device compliance and app protection policies
- Azure AD Identity Protection user risk policies
- Additional policies of cloud apps

Here is the application of these settings and policies to validate and restrict users, their devices, and their use of local and cloud productivity apps like Microsoft Teams.

![Identity and device access configurations for requirements and restrictions on users, thier devices, and their use of apps](../media/tenant-management-overview/tenant-management-device-app-mgmt-golden-config.png)

For device access and app management, use the configurations in these articles:

- [Prerequisites](../security/office-365-security/identity-access-prerequisites.md)
- [Common identity and device access policies](../security/office-365-security/identity-access-policies.md)

## Results of Step 5

For device and app management for your Microsoft 365 tenancy, you have determined:

- 

Here is an example of a tenancy with device and app management.

[Example of a tenancy with device and app management](../media/tenant-management-overview/tenant-management-tenant-build-step5.png)

The tenancy has:

- 

## Ongoing maintenance for device and app management

On an ongoing basis, you might need to:

- 

