---
title: "Step 4. Troubleshoot app deployment issues"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
ms.date: 09/12/2024
description: Step 4. Troubleshoot app deployment issues.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# Step 4. Troubleshoot app deployment issues

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

> [!IMPORTANT]
> You can require that an Intune app protection policy is present for the client app before access is available to the selected applications. For more information, see [Require app protection policy](/entra/identity/conditional-access/concept-conditional-access-grant#require-app-protection-policy).

## Troubleshoot app installation issues

An app may fail to install for a variety of reasons. The following list provides possible reasons why an app installation might fail:
- An installation file is deleted after the it's downloaded, but before the app is installed
- The installation command for the app failed
- The network connection was lost
- The device was rebooted during the installation process
- The device was busy
- The user rejected the offer to install the app
- The user explicitly uninstalled the app
- The download of key installation files were deleted
- The download of key installation files were stopped by the OS
- The download services unexpectedly stopped
- An issue occurred related to the app certificate
- The app wasn't correctly signed
- An issue occurred related to the VPP token
- The app has a store related issue

If you experience an app installation error, you can start by troubleshooting the error code that you receive. For more information, see [Intune app installation error reference](/troubleshoot/mem/intune/app-management/app-install-error-codes). 

For more information about troubleshooting Windows, iOS, macOS, and Android apps, see [App management troubleshooting documentation](/troubleshoot/mem/intune/app-management/app-management).

## Limit app extensions

You can limit Outlook add-ins and LinkedIn account connections as a method of protecting your organization's data. Outlook add-ins are available to integrate extended functionality for Outlook. These add-ins are available on the web. You can't directly manage these add-ins using Intune. However, you can remove specific roles for your end-users that prevent them from installing and side-loading add-ins.

Additionally, you can disable LinkedIn account connections for your entire organization, or you can enable LinkedIn account connections for selected user groups in your organization. These settings affect LinkedIn connections across Microsoft 365 apps on all platforms (web, mobile, and desktop). 

For more information, see [Protecting application extensions](/mem/intune/apps/app-protection-policy-extensions).  

## After assigning and deploying apps using Intune

Once you have reviewed and completed the steps provided in this solution, you're ready to manage and maintain the managed apps your organization uses.

For more information related to managing and maintaining apps with Intune, see the following topics:
- [Microsoft Intune app management](/mem/intune/apps/app-management)
- [App management troubleshooting documentation](/troubleshoot/mem/intune/app-management/app-management)
- [Get started with your Microsoft Intune deployment](/mem/intune/fundamentals/get-started-with-intune)