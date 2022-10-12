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
ms.date: 08/11/2022
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
---

# Offboard a device from Microsoft Defender for Business

As devices are replaced or retired, or your business needs change, you can offboard devices from Defender for Business. Offboarding a device causes the device to stop sending data to Defender for Business. However, data received prior to offboarding is retained for up to six (6) months.

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

## Offboard a Mac

1. Go to **Finder** > **Applications**. 

2. Right click on **Microsoft Defender for Business**, and then choose **Move to Trash**. <br/>--- or --- <br/> Use the following command: `sudo '/Library/Application Support/Microsoft/Defender/uninstall/uninstall'`.

## [**Servers**](#tab/Servers)

## Servers

Choose the operating system for your server:

- [Windows Server](#windows-server)
- [Linux Server](#linux-server)

### Windows Server

### Linux Server


## Next steps

- [Use your Microsoft Defender Vulnerability Management dashboard in Microsoft Defender for Business](mdb-view-tvm-dashboard.md)
- [View or edit policies in Microsoft Defender for Business](mdb-view-edit-create-policies.md)
- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)