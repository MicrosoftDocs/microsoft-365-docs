---
title: "Step 3. Set up compliance policies for devices with Intune"
ms.author: bcarter
author: brendacarter
f1.keywords:
- Create compliance policies
- Intune device compliance policy
manager: dougeby
ms.date: 04/17/2024
audience: ITPro
description: Learn how to create device compliance policies that specify the minimum requirements for a device to access your environment.
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- M365-security-compliance
- m365solution-managedevices
- m365solution-scenario
- zerotrust-solution
ms.custom: 
keywords: 
---

# Step 3. Set up compliance policies for devices with Intune

Enrolling devices to Intune gives you the ability to achieve even greater security and control of data in your environment. [Step 2. Enroll devices to Intune](manage-devices-with-intune-enroll.md) details how to accomplish this using Intune. This article covers the next step, which is to configure device compliance policies. 

:::image type="content" source="../media/devices/intune-mdm-step-2.png" alt-text="The second step of Mobile Device Management to create compliance policies." lightbox="../media/devices/intune-mdm-step-2.png":::

You want to be sure devices that are accessing your apps and data meet minimum requirements. For example, they’re password or pin-protected and the operating system is up to date. Compliance policies are the way to define the requirements that devices must meet. Intune uses these compliance policies to mark a device as compliant or non-compliant. This binary status is passed to Microsoft Entra which can use this status in Conditional Access rules to allow or prevent a device from accessing resources. 

## Configuring device compliance policies

This guidance is tightly coordinated with the recommended [Zero Trust identity and device access policies](../security/office-365-security/zero-trust-identity-device-access-policies-overview.md).

This illustration highlights where the work of defining compliance policies fits into the overall Zero Trust recommended policy set.

:::image type="content" source="../media/devices/identity-device-define-compliance.svg" alt-text="Highlighted Zero Trust identity and device access policies for Intune device compliance." lightbox="../media/devices/identity-device-define-compliance.svg":::

In this illustration, defining device compliance policies is a dependency for achieving the recommended level of protection within the Zero Trust framework. 

To configure device compliance policies, use the recommended guidance and settings prescribed in [Zero Trust identity and device access policies](../security/office-365-security/zero-trust-identity-device-access-policies-overview.md). The following table links directly to the instructions for configuring these policies in Intune, including the recommended settings for each platform.

|Policies |More information  |Licensing |
|---------|---------|---------|
|[Define device compliance policies](../security/office-365-security/zero-trust-identity-device-access-policies-common.md#create-device-compliance-policies)   |  One policy for each platform       |  Microsoft 365 E3 or E5       |

## Next step

Go to [Step 4. Require healthy and compliant devices with Intune](manage-devices-with-intune-require-compliance.md).
