---
title: Troubleshoot issues and find answers on FAQs related to Microsoft Defender for Endpoint on iOS
description: Troubleshooting and FAQ - Microsoft Defender for Endpoint on iOS
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, troubleshoot, faq, how to
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 05/15/2021
---

# Troubleshoot issues and find answers to FAQs on Microsoft Defender for Endpoint on iOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> [!NOTE]
> **Control Filter not working as expected on Supervised devices**
Control Filter is not working as expected from iOS 16.1 onwards. This has impacted the Web Protection capability for Supervised devices without local loopback VPN. The issue has been resolved with iOS 16.3. Support for Control Filter is re-enabled with the new version - 1.1.38010102.
 

This topic provides troubleshooting information to help you address issues that may arise as you use Microsoft Defender for Endpoint on iOS.

> [!NOTE]
> Defender for Endpoint on iOS would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.

## Apps don't work when VPN is turned on

There are some apps that stop functioning when an active VPN is detected. You can disable the VPN during the time you're using such apps.

By default, Defender for Endpoint on iOS includes and enables the web protection feature. [Web protection](web-protection-overview.md) helps to secure devices against web threats and protect users from phishing attacks. Defender for Endpoint on iOS uses a VPN in order to provide this protection. Note that this is a local VPN and unlike traditional VPN, network traffic isn't sent outside the device.

While enabled by default, there might be some cases that require you to disable VPN. For example, you want to run some apps that don't work when a VPN is configured. In such cases, you can choose to disable the VPN directly from the Defender for Endpoint app or using the following steps:

1. On your iOS device, open the **Settings** app, click or tap **General** and then **VPN**.
1. Click or tap the "i" button for Microsoft Defender for Endpoint.
1. Toggle off **Connect On Demand** to disable VPN.

    > [!div class="mx-imgBorder"]
    > :::image type="content" source="images/ios-vpn-config.png" alt-text="The Connect on demand option" lightbox="images/ios-vpn-config.png":::

> [!NOTE]
> Web Protection will not be available when VPN is disabled. To re-enable Web Protection, open the Microsoft Defender for Endpoint app on the device and Enable Web Protection.

## Coexistence with multiple VPN profiles

Apple iOS doesn't support multiple **device-wide** VPNs to be active simultaneously. While multiple VPN profiles can exist on the device, only one VPN can be active at a time. If you need to use another VPN on the device, you can disable Defender for Endpoint VPN while you're using the other VPN.

## Battery consumption

In order to provide you all-time protection from web-based threats, Microsoft Defender for Endpoint needs to run in the background at all times. This might lead to a minor increase in overall battery consumption of your device. In case you're seeing significant battery drain, [send us feedback](ios-troubleshoot.md#send-in-app-feedback) and we'll investigate.

Also, in the Settings app, iOS only shows battery usage of apps that are visible to the user for a specific duration of time. The battery usage by apps shown on the screen is only for that time duration and is computed by iOS based on a multitude of factors, including CPU and Network usage. Microsoft Defender for Endpoint uses a local/loop-back VPN in the background to check web traffic for any malicious websites or connections. Network packets from any app go through this check and that causes the battery usage of Microsoft Defender for Endpoint to be computed inaccurately. The actual battery consumption of Microsoft Defender for Endpoint is lesser than what is shown on the Battery Settings page on the device.

Note that the VPN used is a local VPN and unlike a traditional VPN, network traffic isn't sent outside the device.

## Data usage

Microsoft Defender for Endpoint uses a local/loopback VPN to check web traffic for any malicious websites or connections. Due to this reason, Microsoft Defender for Endpoint data usage can be inaccurately accounted for. We've also observed that if the device is on cellular network only, the data usage reported by service provider is very close to the actual consumption whereas in the Settings app, the numbers can be inaccurate.

We've similar observations with other VPN services as well.

In addition, it's critical for Microsoft Defender for Endpoint to be up to date with our backend services to provide better protection.

## Report unsafe site

Phishing websites impersonate trustworthy websites for obtaining your personal or financial information. Visit the [Provide feedback about network protection](https://www.microsoft.com/wdsi/support/report-unsafe-site) page to report a website that could be a phishing site.

## Malicious site detected

Microsoft Defender for Endpoint protects you against phishing or other web-based attacks. If a malicious site is detected, the connection is blocked and an alert is sent to the organization's Microsoft 365 Defender portal. The alert includes the domain name of the connection, remote IP address and the device details.

In addition, a notification is shown on the iOS device. Tapping on the notification opens the following screen for the user to review the details.

> [!div class="mx-imgBorder"]
> :::image type="content" source="images/ios-phish-alert.png" alt-text="The site reported as unsafe notification" lightbox="images/ios-phish-alert.png":::

## Device not seen on the Defender for Endpoint console after onboarding

After onboarding, it takes few hours for device to show up in the Device inventory in the Defender for Endpoint security console. Also, ensure that device is registered correctly with Azure Active Directory and device has internet connectivity. For successful onboarding, the device has to be registered via Microsoft Authenticator or Intune Company Portal and the user needs to sign-in using the same account with which device is registered with Azure AD.

> [!NOTE]
> Sometimes, the device name is not consistent with that in Microsoft Intune admin center. The device name in Defender for Endpoint console is of the format <username_iPhone/iPad model>. You can also use Azure AD device ID to identify the device in the Defender for Endpoint console.

## Data and Privacy

For details about data collected and privacy, see [Privacy Information - Microsoft Defender for Endpoint on iOS](ios-privacy.md).

## Connectivity issue on cellular network

If you are facing internet connectivity issues on cellular network, check if Microsoft Defender for Endpoint has cellular data enabled: Open Settings app > MS Defender > ensure that "Cellular data" is enabled for MS Defender.

If you still have connectivity issues, check if turning on/off Airplane mode helps resolve the issue. If the issue persists, [send us logs](ios-troubleshoot.md#send-in-app-feedback).

## Issues on supervised devices with content filter profile installed

There's an issue on supervised devices with Defender for Endpoint content filter installed. If you observe slowness or latency in internet connectivity on such devices, uninstall or delete the content filter profile from the device. We're working to resolve this issue and will update this place once we've a resolution. 

## Issues during app updates from the app store

By default, apps that are downloaded from the app store are updated automatically. 

But if there's an issue, you can update the app manually. 

- On your iOS device, open the App Store.
- Tap on Menu (profile icon) on the top-left corner.
- Scroll to see any pending updates and release notes. Tap **Update** next to an app to update only that app, or tap **Update All**.

You can also choose to turn off automatic updates. On your iOS device, open the **Settings** app > go to **App Store** > toggle off **App Updates** to turn off automatic updates. 

If you observe issues when the app is updated through the app store (either automatic updates or manual updates), you might need to restart the device. If that doesn't resolve the issue, you can disable the Defender VPN and perform the app update. You can also provide an in-app feedback to report this issue.

## Send in-app feedback

If a user faces an issue which isn't already addressed in the above sections or is unable to resolve using the listed steps, the user can provide in-app feedback along with diagnostic data. Our team will then investigate the logs to provide the right solution. Users can use the following steps to send feedback:

- Open MSDefender app on the iOS/iPadOS device.
- Tap on Menu (profile icon) on the top-left corner.
- Tap **Send Feedback**.
- Choose from the given options. To report an issue, select **I don't like something**.
- Provide details of the issue that you're facing and check **Send diagnostic data**. We recommend that you include your email address so that the team can contact you for a solution or a follow-up.
- Tap **Submit** to successfully send the feedback.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
