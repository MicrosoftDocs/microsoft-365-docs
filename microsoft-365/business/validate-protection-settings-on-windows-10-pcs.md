---
title: "Validate app protection settings on Windows 10 PCs"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- M365-identity-device-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MSB365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
ms.assetid: fae8819d-7235-495f-9f07-d016f545887f
description: "Validate Microsoft 365 Business Premium app protection settings on Windows 10 devices and verify users cannot copy company data to personal files or non-managed apps."
---

# Validate app protection settings on Windows 10 PCs

## Verify that users cannot copy company data to personal files on corporate devices

After you [set up app protection policies](protection-settings-for-windows-10-devices.md), it may take up to a few hours for the policy to take effect on users' devices. If you turned **On** the **Prevent users from copying company data to personal files and force them to save work files to OneDrive for Business** setting for company owned devices, you can check this on the user's device after they've connected to Azure AD and signed in. 
  
 **Verify connection settings**
  
1. After you sign in with Microsoft 365 Business Premium credentials and connect to Azure AD as described in [Set up Windows devices for Microsoft 365 Business Premium users](set-up-windows-devices.md), go to **Windows Settings** \> **Accounts** \> **Access work or school**. Choose **Connected to \<tenant name\> Azure AD**, and then choose **Info**.
    
    ![Click or tap Info on the Connected to Azure AD dialog.](../media/a36ede2b-d1a0-4d4e-8ea7-af39b4b63890.png)
  
2. On the **Managed by** \<tenant name\> page, you can see the **Connection info** that includes a **Management Server Address** like the one shown in the following figure. 
    
    ![Managed by page shows connection info of the device manager URL.](../media/47515a8e-2d0c-4bea-99f0-6b2545b88a11.png)
  
 **Verify that you cannot paste company data in a non-managed app**
  
1. Open Outlook 2016 that was installed by Microsoft 365 Business Premium.
    
2. Open an email and copy some content from it.
    
    Open Notepad and attempt to paste the content in.
    
    You'll receive an error that states the app can't access content.
    
    ![A dialog that states app can't access content when you paste into an unmanaged app.](../media/5e82b154-cf2f-43c8-ae80-b45d8ad80e56.png)
  
    You can, however, paste the same content into Word 2016.
    
## Verify that users cannot copy company data to personal files on personal devices

 **Verify connection settings**
  
1. On your Windows 10 personal device where you're logged in as a local user, go to **Windows Settings**, and click or tap **Accounts** \> **Access work or school**.
    
2. Under the **Access work or school**, choose **Connect**.
    
3. Enter your Microsoft 365 Business Premium credential into the **Set up a work or school account dialog** \> **Sign in**.
    
4. On the **Access work or school** page, choose the **Work or school account**, and then choose **Info**.
    
    ![Click or tap Info on the Work or school account dialog.](../media/63bd8b32-cb32-4afa-8ce0-6070ac403abc.png)
  
5. On the **Access work or school** page, you can see the **Connection info** that includes a **Management Server Address** like the one shown in the following figure, and includes the words  *wip*  and  *mam*  within. 
    
    ![Managed by page shows connection info URL that includes the words mam and wpi.](../media/abd4eaf4-44fa-4538-a3e8-1e0d331dfe1e.png)
  
 **Verify that you cannot paste company data in a non-managed app**
  
1. Open Outlook 2016 and add your Microsoft 365 Business Premium account if necessary and sign in with your Microsoft 365 Business Premium credentials.
    
2. Open an email and copy some content from it.
    
    Open Notepad and attempt to paste the content in.
    
    You'll receive an error that states App can't access content.
    
    ![A dialog that states app can't access content when you paste into an unmanaged app.](../media/5e82b154-cf2f-43c8-ae80-b45d8ad80e56.png)
  
    You can, however, paste the same content into Word 2016.
    

