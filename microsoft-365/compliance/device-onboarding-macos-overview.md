---
title: Onboard macOS devices into Microsoft 365 overview
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 03/28/2023
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

MacOS devices can be onboarded into Microsoft Purview solutions using either Intune or JAMF Pro. The onboarding procedures differ depending on which management solution you use. If your macOS devices have already been onboarded into Microsoft Defender for Endpoint (MDE), there are fewer steps. See [Next steps](#next-steps) for links to the appropriate procedures for you.

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

Before you get started with Endpoint DLP on macOS devices (the latest three released versions), familiarize yourself with these articles:

- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)

If you aren't familiar with DLP at all, you should familiarize yourself with these articles as well:

- [Learn about data loss prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention)
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp)
- [Data loss prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference)

If you aren't familiar with Insider Risk, read these articles:

 - [Insider risk management](insider-risk-management.md)
 - [Plan for insider risk management](insider-risk-management-plan.md#plan-for-insider-risk-management)

Your macOS devices must already be managed through Intune or JAMF Pro.
 
- To onboard into Intune, see [Deployment guide: Manage macOS devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and [Enroll your Mac with Intune Company Portal](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- To onboard into JAMF Pro see, [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/) and [JAMF Pro Installation and Configuration Guide for Mac](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/)

### Supported processors

macOS devices with x64 and M1 (ARM64) processors are supported.

### Supported browsers

Endpoint DLP supports these browsers on macOS (three latest released versions):

- Microsoft Edge (latest version)
- Safari (latest version, macOS only)
- Chrome (latest version)
- Firefox (latest version)

## Licensing guidance

See, [Microsoft 365 licensing guidance for information protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-loss-prevention-for-exchange-online-sharepoint-online-and-onedrive-for-business).

## Conditions supported on macOS 

Once a macOS device is onboarded into Microsoft Purview solutions, you can use the following condition with data loss prevention (DLP) policies:

**Content Contains** – Applies to documents that contain sensitive information types and sensitivity labels. 

## Activities that can be audited and restricted on macOS 

Once a macOS device is onboarded into Microsoft Purview solutions, you can monitor and restrict the following actions using data loss prevention (DLP) policies.

**Copy to a USB removable media** – When enforced, this action blocks, warns, or audits the copying or moving of protected files from an endpoint device to USB removable media.

**Copy to network shares** – When enforced, this action blocks, warns, or audits the copying or moving of protected files from an endpoint device to any network share.

**Print** – When enforced, this action blocks, warns, or audits when protected files are printed from an endpoint device.

**Copy to clipboard** – When enforced, this action blocks, warns, or audits data in protected file that is being copied to a clipboard on an endpoint device.

**Upload to cloud** – This action blocks, warns, or audits when protected files are uploaded or prevented from being uploaded to cloud services based on the allow/unallowed domains list in global settings. When this action is set to warn or block, other browsers (defined on the unallowed browsers list under Global settings) are blocked from accessing the file.

**Accessed by unallowed apps** – When enforced, this action prevents applications that are on the unallowed apps list (as defined in Global settings) from accessing protected files on an endpoint device.

## Onboarding devices into device management

You must enable device monitoring and onboard your endpoints before you can monitor and protect sensitive items on a device. Both of these actions are done in the Microsoft Purview compliance portal.

When you want to onboard devices that haven't been onboarded yet, download the appropriate script and deploy it to those devices. <!--Follow the [Onboarding devices procedure](endpoint-dlp-getting-started.md#onboarding-devices).-->

<!--If you already have devices onboarded into [Microsoft Defender for Endpoint](/windows/security/threat-protection/), they will automatically appear in the managed devices list.-->

1. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com) **Settings** page and choose **Enable device monitoring**.

   > [!NOTE]
   > While it usually takes about 60 seconds for device onboarding to be enabled, please allow up to 30 minutes before engaging with Microsoft support.

2. Open the Microsoft Purview Compliance Portal settings page and choose **Turn on macOS device monitoring**.

## Next steps

Getting devices onboarded into Microsoft Purview solutions is required in order to receive DLP sensor telemetry and to enforce data loss prevention policies. As mentioned, macOS devices can be onboarded into Microsoft Purview solutions using either Intune or JAMF Pro. the following articles for the procedures appropriate to your situation.

Topic | Description
:---|:---
|[Intune](device-onboarding-offboarding-macos-intune.md)|For macOS devices that are managed through Intune
|[Intune for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-intune-mde.md) |For macOS devices that are managed through Intune and that have Microsoft Defender for Endpoint (MDE) deployed to them
|[JAMF Pro](device-onboarding-offboarding-macos-jamfpro.md) | For macOS devices that are managed through JAMF Pro
|[JAMF Pro for Microsoft Defender for Endpoint](device-onboarding-offboarding-macos-jamfpro-mde.md)|For macOS devices that are managed through JAMF Pro and that have Microsoft Defender for Endpoint (MDE) deployed to them

## Device configuration and policy sync status


You can check the **Configuration status** and the **Policy sync status** of all your onboarded devices in the **Devices** list. For macOS devices, the minimum version is 101.95.07. For more information on the configuration and policy status, select an onboarded device and then open the details pane.

**Configuration status** shows you whether the device is configured correctly, meets DLP configuration requirements, and the last time the configuration was validated. For macOS  devices, configuration includes:
- If you use Intune, check the UPN configuration by making sure your devices are [onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos).
- If you use Intune, make sure that your devices are enrolled in the [Company Portal](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp)
- If you use JAMF Pro, [make sure your devices are onboarded](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/) before checking the UPN configuration.

**Policy sync status** shows you whether the most current versions of the endpoint DLP policies have been synchronized to the device and the last time a policy sync occurred.

|Field value  |Configuration status  |Policy sync status  |
|---------|---------|---------|
|Updated    |Device health parameters are enabled and correctly set.   |Device has been updated with the current versions of policies.         |
|Not updated    | You need to enable the configuration settings for this device. Follow the procedures for your environment: </br></br>- [Onboard and offboard macOS devices into Microsoft Purview solutions using Intune](device-onboarding-offboarding-macos-intune.md#onboard-and-offboard-macos-devices-into-microsoft-purview-solutions-using-intune) </br></br>- [Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-intune-mde.md#onboard-and-offboard-macos-devices-into-compliance-solutions-using-intune-for-microsoft-defender-for-endpoint-customers)</br></br>- [Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro](device-onboarding-offboarding-macos-jamfpro.md#onboard-and-offboard-macos-devices-into-microsoft-purview-solutions-using-jamf-pro)</br></br>- [Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-jamfpro-mde.md#onboard-and-offboard-macos-devices-into-compliance-solutions-using-jamf-pro-for-microsoft-defender-for-endpoint-customers) |This device hasn't synced the latest policy updates. If the policy update was made within the last 2 hours, wait for the policy to reach your device. |
|Not available  | Device properties aren't available in the device list. This could be because the device doesn't meet the minimum OS version or configuration, or because the device was just onboarded.        |Device properties aren't available in the device list. This could be because the device doesn't meet the minimum OS version or configuration, or because the device was just onboarded.|


## Related articles

- [Using Endpoint data loss prevention](endpoint-dlp-using.md#using-endpoint-data-loss-prevention)
- [Support Matrix for DLP policy tips across Microsoft apps](dlp-policy-tips-reference.md#support-matrix-for-dlp-policy-tips-across-microsoft-apps)
