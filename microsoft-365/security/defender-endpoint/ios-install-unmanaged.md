---
title: Deploy Microsoft Defender for Endpoint on iOS with Mobile Application Management
description: Describes how to deploy Microsoft Defender for Endpoint on unenrolled iOS devices.
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, configure, features, ios
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: sunasing
author: sunasing
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 07/18/2021
---

# Deploy Microsoft Defender for Endpoint on iOS with Mobile Application Management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!NOTE]
> Defender for Endpoint on iOS uses a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.

## Configure Microsoft Defender for Endpoint risk signals in app protection policy (MAM)

Microsoft Defender for Endpoint on iOS, which already protects enterprise users on Mobile Device Management (MDM) scenarios, now extends support to Mobile App Management (MAM), for devices that are not enrolled using Intune mobile device management (MDM). It also extends this support to customers who use other enterprise mobility management solutions, while still using Intune for mobile application management (MAM).This capability allows you to manage and protect your organization's data within an application.

Microsoft Defender for Endpoint on iOS threat information is leveraged by Intune App Protection Policies to protect these apps. App protection policies (APP) are rules that ensure an organization's data remains safe or contained in a managed app. A managed application has app protection policies applied to it and can be managed by Intune.  

Microsoft Defender for Endpoint on iOS supports both the configurations of MAM
- **Intune MDM + MAM**: IT administrators can only manage apps using App Protection Policies on devices that are enrolled with Intune mobile device management (MDM).
- **MAM without device enrollment**: MAM without device enrollment, or MAM-WE, allows IT administrators to manage apps using [App Protection Policies](/mem/intune/apps/app-protection-policy) on devices not enrolled with Intune MDM. This means apps can be managed by Intune on devices enrolled with third-party EMM providers. 
To manage apps using in both the above configurations customers should use Intune in the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431)

To enable this capability an administrator needs to configure the connection between Microsoft Defender for Endpoint and Intune, create the app protection policy, and apply the policy on targeted devices and applications. 
 
End users also need to take steps to install Microsoft Defender for Endpoint on their device and activate the onboarding flow.

### Pre-requisites

1. **Verify that the Intune connector is enabled in Security portal**. <br> On the [unified security console](https://security.microsoft.com), go to **Settings** > **Endpoints** > **Advanced Features** and ensure that **Microsoft Intune connection** is enabled.

  :::image type="content" source="images/enable-intune-connection.png" alt-text="The Defender for Endpoint - Intune connector" lightbox="images/enable-intune-connection.png":::

2. **Verify that the APP connector is enabled in Intune portal**. <br> In the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Endpoint Security** > **Microsoft Defender for Endpoint** and ensure that the Connection status is enabled.

  :::image type="content" source="images/app-settings.png" alt-text="The application settings" lightbox="images/app-settings.png":::

### Create an app protection policy

Block access or wipe data of a managed app based on Microsoft Defender for Endpoint risk signals by creating an app protection policy.
Microsoft Defender for Endpoint can be configured to send threat signals to be used in app protection policies (APP, also known as MAM). With this capability, you can use Microsoft Defender for Endpoint to protect managed apps.

1. Create a policy <br>
App protection policies (APP) are rules that ensure an organization's data remains safe or contained in a managed app. A policy can be a rule that is enforced when the user attempts to access or move "corporate" data, or a set of actions that are prohibited or monitored when the user is inside the app. 

:::image type="content" source="images/create-policy.png" alt-text="The Create policy tab on the App protection policies menu item" lightbox="images/create-policy.png":::

2. Add apps <br>
    a. Choose how you want to apply this policy to apps on different devices. Then add at least one app. <br>
    Use this option to specify whether this policy applies to unmanaged devices. You can also choose to target your policy to apps on devices of any management state.
Because mobile app management doesn't require device management, you can protect company data on both managed and unmanaged devices. The management is centered on the user identity, which removes the requirement for device management. Companies can use app protection policies with or without MDM at the same time. For example, consider an employee that uses both a phone issued by the company, and their own personal tablet. The company phone is enrolled in MDM and protected by app protection policies while the personal device is protected by app protection policies only.

    b. Select Apps<br>
    A managed app is an app that has app protection policies applied to it, and can be managed by Intune. Any app that has been integrated with the [Intune SDK](/mem/intune/developer/app-sdk) or wrapped by the [Intune App Wrapping Tool](/mem/intune/developer/apps-prepare-mobile-application-management) can be managed using Intune app protection Policies. See the official list of [Microsoft Intune protected apps](/mem/intune/apps/apps-supported-intune-apps) that have been built using these tools and are available for public use.

    *Example: Outlook as a managed app*

     :::image type="content" source="images/managed-app.png" alt-text="The Microsoft Outlook menu item on the left navigation pane" lightbox="images/managed-app.png":::
  
     Select the **Platform, Apps, Data protection, Access requirements** settings that your organization requires for your policy.

 3.Set sign-in security requirements for your protection policy. <br>
Select **Setting > Max allowed device threat level** in **Conditional Launch > Device Conditions** and enter a value. This will need to be configured to either Low, Medium, High, or Secured. The actions available to you will be **Block access** or **Wipe data**.  Select  **Action:  "Block Access"**. Microsoft Defender for Endpoint on iOS shares this Device Threat Level.

   :::image type="content" source="images/conditional-launch.png" alt-text="The Device conditions pane" lightbox="images/conditional-launch.png":::

4.Assign user groups for whom the policy needs to be applied.<br>
  Select **Included groups**. Then add the relevant groups. 

For more information on MAM or app protection policy, see [iOS app protection policy settings](/mem/intune/apps/app-protection-policy-settings-ios).

## Deploy Microsoft Defender for Endpoint for MAM or on unenrolled devices

Microsoft Defender for Endpoint on iOS enables the app protection policy scenario and is available in the Apple app store.

When app protection policies are configured for apps to include device risk signals from Microsoft Defender for Endpoint, users will be redirected to install Microsoft Defender for Endpoint when using such apps. Alternately, users can also install the latest version of the app directly from the Apple app store.

Ensure the device is registered to Authenticator with the same account being used to onboard in Defender for successful MAM registration.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
