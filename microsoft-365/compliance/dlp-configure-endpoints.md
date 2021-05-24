---
title: Onboarding tools and methods for Windows 10 devices
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


description: Onboard Windows 10 devices so that they can send sensor data to the Microsoft 365 Compliance solutions
---

# Onboarding tools and methods for Windows 10 devices

**Applies to:**
- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)

Devices in your organization must be configured so that the Microsoft 365 Endpoint data loss prevention service can get sensor data from them. There are various methods and deployment tools that you can use to configure the devices in your organization.

The following deployment tools and methods are supported:

- group policy
- Microsoft Endpoint Configuration Manager
- Mobile Device Management (including Microsoft Intune)
- local script

## In this section
Topic | Description
:---|:---
[Onboard Windows 10 devices using Group Policy](dlp-configure-endpoints-gp.md) | Use Group Policy to deploy the configuration package on devices.
[Onboard Windows devices using Microsoft Endpoint Configuration Manager](dlp-configure-endpoints-sccm.md) | You can use either use Microsoft Endpoint Configuration Manager (current branch) version 1606 or Microsoft Endpoint Configuration Manager (current branch) version 1602 or earlier to deploy the configuration package on devices.
[Onboard Windows 10 devices using Mobile Device Management tools](dlp-configure-endpoints-mdm.md) | Use Mobile Device Management tools or Microsoft Intune to deploy the configuration package on device.
[Onboard Windows 10 devices using a local script](dlp-configure-endpoints-script.md) | Learn how to use the local script to deploy the configuration package on endpoints.
[Onboard non-persistent virtual desktop infrastructure (VDI) devices](dlp-configure-endpoints-vdi.md) | Learn how to use the configuration package to configure VDI devices.