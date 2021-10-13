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

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


Onboard devices and manage security settings across devices with Microsoft Endpoint Manager through Microsoft Defender for Endpoint. 


Using this method of onboarding, the device is seamlessly registered to Azure Active Directory so that security teams can manage security configuration settings of all enterprise devices from Microsoft Endpoint Manager. 

> [!NOTE]
> Changes will not apply for devices that are already enrolled to Microsoft Endpoint Manager (either Intune or Configuration Manager). Devices enrolled into Intune will continue to receive policies through their established management channel


In general, you'll need to take the following steps:

- Ensure you fulfill the requirements
- Enable security settings management in Microsoft Endpoint Manager through Microsoft Defender for Endpoint
- Onboard devices
- Identify onboarded devices

After fulfilling the onboarding steps in Microsoft Defender for Endpoint, you can continue in Microsoft Endpoint Manager to manage security configuration settings for your devices. For more information see, [LINK TO BRENT'S TOPIC IN MEM].



## Before you begin
Ensure you fulfill the following requirements:

- Supported clients are Windows 11, starting with insider build version 22454
    (10.8040.22454.1000), Windows Server 2012 R2, Windows Server 2016. 

- Ensure machines are fully up to date. 

- Connectivity requirements must be filled as specified in [Configure device
    proxy and Internet connectivity settings](configure-proxy-internet.md)

- In addition, the following endpoints require **outbound** connectivity from
    the devices. A brief description for each endpoint is listed below. 

| Internet Endpoint                      | Description of Use                                                                                                                                                                                                                                        |
|----------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <https://enterpriseregistration.windows.net> | Used for Azure AD registration as part of the MDE security settings management workflow                                                                                                                                                                         |
| <https://login.microsoftonline.com>          | Used for Azure AD registration as part of the MDE security settings management workflow                                                                                                                                                                         |
| <https://device.login.microsoftonline.com>   | Used for Azure AD device registration and authentication as part of the MDE security settings management workflow **Note:** If your organization is using proxy servers that intercept SSL traffic, ensure this endpoint is excluded from TLS break-and-inspect |
| \*.dm.microsoft.com                  | Collection of endpoints used for enrollment, check-in, reporting for MDE security settings management policy payloads                                                                                                                                 

## Enable security settings management in Microsoft Endpoint Manager through Microsoft Defender for Endpoint

**Steps**
1. In the [Microsoft 365 Defender portal](https://security.microsoft.com/) navigation pane, select **Settings** > **Endpoint** > **Advanced Features**
2. Enable **Security setting management** for required OS platforms

## Onboard devices

### Onboard Windows Server 2012 R2 and Windows Server 2016  

**Prerequisities**

1. Machines must be fully up to date with the latest CU (cumulative update)
    before installing.

2.  The environment must meet connectivity requirements as specified above.

3.  On Windows Server 2016, ensure Defender Antivirus is installed and on
    the latest (4.18.2106.6 or newer) version.

**Steps**

1. In the navigation pane, select **Settings** > **Endpoints** > **Device management**  > **Onboarding**.

2.  Select **Windows Server 2012 R2 and 2016 (Preview)** as the operating
    system. 

3.  In the **Deployment method** field, select **the script suitable for your
    intended deployment.** 

### Onboard Windows 11 devices

You’ll need to register to the ‘Microsoft Insider’ program to get the latest
builds. This program streamlines engineering collaboration within the Microsoft
ecosystem by enabling the distribution of content.

-   To register, go to <https://aka.ms/wipsettings> and approve registration

-   Link your account.

-   In ‘Insider Settings’ select **Dev Channel**.

    -   Windows 11 with insider build version 22454 (10.8040.22454.1000) or newer.

-   Confirm your registration.

    Note: This will require you to restart your device.


## Identify onboarded devices
1.  Verify that the device appears in the Device Inventory section of the
    [Microsoft 365 Defender portal](https://security.microsoft.com/).

2.  In the [Azure Active Directory
    portal](https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade/MsGraphUsers),
    verify that the device has successfully been enrolled.

3.  In the [Microsoft Endpoint Manager Admin
    Center](https://endpoint.microsoft.com/#blade/Microsoft_Intune_DeviceSettings/DevicesMenu/mDMDevicesPreview),
    verify that the device has successfully been enrolled by looking it up in
    the Devices \> All devices section.




## Offboard devices
1.  In the Microsoft Defender Security Center navigation pane, select **Settings > Device management > Offboarding**. Select your Operating System. 

2.  Download then run the offboarding script. 

3.  Uninstall the package. 


>[!Note]
> Offboarding will [disable Tamper
Protection](prevent-changes-to-security-settings-with-tamper-protection.md#manage-tamper-protection-for-your-organization-using-the-microsoft-365-defender-portal) if it is enabled.

## Known issues and limitations 

### Non-persistent VDI environments

Due to the potential impact on Azure Active Directory environments with respect to device lifecycle and service quota, we advise against testing the current installation files and builds shared in this private preview in a non-persistent VDI environment.

### Server Core installation

Due to the limited scope of Server core installations, these are currently not supported by Microsoft Defender for Endpoint Security Configuration Manager.
