---
title: "Enroll iOS and Android devices in your Microsoft 365 Enterprise test environment"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 12/09/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: M365-identity-device-management
ms.custom: Ent_TLGs
ms.assetid: 49c7758a-1c01-4153-9b63-5eae3f6305ce
description: Use this Test Lab Guide to enroll devices in your Microsoft 365 test environment and manage them remotely.
---

# Enroll iOS and Android devices in your Microsoft 365 Enterprise test environment

*This Test Lab Guide can only be used for Microsoft 365 Enterprise test environments.*

By following the instructions provided in this article, you'll be able to enroll and test basic mobile device management capabilities for iOS and Android devices in your Microsoft 365 Enterprise test environment.

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)
  
> [!TIP]
> Click [here](media/m365-enterprise-test-lab-guides/Microsoft365EnterpriseTLGStack.pdf) for a visual map to all the articles in the Microsoft 365 Enterprise Test Lab Guide stack.

## Phase 1: Build out your Microsoft 365 Enterprise test environment

If you just want to enroll iOS and Android devices in a lightweight way with the minimum requirements, follow the instructions in [Lightweight base configuration](lightweight-base-configuration-microsoft-365-enterprise.md).
  
If you want to enroll iOS and Android devices in a simulated enterprise, follow the instructions in [Pass-through authentication](pass-through-auth-m365-ent-test-environment.md).
  
> [!NOTE]
> Testing automated licensing and group membership does not require the simulated enterprise test environment, which includes a simulated intranet connected to the Internet and directory synchronization for an Active Directory Domain Services (AD DS) forest. It is provided here as an option so that you can test automated licensing and group membership and experiment with it in an environment that represents a typical organization. 
>  

## Phase 2: Enroll your iOS and Android devices

First, use the instructions in [Install and sign in to the Company Portal app](https://docs.microsoft.com/intune-user-help/install-and-sign-in-to-the-intune-company-portal-app-ios) to customize the Microsoft Intune Company Portal app for your test environment.

Next, use the instructions in [Set up access to your company resources](https://docs.microsoft.com/intune-user-help/enroll-your-device-in-intune-ios) to enroll an iOS device.

Next, use the instructions in [Enroll your Android device in Intune](https://docs.microsoft.com/intune-user-help/enroll-your-device-in-intune-android) to enroll an Android device.

## Phase 3: Manage your iOS and Android devices remotely

Microsoft Intune provides both remote lock and passcode reset capabilities. If someone loses their device, you can lock the device remotely. If someone forgets their passcode, you can reset it remotely.
  
To lock an iOS or Android device remotely:

1. Sign in to the Azure portal at [https://portal.azure.com](https://portal.azure.com) with the credentials of your global administrator account.
2. On the Azure portal tab in your browser, type **Intune** in the search box, and then click **Intune**.
3. Click **Devices > All devices**.
4. In the list of devices, click an iOS or Android device, and then click the **Remote lock** action.

    
To reset the passcode remotely:

1. If needed, sign in to the Azure portal at [https://portal.azure.com](https://portal.azure.com) with the credentials of your global administrator account.
2. On the Azure portal tab in your browser, type **Intune** in the search box, and then click **Intune**.
3. Click **Devices > All devices**.
4. From the list of devices you manage, click an iOS or Android device, and choose **...More**. Then choose the **Remove passcode** device remote action.

For additional experimentation, see [Available device actions](https://docs.microsoft.com/intune/device-management#available-device-actions).

    
## Next step

Explore additional [mobile device management](m365-enterprise-test-lab-guides.md#mobile-device-management) features and capabilities in your test environment.

## See Also

[Microsoft 365 Enterprise Test Lab Guides](m365-enterprise-test-lab-guides.md)
  
[Device compliance policies for your Microsoft 365 Enterprise test environment](mam-policies-for-your-microsoft-365-enterprise-dev-test-environment.md)
  
[Deploy Microsoft 365 Enterprise](deploy-microsoft-365-enterprise.md)

