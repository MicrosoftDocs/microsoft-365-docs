---
title: "Get started with Endpoint data loss prevention"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- highpri
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
search.appverid:
- MET150
ms.custom: admindeeplinkCOMPLIANCE
description: "Set up Endpoint data loss prevention to monitor file activities and implement protective actions for those files to endpoints."
---

# Get started with Endpoint data loss prevention

Endpoint data loss prevention (Endpoint DLP) is part of the Microsoft Purview Data Loss Prevention (DLP) suite of features you can use to discover and protect sensitive items across Microsoft 365 services. For more information about all of Microsoft's DLP offerings, see [Learn about data loss prevention](dlp-learn-about-dlp.md). To learn more about Endpoint DLP, see [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)

Microsoft Endpoint DLP allows you to monitor [onboarded Windows 10, and Windows 11](device-onboarding-overview.md) and [onboarded macOS devices](device-onboarding-macos-overview.md) running three latest released versions. Once a device is onboarded, DLP detects when sensitive items are used and shared. This gives you the visibility and control you need to ensure that they're used and protected properly, and to help prevent risky behavior that might compromise them.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

### SKU/subscriptions licensing

Before you get started with Endpoint DLP, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. To access and use Endpoint DLP functionality, you must have one of these subscriptions or add-ons.

- Microsoft 365 E5
- Microsoft 365 A5 (EDU)
- Microsoft 365 E5 compliance
- Microsoft 365 A5 compliance
- Microsoft 365 E5 information protection and governance
- Microsoft 365 A5 information protection and governance

for full licensing details, see [Microsoft 365 licensing guidance for information protection](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection-data-loss-prevention-for-exchange-online-sharepoint-online-and-onedrive-for-business)

### Configure proxy on the Windows 10 or Windows 11 device

If you're onboarding Windows 10 or Windows 11 devices, check to make sure that the device can communicate with the cloud DLP service. For more information, see, [Configure device proxy and internet connection settings for Information Protection](device-onboarding-configure-proxy.md#configure-device-proxy-and-internet-connection-settings-for-information-protection).

## Windows 10 and Windows 11 Onboarding procedures

For a general introduction to onboarding Windows devices, see:

- [Onboard Windows 10 and Windows 11 devices into Microsoft Purview overview](device-onboarding-overview.md#onboard-windows-10-and-windows-11-devices-into-microsoft-365-overview)

For specific guidance to onboarding Windows devices, see:

|Article|Description|
|:---|:---|
|[Onboard Windows 10 or 11 devices using Group Policy](device-onboarding-gp.md)|Use Group Policy to deploy the configuration package on devices.|
|[Onboard Windows 10 or 11 devices using Microsoft Endpoint Configuration Manager](device-onboarding-sccm.md)|You can use either use Microsoft Endpoint Configuration Manager (current branch) version 1606 or Microsoft Endpoint Configuration Manager (current branch) version 1602 or earlier to deploy the configuration package on devices.|
|[Onboard Windows 10 or 11 devices using Microsoft Intune](device-onboarding-mdm.md)|Use Microsoft Intune to deploy the configuration package on device.|
|[Onboard Windows 10 or 11 devices using a local script](device-onboarding-script.md)|Learn how to use the local script to deploy the configuration package on endpoints.|
|[Onboard non-persistent virtual desktop infrastructure (VDI) devices](device-onboarding-vdi.md)|Learn how to use the configuration package to configure VDI devices.|

### Endpoint DLP support for virtualized environments (preview)

You can onboard virtual machines as monitored devices in Microsoft Purview compliance portal. There's no change to the onboarding procedures listed above.

Here are the virtual operating systems that are supported by virtualization environments.

|Virtualization </br> platform|Windows 10|Windows 11|Windows Server 2019| Windows Server 2022</br>21H2 Data Center |
|:---|:---|:---|:---|:---|
|Azure virtual desktop (AVD)|<ul><li>Single session supported for 20H2, 21H1, 21H2</li><li>Multi session supported for 20H2, 21H1, 21H2</li></ul>|<ul><li>Single session supported for 22H2</li><li>Multi session supported for 22H2</li></ul>| Supported|Supported|
|Citrix Virtual Apps and Desktops 7 (2209)|<ul><li>Single session supported for 20H2, 21H1, 21H2</li><li>Multi session supported for 20H2, 21H1, 21H2|<ul><li>Single session supported for 21H2 (Gen2)</li><li>Multi session supported for 21H2 (Gen 2)</li></ul>|Supported|Supported|
|Amazon workspaces|<ul><li>Single session supported for 20H2, 21H1, 21H2|N/A|N/A|N/A|
|Hyper-V|<ul><li>Single session supported for 20H2, 21H1, 21H2</li><li>Multi session with Hybrid AD join supported for 20H2, 21H1, 21H2</li></ul>|<ul><li>Single session supported for 22H2</li><li>Multi session with Hybrid AD join supported for 22H2</li></ul>|Supported with Hybrid AD join|Supported with Hybrid AD join|

#### Known issues

1. You can't monitor Copy to Clipboard and Enforcing Endpoint DLP on Azure Virtual Desktop environments via browsers. However the same egress operation will be monitored by Endpoint DLP for actions via Remote Desktop Session (RDP) today.
1. Citrix XenApp doesn't support access by unallowed app monitoring.

#### Limitations

1. Handling of USBs in virtualized environments: USB storage devices are treated as network shares. You need to include the **Copy to network share** activity to monitor **Copy to a USB device**. All activity explorer events for virtual devices and incident alerts show the **Copy to a network share** activity for all copy to USB events.

## macOS onboarding procedures

For a general introduction to onboarding macOS devices, see:

- [Onboard macOS devices into Microsoft Purview](device-onboarding-macos-overview.md)

For specific guidance to onboarding macOS devices, see:

|Article|Description|
|:---|:---|
|[Intune](device-onboarding-offboarding-macos-intune.md)|For macOS devices that are managed through Intune|
|[Intune for Microsoft Defender for Endpoint customers](device-onboarding-offboarding-macos-intune-mde.md)|For macOS devices that are managed through Intune and that have Microsoft Defender for Endpoint (MDE) deployed to them|
|[JAMF Pro)](device-onboarding-offboarding-macos-jamfpro.md)|For macOS devices that are managed through JAMF Pro|
|[JAMF Pro for Microsoft Defender for Endpoint customers)](device-onboarding-offboarding-macos-jamfpro-mde.md)|For macOS devices that are managed through JAMF Pro and that have Microsoft Defender for Endpoint (MDE) deployed to them|

Once a device is onboarded, it should be visible in the devices list, and also start reporting audit activity to Activity explorer.

## See also

- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Using Endpoint data loss prevention](endpoint-dlp-using.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](/windows/security/threat-protection/)
- [Onboarding tools and methods for Windows machines](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
