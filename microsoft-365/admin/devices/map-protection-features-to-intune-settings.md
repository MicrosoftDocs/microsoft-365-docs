---
title: "How do protection features in Microsoft 365 Business Premium map to Intune settings"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
ms.date: 8/13/2018
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-identity-device-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
ms.assetid: aad21b1a-c775-469a-b89c-c5d1d59d27db
description: "Learn how protection features in Microsoft 365 Business Premium map to Intune settings. The subscription provides you with a license to modify Intune settings."
---

# How do protection features in Microsoft 365 Business Premium map to Intune settings

## Android and iOS application protection settings

The following table details how the Android and iOS application policy settings map to Intune settings.
  
To find the Intune setting, sign in with your Microsoft 365 Business Premium admin credentials, and go to **Admin centers**, and then **Intune**.
  
 > [!IMPORTANT]
 > 
 > A Microsoft 365 Business Premium subscription gives you a license to modify all the Intune settings. See [Introduction to Intune to get started.](/intune/introduction-intune)
  
Select the Policy name you want &mdash; for example, Application policy for Android &mdash; and then choose **Policy settings**.
  
Under **Protect work files when devices are lost or stolen**
  
|**Android or iOS application policy setting**|**Intune setting(s)**|
|:-----|:-----|
|Delete work files from an inactive device after  <br/> |Offline interval (days) before app data is wiped  <br/> |
|Force users to save work files to OneDrive for Business  <br/> Note that only OneDrive for Business is allowed  <br/> |Select which storage services corporate data can be saved to  <br/> |
|||
   
Under **Manage how user access Office files in mobile devices**
  
|**Android or iOS application policy setting**|**Intune setting(s)**|
|:-----|:-----|
|Delete work files from an inactive device after  <br/> |Offline interval (days) before app data is wiped  <br/> |
|Force users to save work files to OneDrive for Business  <br/> Note that only OneDrive for Business is allowed  <br/> |Select which storage services corporate data can be saved to  <br/> |
|Encrypt work files  <br/> |Encrypt app data  <br/> |
|Under **Manage how user access Office files in mobile devices** <br/> ||
|Require a PIN or fingerprint to access Office apps  <br/> | Require PIN to access  <br/>  This also sets:  <br/> **Allow simple PIN** to **Yes** <br/> **Pin Length** to 4  <br/> **Allow fingerprint instead of PIN** to **Yes** <br/> **Disable app PIN when device PIN is managed** to **No** <br/> |
|Reset PIN when login fails this many times (this is disabled if PIN isn't required)  <br/> |Number of attempts before PIN reset  <br/> |
|Require users to sign in again after Office apps have been idle for (this is disabled if PIN isn't required)  <br/> | Recheck the access requirements after (minutes)  <br/>  This also sets:  <br/> **Timeout** is set to minutes  <br/>  This is same number of minutes you set in Microsoft 365 Business.  <br/> **Offline grace period** is set to 720 minutes by default  <br/> |
|Deny access to work files on jailbroken or rooted devices  <br/> |Block managed apps from running on jailbroken or rooted devices  <br/> |
|Allow users to copy content from Office apps into personal apps  <br/> | Restrict cut, copy, and paste with other apps  <br/>  If the Microsoft 365 Business Premium option is set to **On**, then these three options are also set to **All Apps** in Intune:  <br/> **Allow app to transfer data to other apps** <br/> **Allow app to receive data from other apps** <br/> **Restrict cut, copy, and paste with other apps** <br/>  If the Microsoft 365 Business option is set to **On**, then all the Intune options are set to:  <br/> **Allow app to transfer data to other apps** is set to **Policy managed apps** <br/> **Allow app to receive data from other apps** is set to **All Apps** <br/> **Restrict cut, copy, and paste with other apps** is set to **Policy Managed apps with Paste-In** <br/> |
|||
   
## Windows 10 app protection settings

The following table details how the Windows 10 application policy settings map to Intune settings.
  
To find the Intune setting, sign in with your Microsoft 365 Business Premium admin credentials, and go to [Azure portal](https://portal.azure.com). Select **More services**, and type Intune into the **Filter**. Select **Intune App Protection** \> **App Policy**.
  
 > [!IMPORTANT]
 >
 >A Microsoft 365 Business Premium subscription gives you a license to modify only the Intune settings that map to the settings available in Microsoft 365 Business Premium. 
  
To explore the available settings, select the policy name you want, and then choose **General, Assignments**, **Allowed apps**, **Exempt apps**, **Required settings**, or **Advanced settings** from the left navigation pane. 
  
|**Windows 10 application policy setting**|**Intune setting(s)**|
|:-----|:-----|
|Encrypt work files  <br/> |**Advanced settings** \> **Data protection**: **Revoke encryption keys on unenroll** and **Revoke access to protected data device enrolls to MDM** are both set to **On**.  <br/> |
|Prevent users from copying company data to personal files.  <br/> |**Required settings** \> **Windows Information Protection mode**. **On** in Microsoft 365 Business Premium maps to: **Hide Overrides**, **Off** in Microsoft 365 Business Premium maps to: **Off**.  <br/> |
|Office documents access control  <br/> | If this is set to **On** in Microsoft 365 Business Premium, then  <br/> **Advanced settings** \> **Access**, **Use Windows Hello for Business as a method for signing into Windows** is set to **On**, with the following additional settings:  <br/> **Set the minimum number of characters required for the PIN** is set to **4**.  <br/> **Configure the use of uppercase letters in the Windows Hello for Business PIN** is set to **Do not allow use of upper case letters for PIN**.  <br/> **Configure the use of lowercase letters in the Windows Hello for Business PIN** is set to **Do not allow use of lower case letters for PIN**.  <br/> **Configure the use of special characters in the Windows Hello for Business PIN** is set to **Do not allow the use of special characters in PIN**.  <br/> **Specify the period of time (in days) that a PIN can be used before the system requires the user to change** is set to **0**.  <br/> **Specify the number of past PINs that can be associated to a user account that can't be reused** is set to **0**.  <br/> **Number of authentication failures allowed before the device will be wiped** is set to same as in Microsoft 365 Business (5 by default).  <br/> **Maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked** is set to same as in Microsoft 365 Business.  <br/> |
|Enable recovery of protected data  <br/> |**Advanced settings** \> **Data protection**: **Show the enterprise data protection icon** and **Use Azure RMS for WIP** are set to **On**.  <br/> |
|Protect additional company cloud locations  <br/> |**Advanced settings** \> **Protected domains** and **Cloud resources** show domains and SharePoint sites.  <br/> |
|Files used by these apps are protected  <br/> |The list of protected apps is listed in **Allowed apps**.  <br/> |
|||
   
## Windows 10 device protection settings

The following table details how the Windows 10 device configuration settings map to Intune settings.
  
To find the Intune setting, sign in with your Microsoft 365 Business Premium admin credentials, and go to [Azure portal](https://portal.azure.com), then select **More services**, and type in Intune into the **Filter**, select **Intune** \> **Device configuration** \> **Profiles**. Then select **Device policy for Windows 10** \> **Properties** \> **Settings**.
  
|**Windows 10 device policy setting**|**Intune setting(s)**|
|:-----|:-----|
|Help protect PCs from viruses and other threats using Windows Defender Antivirus  <br/> |Allow Real-time Monitoring = ON  <br/> Allow Cloud Protection = ON  <br/> Prompt Users for Samples Submission = Send Safe samples automatically (Default Non PII auto submit)  <br/> |
|Help protect PCs from web-based threats in Microsoft Edge  <br/> |**SmartScreen** in **Edge Browser settings** is set to **Required**.  <br/> |
|Turn off device screen when idle for (minutes)  <br/> |Maximum minutes of inactivity until screen locks (minutes)  <br/> |
|Allow users to download apps from Microsoft Store  <br/> |Custom URI policy  <br/> |
|Allow users to access Cortana  <br/> |**General** \> **Cortana** is set to **block** in Intune when set to **off** in Microsoft 365 Business Premium.  <br/> |
|Allow users to receive Windows tips and advertisements from Microsoft  <br/> |**Windows spotlight**, all blocked if this is set to **off** in Microsoft 365 Business Premium.  <br/> |
|Keep Windows 10 devices up to date automatically  <br/> | This setting is in **Microsoft Intune** \> **Service updates - Windows 10 Update Rings**, choose **Update policy for Windows 10 devices**, and then **Properties** \> **Settings**.  <br/>  When the Microsoft 365 Business Premium setting is set to **On**, all the following settings are set:  <br/> **Service branch** is set to **CB** (CBB when this is turned off in Microsoft 365 Business Premium).  <br/> **Microsoft product updates** is set to **Allow**.  <br/> **Windows drivers** is set to **Allow**.  <br/> **Automatic update behavior** is set to **Auto install at maintenance time** with:  <br/> **After hours start** is set to **6 AM**.  <br/> **Active hours end** is set to **10 PM**.  <br/> **Quality update deferral period (days)** is set to **0**.  <br/> **Feature update deferral period (days)** is set to **0**.  <br/> **Delivery optimization download mode** is set to **HTTP blended with peering behind same NAT**.  <br/> |
|||
