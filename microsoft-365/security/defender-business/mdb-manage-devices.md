---
title: Manage devices in Microsoft Defender for Business
description: Learn how to manage devices in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: how-to
ms.date: 10/28/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Manage devices in Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

In Microsoft Defender for Business, you can manage devices as follows:

- [View a list of onboarded devices](#view-the-list-of-onboarded-devices) to see their risk level, exposure level, and health state
- [Take action on a device](#take-action-on-a-device-that-has-threat-detections) that has threat detections
- [Offboard a device from Defender for Business](#offboard-a-device)

## View the list of onboarded devices

:::image type="content" source="../../media/defender-business/mdb-deviceinventory.png" alt-text="Screenshot of device inventory":::

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Device inventory**.

3. Select a device to open its flyout panel, where you can learn more about its status and take action. 

   If you don't have any devices listed yet, [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md)

## Take action on a device that has threat detections

:::image type="content" source="../../media/defender-business/mdb-selected-device.png" alt-text="Screenshot of a selected device with details and actions available":::

1. In the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Device inventory**. 

2. Select a device to open its flyout panel, and review the information that is displayed.

3. Select the ellipsis (**...**) to open the actions menu. 

4. Select an action, such as **Run antivirus scan** or **Initiate Automated Investigation**. 

## Offboard a device

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.

3. Under **Device management**, choose **Offboarding**.

4. Select the Windows 10 operating system.

5. In the **Offboard a device** section, in the **Deployment method** list, select **Local Script**, and then choose **Download package**.

6. Save the zipped folder to a location, such as a removable drive.

7. On each device, follow these steps: 

   1. Copy the configuration package to the device.
   2. Extract its contents to a location you can find easily (such as the Desktop or to a `C:\Temp folder`). Notice that the folder contains a file called `WindowsDefenderATPOffboardingPackage_valid_until_YYYY-MM-DD.zip` (where `YYYY-MM-DD` refers to the expiry date of the package.
   3. Select the Start menu, and then type `cmd` to find the Command Prompt app. Then run Command Prompt as an administrator.
   4. In the Command Prompt window, type the location of the script file that you saved in step 7b. For example, if you saved it to the Desktop, you’d type `%userprofile%\Desktop\WindowsDefenderATPOffboardingPackage_valid_until_YYYY-MM-DD.cmd`.
   5. Press the Enter key, or select **OK**.

## Next steps

- [View or edit device policies in Microsoft Defender for Business](mdb-manage-next-generation-protection.md).

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)