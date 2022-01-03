---
title: "Step 3. Set up compliance policies for devices with Intune"
ms.author: bcarter
author: brendacarter
f1.keywords:
- NOCSH
manager: dougeby
audience: ITPro
description: Learn how to create device compliance policies that specify the minimum requirements for a device to access your environment.
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- Create compliance policies
- Intune device compliance policy
ms.custom: 
keywords: 
---

# Step 3. Set up compliance policies for devices with Intune

Enrolling devices into management gives you the ability to achieve even greater security and control of data in your environment. [Step 2. Enroll devices into management](manage-devices-with-intune-enroll.md) details how to accomplish this using Intune and Autopilot. This article covers the next step, which is to configure device compliance policies. 

![Steps managing devices](../media/devices/intune-mdm-step-2.png#lightbox)

You want to be sure devices that are accessing your apps and data meet minimum requirements, for example they’re password or pin-protected and the operating system is up to date. Compliance policies are the way to define the requirements that devices must meet. MEM uses these compliance policies to mark a device as compliant or non-compliant This binary status is passed to Azure AD which can use this status in conditional access rules to allow or prevent a device from accessing resources. 

## Configuring device compliance policies

This guidance is tightly coordinated with the recommended [Zero Trust identity and device access policies](../security/office-365-security/microsoft-365-policies-configurations.md).

This illustration highlights where the work of defining compliance policies fits into the overall Zero Trust recommended policy set. 

[![Zero Trust identity and device access policies](../media/devices/identity-device-define-compliance.png#lightbox)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/media/devices/identity-device-define-compliance.png)

In this illustration, defining device compliance policies is a dependency for achieving the recommended level of protection within the Zero Trust framework. 

To configure device compliance policies, use the recommended guidance and settings prescribed in [Zero Trust identity and device access policies](../security/office-365-security/microsoft-365-policies-configurations.md). The table below links directly to the instructions for configuring these policies in Intune, including the recommended settings for each platform.


|Policies |More information  |Licensing |
|---------|---------|---------|
|[Define device compliance policies ](../security/office-365-security/identity-access-policies.md#define-device-compliance-policies)   |  One policy for each platform       |  Microsoft 365 E3 or E5       |
|  |         |         |

## Next steps

Go to [Step 4. Require healthy and compliant devices](manage-devices-with-intune-require-compliance.md) for instructions on how to create the conditional access rule in Azure AD.