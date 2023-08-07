---
title: Microsoft Defender for Endpoint - Mobile Threat Defense
ms.reviewer: 
description: Overview of Mobile Threat Defense in Microsoft Defender for Endpoint
keywords: mobile, defender, Microsoft Defender for Endpoint, ios, mtd, android, security
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: sunasing
author: sunasing
ms.localizationpriority: medium
ms.date: 12/07/2022
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Microsoft Defender for Endpoint - Mobile Threat Defense

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint on Android and iOS is our **mobile threat defense solution (MTD)**. Typically, companies are proactive in protecting PCs from vulnerabilities and attack while mobile devices often go unmonitored and unprotected. Where mobile platforms have built-in protection such as app isolation and vetted consumer app stores, these platforms remain vulnerable to web-based or other sophisticated attacks. As more employees use devices for work and to access sensitive information, it's imperative that companies deploy an MTD solution to protect devices and your resources from increasingly sophisticated attacks on mobiles.

## Key capabilities

Microsoft Defender for Endpoint on Android and iOS provides the below key capabilities, For information about the latest features and benefits, read our [announcements](https://aka.ms/mdeblog).

|Capability|Description|
|---|---|
|Web Protection|Anti-phishing, blocking unsafe network connections, and support for custom indicators.|
|Malware Protection (Android-only)|Scanning for malicious apps.|
|Jailbreak Detection (iOS-only)|Detection of jailbroken devices.|
|Microsoft Defender Vulnerability Management (MDVM) |Vulnerability assessment of onboarded mobile devices. Includes OS and Apps vulnerabilities assessment for both Android and iOS. Visit this [page](next-gen-threat-and-vuln-mgt.md) to learn more about Microsoft Defender Vulnerability Management in Microsoft Defender for Endpoint.|
|Network Protection | Protection against rogue Wi-Fi related threats and rogue certificates; ability to allow list the root CA and private root CA certificates in Intune; establish trust with endpoints.|
|Unified alerting|Alerts from all platforms in the unified M365 security console.|
|Conditional Access, Conditional launch|Blocking risky devices from accessing corporate resources. Defender for Endpoint risk signals can also be added to app protection policies (MAM).|
|Privacy Controls|Configure privacy in the threat reports by controlling the data sent by Microsoft Defender for Endpoint. Privacy controls are available for admin and end users. It's there for enrolled and unenrolled devices as well.|
|Integration with Microsoft Tunnel|Integration with Microsoft Tunnel, a VPN gateway solution to enable security and connectivity in a single app. Available on both Android and iOS.|

All these capabilities are available for Microsoft Defender for Endpoint license holders. For more information, see [Licensing requirements](minimum-requirements.md#licensing-requirements).

## Overview and Deploy

Deployment of Microsoft Defender for Endpoint on mobile can be done via Microsoft Intune. Watch this video for a quick overview of MTD capabilities and deployment:

<br/>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RWMpiC]

### Deploy

The following table summarizes how to deploy Microsoft Defender for Endpoint on Android and iOS. For detailed documentation, see 
- [Overview of Microsoft Defender for Endpoint on Android](microsoft-defender-endpoint-android.md), and
- [Overview of Microsoft Defender for Endpoint on iOS](microsoft-defender-endpoint-ios.md)

**Android**

|Enrollment type     |Details      |
|--------------------|-------------|
|Android Enterprise with Intune |[Deploy on Android Enterprise enrolled devices](android-intune.md#deploy-on-android-enterprise-enrolled-devices)|
|Device Administrator with Intune |[Deploy on Device Administrator enrolled devices](android-intune.md#deploy-on-device-administrator-enrolled-devices)|
|Unmanaged BYOD OR devices managed by other enterprise mobility management / Set up app protection policy (MAM)|[Configure Defender risk signals in app protection policy (MAM)](android-configure-mam.md)|

**iOS**

|Enrollment type     |Details      |
|--------------------|-------------|
|Supervised devices with Intune |1. [Deploy as iOS store app](ios-install.md)<br/>2. [Setup Web Protection without VPN for supervised iOS devices](ios-install.md#complete-deployment-for-supervised-devices)|
|Unsupervised (BYOD) devices enrolled with Intune |[Deploy as iOS store app](ios-install.md)|
|Unmanaged BYOD OR devices managed by other enterprise mobility management / Set up app protection policy (MAM)|[Configure Defender risk signals in app protection policy (MAM)](ios-install-unmanaged.md)|

### End-user onboarding

- [Configure Zero-touch onboard for iOS enrolled devices](ios-install.md#zero-touch-silent-onboarding-of-microsoft-defender-for-endpoint): Admins can configure zero-touch install to silently onboard Microsoft Defender for Endpoint on enrolled iOS devices without requiring the user to open the app. 

- [Configure Conditional Access to enforce user onboarding](android-configure.md#conditional-access-with-defender-for-endpoint-on-android): This can be applied to ensure end-users onboard to the Microsoft Defender for Endpoint app after deploying. Watch this video for a quick demo on configuring conditional access with Defender for Endpoint risk signals. 

  <br/>

  > [!VIDEO https://www.microsoft.com/videoplayer/embed/RWMwR1]

### Simplify Onboarding

- [iOS - Zero-Touch Onboard](ios-install.md#zero-touch-silent-onboarding-of-microsoft-defender-for-endpoint)
- [Android Enterprise - Setup Always-on VPN](android-intune.md#auto-setup-of-always-on-vpn).
- [iOS - Auto-setup of VPN profile](ios-install.md#auto-onboarding-of-vpn-profile-simplified-onboarding)

## Pilot evaluation

While evaluating mobile threat defense with Microsoft Defender for Endpoint, you can verify that certain criteria is met before proceeding to deploy the service to a larger set of devices. You can define the exit criteria and ensure that they're satisfied before deploying widely.

This helps reduce potential issues that could arise while rolling out the service. Here are some tests and exit criteria that might help:

- Devices show up in the device inventory list: After successful onboarding of Defender for Endpoint on the mobile device, verify that the device is listed in the Device Inventory in the [security console](https://security.microsoft.com).

- Run a malware detection test on an Android device: Install any test virus app from the Google play store and verify that it gets detected by Microsoft Defender for Endpoint. Here's an example app that can be used for this test: [Test virus](https://play.google.com/store/apps/details?id=com.antivirus&hl=en_US&gl=US). Note that on Android Enterprise with a work profile, only the work profile is supported.

- Run a phishing test: Browse to https://smartscreentestratings2.net and verify that it gets blocked by Microsoft Defender for Endpoint. Note that on Android Enterprise with a work profile, only the work profile is supported.

- Alerts appear in dashboard: Verify that alerts for above detection tests appear on the [security console](https://security.microsoft.com).

Need help in deploying or configuring Defender for Endpoint on Android & iOS? If you have at least 150 licenses for the product, use your [FastTrack benefits](/microsoft-365/fasttrack/introduction). Learn more about FastTrack at [Microsoft FastTrack](https://fasttrack.microsoft.com/).

## Configure

- [Configure Android features](android-configure.md)
- [Configure iOS features](ios-configure-features.md)
- [Configure Web Protection without VPN for supervised iOS devices](ios-install.md#complete-deployment-for-supervised-devices)

## Resources

- [Microsoft Defender for Endpoint on Android](microsoft-defender-endpoint-android.md)
- [Microsoft Defender for Endpoint on iOS](microsoft-defender-endpoint-ios.md)
- Stay informed about upcoming releases by reading our [announcements](https://aka.ms/mdeblog).

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
