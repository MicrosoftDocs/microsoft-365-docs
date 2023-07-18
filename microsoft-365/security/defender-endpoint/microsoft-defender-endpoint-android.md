---
title: Microsoft Defender for Endpoint on Android
ms.reviewer:
description: Describes how to install and use Microsoft Defender for Endpoint on Android
keywords: microsoft, defender, Microsoft Defender for Endpoint, android, installation, deploy, uninstallation, intune
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 03/22/2021
---

# Microsoft Defender for Endpoint on Android

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This topic describes how to install, configure, update, and use Defender for Endpoint on Android.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Defender for Endpoint on Android is likely to cause performance problems and unpredictable system errors.

## How to install Microsoft Defender for Endpoint on Android

### Prerequisites

- **For end users**:
  - The end user must be assigned a Microsoft Intune license. For more information on how to assign licenses, see [Assign licenses to users](/azure/active-directory/users-groups-roles/licensing-groups-assign).
  - The users of the app must be assigned a Microsoft Defender for Endpoint license. For more information on how to assign licenses, see [Microsoft Defender for Endpoint licensing requirements](/microsoft-365/security/defender-endpoint/minimum-requirements#licensing-requirements).
  - Intune Company Portal app can be downloaded from [Google Play](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal) and is available on the Android device.
  - Additionally, device(s) can be [enrolled](/mem/intune/user-help/enroll-device-android-company-portal) via the Intune Company Portal app to enforce Intune device compliance policies. 

- **For Administrators**:
   - Access to the Microsoft 365 Defender portal.
   - Access to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431) to:
     - Deploy the app to enrolled user groups in your organization.
     - Configure Microsoft Defender for Endpoint risk signals in app protection policy.
  
    > [!NOTE]
    >
    > - Microsoft Defender for Endpoint now extends protection to an organization's data within a managed application (MAM) for devices that are not enrolled using mobile device management (MDM), but are using Intune to manage mobile applications. It also extends this support to customers who use other enterprise mobility management solutions, while still using Intune for [mobile application management (MAM)](/mem/intune/apps/mam-faq).
    > - In addition, Microsoft Defender for Endpoint already supports devices that are enrolled using Intune mobile device management (MDM).

### Network Requirements

- For Microsoft Defender for Endpoint on Android to function when connected to a network the firewall/proxy will need to be configured to [enable access to Microsoft Defender for Endpoint service URLs](configure-proxy-internet.md#enable-access-to-microsoft-defender-for-endpoint-service-urls-in-the-proxy-server).

### System Requirements

- Mobile phones and tablets running Android 8.0 and above. **Mobile phones running Android go and other mobile devices running Android are not currently supported.**
- Intune Company Portal app is downloaded from [Google Play](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal) and installed. Device enrollment is required for Intune device compliance policies to be enforced.

 > [!NOTE]
 > Microsoft Defender for Endpoint on Android isn't supported on userless or shared devices.

### Installation instructions

Microsoft Defender for Endpoint on Android supports installation on both modes of enrolled devices - the legacy Device Administrator and Android Enterprise modes. **Currently, Personally-owned devices with work profile, Corporate-owned devices with work profile, and Corporate-owned fully managed user device enrollments are supported in Android Enterprise. Support for other Android Enterprise modes will be announced when ready.**

- Deployment of Microsoft Defender for Endpoint on Android is via Microsoft Intune (MDM). For more information, see [Deploy Microsoft Defender for Endpoint on Android with Microsoft Intune](android-intune.md).
- Installation of Microsoft Defender for Endpoint on devices that are not enrolled using Intune mobile device management (MDM), see [Configure Microsoft Defender for Endpoint risk signals in app protection policy (MAM)](android-configure-mam.md).

> [!NOTE]
> **Microsoft Defender for Endpoint on Android is available on [Google Play](https://play.google.com/store/apps/details?id=com.microsoft.scmx) now.**
>
> You can connect to Google Play from Intune to deploy Microsoft Defender for Endpoint app, across Device Administrator and Android Enterprise entrollment modes.

## How to Configure Microsoft Defender for Endpoint on Android

Guidance on how to configure Microsoft Defender for Endpoint on Android features is available in [Configure Microsoft Defender for Endpoint on Android features](android-configure.md).

## Related topics

- [Deploy Microsoft Defender for Endpoint on Android with Microsoft Intune](android-intune.md)
- [Configure Microsoft Defender for Endpoint on Android features](android-configure.md)
- [Mobile Application Management (MAM) basics](/mem/intune/apps/app-management#mobile-application-management-mam-basics)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
