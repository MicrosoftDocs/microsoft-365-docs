---
title: Manage Microsoft Defender for Endpoint configuration settings on devices with Microsoft Endpoint Manager
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


# Manage Microsoft Defender for Endpoint configuration settings on devices with Microsoft Endpoint Manager

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


Security Management for Microsoft Defender for Endpoint is a capability for devices that aren’t managed by a Microsoft Endpoint Manager, either Microsoft Intune or Microsoft Endpoint Configuration Manager, to receive security configurations for Microsoft Defender directly from Endpoint Manager.


For more information on Security Configuration Management, indluding prerequisites, supported platforms and more, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration).

When devices are managed through this capability:


- You use the Microsoft Endpoint Manager admin center to configure endpoint security policies for MDE and assign those policies to Azure AD groups
- Devices get the policies based on their Azure Active Directory device object. A device that isn’t already present in Azure Active Directory is joined as part of this solution
- When a device receives a policy, the Defender for Endpoint components on the device enforce the policy and report on the devices status. The device's status is available in the Microsoft Endpoint Manager admin center


> [!NOTE]
> This capability does not apply to devices that are already enrolled to Microsoft Endpoint Manager (either Intune or Configuration Manager). Devices enrolled into Intune will continue to receive policies through their established management channel.

The following diagram is a conceptual representation of the MDE security configuration management solution.

<<Add here the architecture diagram (second image) from Brent's post>>

1. Devices onboard to MDE.

2. A trust is established between each device and Azure AD. When a device has an existing trust, that is used. When devices haven't registered, a new trust is created.


3. Devices use their Azure AD Identity to communicate with Endpoint Manager. This identity enables Microsoft Endpoint Manager to distribute policies that are targeted to the devices when they check in.

4. Defender for Endpoint reports the status of the policy back to Endpoint Manager.

## Onboard devices
    
> [!IMPORTANT]
> Make sure all [Security Management for Microsoft Defender for Endpoint for Microsoft Defender for Endpoint prerequisites](/mem/intune/protect/mde-security-integration#prerequisites) are met prior to onboarding devices.


For more information on Security Configuration Management, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration).

If you encounter enrollment issues, see [Troubleshoot Security Configuration Management onboarding issues](troubleshoot-security-config-mgt.md).


## Identify onboarded devices

Use the following steps to validate that your endpoints have successfully completed the Security Management for Microsoft Defender for Endpoint onboarding process.

1.  Verify that the device appears in the Device Inventory section of [Microsoft 365 Defender](https://security.microsoft.com/).

2.  In the [Azure Active Directory portal](https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade/MsGraphUsers), verify that the device has successfully been enrolled.

3.  In the [Microsoft Endpoint Manager Admin Center](https://endpoint.microsoft.com/#blade/Microsoft_Intune_DeviceSettings/DevicesMenu/mDMDevicesPreview),  verify that the device has successfully been enrolled by looking it up in the **Devices > All devices** section.


## Configure security settings
To configure security settings on devices through Microsoft Endpoint Manager, see [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration#configure-your-tenant-to-support-mde-security-configuration-management).

## Offboard devices
To offboard devices that have been onboarded via Security Management for Microsoft Defender for Endpoint, see [Offboard devices from the Microsoft Defender for Endpoint service](offboard-machines.md).

>[!NOTE]
>Offboarding will [disable Tamper Protection](prevent-changes-to-security-settings-with-tamper-protection.md#manage-tamper-protection-for-your-organization-using-the-microsoft-365-defender-portal) if it is enabled.

## Troubleshooting Security Management 
To troubleshoot Security Management for Microsoft Defender for Endpoint enrollment issues, see [Troubleshoot  Security Configuration Management Azure Active Directory onboarding issues](troubleshoot-security-config-mgt.md)

## Related topic
- [Troubleshoot  Security Configuration Management Azure Active Directory onboarding issues](troubleshoot-security-config-mgt.md)
- [Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager](/mem/intune/protect/mde-security-integration#configure-your-tenant-to-support-mde-security-configuration-management)
