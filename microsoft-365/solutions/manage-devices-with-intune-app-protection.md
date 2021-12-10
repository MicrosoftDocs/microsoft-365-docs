---
title: "Step 1. Implement App Protection Policies"
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
- m365solution-managedevices
- m365solution-scenario
ms.custom: 
keywords: 
description: 
---

# Step 1. Implement App Protection Policies

Intune App Protection policies (APP), sometimes referred to as Mobile Application Management (MAM), protect corporate data even if a device itself is not managed. This allows you to enable bring-your-own (BYO) and personal devices at work where users may be reluctant to “enroll” their device into management. App Protection policies ensure corporate data in the apps you specify cannot be copied and pasted to other apps on the device.

![Steps for creating app protection policies](../media/devices/intune-app-steps.png#lightbox)

In this illustration:
- With APP, Intune creates a wall between your organization data and personal data. The app protection policies define which apps are allowed to access your data.
- If a user signs in with their organization credentials, Intune applies a policy at the app layer to prevent copy and paste of your organization data to personal apps and to require PIN access to this data.
- After creating an App Protection policy, you enforce data protection with a conditional access policy. 

This configuration greatly increases your security posture with almost no impact to the user experience.  Employees can use apps like Office and Microsoft Teams, that they know and love, while at the same time your organization can protect the data contained within the apps and devices.

If you have custom Line of Business applications that need protection, currently you can use the app wrapping tool to enable APP with these applications. Or, you can integrate using the Intune App SDK. When your app has app protection policies applied to it, it can be managed by Intune and is recognized by Intune as a managed app. For more information on protecting your Line of Business applications using Intune, see [Prepare apps for mobile application management with Microsoft Intune](/mem/intune/developer/apps-prepare-mobile-application-management).

## Configuring mobile app protection

This guidance is tightly coordinated with the recommended [Zero Trust identity and device access policies](../security/office-365-security/microsoft-365-policies-configurations.md). After you create the Mobile App protection policies in Intune, work with your identity team to configure the conditional access policy in Azure AD that enforces mobile app protection. 

This illustration highlights the two policies (also described in the table below the illustration).

[![Zero Trust identity and device access policies](../media/devices/identity-device-starting-point.png#lightbox)](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/media/devices/identity-device-starting-point.png)

To configure these policies, use the recommended guidance and settings prescribed in [Zero Trust identity and device access policies](../security/office-365-security/microsoft-365-policies-configurations.md). The table below links directly to the instructions for configuring these policies in Intune and Azure AD.


|Step  |Policies  |More information  |Licensing  |
|---------|---------|---------|---------|
|1   |  [Apply Application Protection Policies (APP) data protection](../security/office-365-security/identity-access-policies.md#apply-app-data-protection-policies)       | One Intune App Protection policy per platform (Windows, iOS/iPadOS, Android).        | Microsoft 365 E3 or E5        |
|2     | [Require approved apps and app protection ](../security/office-365-security/identity-access-policies.md#require-approved-apps-and-app-protection)       |  Enforces mobile app protection for phones and tablets using iOS, iPadOS, or Android.   |  Microsoft 365 E3 or E5       |
| | | | |

## Next steps

Go to [Step 2. Enroll devices into management with Intune](manage-devices-with-intune-enroll.md). 