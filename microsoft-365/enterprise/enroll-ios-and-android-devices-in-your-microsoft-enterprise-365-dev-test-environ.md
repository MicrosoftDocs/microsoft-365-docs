---
title: "Enroll iOS and Android devices in your Microsoft 365 Enterprise dev/test environment"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 06/27/2018
ms.audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: Ent_O365
ms.custom: Ent_TLGs
ms.assetid: 49c7758a-1c01-4153-9b63-5eae3f6305ce
description: Use this Test Lab Guide to enroll devices in your Microsoft 365 dev/test environment and manage them remotely.
---

# Enroll iOS and Android devices in your Microsoft 365 Enterprise dev/test environment

By following the instructions provided in this article, you'll be able to enroll and test basic mobile device management capabilities for iOS and Android devices in your Microsoft 365 dev/test environment.

![Test Lab Guides in the Microsoft Cloud](\media\m365-enterprise-test-lab-guides\cloud-tlg-icon.png)
  
## Phase 1: Create your Microsoft 365 dev/test environment

Follow the instructions in the [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
## Phase 2: Enroll your iOS and Android devices

First, use the instructions in [Install and sign in to the Company Portal app](https://docs.microsoft.com/intune-user-help/install-and-sign-in-to-the-intune-company-portal-app-ios) to customize the Microsoft Intune Company Portal app for your dev/test tenant.

Next, use the instructions in [Set up access to your company resources](https://docs.microsoft.com/intune-user-help/enroll-your-device-in-intune-ios) to enroll an iOS device.

Next, use the instructions in [Enroll your Android device in Intune](https://docs.microsoft.com/intune-user-help/enroll-your-device-in-intune-android) to enroll an Android device.

## Phase 2: Manage your iOS and Android devices remotely

Microsoft Intune provides both remote lock and passcode reset capabilities. If someone loses their device, you can lock the device remotely. If someone forgets their passcode, you can remove the passcode remotely.
  
To lock an iOS device remotely:
  
1.	Open a new tab and go to http://manage.microsoft.com (if needed). 

2.	From the Microsoft Intune administration console of your browser, click **Groups** in the left navigation.

3. In the **Groups** pane, open **All devices > All Mobile devices > All Direct Managed Devices**.
    
4. In the **All Direct Managed Devices** pane, click the **Devices** tab.
    
5. In the devices list, click your iOS device. 
    
6. From your iOS device, make sure it is at the main screen. 
    
7. From your administration computer, on the taskbar, click **Remote Tasks > Remote Lock**. Watch your iOS device as it switches to the lockout screen.
    
To remove the passcode:
  
1. From your administration computer, in the **All Direct Managed Devices** pane, click the **Devices** tab.
    
2. In the list, click your iOS device. On the taskbar, click **Remote Tasks > Passcode Reset**. Wait for one minute.
    
3. From your iOS device, unlock it and notice that there is no longer a passcode. To change the passcode back, go into **Settings**, and then **Passcode**.
    
To lock an Android device remotely:
  
1. From the Microsoft Intune administration console of your browser, click **Groups** in the left navigation.
    
2. In the **Groups** pane, open **All devices > All Mobile devices > All Direct Managed Devices**.
    
3. In the **All Direct Managed Devices** pane, click the **Devices** tab.
    
4. In the devices list, click your Android device. 
    
5. From your Android device, make sure it is at the main screen. 
    
6. From your administration computer, on the taskbar, click **Remote Tasks > Remote Lock**. When prompted, click **Yes**.
    
7. Watch your Android device as it switches to the lockout screen.
    
When you reset the passcode for Android devices, the Intune administration portal generates and configures a strong passcode.
  
To reset the passcode remotely:
  
1. From your administration computer, on the Microsoft Intune administration console tab of your browser, in the **All Direct Managed Devices** pane, click your Android device.
    
2. On the taskbar, click **Remote Tasks > Passcode Reset**.
    
3. On the **Remote Task: Passcode Reset** prompt, click **Yes**. Wait for one minute.
    
4. In the **All Direct Managed Devices** pane, click **View Properties**.
    
5. Under **Passcode Reset**, note the new passcode.
    
6. From your Android device, enter the new passcode from the lockout screen. 
    
7. To change the passcode back, go into **Settings**, tap **Device**, tap **Lock screen**, enter the new passcode again, tap **Screen lock**, and then your choice for the passcode.
    


## See Also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)
  
[MAM policies for your Microsoft 365 Enterprise dev/test environment](mam-policies-for-your-microsoft-365-enterprise-dev-test-environment.md)
  
[Enterprise Mobility + Security (EMS)](https://www.microsoft.com/cloud-platform/enterprise-mobility-security)


