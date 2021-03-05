---
title: "Enroll iOS/iPadOS and Android devices in your Microsoft 365 for enterprise test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 11/19/2020
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-identity-device-management
ms.custom: Ent_TLGs
ms.assetid: 49c7758a-1c01-4153-9b63-5eae3f6305ce
description: Use this Test Lab Guide to enroll devices in your Microsoft 365 test environment and manage them remotely.
---

# Enroll iOS and Android devices in your Microsoft 365 for enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

This article describes how to enroll and test basic mobile device management capabilities for iOS/iPadOS and Android devices in your Microsoft 365 for enterprise test environment.

Enrolling iOS/iPadOS and Android devices in your test environment involves three phases:
- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Enroll your iOS/iPadOS and Android devices](#phase-2-enroll-your-ios-and-android-devices)
- [Phase 3: Manage your iOS/iPadOS and Android devices remotely](#phase-3-manage-your-ios-and-android-devices-remotely)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)
  
> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).

## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you want to enroll iOS/iPadOS and Android devices in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to enroll iOS/iPadOS and Android devices in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership doesn't require the simulated enterprise test environment, which includes a simulated intranet connected to the internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It's provided here as an option so that you can test automated licensing and group membership, and you can experiment with it in an environment that represents a typical organization.

## Phase 2: Enroll your iOS and Android devices

If you're considering a mobile device management (MDM) solution to manage your devices, you can use Microsoft Intune. When working with any MDM provider, including Intune, devices are "enrolled". When enrolled, they receive the features and settings you configure. 

In Intune, there are a few ways to enroll your iOS/iPadOS and Android devices. You can choose the enrollment option that works best for your organization. For more information and guidance, see the following articles:

- [Deployment guide: Enroll iOS and iPadOS devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-enrollment-ios-ipados)
- [Deployment guide: Enroll Android devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-enrollment-android)

If you're ready to use Intune for device management, and want some guidance, then the following information may help:

- [Device management overview](/mem/intune/fundamentals/what-is-device-management)
- [Tutorial: Walkthrough Intune in Microsoft Endpoint Manager](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager)
- [Deployment guide: Setup or move to Microsoft Intune](/mem/intune/fundamentals/deployment-guide-intune-setup)

## Phase 3: Manage your iOS and Android devices remotely

Microsoft Intune provides remote lock and passcode reset feature. If someone loses their device, you can remotely lock the device. If someone forgets their passcode, you can remotely reset it.

- To remotely lock an iOS/iPadOS or Android device, see [Remotely lock devices with Intune](/mem/intune/remote-actions/device-remote-lock).
- To remotely reset the passcode, see [Reset or remove a device passcode in Intune](/mem/intune/remote-actions/device-passcode-reset).

For additional tasks you can run remotely, see [available device actions](/mem/intune/remote-actions/device-management#available-device-actions).
    
## Next step

Explore additional [mobile device management](m365-enterprise-test-lab-guides.md#mobile-device-management) features and capabilities in your test environment.

## See Also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)
  
[Device compliance policies for your Microsoft 365 for enterprise test environment](mam-policies-for-your-microsoft-365-enterprise-dev-test-environment.md)
  
[Microsoft 365 for enterprise overview](microsoft-365-overview.md)
