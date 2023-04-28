---
title: Onboard macOS devices into Microsoft 365 overview
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 10/06/2020
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

MacOS devices can be onboarded into Microsoft Purview solutions using either Intune or JAMF Pro. The onboarding procedures differ depending on which management solution you're using. If your macOS devices have already been onboarded into Microsoft Defender for Endpoint (MDE), there are fewer steps. See [Next steps](#next-steps) for links to the appropriate procedures for you.

**Applies to:**

- [Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
- [Insider risk management](insider-risk-management.md)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

Before you get started with Endpoint DLP on macOS devices (three latest released versions), you should familiarize yourself with these articles:

- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)

If you aren't familiar with DLP at all, you should familiarize yourself with these articles as well:

- [Learn about data loss prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention)
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp)
- [Data loss prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference)

If you aren't familiar with Insider Risk, you should familiarize yourself with these articles:

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

## Onboarding devices into device management

You must enable device monitoring and onboard your endpoints before you can monitor and protect sensitive items on a device. Both of these actions are done in the Microsoft Purview compliance portal.

When you want to onboard devices that haven't been onboarded yet, you'll download the appropriate script and deploy it to those devices. <!--Follow the [Onboarding devices procedure](endpoint-dlp-getting-started.md#onboarding-devices).-->

<!--If you already have devices onboarded into [Microsoft Defender for Endpoint](/windows/security/threat-protection/), they will already appear in the managed devices list.-->

1. Open the [Microsoft Purview compliance portal](https://compliance.microsoft.com) **Settings** page and choose **Enable device monitoring**.

   > [!NOTE]
   > While it usually takes about 60 seconds for device onboarding to be enabled, please allow up to 30 minutes before engaging with Microsoft support.

2. Open the Microsoft Purview Compliance Portal settings page and choose **Turn on macOS device monitoring**.

## Next steps

Getting devices onboarding into Microsoft Purview solutions is required in order to receive DLP sensor telemetry and to enforce data loss prevention policies. 

Topic | Description
:---|:---
|[Intune](device-onboarding-offboarding-macos-intune.md)|For macOS devices that are managed through Intune
|[Intune for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-intune-mde.md) |For macOS devices that are managed through Intune and that have Microsoft Defender for Endpoint (MDE) deployed to them
|[JAMF Pro](device-onboarding-offboarding-macos-jamfpro.md) | For macOS devices that are managed through JAMF Pro
|[JAMF Pro for Microsoft Defender for Endpoint](device-onboarding-offboarding-macos-jamfpro-mde.md)|For macOS devices that are managed through JAMF Pro and that have Microsoft Defender for Endpoint (MDE) deployed to them

## Device configuration and policy sync status (preview)

You can check the **Configuration status** and the **Policy sync status** of all your onboarded devices in the **Devices** list. For macOS devices, the minimum version is 101.95.07. For more information on the configuration and policy status, select an onboarded device to open the details pane.

**Configuration status** shows you if the device is configured correctly, meets DLP configuration requirements, and the last time the configuration was validated. For macOS  devices configuration includes:
- Checking the UPN configuration by making sure your devices are [onboarded into Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) if you're using Intune.
- Making sure that they're enrolled in the [Company Portal](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp)
- If you use [JAMF Pro make sure that they're onboarded](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/) for checking the UPN configuration.

**Policy sync status** shows you if the most current versions of the endpoint DLP policies have been synchronized to the device and the last time a policy sync occurred.


|Field value  |Configuration status  |Policy sync status  |
|---------|---------|---------|
|Updated    |Device health parameters are enabled and correctly set.   |Device has been updated with the current versions of policies.         |
|Not updated    | You need to enable the configuration settings for this device. Follow the procedures for your environment: </br>- [Onboard and offboard macOS devices into Microsoft Purview solutions using Intune](device-onboarding-offboarding-macos-intune.md#onboard-and-offboard-macos-devices-into-microsoft-purview-solutions-using-intune) </br>- [Onboard and offboard macOS devices into Compliance solutions using Intune for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-intune-mde.md#onboard-and-offboard-macos-devices-into-compliance-solutions-using-intune-for-microsoft-defender-for-endpoint-customers)</br>- [Onboard and offboard macOS devices into Microsoft Purview solutions using JAMF Pro](device-onboarding-offboarding-macos-jamfpro.md#onboard-and-offboard-macos-devices-into-microsoft-purview-solutions-using-jamf-pro)</br>- [Onboard and offboard macOS devices into Compliance solutions using JAMF Pro for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-jamfpro-mde.md#onboard-and-offboard-macos-devices-into-compliance-solutions-using-jamf-pro-for-microsoft-defender-for-endpoint-customers) |This device hasn't synced the latest policy updates. If the policy update was made within the last 2 hours, wait for the policy to reach your device. |
|Not available  | Device properties aren't available in the device list. This could be because the device doesn't meet the minimum OS version, or configuration or if the device was just onboarded.        |Device properties aren't available in the device list. This could be because the device doesn't meet the minimum OS version, or configuration or if the device was just onboarded.|


## Related topics

- [Using Endpoint data loss prevention](endpoint-dlp-using.md#using-endpoint-data-loss-prevention)
- [Support Matrix for DLP policy tips across Microsoft apps](dlp-policy-tips-reference.md#support-matrix-for-dlp-policy-tips-across-microsoft-apps)
