---
title: Manage Microsoft Defender for Endpoint configuration settings on devices with Microsoft Endpoint Manager
description: Learn how to enable security settings in Microsoft Endpoint Manager through Microsoft Defender for Endpoint.
keywords: device management, configure Microsoft Defender for Endpoint devices, Microsoft Endpoint Manager
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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
- tier2
ms.topic: article
ms.subservice: mde
---


# Manage Microsoft Defender for Endpoint configuration settings on devices with Microsoft Endpoint Manager

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)



> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


Security Management for Microsoft Defender for Endpoint is a capability for devices that aren't managed by a Microsoft Endpoint Manager to receive security configurations for Microsoft Defender directly from Endpoint Manager.


For more information on Security Configuration Management, including prerequisites, supported platforms and more, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration).

Watch this video to learn how to use Microsoft Endpoint Manager to manage security configuration for Microsoft Defender for Endpoint.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4qLVq]

[!INCLUDE [Prerequisites](../../includes/security-config-mgt-prerequisites.md)]

>[!NOTE]
>This capability is being rolled out gradually. 

For more information on Security Configuration Management, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration).

If you encounter enrollment issues, see [Troubleshoot Security Configuration Management onboarding issues](troubleshoot-security-config-mgt.md).

> [!NOTE]
> This capability does not apply to devices that are already enrolled to Microsoft Endpoint Manager (either Intune or Configuration Manager). Devices enrolled into Intune will continue to receive policies through their established management channel.

## Identify onboarded devices

Use the following steps to validate that your endpoints have successfully completed the Security Management for Microsoft Defender for Endpoint onboarding process.

1.  Verify that the device appears in the Device Inventory section of [Microsoft 365 Defender](https://security.microsoft.com/).

2.  In the [Azure Active Directory portal](https://aad.portal.azure.com/#blade/Microsoft_AAD_Devices/DevicesMenuBlade/Devices/menuId/), verify that the device has successfully been enrolled.

3.  In the [Microsoft Endpoint Manager Admin Center](https://endpoint.microsoft.com/#blade/Microsoft_Intune_DeviceSettings/DevicesMenu/mDMDevicesPreview),  verify that the device has successfully been enrolled by looking it up in the **Devices > All devices** section.


## Offboard devices
To offboard devices that have been onboarded via Security Management for Microsoft Defender for Endpoint, see [Offboard devices from the Microsoft Defender for Endpoint service](offboard-machines.md).

>[!NOTE]
>Offboarding will [disable Tamper Protection](manage-tamper-protection-microsoft-365-defender.md) if it is enabled.

## Troubleshooting Security Management 
To troubleshoot Security Management for Microsoft Defender for Endpoint enrollment issues, see [Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint](troubleshoot-security-config-mgt.md).

## Related topic
- [Troubleshoot onboarding issues related to Security Management for Microsoft Defender for Endpoint](troubleshoot-security-config-mgt.md)
- [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration#configure-your-tenant-to-support-mde-security-configuration-management)
