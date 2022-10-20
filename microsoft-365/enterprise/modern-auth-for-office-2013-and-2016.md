---
title: "How modern authentication works for Office 2013 and Office 2016 client apps"
ms.author: tracyp
author: MSFTTracyP
manager: scotv
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.localizationpriority: medium
f1.keywords:
- CSH
ms.custom:
 - Adm_O365
 - seo-marvel-apr2020
search.appverid:
- MET150
- MOE150
- MED150
- GMA150
- GPA150
- GEA150
- BCS160
ms.assetid: e4c45989-4b1a-462e-a81b-2a13191cf517
ms.collection:
- scotvorg
- M365-security-compliance
description: Learn how Microsoft 365 modern authentication features work differently for Office 2013 and 2016 client apps.
---

# How modern authentication works for Office 2013, Office 2016, and Office 2019 client apps

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Read this article to learn how Office 2013, Office 2016, and Office 2019 client apps use modern authentication features based on the authentication configuration on the Microsoft 365 tenant for Exchange Online, SharePoint Online, and Skype for Business Online.

> [!NOTE]
> Legacy client apps, such as Office 2010 and Office for Mac 2011, do not support modern authentication and can only be used with basic authentication.

## Availability of modern authentication for Microsoft 365 services

For the Microsoft 365 services, the default state of modern authentication is:

- Turned **on** for Exchange Online by default. See [Enable or disable modern authentication in Exchange Online](https://support.office.com/article/58018196-f918-49cd-8238-56f57f38d662) to turn it off or on.

- Turned **on** for SharePoint Online by default.

- Turned **on** for Skype for Business Online by default. See [Enable Skype for Business Online for modern authentication](https://social.technet.microsoft.com/wiki/contents/articles/34339.skype-for-business-online-enable-your-tenant-for-modern-authentication.aspx)to turn it off or on.

> [!NOTE]
> For tenants created **before** August 1, 2017, modern authentication is turned **off** by default for Exchange Online and Skype for Business Online.

## Sign-in behavior of Office client apps

Office 2013 client apps support legacy authentication by default. Legacy means that they support either Microsoft Online Sign-in Assistant or basic authentication. In order for these clients to use modern authentication features, the Windows client must have registry keys set. For instructions, see [Enable Modern Authentication for Office 2013 on Windows devices](https://support.office.com/article/7dc1c01a-090f-4971-9677-f1b192d6c910).

> [!IMPORTANT]
> The use of basic authentication is being deprecated for Exchange Online mailboxes on Microsoft 365. This means that if Outlook 2013 is not configured to use modern authentication, it loses the ability to connect. Read [this article](https://techcommunity.microsoft.com/t5/exchange-team-blog/basic-authentication-deprecation-in-exchange-online-september/ba-p/3609437) for more information about basic auth deprecation.

To enable modern authentication for any devices running Windows (for example on laptops and tablets), that have Microsoft Office 2013 installed, you need to set the following registry keys. The keys have to be set on each device that you want to enable for modern authentication:

|**Registry key**|**Type**|**Value** |
|:-------|:------:|--------:|
|HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\15.0\Common\Identity\EnableADAL  |REG_DWORD  |1  |
|HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\15.0\Common\Identity\Version |REG_DWORD |1 |
|HKEY_CURRENT_USER\Software\Microsoft\Exchange\AlwaysUseMSOAuthForAutoDiscover |REG_DWORD |1 |

Read [How to use Modern Authentication (ADAL) with Skype for Business](./hybrid-modern-auth-overview.md) to learn about how it works with Skype for Business.

## Software requirements

To enable multifactor authentication (MFA) for Office 2013 client apps, you must have the software listed below installed (at the version listed below, or a *later* version). The process is different depending on your installation type (either MSI-based, or via Click-to-run.)

First, find out if your Office installation is MSI-based or Click-to-run with the steps below.

1. Start Outlook 2013.
2. On the **File** menu, select **Office Account**.
3. For Outlook 2013 *Click-to-Run* installations an **Update Options** item is displayed. For MSI-based installations, the Update Options item is not displayed.
    1. The Click-to-run **Update Options** button will tell you 'Updates are automatically downloaded and installed', and your current version.

### Click-to-run based installations

For Click-to-run based installations you *must* have the following software installed at a file version listed below, or a *later* file version. If your file version is not equal to, or greater than, the file version listed, update it using the steps below.


|File name  |Install path on your computer  |File version  |
|---------|---------|---------|
|MSO.DLL     |C:\Program Files\Microsoft Office 15\root\vfs\ProgramFilesCommonx86\Microsoft Shared\OFFICE15\MSO.DLL       |15.0.4753.1001       |
|CSI.DLL   |CSI.DLL C:\Program Files\Microsoft Office 15\root\office15\csi.dll         |15.0.4753.1000        |
|Groove.EXE     |C:\Program Files\Microsoft Office 15\root\office15\GROOVE.exe       |15.0.4763.1000      |
|Outlook.exe     |C:\Program Files\Microsoft Office 15\root\office15\OUTLOOK.exe         |15.0.4753.1002     |
|ADAL.DLL    |C:\Program Files\Microsoft Office 15\root\vfs\ProgramFilesCommonx86\Microsoft Shared\OFFICE15\ADAL.DLL       |1.0.2016.624         |
|Iexplore.exe    |C:\Program Files\Internet Explorer     |varies         |

### MSI-based installations

For MSI-based installations the following software *must* be installed at the file version listed below, or a *later* file version. If your file version is not equal to, or greater than, the file version listed below, update using the link in the *Update KB Article* column.


|File name  |Install path on your computer  |Where to get the update  |Version  |
|---------|---------|---------|---------|
|MSO.DLL|C:\Program Files\Common Files\Microsoft Shared\OFFICE15\MSO.DLL     |[KB3085480](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsupport.microsoft.com%2Fen-us%2Fkb%2F3085480&data=05%7C01%7Cmeerak%40microsoft.com%7Cbfbfa82510d542bc83c808dab07f400b%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638016357854522241%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=kpOu5cLXGFtynjGMejN2rk89wNQCezFHKTwf1BkwiBI%3D&reserved=0)        |15.0.4753.1001       |
|CSI.DLL|C:\Program Files\Common Files\Microsoft Shared\OFFICE15\Csi.dll     |[KB3085504](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsupport.microsoft.com%2Fen-us%2Fkb%2F3085504&data=05%7C01%7Cmeerak%40microsoft.com%7Cbfbfa82510d542bc83c808dab07f400b%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638016357854522241%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=CdsLij5YpLUk3ZPGSLqJolHyNkvuJ7pAJjUwiwXrtEs%3D&reserved=0)        |15.0.4753.1000         |
|Groove.exe|C:\Program Files\Microsoft Office\Office15\GROOVE.EXE            |[KB3085509](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsupport.microsoft.com%2Fen-us%2Fkb%2F3085509&data=05%7C01%7Cmeerak%40microsoft.com%7Cbfbfa82510d542bc83c808dab07f400b%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638016357854679005%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=pJFCjaVvlM0bmBjHSZ6neKQJbOYwTJzHHwB0XDLrfWs%3D&reserved=0)        |15.0.4763.1000         |
|Outlook.exe|C:\Program Files\Microsoft Office\Office15\OUTLOOK.EXE          |[KB3085495](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsupport.microsoft.com%2Fen-us%2Fkb%2F3085495&data=05%7C01%7Cmeerak%40microsoft.com%7Cbfbfa82510d542bc83c808dab07f400b%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638016357854679005%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=JHsuqm3lrYwE1DA1kZzBDym%2F3pY%2FFNTUlSkwhho1rWU%3D&reserved=0)        |15.0.4753.1002         |
|ADAL.DLL|C:\Program Files\Common Files\Microsoft Shared\OFFICE15\ADAL.DLL   |[KB3055000](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsupport.microsoft.com%2Fen-us%2Fkb%2F3055000&data=05%7C01%7Cmeerak%40microsoft.com%7Cbfbfa82510d542bc83c808dab07f400b%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638016357854679005%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=tm7iaJP%2BA3h%2BYvNQyzhQKLMgNUojihYdCxUnfDBDd4A%3D&reserved=0)        |1.0.2016.624         |
|Iexplore.exe|C:\Program Files\Internet Explorer                             |[MS14-052](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsupport.mi1.0.2016.624crosoft.com%2Fen-us%2Fkb%2F2977629&data=05%7C01%7Cmeerak%40microsoft.com%7Cbfbfa82510d542bc83c808dab07f400b%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C638016357854679005%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=dXZr3ft6w6%2FLVfke6b1WDRY%2BI7RCFebPeFDyWN8OMC0%3D&reserved=0)         |Not applicable         |

Office 2016 and Office 2019 clients support modern authentication by default, and no action is needed for the client to use these new flows. However, explicit action is needed to use legacy authentication.

Click the links below to see how Office 2013, Office 2016, and Office 2019 client authentication works with the Microsoft 365 services depending on whether or not modern authentication is turned on.

- [Exchange Online](modern-auth-for-office-2013-and-2016.md#BK_EchangeOnline)

- [SharePoint Online](modern-auth-for-office-2013-and-2016.md#BK_SharePointOnline)

- [Skype for Business Online](modern-auth-for-office-2013-and-2016.md#BK_SFBO)

<a name="BK_EchangeOnline"> </a>
### Exchange Online

The following table describes the authentication behavior for Office 2013, Office 2016, and Office 2019 client apps when they connect to Exchange Online with or without modern authentication.

|****Office client app version****|****Registry key present?****|****Modern authentication on?****|****Authentication behavior with modern authentication turned on for the tenant (default)****|****Authentication behavior with modern authentication turned off for the tenant****|
|:-----|:-----|:-----|:-----|:-----|
|Office 2019  <br/> |No, <br> AlwaysUseMSOAuthForAutoDiscover = 1 <br/> |Yes  <br/> |Forces modern authentication on Outlook 2013, 2016, or 2019. <br/> [More info](https://support.microsoft.com/help/3126599/outlook-prompts-for-password-when-modern-authentication-is-enabled)|Forces modern authentication within the Outlook client.<br/> |
|Office 2019  <br/> |No, or EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |
|Office 2019  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |
|Office 2019  <br/> |Yes, EnableADAL=0  <br/> |No  <br/> |Basic authentication  <br/> |Basic authentication  <br/> |
|Office 2016  <br/> |No, <br> AlwaysUseMSOAuthForAutoDiscover = 1 <br/> |Yes  <br/> |Forces modern authentication on 2013, 2016, or 2019. <br/> [More info](https://support.microsoft.com/help/3126599/outlook-prompts-for-password-when-modern-authentication-is-enabled)|Forces modern authentication within the Outlook client.<br/> |
|Office 2016  <br/> |No, or EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |
|Office 2016  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |
|Office 2016  <br/> |Yes, EnableADAL=0  <br/> |No  <br/> |Basic authentication  <br/> |Basic authentication  <br/> |
|Office 2013  <br/> |No  <br/> |No  <br/> |Basic authentication  <br/> |Basic authentication  <br/> |
|Office 2013  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant is not enabled.  <br/> |

<a name="BK_SharePointOnline"> </a>
### SharePoint Online

The following table describes the authentication behavior for Office 2013, Office 2016, and Office 2019 client apps when they connect to SharePoint Online with or without modern authentication.

|****Office client app version****|****Registry key present?****|****Modern authentication on?****|****Authentication behavior with modern authentication turned on for the tenant (default)****|****Authentication behavior with modern authentication turned off for the tenant****|
|:-----|:-----|:-----|:-----|:-----|
|Office 2019  <br/> |No, or EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication only.  <br/> |Failure to connect.  <br/> |
|Office 2019  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication only.  <br/> |Failure to connect.  <br/> |
|Office 2019  <br/> |Yes, EnableADAL = 0  <br/> |No  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |
|Office 2016  <br/> |No, or EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication only.  <br/> |Failure to connect.  <br/> |
|Office 2016  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication only.  <br/> |Failure to connect.  <br/> |
|Office 2016  <br/> |Yes, EnableADAL = 0  <br/> |No  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |
|Office 2013  <br/> |No  <br/> |No  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |
|Office 2013  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication only.  <br/> |Failure to connect.  <br/> |

### Skype for Business Online
<a name="BK_SFBO"> </a>

The following table describes the authentication behavior for Office 2013, Office 2016, and Office 2019 client apps when they connect to Skype for Business Online with or without modern authentication.

|****Office client app version****|****Registry key present?****|****Modern authentication on?****|****Authentication behavior with modern authentication turned on for the tenant****|****Authentication behavior with modern authentication turned off for the tenant (default)****|
|:-----|:-----|:-----|:-----|:-----|
|Office 2019  <br/> |No, or EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |
|Office 2019  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |
|Office 2019  <br/> |Yes, EnableADAL = 0  <br/> |No  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |
|Office 2016  <br/> |No, or EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |
|Office 2016  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |
|Office 2016  <br/> |Yes, EnableADAL = 0  <br/> |No  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |
|Office 2013  <br/> |No  <br/> |No  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |
|Office 2013  <br/> |Yes, EnableADAL = 1  <br/> |Yes  <br/> |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants are not enabled.  <br/> |Microsoft Online Sign-in Assistant only.  <br/> |

## See also

[Enable Modern Authentication for Office 2013 on Windows devices](../admin/security-and-compliance/enable-modern-authentication.md)

[Multi-factor authentication for Microsoft 365](../admin/security-and-compliance/multi-factor-authentication-microsoft-365.md)

[Sign in to Microsoft 365 with multi-factor authentication](https://support.microsoft.com/office/sign-in-to-microsoft-365-with-multi-factor-authentication-2b856342-170a-438e-9a4f-3c092394d3cb)

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)