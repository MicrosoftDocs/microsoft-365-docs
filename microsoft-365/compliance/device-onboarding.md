---
title: Onboarding methods and tools for Windows 10 or Windows 11 devices
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance 
search.appverid:
- MET150 


description: Onboard Windows 10 or Windows 11 devices so that they can send sensor data to the Microsoft 365 Compliance solutions
---

# Onboarding tools and methods for Windows 10 or Windows 11 devices

**Applies to:**

- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)

Windows 10, Window 11 and macOS devices in your organization must be configured so that the Microsoft 365 information protection and other compliance services can get sensor data from them. There are various methods and deployment tools that you can use to configure the devices in your organization.

The following deployment tools and methods are supported:

- group policy
- Microsoft Endpoint Configuration Manager
- Mobile Device Management (including Microsoft Intune)
- local script

## In this section
Topic | Description
:---|:---
[Onboard Windows 10 or 11 devices using Group Policy](device-onboarding-gp.md) | Use Group Policy to deploy the configuration package on devices.
[Onboard Windows 10 or 11 devices using Microsoft Endpoint Configuration Manager](device-onboarding-sccm.md) | You can use either use Microsoft Endpoint Configuration Manager (current branch) version 1606 or Microsoft Endpoint Configuration Manager (current branch) version 1602 or earlier to deploy the configuration package on devices.
[Onboard Windows 10 or 11 devices using Mobile Device Management tools](device-onboarding-mdm.md) | Use Mobile Device Management tools or Microsoft Intune to deploy the configuration package on device.
[Onboard Windows 10 or 11 devices using a local script](device-onboarding-script.md) | Learn how to use the local script to deploy the configuration package on endpoints.
[Onboard non-persistent virtual desktop infrastructure (VDI) devices](device-onboarding-vdi.md) | Learn how to use the configuration package to configure VDI devices.
|[Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Intune (preview)](device-onboarding-offboarding-macos-intune.md#onboard-and-offboard-macos-devices-into-microsoft-365-compliance-solutions-using-intune-preview) | Learn how to onboard macOS devices into Compliance solutions using Intune
|[Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-intune-mde.md#onboard-and-offboard-macos-devices-into-compliance-solutions-using-intune-for-microsoft-defender-for-endpoint-customers-preview) | Use this procedure for onboarding macOS devices using Intune if you already have Microsoft Defender for Endpoint (MDE) deployed to them.
|[Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using JAMF Pro (preview)](device-onboarding-offboarding-macos-jamfpro.md#onboard-and-offboard-macos-devices-into-microsoft-365-compliance-solutions-using-jamf-pro-preview) | Use this procedure if you manage your macOS devices with JAMF Pro.
|[Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers (preview)](device-onboarding-offboarding-macos-jamfpro-mde.md#onboard-and-offboard-macos-devices-into-compliance-solutions-using-jamf-pro-for-microsoft-defender-for-endpoint-customers-preview)| Use this procedure for onboarding macOS devices using JAMF Pro if you already have Microsoft Defender for Endpoint (MDE) deployed to them.
