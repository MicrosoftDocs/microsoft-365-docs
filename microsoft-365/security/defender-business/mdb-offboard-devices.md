---
title: Offboard a device from Microsoft Defender for Business
description: Learn about how to remove or offboard a device from Microsoft Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 01/26/2023
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
---

# Offboard a device from Microsoft Defender for Business

As devices are replaced or retired, or your business needs change, you can offboard devices from Defender for Business. Offboarding a device causes the device to stop sending data to Defender for Business. However, data received prior to offboarding is retained for up to six (6) months.

> [!IMPORTANT]
> The procedures in this article describe how to remove a device from monitoring by Defender for Business. If you're using Microsoft Intune to manage devices, and you prefer to remove the device from Intune, see [Remove devices by using wipe, retire, or manually unenrolling the device](/mem/intune/remote-actions/devices-wipe).

## What to do

1. Select a tab:

   - **Windows 10 or 11**
   - **Mac**
   - **Servers** (Windows Server or Linux Server)
   - **Mobile** (for iOS/iPadOS or Android devices)

2. Follow the guidance on the selected tab.
3. Proceed to your next steps. 

## [**Windows 10 or 11**](#tab/Windows1011)

## Windows 10 or 11

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.

3. Under **Device management**, choose **Offboarding**.

4. Select an operating system, such as **Windows 10 and 11**, and then, under **Offboard a device**, in the **Deployment method** section, choose **Local script**. 

5. In the confirmation screen, review the information, and then choose **Download** to proceed.

6. Select **Download offboarding package**. We recommend saving the offboarding package to a removable drive.

7. Run the script on each device that you want to offboard.

## [**Mac**](#tab/mac)

## Mac

1. Go to **Finder** > **Applications**. 

2. Right click on **Microsoft Defender for Business**, and then choose **Move to Trash**. <br/>--- or --- <br/> Use the following command: `sudo '/Library/Application Support/Microsoft/Defender/uninstall/uninstall'`.

## [**Servers**](#tab/Servers)

## Servers

Choose the operating system for your server:

- [Windows Server](#windows-server)
- [Linux Server](#linux-server)

### Windows Server

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Offboarding**.

3. Select an operating system, such as **Windows Server 1803, 2019, and 2022**, and then in the **Deployment method** section, choose **Local script**. 

4. Select **Download package**. We recommend that you save the offboarding package to a removable drive. The zipped folder will be called `WindowsDefenderATPOffboardingPackage_valid_until_YYYY-MM-DD.zip` (where `YYYY-MM-DD` is the expiry date of the package).

5. On your Windows Server device, extract the contents of the zipped folder to a location such as the Desktop folder.  

6. Open a command prompt as an administrator.

7. Type the location of the script file. For example, if you copied the file to the Desktop folder, you would type `%userprofile%\Desktop\WindowsDefenderATPOffboardingScript_valid_until_2022-11-11.cmd` (where `YYYY-MM-DD` is the expiry date of the package), and then press Enter (or select **OK**).

### Linux Server

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and sign in.

2. In the navigation pane, choose **Settings** > **Endpoints**, and then under **Device management**, choose **Offboarding**.

3. Select **Linux Server** for the operating system, and then in the **Deployment method** section, choose **Local script**. 

4. Select **Download package**. We recommend that you save the offboarding package to a removable drive. The zipped folder will be called `WindowsDefenderATPOffboardingPackage_valid_until_YYYY-MM-DD.zip` (where `YYYY-MM-DD` is the expiry date of the package).

5. On your Linux Server device, extract the contents of the zipped folder to a location such as the Desktop folder.  

6. Open a terminal, and navigate to the directory where the `MicrosoftDefenderATPOffboardingLinuxServer_valid_until_YYYY-MM-DD` file (where `YYYY-MM-DD` is the expiry date of the file) is located.

7. Type `python MicrosoftDefenderATPOffboardingLinuxServer_valid_until_YYYY-MM-DD.py` in the terminal.

> [!TIP]
> For more information, see [Uninstall](../defender-endpoint/linux-resources.md) in the Microsoft Defender for Endpoint on Linux guidance.

## [**Mobile devices**](#tab/mobiles)

## Mobile devices

You can use Microsoft Intune to manage mobile devices, such as iOS, iPadOS, and Android devices.

See [Microsoft Intune device management](/mem/intune/remote-actions/device-management).

---

## Next steps

- [Use your Microsoft Defender Vulnerability Management dashboard in Microsoft Defender for Business](mdb-view-tvm-dashboard.md)
- [View or edit policies in Microsoft Defender for Business](mdb-view-edit-create-policies.md)
- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)