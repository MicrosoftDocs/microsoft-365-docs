---
title: "Set application protection settings for Windows 10 devices"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
ms.audience: Admin
ms.topic: article
f1_keywords:
- 'Win10AppPolicy'
- 'O365E_Win10AppPolicy'
- 'BCS365_Win10AppPolicy'
ms.service: o365-administration
localization_priority: Normal
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 02e74022-44af-414b-9d74-0ebf5c2197f0
description: "Learn how to create an app management policy and protect work files on Windows 10 devices."
---

# Set application protection settings for Windows 10 devices

## Create an app management policy for Windows 10

If your users have personal Windows 10 devices on which they perform work tasks, you can protect your data on those devices as well.
  
1. Sign in to [Microsoft 365 Business](https://portal.office.com) with global admin credentials. Choose the **Admin** tile to go to the admin center. 
    
2. On the left nav, choose **Devices** \> **Policies** \> **Add**.

3. On the **Add policy** pane, enter a unique name for this policy. 
    
4. Under **Policy type**, choose **Application Management for Windows 10**.
    
5. Under ** Device type **, choose either **Personal** or **Company Owned**.
    
6. The **Encrypt work files** is turned on automatically. 
    
7. Set **Prevent users from copying company data to personal files and force them to save work files to OneDrive for Business** to **On** if you don't want the users to save work files on their PC. 
    
8. Expand **Manage how users access Office files on devices** \> configure the settings how you would like. The **Manage how users access Office devices on mobile devices** is **Off** by default, but it is recommended that you turn it **On** and accept the default values. See [Available settings](protection-settings-for-windows-10-devices.md#bkmk_settings) for more information. 
    
    You can always use the **Reset default settings** link to return to the default setting. 
    
9. Expand **Recover data on Windows devices** and it is recommended that you turn it **On**.
    
    Before you can browse to the location of the Data Recovery Agent certificate, you have to first create one. For instructions see, [Create and verify an Encrypting File System (EFS) Data Recovery Agent (DRA) certificate](https://go.microsoft.com/fwlink/p/?linkid=853700).
    
    By default, work files are encrypted using a secret key that is stored on the device and associated with the user's profile. Only the user can open and decrypt the file. However, if a device is lost or a user is removed, a file can be stuck in an encrypted state. The Data Recovery Agent (DRA) certificate can be used by an admin to decrypt the file.
    
    ![Browse to Data Recovery Agent certificate.](media/7d7d664f-b72f-4293-a3e7-d0fa7371366c.png)
  
10. Expand **Protect additional network and cloud locations** if you want to add additional domains or SharePoint Online locations to make sure that files in all the listed apps will be protected. If you need to enter more than one item for either field, use a semicolon (;) between the items. 
    
    ![Expand Protect additional network and cloud locations, and enter domains or SharePoint Online sites you own.](media/7afaa0c7-ba53-456d-8c61-312c45e09625.png)
  
11. Next decide **Who will get these settings?** If you don't want to use the default **All Users** security group, choose **Change**, choose the security groups who will get these settings \> **Select**.
    
12. Finally, choose **Add** to save the policy, and assign it to devices. 
    
## Available settings

The following settings are available to manage how users access Office work files.
  
For more information, see [How do protection features in Microsoft 365 Business map to Intune settings](map-protection-features-to-intune-settings.md).
  
|**Setting**|**Description**|
|:-----|:-----|
|Require a PIN or fingerprint to access Office apps  <br/> |If this settings is **On** users have to provide another form of authentication, in addition to their username and password, before they can use Office apps on their mobile device.  <br/> |
|Reset PIN when login fails this many times  <br/> |To prevent an unauthorized user from randomly guessing a PIN, the PIN will reset after the number of wrong entries that you specify.  <br/> |
|Require users to sign in again after Office apps have been idle for  <br/> |This setting determines how long a user can be idle before they are prompted to sign in again.  <br/> |
   

