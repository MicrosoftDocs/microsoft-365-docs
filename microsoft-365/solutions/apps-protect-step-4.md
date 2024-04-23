---
title: "Step 4. Understand app protection delivery"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 03/29/2024
description: Step 4. Understand app protection delivery.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 4. Understand app protection delivery


> [!IMPORTANT]
> You can require that an Intune app protection policy is present for the client app before access is available to the selected applications. For more information, see [Require app protection policy](/entra/identity/conditional-access/concept-conditional-access-grant#require-app-protection-policy).

Before an app protection policy can be used to protect an app on a device, the policy must be delivered and applied to the user at your organization. There are several timing reasons and remedies that impact app protection policy delivery. 

Common user state issues that impact the delivery of app protection policies:
- **Issue**: Tenant not on-boarded.<br>
  **Solution**: You must set up your tenant for Intune.
- **Issue**: User isn't licensed.<br>
  **Solution**: You must assign an Intune license to the user.
- **Issue**: User isn't assigned app protection policies.<br>
  **Solution**: You must assign app protection policy settings to the user.
- **Issue**: User is assigned an app protection policy, but the related app isn't included in the policy.<br>
  **Solution**: You must include the app that you want to protect in the app protection policy.
- **Issue**: User successfully registered for Intune MAM, however they haven't had the app protection policy applied yet.<br>
  **Solution**: Intune typically takes 30 minutes to register users.

For specific timing for each of the above issues, see [Delivery timing summary](/mem/intune/apps/app-protection-policy-delivery#delivery-timing-summary).

## Limiting app extensions

You can limit Outlook add-ins and LinkedIn account connections as a method of protecting your organization's data. Outlook add-ins are available to integrate extended functionality for Outlook. These add-ins are available on the web. You can't directly manage these add-ins using Intune. However, you can remove specific roles for your end-users that will prevent them from installing and side-loading add-ins.

Additionally, you can disable LinkedIn account connections for your entire organization, or you can enable LinkedIn account connections for selected user groups in your organization. These settings affect LinkedIn connections across Microsoft 365 apps on all platforms (web, mobile, and desktop). 

For more information, see [Protecting application extensions](/mem/intune/apps/app-protection-policy-extensions).  

## Next step

[:::image type="content" source="../media/protect-managed-apps/protect-managed-apps-steps-05.png" alt-text="Step 5. Verify and monitor app protection." border="false" :::](apps-protect-step-5.md)

Continue with [Step 5](apps-protect-step-5.md) to verify and monitor app protection in Microsoft Intune.
