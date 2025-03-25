---
title: "Step 4. Require healthy and compliant devices with Intune"
ms.author: bcarter
author: brendacarter
f1.keywords:
- Conditional access policy
- Microsoft Intune
- Intune device management 
manager: dougeby
ms.date: 03/14/2025
audience: ITPro
description: Create a conditional access policy in Microsoft Entra ID to require compliant devices, keeping corporate data secure when users work from any device in any location.
ms.topic: how-to
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- Conditional access policy
- Microsoft Intune
- M365-security-compliance
- m365solution-managedevices
- m365solution-scenario
- zerotrust-solution
ms.custom: 
---

# Step 4. Require healthy and compliant devices with Intune

Conditional Access provides additional verification of device status before allowing access to a service. Conditional Access doesn’t work unless you specify conditions. In [Step 3. Set up compliance policies](manage-devices-with-intune-compliance-policies.md), you defined compliance policies that specify the minimum requirements a device must meet to access your environment. As described in this article, you’ll create the corresponding Conditional Access policy in Microsoft Entra ID to require compliant devices. This helps keep your corporate data secure while giving users the ability to work from any device and from any location.

After setting up device compliance policies and assigning these to user groups, Intune lets Microsoft Entra ID know if a device is compliant or not. To use this status as a condition for access, you must work with your Microsoft Entra administrator to create a Conditional Access rule to require compliant PCs and mobile devices.

:::image type="content" source="../media/devices/intune-mdm-step-3.png" alt-text="The third step of Mobile Device Management to restrict access to managed and compliant devices." lightbox="../media/devices/intune-mdm-step-3.png":::

The recommended Zero Trust identity and device access rule set includes this rule. See [Require compliant PCs and mobile devices](../security/office-365-security/zero-trust-identity-device-access-policies-common.md#require-compliant-pcs-and-mobile-devices), as seen in the following illustration.

:::image type="content" source="../media/devices/identity-device-require-compliance.svg" alt-text="Highlighted Zero Trust identity and device access policies to require compliant PCs and mobile devices." lightbox="../media/devices/identity-device-require-compliance.svg":::

Be sure to:

- Coordinate the user groups you assigned to your compliance policies with the user groups assigned to the Conditional Access policy.
- Test out your Conditional Access policies using the What If and Audit Mode capabilities before fully assigning the Conditional Access policy. These capabilities help you understand the results of the policy.
- Set a grace period in line with the confidentiality of the data or app being accessed.
- Make sure your compliance policies don't interfere with any regulatory or other compliance requirements.
- Understand the device check-in intervals for compliance policies.
- Avoid conflicts between compliance policies and configuration profiles.

For information about these policies, including troubleshooting device profiles in Intune and understanding conflicts between policies, see [Common questions and answers with device policies and profiles in Microsoft Intune](/mem/intune-service/configuration/device-profile-troubleshoot).

To learn more about implementing common identify and device access policies, see [Common security policies for Microsoft 365 organizations](../security/office-365-security/zero-trust-identity-device-access-policies-common.md).

## Next steps

Go to Step [5. Deploy device profiles in Microsoft Intune](manage-devices-with-intune-configuration-profiles.md)
