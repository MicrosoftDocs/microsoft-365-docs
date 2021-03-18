---
title: "Microsoft 365 Client App Support: Certificate-based Authentication"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Strat_O365_Enterprise
- M365-subscription-management
search.appverid:
- MET150
f1.keywords:
- NOCSH
description: In this article, find details about Microsoft 365 Client App support for certificate-based authentication.
ms.custom: seo-marvel-apr2020
---

# Microsoft 365 Client App Support: Certificate-based Authentication

*This article applies to both Microsoft 365 Enterprise and Office 365 Enterprise.*

Modern authentication is an umbrella term for a combination of authentication and authorization methods. These methods include:

- **Authentication methods**: Multi-factor Authentication; Client Certificate-based authentication.
- **Authorization methods**: Microsoft's implementation of Open Authorization (OAuth).

Modern authentication is enabled by using an authentication library, like Active Directory Authentication Library (ADAL) or Microsoft Authentication Library (MSAL). Modern authentication is what clients use to authenticate and authorize access to Microsoft 365 resources. Modern authentication uses OAuth and provides a secure mechanism for clients to access Microsoft 365 services, without requiring access to user credentials. At sign-in, the user authenticates directly with Azure Active Directory and receives an access/refresh token pair in return. The access token grants the client access to the appropriate resources in the Microsoft 365 tenant. A refresh token is used to obtain a new access or refresh token pair when the current access token expires.

Modern authentication supports different authentication mechanisms, like certificate-based authentication. Clients on Windows, Android, or iOS devices can use certificate-based authentication (CBA) to authenticate to Azure Active Directory using a client certificate on the device. Instead of a typical username/password, the certificate is used to obtain an access/refresh token pair from Azure Active Directory.

Learn more about [certificate-based authentication](/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started).

## Supported clients & platforms

The latest versions of the following clients and platforms support certificate-based authentication when signing into Azure Active Directory accounts within the client (for example, when adding an account to the app). For more information about platform support in Microsoft 365, see [System requirements for Microsoft 365](/microsoft-365/microsoft-365-and-office-resources).
<br>
<br>

[!INCLUDE [Certificate-based authentication services support table](../includes/microsoft-365-client-support-certificate-based-authentication-include.md)]

>[!NOTE]
>Edge for iOS and Android supports certificate-based authentication during account add flows. Edge for iOS and Android does not support certificate-based authentication when performing authentication against web sites, which are typically intranet sites. <br><br>  In this scenario, a user navigates to a web site (usually on the intranet) where the web site requires the user to authenticate via a certificate. This does not involve modern authentication at all and does not leverage a Microsoft authentication library. This is due to a limitation with iOS: iOS prevents third-party apps from accessing the system keychain where the certificates are stored (only Apple apps and the [Safari webview controller](https://developer.apple.com/documentation/safariservices/sfsafariviewcontroller) can access the system keychain). <br><br> As Edge relies on the [WebKit](https://developer.apple.com/documentation/webkit) framework for rendering web sites, Edge is unable to access the system keychain and present the user with a certificate choice. This, unfortunately, is by design due to Apple's architecture.

## Supported PowerShell modules

- [Azure Active Directory PowerShell](/powershell/azure/active-directory/overview?view=azureadps-2.0)
- [Exchange Online PowerShell](/powershell/exchange/exchange-online-powershell)
- [SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online)

