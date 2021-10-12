---
title: Onboard macOS devices into Microsoft 365 overview (preview)
f1.keywords:
    NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance 
search.appverid:
- MET150 
description: 
---

# Onboard macOS devices into Microsoft 365 overview (preview)

MacOS devices can be onboarded into Microsoft 365 compliance solutions either Intune or JAMF Pro. 

**Applies to:**

- [Microsoft 365 Endpoint data loss prevention (DLP)](./endpoint-dlp-learn-about.md)
<!--- [Insider risk management](insider-risk-management.md#learn-about-insider-risk-management-in-microsoft-365)-->

## Before you begin

Before you get started with Endpoint DLP on macOS devices (Catalina 10.15 or later) you should familiarize yourself with these articles:

- [Learn about Microsoft 365 Endpoint data loss prevention](endpoint-dlp-learn-about.md#learn-about-microsoft-365-endpoint-data-loss-prevention)
- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md#get-started-with-endpoint-data-loss-prevention)

If you are not familiar with DLP at all, you should familiarize yourself with these articles:

- [Learn about data loss prevention](dlp-learn-about-dlp.md#learn-about-data-loss-prevention)
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md#plan-for-data-loss-prevention-dlp)
- [Data Loss Prevention policy reference](dlp-policy-reference.md#data-loss-prevention-policy-reference)

Your macOS devices must already be managed through Intune or JAMF Pro. 
- To onboard into Intune, see [Deployment guide: Manage macOS devices in Microsoft Intune](/mem/intune/fundamentals/deployment-guide-platform-macos) and [Enroll your Mac with Intune Company Portal](/mem/intune/user-help/enroll-your-device-in-intune-macos-cp). 
- To onboard into JAMF Pro see, [JAMF Pro administrators guide](https://www.jamf.com/resources/product-documentation/jamf-pro-administrators-guide/) and [JAMF Pro Installation and Configuration Guide for Mac](https://www.jamf.com/resources/product-documentation/jamf-pro-installation-guide-for-mac/)
- Install the v93+ Edge browser on your macOS devices 

## Licensing guidance

see [Microsoft 365 licensing guidance for information protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection)

## Supported actions 

**Copy to a USB removable media** – when enforced, this action blocks, warns or audits the copying or moving of protected files from an endpoint device to USB removable media 

**Copy to network shares** – when enforced, this action blocks, warns, or audits the copying or moving of protected files from an endpoint device to any network share 

**Print** – when enforced, this action blocks, warns, or audits when protected files are printed from an endpoint device 

**Copy to clipboard** – when enforced, this action blocks, warns, or audits data in protected file that is being copied to a clipboard on an endpoint device 

**Upload to cloud** – this action blocks, warns, or audits when protected files are prevented from or allowed to be uploaded to cloud services based on the allow/unallowed domains list in global settings. When this action is set to warn or block, other browsers (defined on unallowed browsers list under Global settings) are blocked from accessing the file. 

**Accessed by unallowed apps** – when enforced, this action prevents applications that are on the unallowed apps list (as defined in Global settings) from accessing protected files on an endpoint device. Sample scenarios 

## Next steps

Getting devices onboarding into Microsoft 365 compliance solutions is required in order to receive DLP sensor telemetry and to enforce data loss prevention policies. 

For macOS devices that are managed through Intune, see [Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using Intune (preview)](device-onboarding-offboarding-macos-intune.md#onboard-and-offboard-macos-devices-into-microsoft-365-compliance-solutions-using-intune-preview)

For macOS devices that are managed through JAMF Pro, see [Onboard and offboard macOS devices into Microsoft 365 Compliance solutions using JAMF Pro (preview)](device-onboarding-offboarding-macos-jamfpro.md#onboard-and-offboard-macos-devices-into-microsoft-365-compliance-solutions-using-jamf-pro-preview)


## Related topics

- [Using Endpoint data loss prevention](endpoint-dlp-using.md#using-endpoint-data-loss-prevention)
- [Support Matrix for DLP policy tips across Microsoft apps](dlp-policy-tips-reference.md#support-matrix-for-dlp-policy-tips-across-microsoft-apps)
