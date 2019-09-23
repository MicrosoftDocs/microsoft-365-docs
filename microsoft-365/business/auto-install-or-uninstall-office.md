---
title: "Automatically install or uninstall Office on Windows 10 devices"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
ms.assetid: cbc6bfe5-565a-4fb8-95f0-b06e7b74ac46
description: "Install or uninstall Office on Windows 10 devices from the Microsoft 365 Business admin center. "
---

# Automatically install or uninstall Office on Windows 10 devices

[![Label to let you know the admin center is changing and you can find more details at aka.ms/aboutM365preview.](../media/O365-Admin-AdminCenterChanging.png)](https://docs.microsoft.com/office365/admin/microsoft-365-admin-center-preview)

You can quickly and easily install Office to Windows 10 PCs from the Microsoft 365 Business admin center.
  
To understand how this works with previously installed Office apps, read [Prepare for Office client installation](prepare-for-office-client-deployment.md) before you get started. 
  
## Manage Office deployments

1. Sign in to the [admin center](https://aka.ms/bcsportal) with global admin credentials. 
    
2. On the **Devices** card, choose **Manage Office Deployment**.
      If you do not see the **Device actions** card, in the admin center **Home** page, click **Add** (+) to add it to your admin home.
    
    ![Screenshot of the Devices card in the admin center](media/9982e784-dbf9-4a76-a159-bb3e2e5aa23f.png)
  
3. On the **Manage Office deployment** pane that opens, choose **Add a group**, then select the groups you want use.
    
4. After you have added the group or groups you want to use, from the **Deployment Action** drop-down, select either **Install Office as soon as possible** or **Uninstall Office**.
    
    ![In the Manage Office deployment pane, choose either Install Office as soon as possible, or Uninstall Office.](media/00f24a61-1848-40c0-b037-78d726c7d757.png)
  
5. Choose **Next** \> review the settings and then choose **Confirm**.
    
A 32-bit Office will be automatically installed, or uninstalled in the devices owned by users specified by the group or groups you used.
  
To verify you can open the Task Manager on a computer that was selected for an Office install and look for Microsoft Office Click-to-Run process.
  


