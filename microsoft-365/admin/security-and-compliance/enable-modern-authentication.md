---
title: "Enable Modern Authentication for Office 2013 on Windows devices"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: 
- AdminSurgePortfolio
- okr_smb
- AdminTemplateSet
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 7dc1c01a-090f-4971-9677-f1b192d6c910
description: "Learn to set registry keys to enable modern authentication for devices that have Microsoft Office 2013 installed."
---

# Enable Modern Authentication for Office 2013 on Windows devices

To enable modern authentication for any Windows devices that have Office 2013 installed, you need to set specific registry keys.
  
## Enable modern authentication for Office 2013 clients

> [!NOTE]
> Modern authentication is already enabled for Office 2016 clients, you do not need to set registry keys for Office 2016. 
  
To enable modern authentication for any devices running Windows (for example on laptops and tablets), that have Microsoft Office 2013 installed, you need to set the following registry keys. The keys need to be set on each device that you want to enable for modern authentication:

<br>

****

|Registry key|Type|Value|
|:---|:---:|---:|
|HKEY_CURRENT_USER\Software\Microsoft\Exchange\AlwaysUseMSOAuthForAutoDiscover|REG_DWORD|1|
|HKCU\SOFTWARE\Microsoft\Office\15.0\Common\Identity\EnableADAL|REG_DWORD|1|
|HKCU\SOFTWARE\Microsoft\Office\15.0\Common\Identity\Version|REG_DWORD|1|
|

Create or modify the following registry keys to force Outlook to use a newer authentication method for web services, such as EWS and Autodiscover. We recommend that users force Outlook to use Modern Authentication.

1. Exit Outlook.

2. Start Registry Editor by using one of the following procedures, as appropriate for your version of Windows:

   - **Windows 10, Windows 8.1, and Windows 8:** Press Windows Key + R to open a **Run** dialog box. Type *regedit.exe*, and then press **Enter.**
   - **Windows 7:** Click **Start**, type *regedit.exe* in the search box, and then press **Enter.**

3. In Registry Editor, locate and click the following registry subkey:

   ```console
   HKEY_CURRENT_USER\Software\Microsoft\Exchange\
   ```

4. If the *AlwaysUseMSOAuthForAutoDiscover* key is missing, type *AlwaysUseMSOAuthForAutoDiscover*, and then press **Enter.**

5. Right-click *AlwaysUseMSOAuthForAutoDiscover*, and then click **Modify.**

6. In the **Value** data box, type **1**, and then click **OK.**

7. In Registry Editor, locate and click the following registry subkey:

   ```console
   HKCU\SOFTWARE\Microsoft\Office\15.0\Common\Identity\
   ```

8. If the values in the table above already exist, modify them if necessary, then exit Registry Editor. If they do not, on the Edit menu, point to **New**, and then click **DWORD Value** for the missing keys. 

9. For example, if the *EnableADAL* key is missing, type *EnableADAL*, and then press **Enter.**

10. Right-click *EnableADAL*, and then click **Modify.**

11. In the **Value** data box, type **1**, and then click **OK.**

12. Follow the same process for the Version key if necessary. 

13. **Exit Registry Editor.**

Once you've set the registry keys, you can set Office 2013 devices apps to use [multifactor authentication (MFA)](set-up-multi-factor-authentication.md) with Microsoft 365. 
  
If you're currently signed-in with any of the client apps, you need to sign out and sign back in for the change to take effect. Otherwise, the MRU and roaming settings will be unavailable until the identity is established.
  
## Disable modern authentication on devices

To disable modern authentication on a device, set the following registry keys on the device:

<br>

****

|Registry key|Type|Value|
|:---|:---:|---:|
|HKCU\SOFTWARE\Microsoft\Office\15.0\Common\Identity\EnableADAL|REG_DWORD|0|
|HKEY_CURRENT_USER\Software\Microsoft\Exchange\AlwaysUseMSOAuthForAutoDiscover|REG_DWORD|0|
|
   
## Related content

[Sign in to Office 2013 with a second verification method](https://support.microsoft.com/office/2b856342-170a-438e-9a4f-3c092394d3cb) (article)\
[Outlook prompts for password and doesn't use Modern Authentication to connect to Office 365](/outlook/troubleshoot/authentication/outlook-prompt-password-modern-authentication-enabled) (article)
