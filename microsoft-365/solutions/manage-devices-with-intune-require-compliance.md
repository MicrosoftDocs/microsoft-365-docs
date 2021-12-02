---
title: "Step 4. Require healthy and compliant devices with Intune"
ms.author: bcarter
author: brendacarter
f1.keywords:
- NOCSH
manager: dougeby
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- M365-security-compliance
ms.custom: seo-marvel-jun2020
keywords: 
description: 
---

# Step 4. Require healthy and compliant devices with Intune

Conditional Access provides additional verification of device status prior to allowing access to a service. Conditional Access doesn’t work unless you specify conditions. In [Step 3. Set up compliance policies](manage-devices-with-intune-compliance-policies.md), you defined compliance policies that specify the minimum requirements a device must meet to access your environment. In this article, you’ll create the corresponding Conditional Access policy in Azure AD to require compliant devices. This helps keep your corporate data secure while giving users the ability to work from any device and from any location.

After setting up device compliance policies and assigning these to user groups, Intune lets Azure AD know if a device is compliant or not. To use this status as a condition for access, you must work with your Azure AD administrator to create a Conditional Access rule to require compliant PCs and mobile devices.


![Steps for managing devices](../media/devices/intune-mdm-step-3.png#lightbox)

The recommended Zero Trust identity and device access rule set includes this rule. See [Require compliant PCs and mobile devices](../security/office-365-security/identity-access-policies.md#require-compliant-pcs-and-mobile-devices), as illustrated below.


[![Zero Trust identity and device access policies](../media/devices/identity-device-require-compliance.png#lightbox)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/media/devices/identity-device-require-compliance.png)



Be sure to:
- Coordinate the user groups you assigned to your compliance policies with the user groups assigned to the Conditional Access policy.
- Test out your Conditional Access policies using the What If and Audit Mode capabilities before fully assigning the Conditional Access policy. This helps you understand the results of the policy.
- Set a grace period in line with the confidentiality of the data and/or app being accessed. 
- Make sure your compliance policies do not interfere with any regulatory or other compliance requirements. 
- Understand the device check in intervals for compliance policies.
- Avoid conflicts between compliance policies and configuration profiles. Understand the outcomes if you choose to.

To troubleshoot device profiles in Intune, including conflicts between policies, see [Common questions and answers with device policies and profiles in Microsoft Intune](/mem/intune/configuration/device-profile-troubleshoot).

Note: If you want to start by requiring compliant PCs, but not mobile devices, see [Require compliant PCs (but not phones and tablets)](../security/office-365-security/identity-access-policies.md) 

## Next steps

Go to Step [5. Deploy device profiles in Microsoft Intune](manage-devices-with-intune-configuration-profiles.md)
