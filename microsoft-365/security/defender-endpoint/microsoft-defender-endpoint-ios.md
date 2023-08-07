---
title: Microsoft Defender for Endpoint on iOS
ms.reviewer: 
description: Describes how to install and use Microsoft Defender for Endpoint on iOS
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, overview, installation, deploy, uninstallation, intune
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
ms.date: 03/22/2021
---

# Microsoft Defender for Endpoint on iOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

**Microsoft Defender for Endpoint on iOS** offers protection against phishing and unsafe network connections from websites, emails, and apps. All alerts will be available through a single pane of glass in the Microsoft 365 Defender portal. The portal gives security teams a centralized view of threats on iOS devices along with other platforms.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Defender for Endpoint on iOS is likely to cause performance problems and unpredictable system errors.

## Prerequisites

### For End Users

- Microsoft Defender for Endpoint license assigned to the end user(s) of the app. See [Microsoft Defender for Endpoint licensing requirements](/microsoft-365/security/defender-endpoint/minimum-requirements#licensing-requirements).

- **For enrolled devices**:
  - Device(s) are [enrolled](/mem/intune/user-help/enroll-your-device-in-intune-ios) via the Intune Company Portal app to enforce Intune device compliance policies. This requires the end user to be assigned a Microsoft Intune license.
  - Intune Company Portal app can be downloaded from the [Apple App Store](https://apps.apple.com/us/app/intune-company-portal/id719171358).

  > [!NOTE]
  > Apple does not allow redirecting users to download other apps from the app store so this step needs to be done by the user before onboarding to Microsoft Defender for Endpoint app.

  - Device(s) are registered with Azure Active Directory. This requires the end user to be signed in through [Microsoft Authenticator app](https://apps.apple.com/app/microsoft-authenticator/id983156458).

- **For unenrolled devices**: Device(s) are registered with Azure Active Directory. This requires the end user to be signed in through [Microsoft Authenticator app](https://apps.apple.com/app/microsoft-authenticator/id983156458).

- For more information on how to assign licenses, see [Assign licenses to users](/azure/active-directory/users-groups-roles/licensing-groups-assign).

### For Administrators

- Access to the Microsoft 365 Defender portal.

- Access to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), to:
  - Deploy the app to enrolled user groups in your organization.
  - Configure Microsoft Defender for Endpoint risk signals in app protection policy (MAM)

    > [!NOTE]
    >
    > - Microsoft Defender for Endpoint now extends protection to an organization's data within a managed application for those who aren't using mobile device management (MDM) but are using Intune to manage mobile applications. It also extends this support to customers who use other enterprise mobility management solutions, while still using Intune for [mobile application management (MAM)](/mem/intune/apps/mam-faq).
    > - In addition, Microsoft Defender for Endpoint already supports devices that are enrolled using Intune mobile device management (MDM).

### System Requirements

- iOS device running iOS 14.0 and above. iPads are also supported.

- The device is either enrolled with the [Intune Company Portal app](https://apps.apple.com/us/app/intune-company-portal/id719171358) or is registered with Azure Active Directory through [Microsoft Authenticator](https://apps.apple.com/app/microsoft-authenticator/id983156458) with the same account.

> [!NOTE]
>
> - Microsoft Defender for Endpoint on iOS isn't supported on user-less or shared devices.
> - Microsoft Defender for Endpoint on iOS isn't supported currently while using iOS User Enrollment.

## Installation instructions

Deployment of Microsoft Defender for Endpoint on iOS can be done via Microsoft Intune and both supervised and unsupervised devices are supported. End-users can also directly install the app from the [Apple app store](https://aka.ms/mdatpiosappstore).

- For information on deploying on enrolled devices through Microsoft Configuration Manager or Intune, see [Deploy Microsoft Defender for Endpoint on iOS](ios-install.md).
- For information on using Defender for Endpoint in app protection policy (MAM), see [Configure app protection policy to include Defender for Endpoint risk signals (MAM)](ios-install-unmanaged.md)

## Resources

- Stay informed about upcoming releases by visiting [What's new in Microsoft Defender for Endpoint on iOS](ios-whatsnew.md) or our [blog](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/bg-p/MicrosoftDefenderATPBlog/label-name/iOS).

- Provide feedback through in-app feedback system or through the [unified security console](https://security.microsoft.com)

## Next steps

- [Deploy Microsoft Defender for Endpoint on iOS through Intune for enrolled devices](ios-install.md)
- [Configure app protection policy to include Defender for Endpoint risk signals (MAM)](ios-install-unmanaged.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
- [Configure Conditional Access policy based on device risk score from Microsoft Defender for Endpoint](ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios)
- [Mobile Application Management (MAM) basics](/mem/intune/apps/app-management#mobile-application-management-mam-basics)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
