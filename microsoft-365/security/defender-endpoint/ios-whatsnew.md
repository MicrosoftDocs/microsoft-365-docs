---
title: What's new in Microsoft Defender for Endpoint on iOS
description: Learn about the major changes for previous versions of Microsoft Defender for Endpoint on iOS.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, macos, whatsnew
ms.service: microsoft-365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: sunasing
author: sunasing
ms.localizationpriority: medium
ms.date: 11/22/2022
manager: sunasing
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: reference
ms.subservice: mde
search.appverid: met150
---

# What's new in Microsoft Defender for Endpoint on iOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Vulnerability assessment of apps

Vulnerability assessment of apps on Microsoft Defender for Endpoint for iOS is now generally available. Defender for Endpoint on iOS supports vulnerability assessments of apps only for enrolled (MDM) devices. For more details, see [Configure vulnerability assessment of apps](/microsoft-365/security/defender-endpoint/ios-configure-features#configure-vulnerability-assessment-of-apps). 

## Network protection

Network Protection on Microsoft Defender for Endpoint is now generally available. Network protection provides protection against rogue Wi-Fi related threats, rogue hardware like pineapple devices and notifies the user if a related threat is detected. Users will also see a guided experience to connect to secure networks and change networks when they are connected to an unsecure connection.

It includes several admin controls to offer flexibility, such as the ability to configure the feature from within the Microsoft Intune admin center. Admins can also enable privacy controls to configure the data that is sent by Defender for Endpoint from iOS devices. For more information, read [Configure Network Protection](/microsoft-365/security/defender-endpoint/ios-configure-features#configure-network-protection).

## Privacy Controls

Microsoft Defender for Endpoint on iOS enables Privacy Controls for both the Admins and the End Users. This includes the controls for enrolled (MDM) as well as unenrolled (MAM) devices. Admins can configure the privacy in the phish alert report while End Users can configure the information shared to their organization.

## Optional Permissions and Disable Web Protection

Microsoft Defender for Endpoint on iOS enables **Optional Permissions** in the onboarding flow. Currently the permissions required by MDE are mandatory in the onboarding flow. With this feature, admin can deploy MDE on BYOD devices without enforcing the mandatory **VPN Permission** during onboarding. End Users can onboard the app without the mandatory permissions and can later review these permissions. This feature is currently present only for enrolled devices (MDM).

With **Disable Web Protection**,Customers who do not want to set up a VPN, can configure to disable **Web Protection** and deploy MDE without that feature. Other MDE features will continue to work. This configuration is available for both the enrolled (MDM) devices as well as unenrolled (MAM) devices.

## Integration with Tunnel

Microsoft Defender for Endpoint on iOS can now integrate with Microsoft Tunnel, a VPN gateway solution to enable security and connectivity in a single app.  Integration with Tunnel provides a simpler, secure VPN experience on iOS with just one app. This feature was earlier available only on Android. For more details, [see the techcommunity post here](https://techcommunity.microsoft.com/t5/microsoft-endpoint-manager-blog/what-s-new-in-microsoft-endpoint-manager-2204-april-edition/ba-p/3297995)

## Improved experience on supervised iOS devices

Microsoft Defender for Endpoint on iOS now has specialized ability on supervised iOS/iPadOS devices, given the increased management capabilities provided by the platform on these types of devices. It can also provide Web Protection **without setting up a local VPN on the device**. This gives end-users a seamless experience while still being protected from phishing and other web-based attacks. For details, visit [this documentation](ios-install.md#complete-deployment-for-supervised-devices)

## Microsoft Defender for Endpoint is now Microsoft Defender in the App store

Microsoft Defender for Endpoint is now available as **Microsoft Defender** in the app store. With this update, the app will be available as preview for **Consumers in the US region**. Based on how you log into the app with your work or personal account, you will have access to features for Microsoft Defender for Endpoint or to features for Microsoft Defender for individuals. For more information, see [this blog](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals).

## Vulnerability Management

On January 25, 2022, we announced the general availability of Vulnerability management on Android and iOS. For more details, see [the techcommunity post here](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-general-availability-of-vulnerability-management/ba-p/3071663).

## 1.1.28250101
- **Integration with Tunnel** - Microsoft Defender for Endpoint on iOS can now integrate with Microsoft Tunnel, a VPN gateway solution to enable security and connectivity in a single app. For more information, see [Microsoft Tunnel Overview](/mem/intune/protect/microsoft-tunnel-overview).
- **Zero-touch onboard for enrolled iOS devices** enrolled through Microsoft Intune is generally available. For more information, see [Zero touch onboarding of Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/ios-install#zero-touch-onboarding-of-microsoft-defender-for-endpoint).
- Bug fixes.

## 1.1.24210103

- Resolved internet connectivity issues on supervised devices. For more information, see [Deploy Defender for Endpoint on enrolled iOS devices](ios-install.md).
- Bug fixes.

## 1.1.23250104

- Performance optimizations - Test battery performance with this version and let us know your feedback.
- **Zero-touch onboard for enrolled iOS devices** - With this version, the preview of Zero-touch onboard for devices enrolled through Microsoft Intune has been added. For more information, see this [documentation](ios-install.md#zero-touch-silent-onboarding-of-microsoft-defender-for-endpoint) for more details on setup and configuration.
- **Privacy Controls** - Configure privacy controls for phish alert report. For more information, see [Configure iOS features](ios-configure-features.md).

## 1.1.23010101

- Bug fixes and performance improvements 
  - Performance optimizations were made in this release. Test battery performance with this version and let us know your feedback.

## 1.1.20240103
- Device Health card - Device Health card notifies end-users about any pending software updates.
- Usability enhancements - End-users can now disable the Defender for Endpoint VPN from the Microsoft Defender app itself. Prior to this update, end-users had to disable VPN only from the Settings app.
- Bug fixes.

## 1.1.20020101
- UX Enhancements - Microsoft Defender for Endpoint has a new look.
- Bug fixes.

## 1.1.17240101
- Support for Mobile Application Management (MAM) via Intune is generally available with this version. For more information, see [Microsoft Defender for Endpoint risk signals available for your App protection policies](https://techcommunity.microsoft.com/t5/intune-customer-success/microsoft-defender-for-endpoint-risk-signals-available-for-your/ba-p/2186322)
- **Jailbreak Detection** is generally available. For more information, see [Setup Conditional Access Policy based on device risk signals](ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios).
- **Auto-setup of VPN profile** for enrolled devices via Microsoft Intune is generally available. For more information, see [Auto-Setup VPN profile for enrolled iOS devices](ios-install.md#auto-onboarding-of-vpn-profile-simplified-onboarding).
- Bug fixes.

## 1.1.15140101

- **Jailbreak Detection** is in preview. For more information, see [Setup Conditional Access Policy based on device risk signals](ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios).
- **Auto-setup of VPN profile** is in preview for enrolled devices via Microsoft Intune. For more information, see [Auto-Setup VPN profile for enrolled iOS devices](ios-install.md#auto-onboarding-of-vpn-profile-simplified-onboarding).
- The Microsoft Defender ATP product name has now been updated to Microsoft Defender for Endpoint in the app store.
- Improved sign-in experience.
- Bug fixes.

## 1.1.15010101

- With this version, we are announcing support for iPadOS/iPad devices.
- Bug fixes.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
