---
title: Offboard a device from Microsoft Defender for Business
description: Learn about how to remove or offboard a device from Microsoft Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 04/20/2022
ms.prod: m365-security
ms.technology: mdb
ms.localizationpriority: medium
ms.reviewer: shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
- m365-initiative-defender-business
---

# Offboard a device from Microsoft Defender for Business

If you want to offboard a device, use one of the following procedures:

- [Offboard a Windows device](#offboard-a-windows-device)
- [Offboard a macOS computer](#offboard-a-macos-computer)

## Offboard a Windows device

1. Go to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.

2. In the navigation pane, choose **Settings**, and then choose **Endpoints**.

3. Under **Device management**, choose **Offboarding**.

4. Select an operating system, such as **Windows 10 and 11**, and then, under **Offboard a device**, in the **Deployment method** section, choose **Local script**. 

5. In the confirmation screen, review the information, and then choose **Download** to proceed.

6. Select **Download offboarding package**. We recommend saving the offboarding package to a removable drive.

7. Run the script on each device that you want to offboard.

## Offboard a macOS computer

1. Go to **Finder** > **Applications**. 

2. Right click on Microsoft Defender for Business, and then choose **Move to Trash**. <br/><br/>--- or --- <br/><br/> Use the following command: `sudo '/Library/Application Support/Microsoft/Defender/uninstall/uninstall'`.

> [!IMPORTANT]
> Offboarding a device causes the devices to stop sending data to Defender for Business. However, data received prior to offboarding is retained for up to six (6) months.

## Next steps

- [Use your Threat & Vulnerability Management dashboard in Microsoft Defender for Business](mdb-view-tvm-dashboard.md)
- [View or edit policies in Microsoft Defender for Business](mdb-view-edit-create-policies.md)
- [Manage devices in Microsoft Defender for Business](mdb-manage-devices.md)