---
title: "Enable Modern authentication for Office 2013 on Windows devices"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- scotvorg
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

# Enable Modern authentication for Office 2013 on Windows devices

Microsoft Office 2013 on Microsoft Windows computers supports Modern authentication. But, to turn it on, you need to configure the following registry keys:

|Registry key|Type|Value|
|:---|:---:|:---:|
|HKEY_CURRENT_USER\Software\Microsoft\Exchange\AlwaysUseMSOAuthForAutoDiscover|REG_DWORD|1|
|HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Common\Identity\EnableADAL|REG_DWORD|1|
|HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Common\Identity\Version|REG_DWORD|1|

> [!NOTE]
> Modern authentication is already enabled in Office 2016 or later. You don't need to set these registry keys for later versions of Office.

## Enable modern authentication for Office 2013 clients

1. Close Outlook.

2. Copy and paste the following text into Notepad:

   ```text
   Windows Registry Editor Version 5.00

   [HKEY_CURRENT_USER\Software\Microsoft\Exchange]
   "AlwaysUseMSOAuthForAutoDiscover"=dword:00000001

   [HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Common]

   [HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Common\Identity]
   "EnableADAL"=dword:00000001
   "Version"=dword:00000001
   ```

3. Save the file with the file extension .reg instead of .txt in a location that's easy for you to find. For example, `C:\Data\Office2013_Enable_ModernAuth.reg`.

4. Open File Explorer (formerly known as Windows Explorer), browse to the location of the .reg file you just saved, and then double-click it.

5. In the **User account control** dialog that appears, click **Yes** to allow the app to make changes to your device.

6. In the **Registry Editor** warning dialog that appears, click **Yes** to accept the changes.

Once you've set the registry keys, you can set Office 2013 apps to use multifactor authentication (MFA) with Microsoft 365. For more information, see [Set up multifactor authentication](set-up-multi-factor-authentication.md).

If you're currently signed in to any of Office client apps, you need to sign out and sign back in for the change to take effect. Otherwise, the MRU and roaming settings will be unavailable until the identity is established.

## Disable modern authentication on devices

The procedure to disable modern authentication on a device is very similar, but fewer registry keys are required, and you need to set their values to 0.

|Registry key|Type|Value|
|---|:---:|:---:|
|HKEY_CURRENT_USER\Software\Microsoft\Exchange\AlwaysUseMSOAuthForAutoDiscover|REG_DWORD|0|
|HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\15.0\Common\Identity\EnableADAL|REG_DWORD|0|

```text
Windows Registry Editor Version 5.00

[HKEY_CURRENT_USER\Software\Microsoft\Exchange]
"AlwaysUseMSOAuthForAutoDiscover"=dword:00000000

[HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Common]

[HKEY_CURRENT_USER\Software\Microsoft\Office\15.0\Common\Identity]
"EnableADAL"=dword:00000000
```

## Related content

[Sign in to Office 2013 with a second verification method](https://support.microsoft.com/office/2b856342-170a-438e-9a4f-3c092394d3cb)

[Outlook prompts for password and doesn't use Modern Authentication to connect to Office 365](/outlook/troubleshoot/authentication/outlook-prompt-password-modern-authentication-enabled)
