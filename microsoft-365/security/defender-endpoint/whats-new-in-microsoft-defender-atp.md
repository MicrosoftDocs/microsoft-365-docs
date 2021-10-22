---
title: What's new in Microsoft Defender for Endpoint
description: See what features are generally available (GA) in the latest release of Microsoft Defender for Endpoint, as well as security features in Windows 10 and Windows Server.
keywords: what's new in Microsoft Defender for Endpoint, ga, generally available, capabilities, available, new
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: secure
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# What's new in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-pullalerts-abovefoldlink)

The following features are in preview or generally available (GA) in the latest release of Microsoft Defender for Endpoint.

For more information on preview features, see [Preview features](preview.md).


> [!TIP]
> RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader:
>
> ```https
> https://docs.microsoft.com/api/search/rss?search=%22features+are+generally+available+%28GA%29+in+the+latest+release+of+Microsoft+Defender+for+Endpoint%22&locale=en-us&facet=
> ```


For more information on what's new with other Microsoft Defender security products see:

- [What's new in Microsoft 365 Defender](../defender/whats-new.md)
- [What's new in Microsoft Defender for Office 365](../office-365-security/whats-new-in-defender-for-office-365.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Cloud App Security](/cloud-app-security/release-notes)

For more information on Microsoft Defender for Endpoint on other operating systems:
- [What's new in Defender for Endpoint on macOS](mac-whatsnew.md)
- [What's new in Defender for Endpoint on iOS](ios-whatsnew.md)
- [What's new in Defender for Endpoint on Linux](linux-whatsnew.md)


## October 2021

- [Updated onboarding and feature parity for Windows Server 2012 R2 and Windows Server 2016 (preview)](configure-server-endpoints.md)<br> The new unified solution package makes it easier to onboard servers by removing dependencies and installation steps. In addition, this unified solution package comes with many new feature improvements.

- Windows 11 support added to Microsoft Defender for Endpoint and Microsoft 365 Defender.

## September 2021

- [Web content filtering](web-content-filtering.md) <br/>As part of web protection capabilities in Microsoft Defender for Endpoint, web content filtering enables your organization's security team to track and regulate access to websites based on their content categories. Categories include adult content, high bandwidth, legal liability, leisure, and uncategorized. Although many websites that fall into one or more of these categories might not be malicious, they could be problematic because of compliance regulations, bandwidth usage, or other concerns. [Learn more about web content filtering](web-content-filtering.md).

## August 2021

- (Preview) [Microsoft Defender for Endpoint Plan 1 ](defender-endpoint-plan-1.md) <br/>Defender for Endpoint Plan 1 (preview) is an endpoint protection solution that includes next-generation protection, attack surface reduction, centralized management and reporting, and APIs. Defender for Endpoint Plan 1 (preview) is a new offering for customers who want to try our endpoint protection capabilities, have Microsoft 365 E3, and do not yet have Microsoft 365 E5. 

   To learn more, see [Microsoft Defender for Endpoint Plan 1 (preview)](defender-endpoint-plan-1.md). Existing [Defender for Endpoint](microsoft-defender-endpoint.md) capabilities will be known as Defender for Endpoint Plan 2. 

- (Preview) [Web Content Filtering](web-content-filtering.md)<br>  Web content filtering is part of web protection capabilities in Microsoft Defender for Endpoint. It enables your organization to track and regulate access to websites based on their content categories. Many of these websites, while not malicious, might be problematic because of compliance regulations, bandwidth usage, or other concerns.

## July 2021

- (Preview) [Device health and compliance report](machine-reports.md) <br>  The device health and compliance report provides high-level information about the devices in your organization.

## June 2021

- [Delta export software vulnerabilities assessment](get-assessment-methods-properties.md#31-methods) API <br> An addition to the [Export assessments of vulnerabilities and secure configurations](get-assessment-methods-properties.md) API collection. <br> Unlike the full software vulnerabilities assessment (JSON response) - which is used to obtain an entire snapshot of the software vulnerabilities assessment of your organization by device - the delta export API call is used to fetch only the changes that have happened between a selected date and the current date (the "delta" API call). Instead of getting a full export with a large amount of data every time, you'll only get specific information on new, fixed, and updated vulnerabilities. Delta export API call can also be used to calculate different KPIs such as "how many vulnerabilities were fixed" or "how many new vulnerabilities were added to an organization."

- [Export assessments of vulnerabilities and secure configurations](get-assessment-methods-properties.md) API <br> Adds a collection of APIs that pull threat and vulnerability management data on a per-device basis. There are different API calls to get different types of data: secure configuration assessment, software inventory assessment, and software vulnerabilities assessment. Each API call contains the requisite data for devices in your organization.

- [Remediation activity](get-remediation-methods-properties.md) API <br>  Adds a collection of APIs with responses that contain threat and vulnerability management remediation activities that have been created in your tenant. Response information types include one remediation activity by ID, all remediation activities, and exposed devices of one remediation activity.

- [Device discovery](device-discovery.md) <br> Helps you find unmanaged devices connected to your corporate network without the need for extra appliances or cumbersome process changes. Using onboarded devices, you can find unmanaged devices in your network and assess vulnerabilities and risks. You can then onboard discovered devices to reduce risks associated with having unmanaged endpoints in your network.

   > [!IMPORTANT]
   > Standard discovery will be the default mode for all customers starting July 19, 2021. You can choose to retain the basic mode through the settings page.

- [Device group definitions](/microsoft-365/security/defender-endpoint/machine-groups) can now include multiple values for each condition. You can set multiple tags, device names, and domains to the definition of a single device group.

- [Mobile Application management support](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-new-capabilities-on-android-and-ios/ba-p/2442730) <br> This enhancement enables Microsoft Defender for Endpoint protect an organization’s data within a managed application when Intune is being used to manage mobile applications. For more information about mobile application management, see [this documentation](/microsoft-365/mem/intune/apps/mam-faq).

- [Microsoft Tunnel VPN integration](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/announcing-new-capabilities-on-android-and-ios/ba-p/2442730) <br> Microsoft Tunnel VPN capabilities is now integrated with Microsoft Defender for Endpoint app for Android. This unification enables organizations to offer a simplified end user experience with one security app – offering both mobile threat defense and the ability to access on-prem resources from their mobile device, while security and IT teams are able to maintain the same admin experiences they are familiar with.

- [Jailbreak detection on iOS](/microsoft-365/security/defender-endpoint/ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios) <br> Jailbreak detection capability in Microsoft Defender for Endpoint on iOS is now generally available. This adds to the phishing protection that already exists.  For more information, see [Setup Conditional Access Policy based on device risk signals](/microsoft-365/security/defender-endpoint/ios-configure-features.md#conditional-access-with-defender-for-endpoint-on-ios).


## March 2021
- [Manage tamper protection using the Microsoft Defender Security Center](prevent-changes-to-security-settings-with-tamper-protection.md#manage-tamper-protection-for-your-organization-using-the-microsoft-365-defender-portal) <br> You can manage tamper protection settings on Windows 10, Windows Server 2016, Windows Server 2019, and Windows Server 2022 by using a method called *tenant attach*.


## January 2021

- [Windows Virtual Desktop](https://azure.microsoft.com/services/virtual-desktop/) <br> Microsoft Defender for Endpoint now adds support for Windows Virtual Desktop.
