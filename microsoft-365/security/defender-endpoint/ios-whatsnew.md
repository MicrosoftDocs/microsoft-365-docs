---
title: What's new in Microsoft Defender for Endpoint on iOS
description: Learn about the major changes for previous versions of Microsoft Defender for Endpoint on iOS.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, macos, whatsnew
ms.prod: m365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: sunasing
author: sunasing
ms.localizationpriority: medium
manager: sunasing
audience: ITPro
ms.collection: 
  - m365-security-compliance
ms.topic: reference
ms.technology: mde
---

# What's new in Microsoft Defender for Endpoint on iOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Improved experience on supervised iOS devices

Microsoft Defender for Endpoint on iOS now has specialized ability on supervised iOS/iPadOS devices, given the increased management capabilities provided by the platform on these types of devices. It can also provide Web Protection **without setting up a local VPN on the device**. This gives end-users a seamless experience while still being protected from phishing and other web-based attacks. For details, visit [this documentation](ios-install.md#complete-deployment-for-supervised-devices)

## Threat and Vulnerability Management

On January 25, 2022, we announced the general availability of Threat and Vulnerability management on Android and iOS. For more details, see [the techcommunity post here](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-general-availability-of-vulnerability-management/ba-p/3071663).

## 1.1.24210103

- Resolved internet connectivity issues on supervised devices. For more information, see [Deploy Defender for Endpoint on enrolled iOS devices](ios-install.md).
- Bug fixes.

## 1.1.23250104

- Performance optimizations - Test battery performance with this version and let us know your feedback.
- **Zero-touch onboard for enrolled iOS devices** - With this version, the preview of Zero-touch onboard for devices enrolled through Microsoft Endpoint Manager (Intune) has been added. For more information, see this [documentation](ios-install.md#zero-touch-onboarding-of-microsoft-defender-for-endpoint-preview) for more details on setup and configuration.
- **Privacy Controls** - Configure privacy controls for phish alert report. For more information, see [Configure iOS features](ios-configure-features.md).

## 1.1.23010101

- Bug fixes and performance improvements 
  - Performance optimizations were made in this release. Test battery performance with this version and let us know your feedback.

## 1.1.20240103
- Device Health card - Device Health card notifies end-users about any pending software updates.
- Usability enhancements - End-users can now disable the Defender for Endpoint VPN from the MSDefender app itself. Prior to this update, end-users had to disable VPN only from the Settings app.
- Bug fixes.

## 1.1.20020101
- UX Enhancements - Microsoft Defender for Endpoint has a new look.
- Bug fixes.

## 1.1.17240101
- Support for Mobile Application Management (MAM) via Intune is generally available with this version. For more information, see [Microsoft Defender for Endpoint risk signals available for your App protection policies](https://techcommunity.microsoft.com/t5/intune-customer-success/microsoft-defender-for-endpoint-risk-signals-available-for-your/ba-p/2186322)
- **Jailbreak Detection** is generally available. For more information, see [Setup Conditional Access Policy based on device risk signals](ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios).
- **Auto-setup of VPN profile** for enrolled devices via Microsoft Endpoint Manager (Intune) is generally available. For more information, see [Auto-Setup VPN profile for enrolled iOS devices](ios-install.md#auto-onboarding-of-vpn-profile-simplified-onboarding).
- Bug fixes.

## 1.1.15140101

- **Jailbreak Detection** is in preview. For more information, see [Setup Conditional Access Policy based on device risk signals](ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios).
- **Auto-setup of VPN profile** is in preview for enrolled devices via Microsoft Endpoint Manager (Intune). For more information, see [Auto-Setup VPN profile for enrolled iOS devices](ios-install.md#auto-onboarding-of-vpn-profile-simplified-onboarding).
- The Microsoft Defender ATP product name has now been updated to Microsoft Defender for Endpoint in the app store.
- Improved sign-in experience.
- Bug fixes.

## 1.1.15010101

- With this version, we are announcing support for iPadOS/iPad devices.
- Bug fixes.
