---
title: Resources for Microsoft Defender for Endpoint for mobile devices
description: Learn about the configurations and privacy settings for all the features in Defender for Endpoint on mobile devices.
keywords: microsoft, defender, Microsoft Defender for Endpoint, mac, installation, macos, whatsnew
ms.service: microsoft-365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: priyankagill
author: priyankagill
ms.localizationpriority: medium
manager: kanisri
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 09/19/2023
---
# Resources for Microsoft Defender for Endpoint for mobile devices

Microsoft Defender for Endpoint provides multiple capabilities on mobile devices. Some of these capabilities are enabled by default while others are configured by IT admins. The following table shows how to configure the resources related to Microsoft Defender for Endpoint on Android and iOS.

## Feature configurations

| Configuration| Description | Android AE config key | Android MAM | iOS |
|--------------|-------------|-----------------------|-------------|-----|
|Web Protection|Admins can use this to configure web protection feature. When disabled, end users are not asked for VPN permissions|Antiphishing = 0/1 (default), VPN = 0/1(default)|Antiphishing=0/1(default), VPN = 0/1(default)| WebProtection = true (default) / false|
|Network Protection| Network protection is disabled by default. Admins can enable it to include rogue WiFi and certificate detection (only available on android) on mobile.|Enable Network protection in Microsoft Defender = 0(default)/1| DefenderNetworkProtectionEnable = 0(default)/1|DefenderNetworkProtectionEnable = 0(default)/1|

## Privacy configuration

|Configuration| Description | Android AE config key | Android MAM | iOS |
|-------------|-------------|-----------------------|-------------|-----|
|Privacy for phishing alert report |If privacy is enabled, Defender for Endpoint will not send domain name and website details| Hide URLs in report=0(default)/1| DefenderExcludeURLInReport = 0(default)/1 |DefenderExcludeURLInReport = 0(default)/1|
|Configure Privacy for malware threat report| Control the collection of app details (name, package information) in the threat report |Hide app details in report= 0(default)/1|DefenderExcludeAppInReport = 0(default)/1|
|Configure privacy in vulnerability assessment of apps| Control what app data shows up in the security portal when Defender for Vulnerability Management is enabled|Enable Vulnerability Management privacy= 0(default)/1|DefenderTVMPrivacyMode = 0(default)/1|DefenderTVMPrivacyMode = 0(default)/1|
|Network protection | Control the collection of network and certificate details in the alert report|Enable Network protection privacy = 1/0 |DefenderNetworkProtectionPrivacy = 1/0 |DefenderNetworkProtectionPrivacy |


## Additional Configurations

|Configuration| Description | Android AE config key | Android MAM | iOS |
|-------------|-------------|-----------------------|-------------|-----|
|Disable/enable sign out| Sign out option can be disabled for an end user. This helps prevent tampering with the device.|Disable sign out = 1(default)/0 |DisableSignOut = 1/0 |DisableSignOut = 1/0 |
|Device tagging| Defender for Endpoint enables bulk tagging mobile devices during onboarding. Admins can set up tags using this configuration by using Intune.|Device tag (Value as String)|DefenderDeviceTag (Value as String) |DefenderDeviceTag (Value as String)|
|Optional Permissions| Admins can make some permissions optional for the end user while onboarding Defender for Endpoint. Users see an option to grant these permissions later.| NA|DefenderOptionalVPN = 0(default)/1, DefenderOptionalAccessibility = 0(default)/1|DefenderOptionalVPN = 0(default)/1, DefenderOptionalAccessibility = 0(default)/1|

## Alerts severity and privacy information

|Alert type | Severity | Privacy information (Android)| Privacy information (iOS)|
|-----------|-----------|---------|---------|
|Anti-phishing (defender warning)|Informational| URL of malicious connection, connection information, Protocol type; [More information](android-privacy.md#web-page--network-information) | Domain name, IP address of malicious website; [More information](ios-privacy.md#web-page-or-network-information) |
|Anti-phishing (Defender warning overlooked)|Low |  |  |
|Anti-malware| Medium | Information about malicious APKs including install source, storage location, time of install etc; [More information](android-privacy.md#app-information)
| |
|Jailbreak| High | NA |NA |
|Rogue Wifi | Low |  |  |
|Open Network detection | Informational | | |
Suspicious certificates |Informational| | |

[Complete privacy information for Android](android-privacy.md)

[Complete privacy information for iOS](ios-privacy.md)

