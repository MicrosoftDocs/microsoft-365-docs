---
title: "Wipe a mobile device in Basic Mobility and Security"
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
- M365-subscription-management
- Adm_O365
- Adm_TOC
- basic-mobility-security
ms.custom:
- AdminSurgePortfolio
- admindeeplinkMAC
- basic-mobility-security
search.appverid:
- MET150
description: "Use built-in Basic Mobility and Security to remove information from enrolled devices."
---

# Wipe a mobile device in Basic Mobility and Security

You can use built-in Basic Mobility and Security for Microsoft 365 to remove only organizational information, or to perform a factory reset to delete all information from a mobile device and restore it to factory settings.

## Before you begin

Mobile devices can store sensitive organizational information and provide access to your organization's Microsoft 365 resources. To help protect your organization's information, you can do Factory reset or Remove company data:

- **Factory reset**: Deletes all data on a user's mobile device, including installed applications, photos, and personal information. When the wipe is complete, the device is restored to its factory settings.

- **Remove company data**: Removes only organization data and leaves installed applications, photos, and personal information on a user's mobile device.

- **When a device is wiped (Factory Reset or Remove Company Data)**, the device is removed from the list of managed devices.

- **Automatically reset a device**: You can set up a Basic Mobility and Security policy that automatically factory resets a device after the user unsuccessfully tries to enter the device password a specific number of times. To do this, follow the steps in [Create device security policies in basic mobility and security](create-device-security-policies.md).

- **If you want to know the user experience** when you wipe their device, see [What's the user and device impact?](#whats-the-user-and-device-impact).

## Wipe a mobile device

1. Sign in to the Microsoft 365 admin center, and go to the [Active devices](https://admin.microsoft.com/Adminportal/Home?#/IntuneDevices/?isMifo=true) page.

1. Select **Manage devices**.

1. Select the device you want to wipe.

1. Select **Manage**.

1. Select the type of remote wipe you want to do.

    - To do a full wipe and restore the device to its factory settings, select **Factory reset**.
    - To do a selective wipe and delete only Microsoft 365 organization information, select **Remove company data**.
    - To remove the device from your organization, select **Remove device**.

1. Select **Yes** to confirm.

## How do I know it worked?

You no longer see the mobile device in the list of managed devices.

## Why would you want to wipe a device?

Wipe a device for these reasons:

- Mobile devices like smartphones and tablets are becoming more full-featured all the time. This means it’s easier for your users to store sensitive corporate information such as personal identification or confidential communications and access it on the go. If one of these mobile devices is lost or stolen, wiping the device can help prevent your organization’s information from ending up in the wrong hands.
- When a user leaves the organization with a personal device that is enrolled in Basic Mobility and Security, you can help prevent organizational information from going with that user by performing a factory reset.
- If your organization provides mobile devices to users, you might need to reassign devices from time to time. Doing a Factory Reset on a device before assigning it to a new user helps ensure that any sensitive information from the previous owner is deleted.

## What's the user and device impact?

The wipe is sent immediately to the mobile device and the device is marked as not compliant in Microsoft Entra ID. While all data is removed when a device is reset to factory defaults, the following table describes what content is removed for each device type when a device when you remove company data.

|Content impact|iOS|Android|
|---|---|---|
|Microsoft 365 app data is wiped if the device is protected by Intune App Protection policies. The apps aren't removed. For devices not protected by Mobile Application Management (MAM) policies, Outlook and OneDrive won't remove cached data.<br/>**Note** For applying Intune App protection policies you must have an Intune license.|Yes|Yes|
|Policy settings applied by Basic Mobility and Security to devices are no longer enforced; users can change the settings.|Yes|Yes|
|Email profiles created by Basic Mobility and Security are removed and cached email on the device is deleted.|Yes|N/A|

> [!NOTE]
> Company Portal app is available at the App Store for iOS and the Play Store for Android devices.
