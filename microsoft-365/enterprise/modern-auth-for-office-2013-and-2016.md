---
title: "How modern authentication works for Office 2016 and Office 2019 client apps"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 04/29/2024
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-enterprise
ms.subservice: administration
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
- must-keep
description: Learn how Microsoft 365 modern authentication features work differently for Office 2016 and 2019 client apps.
---

# How modern authentication works for Office 2016 and Office 2019 client apps

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Read this article to learn how Office 2016 and Office 2019 client apps use modern authentication features based on the authentication configuration on the Microsoft 365 tenant for Exchange Online, SharePoint Online, and Skype for Business Online.

> [!NOTE]
> Legacy client apps, such as Office 2010 and Office for Mac 2011, do not support modern authentication and can only be used with basic authentication.

## Availability of modern authentication for Microsoft 365 services

For the Microsoft 365 services, the default state of modern authentication is:

- Turned **on** for Exchange Online by default. See [Enable or disable modern authentication in Exchange Online](https://support.office.com/article/58018196-f918-49cd-8238-56f57f38d662) to turn it off or on.

- Turned **on** for SharePoint Online by default.

- Turned **on** for Skype for Business Online by default. See [Enable Skype for Business Online for modern authentication](https://social.technet.microsoft.com/wiki/contents/articles/34339.skype-for-business-online-enable-your-tenant-for-modern-authentication.aspx)to turn it off or on.

> [!NOTE]
> For tenants created **before** August 1, 2017, modern authentication is turned **off** by default for Exchange Online and Skype for Business Online.

Select the links below to see how Office 2016 and Office 2019 client authentication works with the Microsoft 365 services depending on whether or not modern authentication is turned on.

- [Exchange Online](modern-auth-for-office-2013-and-2016.md#BK_EchangeOnline)

- [SharePoint Online](modern-auth-for-office-2013-and-2016.md#BK_SharePointOnline)

- [Skype for Business Online](modern-auth-for-office-2013-and-2016.md#BK_SFBO)

<a name="BK_EchangeOnline"> </a>
### Exchange Online

The following table describes the authentication behavior for Office 2016 and Office 2019 client apps when they connect to Exchange Online with or without modern authentication.

| Office client app version | Registry key present? | Modern authentication on? | Authentication behavior with modern authentication turned on for the tenant (default) | Authentication behavior with modern authentication turned off for the tenant |
|:-----|:-----|:-----|:-----|:-----|
|Office 2019 |No, <br> AlwaysUseMSOAuthForAutoDiscover = 1|Yes |Forces modern authentication on Outlook 2013, 2016, or 2019. <br/> [More info](https://support.microsoft.com/help/3126599/outlook-prompts-for-password-when-modern-authentication-is-enabled)|Forces modern authentication within the Outlook client. |
|Office 2019 |No, or EnableADAL = 1 |Yes |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant isn't enabled. |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant isn't enabled. |
|Office 2019 |Yes, EnableADAL = 1 |Yes |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant isn't enabled. |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant isn't enabled. |
|Office 2019 |Yes, EnableADAL=0 |No |Basic authentication |Basic authentication |
|Office 2016 |No, <br> AlwaysUseMSOAuthForAutoDiscover = 1|Yes |Forces modern authentication on 2013, 2016, or 2019. <br/> [More info](https://support.microsoft.com/help/3126599/outlook-prompts-for-password-when-modern-authentication-is-enabled)|Forces modern authentication within the Outlook client. |
|Office 2016 |No, or EnableADAL = 1 |Yes |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant isn't enabled. |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant isn't enabled. |
|Office 2016 |Yes, EnableADAL = 1 |Yes |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant isn't enabled. |Modern authentication is attempted first. If the server refuses a modern authentication connection, then basic authentication is used. Server refuses modern authentication when the tenant isn't enabled. |
|Office 2016 |Yes, EnableADAL=0 |No |Basic authentication |Basic authentication |

<a name="BK_SharePointOnline"> </a>
### SharePoint Online

The following table describes the authentication behavior for Office 2016 and Office 2019 client apps when they connect to SharePoint Online with or without modern authentication.

| Office client app version | Registry key present? | Modern authentication on? | Authentication behavior with modern authentication turned on for the tenant (default) | Authentication behavior with modern authentication turned off for the tenant |
|:-----|:-----|:-----|:-----|:-----|
|Office 2019 |No, or EnableADAL = 1 |Yes |Modern authentication only. |Failure to connect. |
|Office 2019 |Yes, EnableADAL = 1 |Yes |Modern authentication only. |Failure to connect. |
|Office 2019 |Yes, EnableADAL = 0 |No |Microsoft Online Sign-in Assistant only. |Microsoft Online Sign-in Assistant only. |
|Office 2016 |No, or EnableADAL = 1 |Yes |Modern authentication only. |Failure to connect. |
|Office 2016 |Yes, EnableADAL = 1 |Yes |Modern authentication only. |Failure to connect. |
|Office 2016 |Yes, EnableADAL = 0 |No |Microsoft Online Sign-in Assistant only. |Microsoft Online Sign-in Assistant only. |

### Skype for Business Online
<a name="BK_SFBO"> </a>

The following table describes the authentication behavior for Office 2016 and Office 2019 client apps when they connect to Skype for Business Online with or without modern authentication.

| Office client app version | Registry key present? | Modern authentication on? | Authentication behavior with modern authentication turned on for the tenant | Authentication behavior with modern authentication turned off for the tenant (default) |
|:-----|:-----|:-----|:-----|:-----|
|Office 2019 |No, or EnableADAL = 1 |Yes |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants aren't enabled. |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants aren't enabled. |
|Office 2019 |Yes, EnableADAL = 1 |Yes |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants aren't enabled. |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants aren't enabled. |
|Office 2019 |Yes, EnableADAL = 0 |No |Microsoft Online Sign-in Assistant only. |Microsoft Online Sign-in Assistant only. |
|Office 2016 |No, or EnableADAL = 1 |Yes |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants aren't enabled. |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants aren't enabled. |
|Office 2016 |Yes, EnableADAL = 1 |Yes |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants aren't enabled. |Modern authentication is attempted first. If the server refuses a modern authentication connection, then Microsoft Online Sign-in Assistant is used. Server refuses modern authentication when Skype for Business Online tenants aren't enabled. |
|Office 2016 |Yes, EnableADAL = 0 |No |Microsoft Online Sign-in Assistant only. |Microsoft Online Sign-in Assistant only. |

## See also

[Multifactor authentication for Microsoft 365](../admin/security-and-compliance/multi-factor-authentication-microsoft-365.md)

[Sign in to Microsoft 365 with multifactor authentication](https://support.microsoft.com/office/sign-in-to-microsoft-365-with-multi-factor-authentication-2b856342-170a-438e-9a4f-3c092394d3cb)

[Microsoft 365 Enterprise overview](microsoft-365-overview.md)
