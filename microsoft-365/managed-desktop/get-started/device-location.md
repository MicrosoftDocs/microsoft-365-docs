---
title: Windows 10 location service
description:  How to have Windows location services turned on for your devices
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
f1.keywords:
- NOCSH
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
ms.topic: article
audience: Admin
---

# Windows 10 location service

Devices in Microsoft Managed Desktop are registered by using Windows Autopilot. This process lets us manage them with Azure Active Directory and Microsoft Intune. By default, the Windows 10 location service is disabled when a device is turned on for the first time unless this feature is enabled in the Privacy settings during the "out of box experience." These settings are hidden during Autopilot enrollment in Microsoft Managed Desktop. For more information about how Autopilot is set up, see [First-run experience with Autopilot and the Enrollment Status Page](esp-first-run.md).

For this reason, Microsoft Managed Desktop devices can't obtain their device location, which limits the functionality of several Windows features, such as time zones. For more information about the Windows 10 location service, see [Windows 10 location service and privacy](https://support.microsoft.com/windows/windows-10-location-service-and-privacy-3a8eee0a-5b0b-dc07-eede-2a5ca1c49088).

You don't have to use the location service in order to participate in Microsoft Managed Desktop, but the user experience will be restricted. For example, devices won't be able to automatically determine the time zone they're in when your users work in a different time zone.

## Enable the location service

You can either opt in to using the location service when you enroll devices into the Microsoft Managed Desktop service or you can turn the service on or off after enrollment.

### Opt in during enrollment

You can have the Microsoft Managed Desktop service enable the location service. During the enrollment sequence, you'll be asked to select whether you want to allow the Windows 10 location service to be enabled on devices.

### Control the location service after enrollment

You can have the location service turned on (or off) at any time by submitting a [support request](../working-with-managed-desktop/admin-support.md) through the [Admin portal](access-admin-portal.md).

## How Microsoft Managed Desktop configures the Windows 10 location service

If you opt in to using the location service, we use the minimum settings necessary without affecting users' privacy. For more information, see [Windows 10 location service and privacy](https://support.microsoft.com/windows/windows-10-location-service-and-privacy-3a8eee0a-5b0b-dc07-eede-2a5ca1c49088).

Microsoft Managed Desktop enables the **Location privacy** setting in **Windows settings** to **Allow access to location on this device**. The user interface looks like this:

 :::image type="content" source="../../media/MMD-location-services-UI.png" alt-text="Location settings in Windows settings":::

> [!NOTE]
> If you opt in to using the location service, this applies only to the Windows operating system itself. Apps are not allowed to use location services. Each user can choose whether to allow apps to access their location.