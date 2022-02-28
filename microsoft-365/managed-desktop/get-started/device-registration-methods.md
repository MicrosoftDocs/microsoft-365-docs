---
title: Device registration methods in Microsoft Managed Desktop 
description:  Information on the device registration methods in Microsoft Managed Desktop
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
audience: Admin
---

# Device registration methods

Before Microsoft can manage your devices in Microsoft Managed Desktop, you must have devices registered with the service.

## Registration process

Microsoft Managed Desktop is powered by the Windows Autopilot service for the device registration workflow. Successful device registration requires a two-step process:

1. The device's unique hardware identity, known as the hardware hash, is captured and uploaded to the Autopilot service.
1. The device is associated to an Azure Active Directory tenant ID.

Ideally, both steps are performed by the OEM, reseller, or distributor where the devices were purchased. An OEM, or other device provider, uses the registration authorization process to perform device registration on your behalf.

## Registration methods

Registration can also be performed within your organization by collecting the hardware identity from new or existing devices and uploading it manually. Below are the device registration methods Microsoft Managed Desktop supports:

- OEM registration
    - [Using the Partner portal](partner-registration.md#register-devices-using-the-partner-center)
    - [Using OEM APIs](partner-registration.md#register-devices-by-using-the-oem-api)
- [Manual registration](manual-registration.md)
- [Manual registration for existing devices](manual-registration-existing-devices.md)

## Recommended resources

- [Overview of Windows Autopilot](/mem/autopilot/windows-autopilot)
- [Windows Autopilot registration overview](/mem/autopilot/registration-overview)

## Steps to get started with Microsoft Managed Desktop

1. Access [admin portal](access-admin-portal.md).
1. [Add and verify admin contacts in the Admin portal](add-admin-contacts.md).
1. [Adjust settings after enrollment](conditional-access.md).
1. Deploy and assign [Intune Company Portal](company-portal.md).
1. [Assign licenses](assign-licenses.md).
1. [Deploy apps](deploy-apps.md).
1. [Prepare devices](prepare-devices.md).
1. Set up [first-run experience with Autopilot and the Enrollment Status Page](esp-first-run.md).
1. [Enable user support features](enable-support.md).
1. [Get your users ready to use devices](get-started-devices.md).
1. [Get started with app control](get-started-app-control.md).
