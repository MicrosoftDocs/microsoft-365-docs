---
title: Microsoft Defender for Endpoint on iOS 
ms.reviewer: 
description: Describes how to install and use Microsoft Defender for Endpoint on iOS
keywords: microsoft, defender, Microsoft Defender for Endpoint, ios, overview, installation, deploy, uninstallation, intune
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint on iOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

**Microsoft Defender for Endpoint on iOS** offers protection against phishing and unsafe network connections from websites, emails, and apps. All alerts will be available through a single pane of glass in the Microsoft Defender Security Center. The portal gives security teams a centralized view of threats on iOS devices along with other platforms.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Defender for Endpoint on iOS is likely to cause performance problems and unpredictable system errors.

## Pre-requisites

**For End Users**

- Microsoft Defender for Endpoint license assigned to the end user(s) of the app. See [Microsoft Defender for Endpoint licensing requirements](/microsoft-365/security/defender-endpoint/minimum-requirements#licensing-requirements).

- **For enrolled devices**: Device(s) are [enrolled](/mem/intune/user-help/enroll-your-device-in-intune-ios) via the Intune Company Portal app to enforce Intune device compliance policies. This requires the end user to be assigned a Microsoft Intune license.
    - Intune Company Portal app can be downloaded from the [Apple App Store](https://apps.apple.com/us/app/intune-company-portal/id719171358).
    - Note that Apple does not allow redirecting users to download other apps from the app store and hence this step needs to be done by the user before onboarding to Microsoft Defender for Endpoint app.

- **For unenrolled devices**: Device(s) are registered with Azure Active Directory. This requires end user to be signed in through [Microsoft Authenticator app](https://apps.apple.com/app/microsoft-authenticator/id983156458).

- For more information on how to assign licenses, see [Assign licenses to users](/azure/active-directory/users-groups-roles/licensing-groups-assign).

**For Administrators**

- Access to the Microsoft Defender Security Center portal.

- Access to [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), to deploy the app to enrolled user groups in your organization.

    > [!NOTE]
    > Microsoft Intune is the only supported Unified Endpoint Management (UEM) solution for deploying Microsoft Defender for Endpoint and enforcing Defender for Endpoint related device compliance policies in Intune.

**System Requirements**

- iOS device running iOS 11.0 and above. iPad devices are officially supported from version 1.1.15010101 onward.

- Device is either enrolled with the [Intune Company Portal app](https://apps.apple.com/us/app/intune-company-portal/id719171358) or registered with Azure Active Directory through [Microsoft Authenticator](https://apps.apple.com/app/microsoft-authenticator/id983156458).

## Installation instructions

Deployment of Microsoft Defender for Endpoint on iOS can be done via Microsoft Endpoint Manager (MEM) and both supervised and unsupervised devices are supported. End-users can also directly install the app from the [Apple app store](https://aka.ms/mdatpiosappstore).
For more information, see [Deploy Microsoft Defender for Endpoint on iOS](ios-install.md).

## Resources

- Stay informed about upcoming releases by visiting [What's new in Microsoft Defender for Endpoint on iOS](ios-whatsnew.md) or our [blog](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/bg-p/MicrosoftDefenderATPBlog/label-name/iOS).

- Provide feedback through in-app feedback system or through [SecOps portal](https://securitycenter.microsoft.com)

## Next steps

- [Deploy Microsoft Defender for Endpoint on iOS](ios-install.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
- [Configure app protection policy to include Defender for Endpoint risk signals (MAM)](ios-install-unmanaged.md)
- [Configure Conditional Access policy based on device risk score from Microsoft Defender for Endpoint](ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios)
