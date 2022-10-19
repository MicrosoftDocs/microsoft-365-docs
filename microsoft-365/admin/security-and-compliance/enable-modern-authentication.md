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

>[!IMPORTANT]
> Basic authentication is turned off for Exchange Online mailboxes on Microsoft 365. This means that if Outlook 2013 is not configured to use modern authentication, it loses the ability to connect. For more information, see [Basic authentication in exchange online](https://techcommunity.microsoft.com/t5/exchange-team-blog/basic-authentication-deprecation-in-exchange-online-september/ba-p/3609437).

## Software requirements

To enable MFA for Office 2013 client apps, you must have the following software installed (the version listed below, or a later version) based on whether you have a [Click-to-run based installation](http://howtomicrosoftofficetutorials.blogspot.com/2016/12/plan-for-multi-factor-authentication.html#bk_clicktorun) or an [MSI-based installation](http://howtomicrosoftofficetutorials.blogspot.com/2016/12/plan-for-multi-factor-authentication.html#bk_msi).

To determine whether your Office installation is Click-to-run or MSI-based:

1.	Start Outlook 2013.
2.	From the **File** menu, select **Office Account**.
3.	For Outlook 2013 Click-to-Run installations, an **Update Options** item displays. For MSI-based installations, an **Update Options** item does not display.

### Click-to-run installations

For Click-to-run installations, you must have the following files installed. If your file version is not equal to or greater than the file version listed, follow these steps below to update it.

|File name|Install path on your computer|File version|
|---|:---:|:---:|
|MSO.DLL|C:\Program Files\Microsoft Office 15\root\vfs\ProgramFilesCommonx86\Microsoft Shared\OFFICE15\MSO.DLL|15.0.4753.1001|
|CSI.DLLL|CSI.DLL C:\Program Files\Microsoft Office 15\root\office15\csi.dll|15.0.4753.1000|
|Groove.EXE|C:\Program Files\Microsoft Office 15\root\office15\GROOVE.exe|15.0.4763.1000|
|Outlook.exe|C:\Program Files\Microsoft Office 15\root\office15\OUTLOOK.exe|15.0.4753.1002|
|ADAL.DLL|C:\Program Files\Microsoft Office 15\root\vfs\ProgramFilesCommonx86\Microsoft Shared\OFFICE15\ADAL.DLL|1.0.2016.624|
|Iexplore.exe|C:\Program Files\Internet Explorer|Varies|

### MSI-based installations

For MSI-based installations, you must have the following files installed. If your file version is not equal to or greater than the file version listed, use the link in the Where to get the update column to update it.

|File name|Install path on your computer|Where to get the update|Version|
|---|:---:|:---:|:---:|
|MSO.DLL|C:\Program Files\Microsoft Office 15\root\vfs\ProgramFilesCommonx86\Microsoft Shared\OFFICE15\MSO.DLL|[KB3085480](https://support.microsoft.com/en-us/topic/description-of-the-security-update-for-office-2013-september-10-2019-0d171ba2-2eba-a2ca-a54d-c0f568de6bcc)|15.0.4753.1001|
|CSI.DLLL|CSI.DLL C:\Program Files\Microsoft Office 15\root\office15\csi.dll|[KB3172545](https://support.microsoft.com/en-us/topic/july-11-2017-update-for-office-2013-kb3172545-d6b47054-04d5-5154-40ba-3436d1e0efdb)|15.0.4753.1000|
|Groove.EXE|C:\Program Files\Microsoft Office 15\root\office15\GROOVE.exe|[KB4022226](https://support.microsoft.com/en-us/topic/august-7-2018-update-for-onedrive-for-business-for-office-2013-kb4022226-6163bb26-cbde-eb16-ac42-abfda7afbf68)|15.0.4763.1000|
|Outlook.exe|C:\Program Files\Microsoft Office 15\root\office15\OUTLOOK.exe|[KB4484096](https://support.microsoft.com/en-us/topic/october-1-2019-update-for-outlook-2013-kb4484096-6513145a-cc75-1cd1-72b7-78cb62d8476b)|15.0.4753.1002|
|ADAL.DLL|C:\Program Files\Microsoft Office 15\root\vfs\ProgramFilesCommonx86\Microsoft Shared\OFFICE15\ADAL.DLL|[KB3085565](https://support.microsoft.com/en-us/topic/july-5-2016-update-for-office-2013-kb3085565-1d1a6d24-fbd4-1bae-242f-a35e0e2aba40)|1.0.2016.624|
|Iexplore.exe|C:\Program Files\Internet Explorer|[MS14-052](https://support.microsoft.com/en-us/topic/ms14-052-cumulative-security-update-for-internet-explorer-september-9-2014-17d29b71-9e78-0bc1-8961-7b812d04e4e1)|Not applicable|


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
