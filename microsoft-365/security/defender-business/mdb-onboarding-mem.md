---
title: Onboard devices to Microsoft Defender for Business using Microsoft Endpoint Manager
description: Use Endpoint Manager to onboard devices to Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/12/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Use Microsoft Endpoint Manager to onboard devices to Microsoft Defender for Business

You can use Microsoft Endpoint Manager to onboard devices to Microsoft Defender for Business. The process is as follows:

1. [Join devices to Azure Active Directory](#join-a-device-to-azure-ad) (Azure AD).
2. [Enroll devices in Microsoft Endpoint Manager](#enroll-a-device-in-microsoft-endpoint-manager).
3. [Confirm that devices are enrolled](#confirm-that-devices-are-enrolled-in-microsoft-intune).  

## Join a device to Azure AD

1. On a Windows 10 device, choose **Settings** > **Accounts** > **Access work or school**.

2. Choose **+ Connect**, type your email address for Microsoft 365, and then choose **Next**. 

3. Sign in using your work or school account for Microsoft 365.

## Enroll a device in Microsoft Endpoint Manager

1. On a Windows 10 device, open the Microsoft Store app, and search for *Company Portal*.

2. In the list of results, select **Company Portal**, and choose **Get**, and then choose **Launch**.

3. Sign in using your work or school account for Microsoft 365.

4. Select **Allow my organization to manage my device**, and then choose **Yes**.

5. When your device has finished adding, choose **Done**. 

6. In the Company Portal app, make sure that your device is connected to work. If it isn't, select **Connect this device to work**, and then follow the prompts.

7. In the Company Portal app, when you see **You're all set**, select **Done**.

> [!TIP]
> If you need help with this procedure, see [Quickstart: Enroll your Windows 10 device](/mem/intune/enrollment/quickstart-enroll-windows-device).

### Confirm that devices are enrolled in Microsoft Intune

1. Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com/](https://endpoint.microsoft.com/)) and sign in.

2. Choose **Devices**, and then choose **Enrollment status**. If any devices failed to enroll, you will see them listed here.

## Next step

After you have onboarded devices, your next step is to [Configure your security settings and policies in Microsoft Defender for Business](mdb-configure-security-settings.md).