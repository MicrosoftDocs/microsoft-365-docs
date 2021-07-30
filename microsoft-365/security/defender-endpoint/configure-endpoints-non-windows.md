---
title: Onboard non-Windows devices to the Microsoft Defender for Endpoint service
description: Configure non-Windows devices so that they can send sensor data to the Microsoft Defender for Endpoint service.
keywords: onboard non-Windows devices, macos, linux, device management, configure Microsoft Defender for Endpoint devices
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

# Onboard non-Windows devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

**Platforms**
- macOS
- Linux

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-nonwindows-abovefoldlink)

Defender for Endpoint provides a centralized security operations experience for Windows and non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Microsoft 365 Defender and better protect your organization's network. 

You'll need to know the exact Linux distros and macOS versions that are compatible with Defender for Endpoint for the integration to work. For more information, see:
- [Microsoft Defender for Endpoint on Linux system requirements](microsoft-defender-endpoint-linux.md#system-requirements)  
- [Microsoft Defender for Endpoint on macOS system requirements](microsoft-defender-endpoint-mac.md#system-requirements).

## Onboarding non-Windows devices
You'll need to take the following steps to onboard non-Windows devices:
1. Select your preferred method of onboarding:

   - For macOS devices, you can choose to onboard through Microsoft Defender for Endpoint or through a third-party solution. For more information, see [Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-mac).

   - For other non-Windows devices choose **Onboard non-Windows devices through third-party integration**.   
    1. In the navigation pane, select **Partners and APIs** > **Partner Applications** . Make sure the third-party solution is listed.
    2. In the **Partner Applications** page, select the partner that supports your non-Windows devices.
    3. Click **View** to open the partner's page. Follow the instructions provided on the page.
    4. After creating an account or subscribing to the partner solution, you should get to a stage where a tenant Global Admin in your organization is asked to accept a permission request from the partner application. Read the permission request carefully to make sure that it's aligned with the service that you require. 
        
2. Run a detection test by following the instructions of the third-party solution.

## Offboard non-Windows devices

1. Follow the third party's documentation to disconnect the third-party solution from Microsoft Defender for Endpoint.

2. Remove permissions for the third-party solution in your Azure AD tenant.
   1. Sign in to the [Azure portal](https://portal.azure.com).
   2. Select **Azure Active Directory > Enterprise Applications**.
   3. Select the application you'd like to offboard.
   4. Select the **Delete** button.


## Related topics
- [Onboard Windows 10 devices](configure-endpoints.md)
- [Onboard servers](configure-server-endpoints.md)
- [Configure proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Troubleshooting Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
