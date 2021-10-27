---
title: Onboard Windows devices in Microsoft Endpoint Manager through Microsoft Defender for Endpoint
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

- <ADD HERE LINK TO BRENT'S TOPIC>
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


Security Configuration Management for Microsoft Defender for Endpoint is a capability for devices that aren’t managed by a Microsoft Endpoint Manager, either Microsoft Intune or Microsoft Endpoint Configuration Manager, to receive security configurations for Microsoft Defender directly from Endpoint Manager.

For more information on Security Configuration Management, see <Manage Microsoft Defender for Endpoint on devices with Microsoft Endpoint Manager> (LINK TO BRENT's TOPIC)


> [!NOTE]
> Changes will not apply for devices that are already enrolled to Microsoft Endpoint Manager (either Intune or Configuration Manager). Devices enrolled into Intune will continue to receive policies through their established management channel


## Onboard devices
    
> [!IMPORTANT]
> Make sure all Security Configuration Management for Microsoft Defender for Endpoint prerequisites (LINK TO BRENT'S TOPIC, PREREQUISITE SECTION) are met prior to onboarding devices.

### Onboard Windows Server 2012 R2 and Windows Server 2016  

**Prerequisities**

1. Machines must be fully up to date with the latest CU (cumulative update)
    before installing.

2.  The environment must meet connectivity requirements as specified in [Configure device
    proxy and Internet connectivity settings](configure-proxy-internet.md).

3.  On Windows Server 2016, ensure Defender Antivirus is installed and on the latest (4.18.2106.6 or newer) version.

**Steps**

1. In the navigation pane, select **Settings** > **Endpoints** > **Device management**  > **Onboarding**.

2.  Select **Windows Server 2012 R2 and 2016 (Preview)** as the operating
    system. 

3.  In the **Deployment method** field, select **the script suitable for your
    intended deployment.** 

### Onboard Windows 11 devices

You'll need to register to the 'Microsoft Insider' program to get the latest builds. This program streamlines engineering collaboration within the Microsoft ecosystem by enabling the distribution of content.

-   To register, go to <https://aka.ms/wipsettings> and approve registration

-   Link your account.

-   In 'Insider Settings' select **Dev Channel**.

    -   Windows 11 with insider build version 22454 (10.8040.22454.1000) or newer.

-   Confirm your registration.

  >[!NOTE]
  > This will require you to restart your device.


## Identify onboarded devices

1.  Verify that the device appears in the Device Inventory section of the [Microsoft 365 Defender portal](https://security.microsoft.com/).

2.  In the [Azure Active Directory portal](https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade/MsGraphUsers), verify that the device has successfully been enrolled.

3.  In the [Microsoft Endpoint Manager Admin Center](https://endpoint.microsoft.com/#blade/Microsoft_Intune_DeviceSettings/DevicesMenu/mDMDevicesPreview),  verify that the device has successfully been enrolled by looking it up in
    the **Devices > All devices** section.




## Offboard devices
1.  In the Microsoft Defender Security Center navigation pane, select **Settings > Device management > Offboarding**. Select your Operating System. 

2.  Download then run the offboarding script. 

3.  Uninstall the package. 


>[!NOTE]
> Offboarding will [disable Tamper
Protection](prevent-changes-to-security-settings-with-tamper-protection.md#manage-tamper-protection-for-your-organization-using-the-microsoft-365-defender-portal) if it is enabled.

## Known issues and limitations 

### Non-persistent VDI environments

Due to the potential impact on Azure Active Directory environments with respect to device lifecycle and service quota, we advise against testing the current installation files and builds shared in this private preview in a non-persistent VDI environment.

### Server Core installation

Due to the limited scope of Server core installations, these are currently not supported by Microsoft Defender for Endpoint Security Configuration Manager.

### Azure Active Directory onboarding issues
To troubleshoot Azure Active Directory onboarding issues, see  [Troubleshoot Security Configuration Management Azure Active Directory onboarding issues](troubleshoot-security-config-mgt.md).


## Related topic
- [Troubleshoot  Security Configuration Management Azure Active Directory onboarding issues](troubleshoot-security-config-mgt.md)
