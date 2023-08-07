---
title: Onboard non-Windows devices to the Microsoft Defender for Endpoint service
description: Configure non-Windows devices so that they can send sensor data to the Microsoft Defender for Endpoint service.
keywords: onboard non-Windows devices, macos, linux, device management, configure Microsoft Defender for Endpoint devices
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: conceptual
ms.subservice: mde
ms.date: 12/18/2020
---

# Onboard non-Windows devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
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

You can choose to onboard non-Windows devices through Microsoft Defender for Endpoint or through a third-party solution.

[!INCLUDE [Defender for Endpoint repackaging warning](../../includes/repackaging-warning.md)]

You'll need to take the following steps:

1. Select your preferred method of onboarding:
   - To onboard macOS devices using Microsoft Defender for Endpoint, see [Microsoft Defender for Endpoint on Mac](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-mac).
   - To onboard Linux devices using Microsoft Defender for Endpoint, see [Microsoft Defender for Endpoint on Linux](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint-linux).
   - To onboard non-windows devices using third party solution:
     1. In the navigation pane, select **Partners and APIs > Connected Applications**. Make sure the third-party solution is listed.
     2. In the **Connected Applications** page, select the partner that supports your non-Windows devices.
     3. Select **View** to open the partner's page. Follow the instructions provided on the page.
     4. After creating an account or subscribing to the partner solution, you should get to a stage where a tenant Global Admin in your organization is asked to accept a permission request from the partner application. Read the permission request carefully to make sure that it's aligned with the service that you require.

2. Run a detection test by following the instructions of the third-party solution.

## Offboard non-Windows devices

For macOS and Linux devices, you can choose to offboard through Microsoft Defender for Endpoint. In the navigation pane, select **Settings** \> **Offboard** \> **Select Operating System to start the offboarding Process**.

You can also offboard non-Windows devices by disabling the third-party integration. Enable coverage for devices running non-Windows platforms by [integrating third-party solutions](https://security.microsoft.com/interoperability/partners).

## Related topics

- [Onboard Windows devices](configure-endpoints.md)
- [Onboard servers](configure-server-endpoints.md)
- [Configure proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Troubleshooting Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
