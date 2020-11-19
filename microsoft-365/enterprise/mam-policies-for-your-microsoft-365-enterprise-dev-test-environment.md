---
title: "Device compliance policies for your Microsoft 365 for enterprise test environment"
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
ms.assetid: 1aa9639b-2862-49c4-bc33-1586dda636b8
description: Use this Test Lab Guide to add Intune device compliance policies to your Microsoft 365 for enterprise test environment.
---

# Device compliance policies for your Microsoft 365 for enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 for enterprise test environments.*

This article describes how to add an Intune device compliance policy for Windows 10 devices and Microsoft 365 Apps for enterprise to your Microsoft 365 for enterprise test environment.

Adding an Intune device compliance policy involves two phases:
- [Phase 1: Build out your Microsoft 365 for enterprise test environment](#phase-1-build-out-your-microsoft-365-for-enterprise-test-environment)
- [Phase 2: Create a device compliance policy for Windows 10 devices](#phase-2-create-a-device-compliance-policy-for-windows-10-devices)

![Test Lab Guides for the Microsoft cloud](../media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)

> [!TIP]
> For a visual map to all the articles in the Microsoft 365 for enterprise Test Lab Guide stack, go to [Microsoft 365 for enterprise Test Lab Guide Stack](../downloads/Microsoft365EnterpriseTLGStack.pdf).

## Phase 1: Build out your Microsoft 365 for enterprise test environment

If you want to configure MAM policies in only a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to configure MAM policies in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership doesn't require the simulated enterprise test environment, which includes a simulated intranet connected to the internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It's provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization.
>  

## Phase 2: Create a device compliance policy for Windows 10 devices

In this phase, you create a device compliance policy for Windows 10 devices. This phase uses Microsoft Intune and the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) to add a group, and create a compliance policy.

1. Go to the [Microsoft 365 admin center](https://admin.microsoft.com), and sign in to your Microsoft 365 test lab subscription with your global administrator account. Select the **Endpoint Manager** admin center. The [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431) opens.

    If a message similar to **You haven't enabled device management yet** message is shown, then select Intune as the MDM authority. For the specific steps, see [Set the mobile device management authority](/mem/intune/fundamentals/mdm-authority-set).

    The Endpoint Manager admin center focuses on device management and app management. For a tour of this admin center, see [Tutorial: Walkthrough Intune in Microsoft Endpoint Manager](/mem/intune/fundamentals/tutorial-walkthrough-endpoint-manager).

2. In **Groups**, add a new **Microsoft 365** or **Security** group named **Managed Windows 10 device users**, with an **Assigned** membership type. In the next steps, you'll assign your compliance policy to this group. 

    For the specific steps, and for information on **Microsoft 365** or **Security** groups, see [Add groups to organize users and devices](/mem/intune/fundamentals/groups-add).

3. In **Devices**, create a Windows 10 compliance policy. Assign this policy to the **Managed Windows 10 device users** group you created.

    In your policy, you can block simple passwords, require a firewall, require the Microsoft Defender Antimalware service be running, and more. A compliance policy typically includes the base settings, or bare minimum that every device should have.

    For the specific steps, and for information on the available compliance settings you can configure, see [Use compliance policies to set rules for devices you manage](/mem/intune/protect/device-compliance-get-started).

When finished, you have a device compliance policy for testing members in the **Managed Windows 10 device users** group.
  
## Next step

Explore additional [mobile device management](m365-enterprise-test-lab-guides.md#mobile-device-management) features and capabilities in your test environment.

## See also

[Microsoft 365 for enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md).
  
[Enroll iOS and Android devices in your Microsoft 365 for enterprise test environment](enroll-ios-and-android-devices-in-your-microsoft-enterprise-365-dev-test-environ.md)
  
[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Enterprise Mobility + Security (EMS)](https://www.microsoft.com/cloud-platform/enterprise-mobility-security)
