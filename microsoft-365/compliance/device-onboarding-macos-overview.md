---
title: Onboard macOS devices into Microsoft 365 overview
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance 
search.appverid:
- MET150 
description: Learn about onboarding macOS devices into Compliance solutions
---

# Onboard macOS devices into Microsoft 365 overview

MacOS devices can be onboarded into Microsoft Purview solutions using either Intune or JAMF Pro. The onboarding procedures differ depending on which management solution you are using. If your macOS devices have already been onboarded into Microsoft Defender for Endpoint (MDE), there are fewer steps. See [Next steps](#next-steps) for links to the appropriate procedures for you.

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

Before you get started with Endpoint DLP on macOS devices (Catalina 10.15 or later), you should familiarize yourself with these articles:

- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)

If you are not familiar with DLP at all, you should familiarize yourself with these articles as well:

- [Learn about data loss prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention)
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp)
- [Data loss prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference)

If you are not familiar with Insider Risk, you should familiarize yourself with these articles:

 - [Insider risk management](insider-risk-management.md)
 - [Plan for insider risk management](insider-risk-management-plan.md#plan-for-insider-risk-management)

Your macOS devices must already be managed through Intune or JAMF Pro.
 
- To onboard into Intune, see [Deployment guide: Manage macOS devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and [Enroll your Mac with Intune Company Portal](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- To onboard into JAMF Pro see, [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/) and [JAMF Pro Installation and Configuration Guide for Mac](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/)
<!--- Install the v95+ Edge browser on your macOS devices--> 

### Supported browsers

Endpoint DLP supports these browsers on macOS Catalina 10.15 or higher:

- Microsoft Edge (latest version)
- Safari (latest version, macOS only)
- Chrome (latest version)
- Firefox (latest version)

## Licensing guidance

See, [Microsoft 365 licensing guidance for information protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-loss-prevention-for-exchange-online-sharepoint-online-and-onedrive-for-business).

## Activities that can be audited and restricted on macOS 

Once a macOS device is onboarded into Microsoft Purview solutions, you can monitor and restrict these actions with data loss prevention (DLP) policies.

**Copy to a USB removable media** – when enforced, this action blocks, warns or audits the copying or moving of protected files from an endpoint device to USB removable media 

**Copy to network shares** – when enforced, this action blocks, warns, or audits the copying or moving of protected files from an endpoint device to any network share 

**Print** – when enforced, this action blocks, warns, or audits when protected files are printed from an endpoint device 

**Copy to clipboard** – when enforced, this action blocks, warns, or audits data in protected file that is being copied to a clipboard on an endpoint device 

**Upload to cloud** – this action blocks, warns, or audits when protected files are prevented from or allowed to be uploaded to cloud services based on the allow/unallowed domains list in global settings. When this action is set to warn or block, other browsers (defined on unallowed browsers list under Global settings) are blocked from accessing the file. 

**Accessed by unallowed apps** – when enforced, this action prevents applications that are on the unallowed apps list (as defined in Global settings) from accessing protected files on an endpoint device. Sample scenarios 

## Onboarding devices into device management

You must enable device monitoring and onboard your endpoints before you can monitor and protect sensitive items on a device. Both of these actions are done in the Microsoft Purview compliance portal.

When you want to onboard devices that haven't been onboarded yet, you'll download the appropriate script and deploy it to those devices. <!--Follow the [Onboarding devices procedure](endpoint-dlp-getting-started.md#onboarding-devices).-->

<!--If you already have devices onboarded into [Microsoft Defender for Endpoint](/windows/security/threat-protection/), they will already appear in the managed devices list.-->

1. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com) **Settings** page and choose **Enable device monitoring**.

   > [!NOTE]
   > While it usually takes about 60 seconds for device onboarding to be enabled, please allow up to 30 minutes before engaging with Microsoft support.

2. Open the Compliance Center settings page and choose **Turn on macOS device monitoring**.

## Next steps

Getting devices onboarding into Microsoft Purview solutions is required in order to receive DLP sensor telemetry and to enforce data loss prevention policies. 

Topic | Description
:---|:---
|[Intune](device-onboarding-offboarding-macos-intune.md)|For macOS devices that are managed through Intune
|[Intune for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-intune-mde.md) |For macOS devices that are managed through Intune and that have Microsoft Defender for Endpoint (MDE) deployed to them
|[JAMF Pro](device-onboarding-offboarding-macos-jamfpro.md) | For macOS devices that are managed through JAMF Pro
|[JAMF Pro for Microsoft Defender for Endpoint](device-onboarding-offboarding-macos-jamfpro-mde.md)|For macOS devices that are managed through JAMF Pro and that have Microsoft Defender for Endpoint (MDE) deployed to them


## Related topics

- [Using Endpoint data loss prevention](endpoint-dlp-using.md#using-endpoint-data-loss-prevention)
- [Support Matrix for DLP policy tips across Microsoft apps](dlp-policy-tips-reference.md#support-matrix-for-dlp-policy-tips-across-microsoft-apps)
