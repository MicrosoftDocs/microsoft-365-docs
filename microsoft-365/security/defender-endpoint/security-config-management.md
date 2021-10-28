---
title: Onboard devices in Microsoft Endpoint Manager through Microsoft Defender for Endpoint
description: Learn how to enable security settings in Microsoft Endpoint Manager through Microsoft Defender for Endpoint.
keywords: device management, configure Microsoft Defender for Endpoint devices, Microsoft Endpoint Manager
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
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---


# Onboard Windows devices in Microsoft Endpoint Manager through Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


Security Management for Microsoft Defender for Endpoint is a capability for devices that aren’t managed by a Microsoft Endpoint Manager, either Microsoft Intune or Microsoft Endpoint Configuration Manager, to receive security configurations for Microsoft Defender directly from Endpoint Manager.

For more information on Security Configuration Management, indluding prerequisites, supported platforms and more, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration).


> [!NOTE]
> This capability does not apply to devices that are already enrolled to Microsoft Endpoint Manager (either Intune or Configuration Manager). Devices enrolled into Intune will continue to receive policies through their established management channel.


## Onboard devices
    
> [!IMPORTANT]
> Make sure all [Security Management for Microsoft Defender for Endpoint for Microsoft Defender for Endpoint prerequisites](/mem/intune/protect/mde-security-integration#prerequisites) are met prior to onboarding devices.

To onboard devices, follow the steps outlined in [Onboard devices and configure Microsoft Defender for Endpoint capabilities](onboard-configure.md).

If you encounter enrollment issues, see [Troubleshoot Security Configuration Management onboarding issues](troubleshoot-security-config-mgt.md).


## Identify onboarded devices

Use the following steps to validate that your endpoints have successfully completed the Security Management for Microsoft Defender for Endpoint onboarding process.

1.  Verify that the device appears in the Device Inventory section of [Microsoft 365 Defender](https://security.microsoft.com/).

2.  In the [Azure Active Directory portal](https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade/MsGraphUsers), verify that the device has successfully been enrolled.

3.  In the [Microsoft Endpoint Manager Admin Center](https://endpoint.microsoft.com/#blade/Microsoft_Intune_DeviceSettings/DevicesMenu/mDMDevicesPreview),  verify that the device has successfully been enrolled by looking it up in the **Devices > All devices** section.


## Offboard devices
To offboard devices that have been onboarded via Security Management for Microsoft Defender for Endpoint, see [Offboard devices from the Microsoft Defender for Endpoint service](offboard-machines.md).

>[!NOTE]
>Offboarding will [disable Tamper Protection](prevent-changes-to-security-settings-with-tamper-protection.md#manage-tamper-protection-for-your-organization-using-the-microsoft-365-defender-portal) if it is enabled.



## Related topic
- [Troubleshoot  Security Configuration Management Azure Active Directory onboarding issues](troubleshoot-security-config-mgt.md)
