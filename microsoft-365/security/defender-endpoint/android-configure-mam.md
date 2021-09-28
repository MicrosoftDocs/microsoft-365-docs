---
title: Configure Microsoft Defender for Endpoint on Android features
description: Describes how to configure Microsoft Defender for Endpoint on Android
keywords: microsoft, defender, Microsoft Defender for Endpoint, mde, android, configuration
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: shthota
author: shthota
localization_priority: Normal
audience: ITPro
ms.collection:
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Configure Microsoft Defender for Endpoint risk signals in app protection policy (MAM)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)



Microsoft Defender for Endpoint Android, which is already protecting enterprise users on Mobile Device Management (MDM) scenario, now extends supports Mobile App Management (MAM), which allows you to manage and protects your organization's data within an application.
Microsoft Defender for Endpoint Android threat information is leveraged by Intune App Protection policy to protect these apps. App protection policies (APP) are rules that ensure an organization's data remains safe or contained in a managed app. A managed app has app protection policies applied to it and can be managed by Intune.  

MDE (Mobile) supports both the configurations of MAM
- **Intune MDM + MAM**: IT administrators can only manage apps using App Protection Policies on devices that are enrolled with Intune mobile device management (MDM).
- **MAM without device enrollment**: MAM without device enrollment, or MAM-WE, allows IT administrators to manage apps using [App Protection Policies]() on devices not enrolled with Intune MDM. This means apps can be managed by Intune on devices enrolled with third-party EMM providers. 
To manage apps using in both the above configurations customers should use Intune in the [Microsoft Endpoint Manager admin center]()


## Admin Pre-requisites

**1. Validate if ATP-Intune connector is enabled**
- Go to security.microsoft.com -> ‘Settings’ -> Endpoints-> ‘Advanced   Features’-> ‘Microsoft Intune Connection’ is turned ‘On’.
- If not ‘On’ already, turn on the connector and Click ‘Save Preferences’ to save this setting.
[!Image]()
- Go to **Microsoft Endpoint Manager (Intune) and Validate whether ATP-Intune connector is enabled.
[!Image]()

**2. Enable Microsoft Defender for Endpoint**(Mobile) Connector for App Protection Policy (APP)

Setup connector on Intune Microsoft Endpoint Manager for App protection policies:

- Go to ‘Tenant Administration’ -> ‘Connectors and Tokens’ -> ‘Microsoft Defender for Endpoint’.
- Turn on the toggles for the app protection policy for Android and iOS (as seen in the screenshot below).
- Click ‘Save’.
[!Image]()


    ## Create App Protection Policy to block access or wipe data of a managed app, based on Defender risk signals

    Microsoft Defender for Endpoint can be configured to send threat signals to be used in app protection policies (APP, also known as MAM). With this capability, you can use Microsoft Defender for Endpoint to protect managed apps.

    1. **Create Policy:** App protection policies (APP) are rules that ensure an organization's data remains safe or contained in a managed app. A policy can be a rule that is enforced when the user attempts to access or move "corporate" data, or a set of actions that are prohibited or monitored when the user is inside the app. 
    [!Image]()

    **Add Apps:**

    **2.1 Choose how you wnat to apply this policy to apps on different devices.** Then add at least one app.

    Use this option to specify whether this policy applies to Unmanaged devices. In case of Android, you can specify the policy applies to Android Enterprise, Device Admin or Unmanaged devices. You can choose option to target your policy to apps on devices of any management state also.
    Because mobile app management doesn't require device management, you can protect company data on both managed and Unmanaged devices. The management is centered on the user identity, which removes the requirement for device management. Companies can use App protection policies with and without MDM at the same time. For example, consider an employee that uses both a phone issued by the company, and their own personal tablet. The company phone is enrolled in MDM and protected by App protection policies while the personal device is protected by App protection policies only.

    **2.2 Select Apps**

    A managed app is an app that has app protection policies applied to it, and can be managed by Intune. Any app that has been integrated with the [Intune SDK]() or wrapped by the [Intune App Wrapping Tool]() can be managed using Intune App Protection Policies. See the official list of [Microsoft Intune protected apps]() that have been built using these tools and are available for public use.

    *Example: Outlook as a managed app*
    [!Image]()

    **3. Conditional launch:** Set sign-in security requirements for your protection policy.

    Select **Setting “Max allowed device threat level”** in Device Conditions and enter a Value. Then select  **Action ” Block Access”**. Microsoft Defender for Endpoint (Mobile) shares this Device Threat Level.
[!Image]()

**3. Assignments:** Assign user groups for whom the policy needs to be applied.
[!Image]()


## End user Pre-requisites
1. Broker app needs to be installed
    - Android: Intune Company Portal all
    
2. User has required licenses for Managed app and has the app installed

**End user onboarding to managed app will initiate MDE mobile installation & activation**

1. On user sign in to Managed app (Example: Outlook app), registers the device and synchronizes App Protection Policy to the device.
2. App protection policy recognizes device health state. On clicking Continue, Get access screen is presented which recommends downloading and setup of Microsoft Defender for Endpoint Android app.
3.	On clicking Download, user is redirected to app store
    - Android app redirects to Google Play
    
4.	Install the Microsoft Defender For Endpoint (Mobile) app and launch back Managed app onboarding screen
[!Image]()
5. Click Continue -> Launch, Defender app onboarding/activation flow is initiated. Complete Defender app onboarding steps.
[!image]()
6.	User is automatically redirected back to Managed app onboarding screen, which now shows ‘Device is Healthy’
7.	On clicking Continue, user is successfully logged into Managed app 


## Related topics

- [Overview of Microsoft Defender for Endpoint on Android](microsoft-defender-endpoint-android.md)
- [Deploy Microsoft Defender for Endpoint on Android with Microsoft Intune](android-intune.md)
