---
title: Microsoft Defender for Endpoint - Mobile Threat Defense
ms.reviewer: 
description: Overview of Mobile Threat Defense in Microsoft Defender for Endpoint
keywords: mobile, defender, Microsoft Defender for Endpoint, ios, mtd, android, security
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: sunasing
author: sunasing
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint - Mobile Threat Defense

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint on Android and iOS is our **mobile threat defense solution (MTD)**. Typically, companies are proactive in protecting PCs from vulnerabilities and attack while mobile devices often go unmonitored and unprotected. Where mobile platforms have built-in protection such as app isolation and vetted consumer app stores, these platforms remain vulnerable to web-based or other sophisticated attacks. As more employees use devices for work and to access sensitive information, it is imperative that companies deploy an MTD solution to protect devices and your resources from increasingly sophisticated attacks on mobiles.

## Key capabilities

Microsoft Defender for Endpoint on Android and iOS provides the below key capabilities, For information about the latest features and benefits, read our [announcements](https://aka.ms/mdeblog).

<br>

|Capability|Description|
|---|---|
|Web Protection|Anti-phishing, blocking unsafe network connections, and support for custom indicators.|
|Malware Protection (Android-only)|Scanning for malicious apps.|
|Jailbreak Detection (iOS-only)|Detection of jailbroken devices.|
|Threat and Vulnerability Management (TVM). In preview. See note below*|Vulnerability assessment of onboarded mobile devices. Visit this [page](next-gen-threat-and-vuln-mgt.md) to learn more about threat and vulnerability management in Microsoft Defender for Endpoint. *Note that on iOS only OS vulnerabilities are supported in this preview.*|
|Unified alerting|Alerts from all platforms in the unified M365 security console|
|Conditional Access, Conditional launch|Blocking risky devices from accessing corporate resources. Defender for Endpoint risk signals can also be added to app protection policies (MAM)|
|Integration with Microsoft Tunnel|Can integrate with Microsoft Tunnel, a VPN gateway solution to enable security and connectivity in a single app. Available only on Android currently|

All these capabilities are available for Microsoft Defender for Endpoint license holders. For more information, see [Licensing requirements](minimum-requirements.md#licensing-requirements).

> [!NOTE]
> Vulnerability assessment on Android and iOS is currently in preview and may be substantially modified before it's commercially released. If you’ve enabled public preview features, you can check out the TVM functionality on Android and iOS today! If not, we encourage you to [turn on preview features](preview.md) for Microsoft Defender for Endpoint to get access to the newest capabilities.

## Overview and Deploy

Deployment of Microsoft Defender for Endpoint on mobile can be done via Microsoft Endpoint Manager (MEM). Watch this video for a quick overview of MTD capabilities and deployment:

<br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWMpiC]

For more details, refer to the links below.

**Android:** [Microsoft Defender for Endpoint on Android](microsoft-defender-endpoint-android.md)

**iOS:** [Microsoft Defender for Endpoint on iOS](microsoft-defender-endpoint-ios.md)

### Pilot evaluation

During evaluation of mobile threat defense with Microsoft Defender for Endpoint, you can verify that certain criteria is met before proceeding to deploy the service to a larger set of devices. You can define the exit criteria and ensure that they are satisfied before deploying widely.

This helps reduce potential issues that could arise while rolling out the service. Below are few tests and exit criteria that might help:

- Devices show up in the device inventory list: After successful onboarding of Defender for Endpoint on the mobile device, verify that the device is listed in the Device Inventory in the [security console](https://security.microsoft.com).

- Run a malware detection test on an Android device: Install any test virus app from the Google play store and verify that it gets detected by Microsoft Defender for Endpoint. Here is an example app that can be used for this test: [Test virus](https://play.google.com/store/apps/details?id=com.androidantivirus.testvirus). Note that on Android Enterprise with a work profile, only the work profile is supported.

- Run a phishing test: Browse to https://smartscreentestratings2.net and verify that it gets blocked by Microsoft Defender for Endpoint. Note that on Android Enterprise with a work profile, only the work profile is supported.

- Alerts appear in dashboard: Verify that alerts for above detection tests appear on the [security console](https://security.microsoft.com).

## Deployment best practices

### End-user onboarding

- [Configure Conditional Access to enforce user onboarding](android-configure.md#conditional-access-with-defender-for-endpoint-on-android): This can be applied to ensure end-users onboard to the Microsoft Defender for Endpoint app after deploying. Watch this video for a quick demo on configuring conditional access with Defender for Endpoint risk signals. 

  <br/>

  > [!VIDEO https://www.microsoft.com/videoplayer/embed/RWMwR1]

### Simplify Onboarding

- [Android Enterprise - Setup Always-on VPN](android-intune.md#auto-setup-of-always-on-vpn).
- [iOS - Auto-setup of VPN profile](ios-install.md#auto-onboarding-of-vpn-profile-simplified-onboarding)

## Configure

- [Configure Android features](android-configure.md)
- [Configure iOS features](ios-configure-features.md)
- [Configure Web Protection without VPN for supervised iOS devices](ios-install.md#complete-deployment-for-supervised-devices)

## Resources

- [Microsoft Defender for Endpoint on Android](microsoft-defender-endpoint-android.md)
- [Microsoft Defender for Endpoint on iOS](microsoft-defender-endpoint-ios.md)
- Stay informed about upcoming releases by reading our [announcements](https://aka.ms/mdeblog).

